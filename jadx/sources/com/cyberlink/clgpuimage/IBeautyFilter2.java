package com.cyberlink.clgpuimage;

/* JADX INFO: loaded from: classes2.dex */
public interface IBeautyFilter2 {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class EffectMode {
        public static final EffectMode PORTRAIT_NATURAL;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ EffectMode[] f25487a;

        static {
            EffectMode effectMode = new EffectMode("PORTRAIT_NATURAL", 0);
            PORTRAIT_NATURAL = effectMode;
            f25487a = new EffectMode[]{effectMode};
        }

        public static EffectMode valueOf(String str) {
            return (EffectMode) Enum.valueOf(EffectMode.class, str);
        }

        public static EffectMode[] values() {
            return (EffectMode[]) f25487a.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class FilterType {
        public static final FilterType DISABLE_SMOOTH;
        public static final FilterType ENABLE_SMOOTH;
        public static final FilterType LIVE_SMOOTH;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ FilterType[] f25488a;

        static {
            FilterType filterType = new FilterType("LIVE_SMOOTH", 0);
            LIVE_SMOOTH = filterType;
            FilterType filterType2 = new FilterType("ENABLE_SMOOTH", 1);
            ENABLE_SMOOTH = filterType2;
            FilterType filterType3 = new FilterType("DISABLE_SMOOTH", 2);
            DISABLE_SMOOTH = filterType3;
            f25488a = new FilterType[]{filterType, filterType2, filterType3};
        }

        public static FilterType valueOf(String str) {
            return (FilterType) Enum.valueOf(FilterType.class, str);
        }

        public static FilterType[] values() {
            return (FilterType[]) f25488a.clone();
        }
    }
}
