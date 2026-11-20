const fs = require("fs");
const path = require("path");
const babel = require("@babel/core");
const presetEnv = require.resolve("@babel/preset-env");

const [, , inputPath, outputPath] = process.argv;
if (!inputPath || !outputPath) {
    throw new Error("Uso: node transpile-tizen.js <index.html> <saida.html>");
}

const html = fs.readFileSync(inputPath, "utf8");
let transformedScripts = 0;
const output = html.replace(/<script\b([^>]*)>([\s\S]*?)<\/script\s*>/gi, (tag, attributes, source) => {
    if (/\btype\s*=\s*["'](?:application\/json|application\/ld\+json)["']/i.test(attributes)) {
        return tag;
    }

    const result = babel.transformSync(source, {
        filename: path.basename(inputPath) + ".inline.js",
        sourceType: "script",
        configFile: false,
        babelrc: false,
        comments: true,
        compact: false,
        presets: [[presetEnv, {
            // O engine M47 (Tizen TV de 2017) ainda não reconhece sintaxe como
            // optional chaining; esse alvo também cobre modelos mais recentes.
            targets: { chrome: "47" },
            modules: false,
            useBuiltIns: false
        }]]
    });

    transformedScripts += 1;
    return `<script${attributes}>${result.code || ""}</script>`;
});

if (transformedScripts === 0) {
    throw new Error("Nenhum script inline foi encontrado para transpilar.");
}

fs.writeFileSync(outputPath, output);
console.log(`${transformedScripts} scripts preparados para TVs Tizen antigas em ${outputPath}.`);
