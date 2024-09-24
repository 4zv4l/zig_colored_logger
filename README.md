# zig_colored_logger
Simple colored logger for the std.log.LogFn

# Usage

To add the project in your `build.zig.zon`:

`zig fetch --save git+https://github.com/4zv4l/zig_colored_logger`

Then and this in `build.zig`:

```rs
const colored_logger = b.dependency("colored_logger", .{ .project_name = exe.name });
exe.root_module.addImport("colored_logger", colored_logger.module("colored_logger"));
```
