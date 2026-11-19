package com.vuitton.android.presentation.screen.onboarding.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssetType;", "", "NOTIFICATIONS", "GEOLOCATION", "ICONS", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OnboardingAssetType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OnboardingAssetType[] $VALUES;
    public static final OnboardingAssetType GEOLOCATION;
    public static final OnboardingAssetType ICONS;
    public static final OnboardingAssetType NOTIFICATIONS;

    static {
        OnboardingAssetType onboardingAssetType = new OnboardingAssetType("NOTIFICATIONS", 0);
        NOTIFICATIONS = onboardingAssetType;
        OnboardingAssetType onboardingAssetType2 = new OnboardingAssetType("GEOLOCATION", 1);
        GEOLOCATION = onboardingAssetType2;
        OnboardingAssetType onboardingAssetType3 = new OnboardingAssetType("ICONS", 2);
        ICONS = onboardingAssetType3;
        OnboardingAssetType[] onboardingAssetTypeArr = {onboardingAssetType, onboardingAssetType2, onboardingAssetType3};
        $VALUES = onboardingAssetTypeArr;
        $ENTRIES = EnumEntriesKt.a(onboardingAssetTypeArr);
    }

    public static OnboardingAssetType valueOf(String str) {
        return (OnboardingAssetType) Enum.valueOf(OnboardingAssetType.class, str);
    }

    public static OnboardingAssetType[] values() {
        return (OnboardingAssetType[]) $VALUES.clone();
    }
}
