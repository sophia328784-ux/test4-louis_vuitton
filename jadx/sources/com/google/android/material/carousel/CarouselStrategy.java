package com.google.android.material.carousel;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CarouselStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f32451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f32452b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class StrategyType {
        private static final /* synthetic */ StrategyType[] $VALUES;
        public static final StrategyType CONTAINED;
        public static final StrategyType UNCONTAINED;

        static {
            StrategyType strategyType = new StrategyType("CONTAINED", 0);
            CONTAINED = strategyType;
            StrategyType strategyType2 = new StrategyType("UNCONTAINED", 1);
            UNCONTAINED = strategyType2;
            $VALUES = new StrategyType[]{strategyType, strategyType2};
        }

        public static StrategyType valueOf(String str) {
            return (StrategyType) Enum.valueOf(StrategyType.class, str);
        }

        public static StrategyType[] values() {
            return (StrategyType[]) $VALUES.clone();
        }
    }

    public static float a(float f2, float f3, float f4) {
        return 1.0f - ((f2 - f4) / (f3 - f4));
    }

    public abstract KeylineState b(CarouselLayoutManager carouselLayoutManager, View view);

    public boolean c(CarouselLayoutManager carouselLayoutManager, int i2) {
        return false;
    }
}
