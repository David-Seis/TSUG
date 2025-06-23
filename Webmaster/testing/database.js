document.getElementById("runScript").addEventListener("click", () => {
    // Initialize the SQL.js library
    initSqlJs({
      locateFile: (file) =>
        `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.6.1/${file}`,
    }).then((SQL) => {
      // Load or create a new database
      let db;
      const savedDb = localStorage.getItem("sqliteDb");
      if (savedDb) {
        const uInt8Array = new Uint8Array(JSON.parse(savedDb));
        db = new SQL.Database(uInt8Array);
      } else {
        db = new SQL.Database();
        // Create a table
        db.run("CREATE TABLE test (col1 text, col2 text);");
        // Insert some data
        db.run("INSERT INTO test VALUES (?, ?), (?, ?)", [
          "Buck",
          "Woody",
          "Marjorie",
          "Woody",
        ]);
      }
  
      // Query the data
      const res = db.exec("SELECT col1 FROM test");
      const resultText = res[0].values.map((row) => row.join(", ")).join("\n");
      document.getElementById("dbresult").innerText = resultText;
  
      // Save the database to localStorage
      const data = db.export();
      localStorage.setItem("sqliteDb", JSON.stringify(Array.from(data)));
    });
  });
  