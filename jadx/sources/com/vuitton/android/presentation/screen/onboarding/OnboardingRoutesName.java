package com.vuitton.android.presentation.screen.onboarding;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;", "", "LOGIN", "PRIVACY_PRE_COMPLIANCE", "PIPL_CBT", "PRIVACY", "START_NOW", "NOTIFICATIONS", "GEOLOCATION", "ICONS", "TRANSITION", "DONE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OnboardingRoutesName {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OnboardingRoutesName[] $VALUES;
    public static final OnboardingRoutesName DONE;
    public static final OnboardingRoutesName GEOLOCATION;
    public static final OnboardingRoutesName ICONS;
    public static final OnboardingRoutesName LOGIN;
    public static final OnboardingRoutesName NOTIFICATIONS;
    public static final OnboardingRoutesName PIPL_CBT;
    public static final OnboardingRoutesName PRIVACY;
    public static final OnboardingRoutesName PRIVACY_PRE_COMPLIANCE;
    public static final OnboardingRoutesName START_NOW;
    public static final OnboardingRoutesName TRANSITION;

    static {
        OnboardingRoutesName onboardingRoutesName = new OnboardingRoutesName("LOGIN", 0);
        LOGIN = onboardingRoutesName;
        OnboardingRoutesName onboardingRoutesName2 = new OnboardingRoutesName("PRIVACY_PRE_COMPLIANCE", 1);
        PRIVACY_PRE_COMPLIANCE = onboardingRoutesName2;
        OnboardingRoutesName onboardingRoutesName3 = new OnboardingRoutesName("PIPL_CBT", 2);
        PIPL_CBT = onboardingRoutesName3;
        OnboardingRoutesName onboardingRoutesName4 = new OnboardingRoutesName("PRIVACY", 3);
        PRIVACY = onboardingRoutesName4;
        OnboardingRoutesName onboardingRoutesName5 = new OnboardingRoutesName("START_NOW", 4);
        START_NOW = onboardingRoutesName5;
        OnboardingRoutesName onboardingRoutesName6 = new OnboardingRoutesName("NOTIFICATIONS", 5);
        NOTIFICATIONS = onboardingRoutesName6;
        OnboardingRoutesName onboardingRoutesName7 = new OnboardingRoutesName("GEOLOCATION", 6);
        GEOLOCATION = onboardingRoutesName7;
        OnboardingRoutesName onboardingRoutesName8 = new OnboardingRoutesName("ICONS", 7);
        ICONS = onboardingRoutesName8;
        OnboardingRoutesName onboardingRoutesName9 = new OnboardingRoutesName("TRANSITION", 8);
        TRANSITION = onboardingRoutesName9;
        OnboardingRoutesName onboardingRoutesName10 = new OnboardingRoutesName("DONE", 9);
        DONE = onboardingRoutesName10;
        OnboardingRoutesName[] onboardingRoutesNameArr = {onboardingRoutesName, onboardingRoutesName2, onboardingRoutesName3, onboardingRoutesName4, onboardingRoutesName5, onboardingRoutesName6, onboardingRoutesName7, onboardingRoutesName8, onboardingRoutesName9, onboardingRoutesName10};
        $VALUES = onboardingRoutesNameArr;
        $ENTRIES = EnumEntriesKt.a(onboardingRoutesNameArr);
    }

    public static OnboardingRoutesName valueOf(String str) {
        return (OnboardingRoutesName) Enum.valueOf(OnboardingRoutesName.class, str);
    }

    public static OnboardingRoutesName[] values() {
        return (OnboardingRoutesName[]) $VALUES.clone();
    }
}
