package com.google.android.material.carousel;

import defpackage.fc;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class KeylineState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f32453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f32455c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f32456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f32457f;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f32458a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f32459b;
        public Keyline d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Keyline f32461e;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f32460c = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f32462f = -1;
        public int g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f32463h = Call.Parameters.DEFAULT_CAMERA_ZOOM;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f32464i = -1;

        public Builder(float f2, int i2) {
            this.f32458a = f2;
            this.f32459b = i2;
        }

        public final void a(float f2, float f3, float f4, boolean z, boolean z2) {
            float fAbs;
            float f5 = f4 / 2.0f;
            float f6 = f2 - f5;
            float f7 = f5 + f2;
            float f8 = this.f32459b;
            if (f7 > f8) {
                fAbs = Math.abs(f7 - Math.max(f7 - f4, f8));
            } else {
                fAbs = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (f6 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fAbs = Math.abs(f6 - Math.min(f6 + f4, Call.Parameters.DEFAULT_CAMERA_ZOOM));
                }
            }
            b(f2, f3, f4, z, z2, fAbs, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }

        public final void b(float f2, float f3, float f4, boolean z, boolean z2, float f5, float f6, float f7) {
            if (f4 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return;
            }
            ArrayList arrayList = this.f32460c;
            if (z2) {
                if (z) {
                    md.n("Anchor keylines cannot be focal.");
                    return;
                }
                int i2 = this.f32464i;
                if (i2 != -1 && i2 != 0) {
                    md.n("Anchor keylines must be either the first or last keyline.");
                    return;
                }
                this.f32464i = arrayList.size();
            }
            Keyline keyline = new Keyline(Float.MIN_VALUE, f2, f3, f4, f5, f6, f7, z2);
            Keyline keyline2 = this.d;
            if (z) {
                if (keyline2 == null) {
                    this.d = keyline;
                    this.f32462f = arrayList.size();
                }
                if (this.g != -1 && arrayList.size() - this.g > 1) {
                    md.n("Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines.");
                    return;
                } else if (f4 != this.d.d) {
                    md.n("Keylines that are marked as focal must all have the same masked item size.");
                    return;
                } else {
                    this.f32461e = keyline;
                    this.g = arrayList.size();
                }
            } else if (keyline2 == null && f4 < this.f32463h) {
                md.n("Keylines before the first focal keyline must be ordered by incrementing masked item size.");
                return;
            } else if (this.f32461e != null && f4 > this.f32463h) {
                md.n("Keylines after the last focal keyline must be ordered by decreasing masked item size.");
                return;
            }
            this.f32463h = f4;
            arrayList.add(keyline);
        }

        public final void c(float f2, float f3, float f4, int i2, boolean z) {
            if (i2 <= 0 || f4 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                a((i3 * f4) + f2, f3, f4, z, false);
            }
        }

        public final KeylineState d() {
            if (this.d == null) {
                md.k("There must be a keyline marked as focal.");
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (true) {
                ArrayList arrayList2 = this.f32460c;
                if (i2 >= arrayList2.size()) {
                    return new KeylineState(this.f32458a, arrayList, this.f32462f, this.g, this.f32459b);
                }
                Keyline keyline = (Keyline) arrayList2.get(i2);
                float f2 = this.d.f32466b;
                float f3 = this.f32462f;
                float f4 = this.f32458a;
                arrayList.add(new Keyline((i2 * f4) + (f2 - (f3 * f4)), keyline.f32466b, keyline.f32467c, keyline.d, keyline.f32469f, keyline.g, keyline.f32470h, keyline.f32468e));
                i2++;
            }
        }
    }

    public static final class Keyline {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f32465a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f32466b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f32467c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f32468e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f32469f;
        public final float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final float f32470h;

        public Keyline(float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z) {
            this.f32465a = f2;
            this.f32466b = f3;
            this.f32467c = f4;
            this.d = f5;
            this.f32468e = z;
            this.f32469f = f6;
            this.g = f7;
            this.f32470h = f8;
        }
    }

    public KeylineState(float f2, ArrayList arrayList, int i2, int i3, int i4) {
        this.f32453a = f2;
        this.f32455c = Collections.unmodifiableList(arrayList);
        this.d = i2;
        this.f32456e = i3;
        while (i2 <= i3) {
            if (((Keyline) arrayList.get(i2)).f32469f == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                this.f32454b++;
            }
            i2++;
        }
        this.f32457f = i4;
    }

    public final Keyline a() {
        return (Keyline) this.f32455c.get(this.d);
    }

    public final Keyline b() {
        return (Keyline) this.f32455c.get(0);
    }

    public final Keyline c() {
        return (Keyline) this.f32455c.get(this.f32456e);
    }

    public final Keyline d() {
        return (Keyline) fc.e(1, this.f32455c);
    }
}
