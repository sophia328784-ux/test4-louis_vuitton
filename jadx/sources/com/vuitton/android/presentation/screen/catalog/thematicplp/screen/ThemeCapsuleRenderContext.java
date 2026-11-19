package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;", "", "TOOLBOX", "OVERLAY", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ThemeCapsuleRenderContext {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ThemeCapsuleRenderContext[] $VALUES;
    public static final ThemeCapsuleRenderContext OVERLAY;
    public static final ThemeCapsuleRenderContext TOOLBOX;

    static {
        ThemeCapsuleRenderContext themeCapsuleRenderContext = new ThemeCapsuleRenderContext("TOOLBOX", 0);
        TOOLBOX = themeCapsuleRenderContext;
        ThemeCapsuleRenderContext themeCapsuleRenderContext2 = new ThemeCapsuleRenderContext("OVERLAY", 1);
        OVERLAY = themeCapsuleRenderContext2;
        ThemeCapsuleRenderContext[] themeCapsuleRenderContextArr = {themeCapsuleRenderContext, themeCapsuleRenderContext2};
        $VALUES = themeCapsuleRenderContextArr;
        $ENTRIES = EnumEntriesKt.a(themeCapsuleRenderContextArr);
    }

    public static ThemeCapsuleRenderContext valueOf(String str) {
        return (ThemeCapsuleRenderContext) Enum.valueOf(ThemeCapsuleRenderContext.class, str);
    }

    public static ThemeCapsuleRenderContext[] values() {
        return (ThemeCapsuleRenderContext[]) $VALUES.clone();
    }
}
