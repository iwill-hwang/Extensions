public func between<T: Comparable>(min minValue: T, value targetValue: T, max maxValue: T) -> T {
    return max(min(maxValue, targetValue), minValue)
}
