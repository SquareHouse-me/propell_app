const fs = require("fs");
const path = require("path");

const directory = "./build/web"; // Update this path to your web build folder
const htmlFile = path.join(directory, "index.html"); // Path to index.html

// Helper function to add version ID (timestamp)
function addVersionToFileName(fileName) {
  const ext = path.extname(fileName); // Get file extension
  const baseName = path.basename(fileName, ext); // Get file name without extension
  const timestamp = Date.now(); // Current timestamp
  return `${baseName}.${timestamp}${ext}`; // Append version ID
}

// Function to rename files and update index.html
function renameFilesAndUpdateHTML() {
  fs.readdir(directory, (err, files) => {
    if (err) {
      console.error("Error reading directory:", err);
      return;
    }

    // Read the original index.html content
    fs.readFile(htmlFile, "utf8", (err, htmlContent) => {
      if (err) {
        console.error("Error reading index.html:", err);
        return;
      }

      let updatedHTML = htmlContent; // Initialize updated HTML content

      files.forEach((file) => {
        const filePath = path.join(directory, file);

        // Check if it's a JS or CSS file
        if (file.endsWith(".js") || file.endsWith(".css")) {
          const newFileName = addVersionToFileName(file); // Add version ID
          const newFilePath = path.join(directory, newFileName);

          // Rename the file
          fs.rename(filePath, newFilePath, (err) => {
            if (err) {
              console.error("Error renaming file:", err);
            } else {
              console.log(`Renamed: ${file} -> ${newFileName}`);

              // Replace the file name in the HTML content
              const regex = new RegExp(file, "g"); // Match the old file name
              updatedHTML = updatedHTML.replace(regex, newFileName);
            }
          });
        }
      });

      // After renaming files, write the updated HTML content
      setTimeout(() => {
        fs.writeFile(htmlFile, updatedHTML, "utf8", (err) => {
          if (err) {
            console.error("Error updating index.html:", err);
          } else {
            console.log("index.html updated successfully!");
          }
        });
      }, 1000); // Delay to ensure files are renamed before updating HTML
    });
  });
}

// Start the process
renameFilesAndUpdateHTML();
