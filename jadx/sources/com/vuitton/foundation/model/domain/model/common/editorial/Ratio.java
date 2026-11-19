package com.vuitton.foundation.model.domain.model.common.editorial;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;", "", "RATIO_2X3", "RATIO_4X5", "RATIO_16X9", "RATIO_9X16", "RATIO_1X1", "FULLSCREEN", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Ratio {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Ratio[] $VALUES;
    public static final Ratio FULLSCREEN;
    public static final Ratio RATIO_16X9;
    public static final Ratio RATIO_1X1;
    public static final Ratio RATIO_2X3;
    public static final Ratio RATIO_4X5;
    public static final Ratio RATIO_9X16;

    static {
        Ratio ratio = new Ratio("RATIO_2X3", 0);
        RATIO_2X3 = ratio;
        Ratio ratio2 = new Ratio("RATIO_4X5", 1);
        RATIO_4X5 = ratio2;
        Ratio ratio3 = new Ratio("RATIO_16X9", 2);
        RATIO_16X9 = ratio3;
        Ratio ratio4 = new Ratio("RATIO_9X16", 3);
        RATIO_9X16 = ratio4;
        Ratio ratio5 = new Ratio("RATIO_1X1", 4);
        RATIO_1X1 = ratio5;
        Ratio ratio6 = new Ratio("FULLSCREEN", 5);
        FULLSCREEN = ratio6;
        Ratio[] ratioArr = {ratio, ratio2, ratio3, ratio4, ratio5, ratio6};
        $VALUES = ratioArr;
        $ENTRIES = EnumEntriesKt.a(ratioArr);
    }

    public static Ratio valueOf(String str) {
        return (Ratio) Enum.valueOf(Ratio.class, str);
    }

    public static Ratio[] values() {
        return (Ratio[]) $VALUES.clone();
    }
}
