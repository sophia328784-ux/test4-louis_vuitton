package com.vuitton.android.designkit.ui.theme.molecules;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;", "", "SUCCESS", "SUCCESS_INVERT", "ERROR", "ERROR_INVERT", "CHAT", "CHAT_INVERT", "FEEDBACK", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVSnackbarConfiguration {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LVSnackbarConfiguration[] $VALUES;
    public static final LVSnackbarConfiguration CHAT;
    public static final LVSnackbarConfiguration CHAT_INVERT;
    public static final LVSnackbarConfiguration ERROR;
    public static final LVSnackbarConfiguration ERROR_INVERT;
    public static final LVSnackbarConfiguration FEEDBACK;
    public static final LVSnackbarConfiguration SUCCESS;
    public static final LVSnackbarConfiguration SUCCESS_INVERT;

    static {
        LVSnackbarConfiguration lVSnackbarConfiguration = new LVSnackbarConfiguration("SUCCESS", 0);
        SUCCESS = lVSnackbarConfiguration;
        LVSnackbarConfiguration lVSnackbarConfiguration2 = new LVSnackbarConfiguration("SUCCESS_INVERT", 1);
        SUCCESS_INVERT = lVSnackbarConfiguration2;
        LVSnackbarConfiguration lVSnackbarConfiguration3 = new LVSnackbarConfiguration("ERROR", 2);
        ERROR = lVSnackbarConfiguration3;
        LVSnackbarConfiguration lVSnackbarConfiguration4 = new LVSnackbarConfiguration("ERROR_INVERT", 3);
        ERROR_INVERT = lVSnackbarConfiguration4;
        LVSnackbarConfiguration lVSnackbarConfiguration5 = new LVSnackbarConfiguration("CHAT", 4);
        CHAT = lVSnackbarConfiguration5;
        LVSnackbarConfiguration lVSnackbarConfiguration6 = new LVSnackbarConfiguration("CHAT_INVERT", 5);
        CHAT_INVERT = lVSnackbarConfiguration6;
        LVSnackbarConfiguration lVSnackbarConfiguration7 = new LVSnackbarConfiguration("FEEDBACK", 6);
        FEEDBACK = lVSnackbarConfiguration7;
        LVSnackbarConfiguration[] lVSnackbarConfigurationArr = {lVSnackbarConfiguration, lVSnackbarConfiguration2, lVSnackbarConfiguration3, lVSnackbarConfiguration4, lVSnackbarConfiguration5, lVSnackbarConfiguration6, lVSnackbarConfiguration7};
        $VALUES = lVSnackbarConfigurationArr;
        $ENTRIES = EnumEntriesKt.a(lVSnackbarConfigurationArr);
    }

    public static LVSnackbarConfiguration valueOf(String str) {
        return (LVSnackbarConfiguration) Enum.valueOf(LVSnackbarConfiguration.class, str);
    }

    public static LVSnackbarConfiguration[] values() {
        return (LVSnackbarConfiguration[]) $VALUES.clone();
    }
}
