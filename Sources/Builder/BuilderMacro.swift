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
@attached(conformance)
public macro Builder() = #externalMacro(
    module: "BuilderMacro",
    type: "BuilderMacro"
)
#endif
