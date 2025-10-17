#!/usr/bin/env node
const path = require('path');
const fs = require('fs');

const candidate = path.resolve('simple-recipe-browser-30180-30189/flutter_frontend/android');
if (fs.existsSync(candidate) && fs.statSync(candidate).isDirectory()) {
  console.log(candidate);
  process.exit(0);
}

console.error('ERROR: Android root not found at', candidate);
process.exit(1);
