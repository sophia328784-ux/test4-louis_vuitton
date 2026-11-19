package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "", "SIMPLE", "DUAL", "STACKING", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BeautyVtoMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BeautyVtoMode[] $VALUES;
    public static final BeautyVtoMode DUAL;
    public static final BeautyVtoMode SIMPLE;
    public static final BeautyVtoMode STACKING;

    static {
        BeautyVtoMode beautyVtoMode = new BeautyVtoMode("SIMPLE", 0);
        SIMPLE = beautyVtoMode;
        BeautyVtoMode beautyVtoMode2 = new BeautyVtoMode("DUAL", 1);
        DUAL = beautyVtoMode2;
        BeautyVtoMode beautyVtoMode3 = new BeautyVtoMode("STACKING", 2);
        STACKING = beautyVtoMode3;
        BeautyVtoMode[] beautyVtoModeArr = {beautyVtoMode, beautyVtoMode2, beautyVtoMode3};
        $VALUES = beautyVtoModeArr;
        $ENTRIES = EnumEntriesKt.a(beautyVtoModeArr);
    }

    public static BeautyVtoMode valueOf(String str) {
        return (BeautyVtoMode) Enum.valueOf(BeautyVtoMode.class, str);
    }

    public static BeautyVtoMode[] values() {
        return (BeautyVtoMode[]) $VALUES.clone();
    }
}
