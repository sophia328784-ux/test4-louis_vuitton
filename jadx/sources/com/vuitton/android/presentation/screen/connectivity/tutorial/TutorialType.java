package com.vuitton.android.presentation.screen.connectivity.tutorial;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;", "", "EARPHONE", "HORIZON_SPEAKER", "WATCH_V3", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TutorialType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TutorialType[] $VALUES;
    public static final TutorialType EARPHONE;
    public static final TutorialType HORIZON_SPEAKER;
    public static final TutorialType WATCH_V3;

    static {
        TutorialType tutorialType = new TutorialType("EARPHONE", 0);
        EARPHONE = tutorialType;
        TutorialType tutorialType2 = new TutorialType("HORIZON_SPEAKER", 1);
        HORIZON_SPEAKER = tutorialType2;
        TutorialType tutorialType3 = new TutorialType("WATCH_V3", 2);
        WATCH_V3 = tutorialType3;
        TutorialType[] tutorialTypeArr = {tutorialType, tutorialType2, tutorialType3};
        $VALUES = tutorialTypeArr;
        $ENTRIES = EnumEntriesKt.a(tutorialTypeArr);
    }

    public static TutorialType valueOf(String str) {
        return (TutorialType) Enum.valueOf(TutorialType.class, str);
    }

    public static TutorialType[] values() {
        return (TutorialType[]) $VALUES.clone();
    }
}
