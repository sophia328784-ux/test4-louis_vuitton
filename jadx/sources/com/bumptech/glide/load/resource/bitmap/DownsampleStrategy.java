package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.Option;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DownsampleStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DownsampleStrategy f24768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DownsampleStrategy f24769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DownsampleStrategy f24770c;
    public static final DownsampleStrategy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DownsampleStrategy f24771e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Option f24772f;
    public static final boolean g;

    public static class AtLeast extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i2, int i3, int i4, int i5) {
            int iMin = Math.min(i3 / i5, i2 / i4);
            if (iMin == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(iMin);
        }
    }

    public static class AtMost extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return SampleSizeRounding.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i2, int i3, int i4, int i5) {
            int iCeil = (int) Math.ceil(Math.max(i3 / i5, i2 / i4));
            int iMax = Math.max(1, Integer.highestOneBit(iCeil));
            return 1.0f / (iMax << (iMax >= iCeil ? 0 : 1));
        }
    }

    public static class CenterInside extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return b(i2, i3, i4, i5) == 1.0f ? SampleSizeRounding.QUALITY : DownsampleStrategy.f24768a.a(i2, i3, i4, i5);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i2, int i3, int i4, int i5) {
            return Math.min(1.0f, DownsampleStrategy.f24768a.b(i2, i3, i4, i5));
        }
    }

    public static class CenterOutside extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i2, int i3, int i4, int i5) {
            return Math.max(i4 / i2, i5 / i3);
        }
    }

    public static class FitCenter extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return DownsampleStrategy.g ? SampleSizeRounding.QUALITY : SampleSizeRounding.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i2, int i3, int i4, int i5) {
            if (DownsampleStrategy.g) {
                return Math.min(i4 / i2, i5 / i3);
            }
            int iMax = Math.max(i3 / i5, i2 / i4);
            if (iMax == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(iMax);
        }
    }

    public static class None extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i2, int i3, int i4, int i5) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i2, int i3, int i4, int i5) {
            return 1.0f;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class SampleSizeRounding {
        private static final /* synthetic */ SampleSizeRounding[] $VALUES;
        public static final SampleSizeRounding MEMORY;
        public static final SampleSizeRounding QUALITY;

        static {
            SampleSizeRounding sampleSizeRounding = new SampleSizeRounding("MEMORY", 0);
            MEMORY = sampleSizeRounding;
            SampleSizeRounding sampleSizeRounding2 = new SampleSizeRounding("QUALITY", 1);
            QUALITY = sampleSizeRounding2;
            $VALUES = new SampleSizeRounding[]{sampleSizeRounding, sampleSizeRounding2};
        }

        public static SampleSizeRounding valueOf(String str) {
            return (SampleSizeRounding) Enum.valueOf(SampleSizeRounding.class, str);
        }

        public static SampleSizeRounding[] values() {
            return (SampleSizeRounding[]) $VALUES.clone();
        }
    }

    static {
        new AtLeast();
        new AtMost();
        f24768a = new FitCenter();
        f24769b = new CenterInside();
        CenterOutside centerOutside = new CenterOutside();
        f24770c = centerOutside;
        d = new None();
        f24771e = centerOutside;
        f24772f = Option.a(centerOutside, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy");
        g = true;
    }

    public abstract SampleSizeRounding a(int i2, int i3, int i4, int i5);

    public abstract float b(int i2, int i3, int i4, int i5);
}
