package com.vuitton.android.presentation.compose.components;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;", "", "NoParallax", "LightParallax", "MediumParallax", "StrongParallax", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PagerParallaxFactor {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PagerParallaxFactor[] $VALUES;
    public static final PagerParallaxFactor LightParallax;
    public static final PagerParallaxFactor MediumParallax;
    public static final PagerParallaxFactor NoParallax;
    public static final PagerParallaxFactor StrongParallax;

    static {
        PagerParallaxFactor pagerParallaxFactor = new PagerParallaxFactor("NoParallax", 0);
        NoParallax = pagerParallaxFactor;
        PagerParallaxFactor pagerParallaxFactor2 = new PagerParallaxFactor("LightParallax", 1);
        LightParallax = pagerParallaxFactor2;
        PagerParallaxFactor pagerParallaxFactor3 = new PagerParallaxFactor("MediumParallax", 2);
        MediumParallax = pagerParallaxFactor3;
        PagerParallaxFactor pagerParallaxFactor4 = new PagerParallaxFactor("StrongParallax", 3);
        StrongParallax = pagerParallaxFactor4;
        PagerParallaxFactor[] pagerParallaxFactorArr = {pagerParallaxFactor, pagerParallaxFactor2, pagerParallaxFactor3, pagerParallaxFactor4};
        $VALUES = pagerParallaxFactorArr;
        $ENTRIES = EnumEntriesKt.a(pagerParallaxFactorArr);
    }

    public static PagerParallaxFactor valueOf(String str) {
        return (PagerParallaxFactor) Enum.valueOf(PagerParallaxFactor.class, str);
    }

    public static PagerParallaxFactor[] values() {
        return (PagerParallaxFactor[]) $VALUES.clone();
    }
}
