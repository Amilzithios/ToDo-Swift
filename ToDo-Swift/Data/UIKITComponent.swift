//
//  UIKITComponentsData.swift
//  ToDo-Swift
//
//  Created by Amilzith on 11/07/24.
//

enum UIKITComponent: CaseIterable {
    case viewsAndControls
    case layoutAndAutoLayout
    case graphicsAndAnimations
    case inputHandling
    case accessibility
    
    static var selectedComponent: UIKITComponent = .viewsAndControls
    
    var componentTopic: String {
        switch self {
        case .viewsAndControls: return "Views and Controls"
        case .layoutAndAutoLayout: return "Layout and Auto Layout"
        case .graphicsAndAnimations: return "Graphics and Animations"
        case .inputHandling: return "Input Handling"
        case .accessibility: return "Accessibility"
        }
    }
    
    var compontentsSubTopics: [String] {
        switch self {
        case .viewsAndControls: return ["UIView", "UILabel", "UIButton", "UITextField", "UISlider", "UIScrollView", "UITableView", "UICollectionView", "UIAlertController", "UIPickerView", "UIDatePicker", "UIProgressView", "UIPageControl", "UISearchBar"]
            default: return []
        }
    }
}
