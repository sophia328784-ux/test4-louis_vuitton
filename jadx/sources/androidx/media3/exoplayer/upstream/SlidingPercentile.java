package androidx.media3.exoplayer.upstream;

import defpackage.cj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class SlidingPercentile {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b f15844h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f15845i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15846a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f15849e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15850f;
    public int g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Sample[] f15848c = new Sample[5];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f15847b = new ArrayList();
    public int d = -1;

    public static class Sample {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15851a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15852b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f15853c;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.exoplayer.upstream.b] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.media3.exoplayer.upstream.b] */
    static {
        final int i2 = 0;
        f15844h = new Comparator() { // from class: androidx.media3.exoplayer.upstream.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                SlidingPercentile.Sample sample = (SlidingPercentile.Sample) obj;
                SlidingPercentile.Sample sample2 = (SlidingPercentile.Sample) obj2;
                switch (i2) {
                    case 0:
                        return sample.f15851a - sample2.f15851a;
                    default:
                        return Float.compare(sample.f15853c, sample2.f15853c);
                }
            }
        };
        final int i3 = 1;
        f15845i = new Comparator() { // from class: androidx.media3.exoplayer.upstream.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                SlidingPercentile.Sample sample = (SlidingPercentile.Sample) obj;
                SlidingPercentile.Sample sample2 = (SlidingPercentile.Sample) obj2;
                switch (i3) {
                    case 0:
                        return sample.f15851a - sample2.f15851a;
                    default:
                        return Float.compare(sample.f15853c, sample2.f15853c);
                }
            }
        };
    }

    public SlidingPercentile(int i2) {
        this.f15846a = i2;
    }

    public final void a(float f2, int i2) {
        Sample sample;
        int i3 = this.d;
        ArrayList arrayList = this.f15847b;
        if (i3 != 1) {
            Collections.sort(arrayList, f15844h);
            this.d = 1;
        }
        int i4 = this.g;
        Sample[] sampleArr = this.f15848c;
        if (i4 > 0) {
            int i5 = i4 - 1;
            this.g = i5;
            sample = sampleArr[i5];
        } else {
            sample = new Sample();
        }
        int i6 = this.f15849e;
        this.f15849e = i6 + 1;
        sample.f15851a = i6;
        sample.f15852b = i2;
        sample.f15853c = f2;
        arrayList.add(sample);
        this.f15850f += i2;
        while (true) {
            int i7 = this.f15850f;
            int i8 = this.f15846a;
            if (i7 <= i8) {
                return;
            }
            int i9 = i7 - i8;
            Sample sample2 = (Sample) arrayList.get(0);
            int i10 = sample2.f15852b;
            if (i10 <= i9) {
                this.f15850f -= i10;
                arrayList.remove(0);
                int i11 = this.g;
                if (i11 < 5) {
                    this.g = i11 + 1;
                    sampleArr[i11] = sample2;
                }
            } else {
                sample2.f15852b = i10 - i9;
                this.f15850f -= i9;
            }
        }
    }

    public final float b() {
        int i2 = this.d;
        ArrayList arrayList = this.f15847b;
        if (i2 != 0) {
            Collections.sort(arrayList, f15845i);
            this.d = 0;
        }
        float f2 = 0.5f * this.f15850f;
        int i3 = 0;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            Sample sample = (Sample) arrayList.get(i4);
            i3 += sample.f15852b;
            if (i3 >= f2) {
                return sample.f15853c;
            }
        }
        if (arrayList.isEmpty()) {
            return Float.NaN;
        }
        return ((Sample) cj.c(1, arrayList)).f15853c;
    }
}
