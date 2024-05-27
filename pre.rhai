let project_type = variable::get("project_type");
switch project_type {
  "Workspace" => {
    file::rename("Cargo.workspace.toml", "Cargo.toml");
    file::rename(".gitignore.generic", ".gitignore");
  }
  "Library" => {
    file::rename("Cargo.generic.toml", "Cargo.toml");
    file::rename(".gitignore.library", ".gitignore");
  }
  "Binary" => {
    file::rename("Cargo.generic.toml", "Cargo.toml");
    file::rename(".gitignore.generic", ".gitignore");
  }
  "Workspace Member" => {
    file::rename("Cargo.member.toml", "Cargo.toml");
  }
  _ => {}
}