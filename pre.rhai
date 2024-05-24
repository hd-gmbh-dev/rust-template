let project_type = variable::get("project_type");
switch project_type {
  "Workspace" => {
    file::delete("Cargo.generic.toml");
    file::delete(".gitignore.library");
    file::rename("Cargo.workspace.toml", "Cargo.toml");
    file::rename(".gitignore.generic", ".gitignore");
  }
  "Library" => {
    file::delete("Cargo.workspace.toml");
    file::delete(".gitignore.generic");
    file::rename("Cargo.generic.toml", "Cargo.toml");
    file::rename(".gitignore.library", ".gitignore");
  }
  "Binary" => {
    file::delete("Cargo.workspace.toml");
    file::delete(".gitignore.library");
    file::rename("Cargo.generic.toml", "Cargo.toml");
    file::rename(".gitignore.generic", ".gitignore");
  }
  _ => {}
}