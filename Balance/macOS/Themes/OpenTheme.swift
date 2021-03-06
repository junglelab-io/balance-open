//
//  DarkTheme.swift
//  Bal
//
//  Created by Benjamin Baron on 2/4/16.
//  Copyright © 2016 Balanced Software, Inc. All rights reserved.
//

import AppKit

struct OpenTheme: Theme {
    
    var type: ThemeType = .open
    
    var defaults: DefaultsTheme {
        let appearance = NSAppearance(named: NSAppearance.Name.vibrantLight)!
        let backgroundColor = NSColor(hexString: "#EDEEF0")!
        let foregroundColor = NSColor.black
        let material = NSVisualEffectView.Material.dark
        let size = CGSize(width: 400, height: 600)
        let touchBarFont = NSFont.systemFont(ofSize: 15)
        
        let totalFooter = DefaultsTheme.TotalFooterTheme(
            totalBackgroundColor: NSColor(deviceRedInt: 46, green: 56, blue: 66, alpha: 0.4),
            titleFont: NSFont.semiboldSystemFont(ofSize: 16),
            titleColor: NSColor.white,
            amountFont: NSFont.boldMonospacedSystemFont(ofSize: 16),
            amountColor: NSColor.white
        )
    
        let cell = DefaultsTheme.CellTheme(
            primaryFont: NSFont.systemFont(ofSize: 13),
            secondaryFont: NSFont.systemFont(ofSize: 11),
            
            backgroundColor: backgroundColor,
            spacerColor: backgroundColor,
            
            intercellSpacing: NSSize(width: 0.5, height: 0.5)
        )
        
        let searchField = DefaultsTheme.SearchFieldTheme(
            backgroundColor: NSColor(deviceRedInt: 70, green: 81, blue: 92),
            borderColor: NSColor(deviceRedInt: 16, green: 22, blue: 28),
            placeHolderStringColor: NSColor(deviceRedInt: 235, green: 240, blue: 245, alpha: 0.8),
            font: NSFont.systemFont(ofSize: 13.5),
            textColor: NSColor(deviceRedInt: 235, green: 240, blue: 245),
            searchIconImage: NSImage(named: NSImage.Name(rawValue: "search-icon-dark"))!
        )
    
        return DefaultsTheme(appearance: appearance, backgroundColor: backgroundColor, foregroundColor: foregroundColor, material: material, size: size, touchBarFont: touchBarFont, totalFooter: totalFooter, cell: cell, searchField: searchField)
    }
    
    var lock: LockTheme {
        let titleFont = NSFont.systemFont(ofSize: 22)
        let explanationFont = NSFont.systemFont(ofSize: 13)
        
        let passwordBackgroundColor = NSColor(deviceWhiteInt: 255, alpha: 0.08)
        let passwordActiveBorderColor = NSColor(deviceRedInt: 128, green: 185, blue: 255, alpha: 0.6)
        let passwordInactiveBorderColor = NSColor.clear
        let passwordTextColor = NSColor.white
        let passwordPlaceholderColor = NSColor(deviceWhiteInt: 255, alpha: 0.62)
        
        return LockTheme(titleFont: titleFont, explanationFont: explanationFont, passwordBackgroundColor: passwordBackgroundColor, passwordActiveBorderColor: passwordActiveBorderColor, passwordInactiveBorderColor: passwordInactiveBorderColor, passwordTextColor: passwordTextColor, passwordPlaceholderColor: passwordPlaceholderColor)
    }
    
    var tabs: TabsTheme {
        let header = TabsTheme.HeaderTheme(
            tabFont: NSFont.systemFont(ofSize: 14),
            addAccountIcon: NSImage(named: NSImage.Name(rawValue: "tabs-add-account"))!,
            preferencesIcon: NSImage(named: NSImage.Name(rawValue: "tabs-preferences"))!
        )
        
        return TabsTheme(header: header)
    }
    
