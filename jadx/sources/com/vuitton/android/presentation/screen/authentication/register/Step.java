package com.vuitton.android.presentation.screen.authentication.register;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/Step;", "", "CREDENTIALS", "PERSONAL_INFO", "REGISTRATION_ADDRESS", "BIRTH_INFO", "ACCOUNT_ACTIVATION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Step {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Step[] $VALUES;
    public static final Step ACCOUNT_ACTIVATION;
    public static final Step BIRTH_INFO;
    public static final Step CREDENTIALS;
    public static final Step PERSONAL_INFO;
    public static final Step REGISTRATION_ADDRESS;

    static {
        Step step = new Step("CREDENTIALS", 0);
        CREDENTIALS = step;
        Step step2 = new Step("PERSONAL_INFO", 1);
        PERSONAL_INFO = step2;
        Step step3 = new Step("REGISTRATION_ADDRESS", 2);
        REGISTRATION_ADDRESS = step3;
        Step step4 = new Step("BIRTH_INFO", 3);
        BIRTH_INFO = step4;
        Step step5 = new Step("ACCOUNT_ACTIVATION", 4);
        ACCOUNT_ACTIVATION = step5;
        Step[] stepArr = {step, step2, step3, step4, step5};
        $VALUES = stepArr;
        $ENTRIES = EnumEntriesKt.a(stepArr);
    }

    public static EnumEntries a() {
        return $ENTRIES;
    }

    public static Step valueOf(String str) {
        return (Step) Enum.valueOf(Step.class, str);
    }

    public static Step[] values() {
        return (Step[]) $VALUES.clone();
    }
}
