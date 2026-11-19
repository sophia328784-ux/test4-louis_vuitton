package com.vuitton.android.presentation.screen.onboarding.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;", "", "NOT_STARTED", "START", "GEOLOCATION", "NOTIFICATION", "ICONS", "DONE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OnboardingStateUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OnboardingStateUiModel[] $VALUES;
    public static final OnboardingStateUiModel DONE;
    public static final OnboardingStateUiModel GEOLOCATION;
    public static final OnboardingStateUiModel ICONS;
    public static final OnboardingStateUiModel NOTIFICATION;
    public static final OnboardingStateUiModel NOT_STARTED;
    public static final OnboardingStateUiModel START;

    static {
        OnboardingStateUiModel onboardingStateUiModel = new OnboardingStateUiModel("NOT_STARTED", 0);
        NOT_STARTED = onboardingStateUiModel;
        OnboardingStateUiModel onboardingStateUiModel2 = new OnboardingStateUiModel("START", 1);
        START = onboardingStateUiModel2;
        OnboardingStateUiModel onboardingStateUiModel3 = new OnboardingStateUiModel("GEOLOCATION", 2);
        GEOLOCATION = onboardingStateUiModel3;
        OnboardingStateUiModel onboardingStateUiModel4 = new OnboardingStateUiModel("NOTIFICATION", 3);
        NOTIFICATION = onboardingStateUiModel4;
        OnboardingStateUiModel onboardingStateUiModel5 = new OnboardingStateUiModel("ICONS", 4);
        ICONS = onboardingStateUiModel5;
        OnboardingStateUiModel onboardingStateUiModel6 = new OnboardingStateUiModel("DONE", 5);
        DONE = onboardingStateUiModel6;
        OnboardingStateUiModel[] onboardingStateUiModelArr = {onboardingStateUiModel, onboardingStateUiModel2, onboardingStateUiModel3, onboardingStateUiModel4, onboardingStateUiModel5, onboardingStateUiModel6};
        $VALUES = onboardingStateUiModelArr;
        $ENTRIES = EnumEntriesKt.a(onboardingStateUiModelArr);
    }

    public static OnboardingStateUiModel valueOf(String str) {
        return (OnboardingStateUiModel) Enum.valueOf(OnboardingStateUiModel.class, str);
    }

    public static OnboardingStateUiModel[] values() {
        return (OnboardingStateUiModel[]) $VALUES.clone();
    }
}