    var addAccounts: AddAccountsTheme {
        let institutionNameFont = NSFont.systemFont(ofSize: 23)
        
        let welcomeFont = NSFont.lightSystemFont(ofSize: 21)

        let labelFont = NSFont.systemFont(ofSize: 13)
        let textColor = NSColor.white
        
        let statusFont = NSFont.systemFont(ofSize: 14)
        let statusColor = NSColor(deviceWhiteInt: 255, alpha: 0.7)
    
        let buttonFont = NSFont.systemFont(ofSize: 14)
        let buttonBackgroundColor = NSColor(deviceWhiteInt: 255, alpha: 0.15)
        let buttonBorderColor = NSColor(deviceWhiteInt: 255, alpha: 0.7)
        
        let lineColor = NSColor(deviceWhiteInt: 255, alpha: 0.06)
        
        let onePasswordButtonImage = NSImage(named: NSImage.Name(rawValue: "onepassword-button-light"))!
        let waveImage = NSImage(named: NSImage.Name(rawValue: "waves-light"))!
        let padlockImage = NSImage(named: NSImage.Name(rawValue: "padlockInRoundedRectangle-light"))!
                
        let searchHeaderBackgroundColor = NSColor(deviceRedInt: 53, green: 61, blue: 71)
        let searchHeaderFont = NSFont.mediumSystemFont(ofSize: 13)
        let searchHeaderPopularFont = NSFont.semiboldSystemFont(ofSize: 13)
        let searchHeaderColor = NSColor(deviceRedInt: 234, green: 241, blue: 245)
        let searchPopularFont = NSFont.mediumSystemFont(ofSize: 14)
        let searchPopularColor = NSColor(deviceWhiteInt: 255)
        let searchMoreResultsFont = NSFont.systemFont(ofSize: 13)
        let searchMoreResultsColor = NSColor(deviceWhiteInt: 255, alpha: 0.72)
        
        let signUpFieldHeight: CGFloat = 45
        let signUpFieldSpacing: CGFloat = 12
        let signUpFieldActiveBorderColor = NSColor.white
        let signUpFieldInactiveBorderColor = NSColor.clear
        let signUpFieldBackgroundColor = NSColor.white
        let signUpFieldTextColor = NSColor(hexString: "#343E46")!
        let signUpFieldplaceHolderTextColor = NSColor(hexString: "#AEB2B5")!
        let signUpFieldFont = NSFont.systemFont(ofSize: 13.5)
    
        return AddAccountsTheme(institutionNameFont: institutionNameFont, welcomeFont: welcomeFont, labelFont: labelFont, textColor: textColor, statusFont: statusFont, statusColor: statusColor, buttonFont: buttonFont, buttonBackgroundColor: buttonBackgroundColor, buttonBorderColor: buttonBorderColor, lineColor: lineColor, onePasswordButtonImage: onePasswordButtonImage, waveImage: waveImage, padlockImage: padlockImage, searchHeaderBackgroundColor: searchHeaderBackgroundColor, searchHeaderFont: searchHeaderFont, searchHeaderPopularFont: searchHeaderPopularFont, searchHeaderColor: searchHeaderColor, searchPopularFont: searchPopularFont, searchPopularColor: searchPopularColor, searchMoreResultsFont: searchMoreResultsFont, searchMoreResultsColor: searchMoreResultsColor, signUpFieldHeight: signUpFieldHeight, signUpFieldSpacing: signUpFieldSpacing, signUpFieldActiveBorderColor: signUpFieldActiveBorderColor, signUpFieldInactiveBorderColor: signUpFieldInactiveBorderColor, signUpFieldBackgroundColor: signUpFieldBackgroundColor, signUpFieldTextColor: signUpFieldTextColor, signUpFieldplaceHolderTextColor: signUpFieldplaceHolderTextColor, signUpFieldFont: signUpFieldFont)
    }
    
    var emailIssue: EmailIssueTheme {
        let infoLabelNameFont = NSFont.boldSystemFont(ofSize: 12)
        let infoLabelNameColor = NSColor.black
        let infoLabelValueFont = NSFont.systemFont(ofSize: 12)
        let infoLabelValueColor = NSColor.darkGray
        let messageLabelFont = NSFont.systemFont(ofSize: 12)
        
        let inputFieldActiveBorderColor = NSColor.gray
        let inputFieldInactiveBorderColor = NSColor.lightGray
        let inputFieldTextColor = NSColor.black
        let inputFieldPlaceholderTextColor = NSColor.lightGray
        
        return EmailIssueTheme(infoLabelNameFont: infoLabelNameFont, infoLabelNameColor: infoLabelNameColor, infoLabelValueFont: infoLabelValueFont, infoLabelValueColor: infoLabelValueColor, messageLabelFont: messageLabelFont, inputFieldActiveBorderColor: inputFieldActiveBorderColor, inputFieldInactiveBorderColor: inputFieldInactiveBorderColor, inputFieldTextColor: inputFieldTextColor, inputFieldPlaceholderTextColor: inputFieldPlaceholderTextColor)
    }
    
