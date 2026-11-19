package com.vuitton.android.presentation.compose.components;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/compose/components/CollapsingState;", "", "COLLAPSED", "EXPANDED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CollapsingState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CollapsingState[] $VALUES;
    public static final CollapsingState COLLAPSED;
    public static final CollapsingState EXPANDED;

    static {
        CollapsingState collapsingState = new CollapsingState("COLLAPSED", 0);
        COLLAPSED = collapsingState;
        CollapsingState collapsingState2 = new CollapsingState("EXPANDED", 1);
        EXPANDED = collapsingState2;
        CollapsingState[] collapsingStateArr = {collapsingState, collapsingState2};
        $VALUES = collapsingStateArr;
        $ENTRIES = EnumEntriesKt.a(collapsingStateArr);
    }

    public static CollapsingState valueOf(String str) {
        return (CollapsingState) Enum.valueOf(CollapsingState.class, str);
    }

    public static CollapsingState[] values() {
        return (CollapsingState[]) $VALUES.clone();
    }
}
