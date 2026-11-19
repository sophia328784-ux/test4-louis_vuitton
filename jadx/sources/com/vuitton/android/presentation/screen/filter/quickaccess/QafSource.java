package com.vuitton.android.presentation.screen.filter.quickaccess;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", "", "PLP", "SEARCH", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class QafSource {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ QafSource[] $VALUES;
    public static final QafSource PLP;
    public static final QafSource SEARCH;

    static {
        QafSource qafSource = new QafSource("PLP", 0);
        PLP = qafSource;
        QafSource qafSource2 = new QafSource("SEARCH", 1);
        SEARCH = qafSource2;
        QafSource[] qafSourceArr = {qafSource, qafSource2};
        $VALUES = qafSourceArr;
        $ENTRIES = EnumEntriesKt.a(qafSourceArr);
    }

    public static QafSource valueOf(String str) {
        return (QafSource) Enum.valueOf(QafSource.class, str);
    }

    public static QafSource[] values() {
        return (QafSource[]) $VALUES.clone();
    }
}
