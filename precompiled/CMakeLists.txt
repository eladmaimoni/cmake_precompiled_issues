


add_library(precompiled STATIC "precompiled.cpp")

set_compiler_flags(precompiled)

target_precompile_headers(
    precompiled
    PRIVATE
    <algorithm>
    <array>
	<atomic>
    <bit>
    <bitset>
	<cassert>
    <chrono>
    <cmath>
    <concepts>
	<cstdint>
    <exception>
    <iostream>
    <filesystem>
    <fstream>
	<future>
	<map>
    <memory>
	<mutex>
    <optional>
    <ranges>
    <regex>
    <span>
    <sstream>
    <stdexcept>
    <string>
    <string_view>
    <variant>
    <vector> 
)