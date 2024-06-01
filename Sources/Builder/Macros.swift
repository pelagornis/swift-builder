#if swift(>=5.9)
/// A macro that supports Builder
///
/// ### Builder Macro Support
///
/// ```swift
/// @Builder
/// struct Team {
///     var name: String?
///     var librayName: String?
///     mutating func libraryName() {
///         librayName = "Builder"
///     }
/// }
/// ```
///
@attached(extension, conformances: Buildable, names: named(requirement))
public macro Builder() = #externalMacro(
    module: "BuilderMacros",
    type: "BuilderMacro"
)
#endif
