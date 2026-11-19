package com.vuitton.foundation.model.domain.model.onboarding;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;", "", "NOT_STARTED", "START", "GEOLOCATION", "NOTIFICATION", "ICONS", "DONE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OnboardingState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OnboardingState[] $VALUES;
    public static final OnboardingState DONE;
    public static final OnboardingState GEOLOCATION;
    public static final OnboardingState ICONS;
    public static final OnboardingState NOTIFICATION;
    public static final OnboardingState NOT_STARTED;
    public static final OnboardingState START;

    static {
        OnboardingState onboardingState = new OnboardingState("NOT_STARTED", 0);
        NOT_STARTED = onboardingState;
        OnboardingState onboardingState2 = new OnboardingState("START", 1);
        START = onboardingState2;
        OnboardingState onboardingState3 = new OnboardingState("GEOLOCATION", 2);
        GEOLOCATION = onboardingState3;
        OnboardingState onboardingState4 = new OnboardingState("NOTIFICATION", 3);
        NOTIFICATION = onboardingState4;
        OnboardingState onboardingState5 = new OnboardingState("ICONS", 4);
        ICONS = onboardingState5;
        OnboardingState onboardingState6 = new OnboardingState("DONE", 5);
        DONE = onboardingState6;
        OnboardingState[] onboardingStateArr = {onboardingState, onboardingState2, onboardingState3, onboardingState4, onboardingState5, onboardingState6};
        $VALUES = onboardingStateArr;
        $ENTRIES = EnumEntriesKt.a(onboardingStateArr);
    }

    public static OnboardingState valueOf(String str) {
        return (OnboardingState) Enum.valueOf(OnboardingState.class, str);
    }

    public static OnboardingState[] values() {
        return (OnboardingState[]) $VALUES.clone();
    }
}