    var accounts: AccountsTheme {
        let headerCell = AccountsTheme.HeaderCellTheme(
            height: 62.0,
            nameFont: NSFont.semiboldSystemFont(ofSize: 16),
            nameColor: NSColor.white,
            amountFont: NSFont.semiboldMonospacedSystemFont(ofSize: 16),
            amountColor: NSColor.white
        )
        
        let cell = AccountsTheme.CellTheme(
            height: 63.0,
            dimmedAlpha: 0.65,
            passwordInvalidDimmedAlpha: 0.50,
            
            nameFont: NSFont.monospacedSystemFont(ofSize: 12.5),
            nameColor: NSColor(deviceWhiteInt: 255, alpha: 1.0),
            
            amountFont: NSFont.monospacedSystemFont(ofSize: 14),
            amountColor: NSColor(deviceWhiteInt: 255, alpha: 1.0),
            amountColorCents: NSColor.white,
            amountColorPositive: NSColor.white,
            
            altAmountFont: NSFont.mediumMonospacedSystemFont(ofSize: 14),
            altAmountColor: NSColor.white,
            
            availableFont: NSFont.systemFont(ofSize: 10.5),
            availableColor: NSColor.white
        )
        
        let fixPasswordPrompt = AccountsTheme.FixPasswordPromptTheme(
            headerFont: NSFont.mediumSystemFont(ofSize: 13),
            headerTextColor: NSColor(deviceWhiteInt: 255, alpha: 1),
            buttonTextColor: NSColor(deviceRed: 0.333, green: 0.353, blue: 0.38, alpha: 1.0),
            nameFont: NSFont.mediumSystemFont(ofSize: 13),
            nameTextColor: NSColor(deviceWhiteInt: 255, alpha: 1),
            separatorColor: NSColor(deviceWhiteInt: 255, alpha: 0.04)
        )
        
        let prompt = AccountsTheme.PromptTheme(
            promptFont: NSFont.systemFont(ofSize: 13)
        )
        
        let cellExpansion = AccountsTheme.CellExpansionTheme(
            font: NSFont.systemFont(ofSize: 12),
            searchButtonBackgroundColor: NSColor(deviceWhiteInt: 255, alpha: 0.2)
        )
        
        return AccountsTheme(headerCell: headerCell, cell: cell, cellExpansion: cellExpansion, fixPasswordPrompt: fixPasswordPrompt, prompt: prompt)
    }
    
    var transactions: TransactionsTheme {
        let noResultsFont = NSFont.systemFont(ofSize: 13.5)
        
        let headerCell = TransactionsTheme.HeaderCellTheme(
            height: 40.0,
            dateFont: NSFont.mediumSystemFont(ofSize: 11),
            dateColor: NSColor(hexString: "#3C444F")!,
            dateAlpha: 0.40
        )
        
        let cell = TransactionsTheme.CellTheme(
            height: 70.0,
            dimmedAlpha: 1.0,
            
            backgroundViewColor: NSColor.white,
            
            nameFont: NSFont.systemFont(ofSize: 13.5),
            
            typeFont: NSFont.mediumSystemFont(ofSize: 12),
            typeColorSent: NSColor(hexString: "#70737A")!,
            typeColorReceived: NSColor(hexString: "#70737A")!,
            typeColorTraded: NSColor(hexString: "#70737A")!,
            
            amountFont: NSFont.monospacedDigitSystemFont(ofSize: 14),
            amountColor: NSColor(hexString: "#252A35")!,
            amountColorCents: NSColor(deviceRedInt: 153, green: 165, blue: 174),
            amountColorPositive: NSColor(deviceRedInt: 88, green: 184, blue: 33),
            
            altAmountFont: NSFont.monospacedDigitSystemFont(ofSize: 14),
            altAmountColor: NSColor(hexString: "#252A35")!
        )
        
        let cellExpansion = TransactionsTheme.CellExpansionTheme(
            institutionFont: NSFont.semiboldSystemFont(ofSize: 13),
            accountFont: NSFont.systemFont(ofSize: 12),
            fontColor: NSColor(deviceWhiteInt: 255),
            institutionBackground: NSColor(deviceWhiteInt: 255, alpha: 0.05)
        )
        
        return TransactionsTheme(noResultsFont: noResultsFont, headerCell: headerCell, cell: cell, cellExpansion: cellExpansion)
    }
    
    var priceTicker: PriceTickerTheme {
        let headerCell = PriceTickerTheme.HeaderCellTheme(
            height: 30.0,
            
            nameFont: NSFont.boldSystemFont(ofSize: 14),
            nameColor: NSColor(hexString: "#2F343E")!
        )
        
        let cell = PriceTickerTheme.CellTheme(
            height: 63.0,
            
            codeFont: NSFont.monospacedSystemFont(ofSize: 12.5),
            codeColor: NSColor(hexString: "#696D7A")!,
            
            nameFont: NSFont.monospacedSystemFont(ofSize: 14),
            nameColor: NSColor(hexString: "#2F343E")!,
            
            rateFont: NSFont.mediumMonospacedSystemFont(ofSize: 14),
            rateColor: NSColor(hexString: "#2F343E")!
        )
        
        return PriceTickerTheme(headerCell: headerCell, cell: cell)
    }
}
