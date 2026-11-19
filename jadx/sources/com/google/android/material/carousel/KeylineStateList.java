package com.google.android.material.carousel;

import com.google.android.material.animation.AnimationUtils;
import defpackage.cj;
import defpackage.fc;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class KeylineStateList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KeylineState f32471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f32472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f32473c;
    public final float[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float[] f32474e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f32475f;
    public final float g;

    /* JADX INFO: renamed from: com.google.android.material.carousel.KeylineStateList$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f32476a;

        static {
            int[] iArr = new int[CarouselStrategy.StrategyType.values().length];
            f32476a = iArr;
            try {
                iArr[CarouselStrategy.StrategyType.CONTAINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public KeylineStateList(KeylineState keylineState, ArrayList arrayList, ArrayList arrayList2) {
        this.f32471a = keylineState;
        this.f32472b = Collections.unmodifiableList(arrayList);
        this.f32473c = Collections.unmodifiableList(arrayList2);
        float f2 = ((KeylineState) cj.c(1, arrayList)).b().f32465a - keylineState.b().f32465a;
        this.f32475f = f2;
        float f3 = keylineState.d().f32465a - ((KeylineState) cj.c(1, arrayList2)).d().f32465a;
        this.g = f3;
        this.d = d(f2, arrayList, true);
        this.f32474e = d(f3, arrayList2, false);
    }

    public static float[] d(float f2, ArrayList arrayList, boolean z) {
        int size = arrayList.size();
        float[] fArr = new float[size];
        int i2 = 1;
        while (i2 < size) {
            int i3 = i2 - 1;
            KeylineState keylineState = (KeylineState) arrayList.get(i3);
            KeylineState keylineState2 = (KeylineState) arrayList.get(i2);
            fArr[i2] = i2 == size + (-1) ? 1.0f : fArr[i3] + ((z ? keylineState2.b().f32465a - keylineState.b().f32465a : keylineState.d().f32465a - keylineState2.d().f32465a) / f2);
            i2++;
        }
        return fArr;
    }

    public static KeylineState e(KeylineState keylineState, int i2, int i3, float f2, int i4, int i5, int i6) {
        ArrayList arrayList = new ArrayList(keylineState.f32455c);
        arrayList.add(i3, (KeylineState.Keyline) arrayList.remove(i2));
        KeylineState.Builder builder = new KeylineState.Builder(keylineState.f32453a, i6);
        float f3 = f2;
        int i7 = 0;
        while (i7 < arrayList.size()) {
            KeylineState.Keyline keyline = (KeylineState.Keyline) arrayList.get(i7);
            float f4 = keyline.d;
            builder.b((f4 / 2.0f) + f3, keyline.f32467c, f4, i7 >= i4 && i7 <= i5, keyline.f32468e, keyline.f32469f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            f3 += keyline.d;
            i7++;
        }
        return builder.d();
    }

    public static KeylineState f(KeylineState keylineState, float f2, int i2, boolean z, float f3, CarouselStrategy.StrategyType strategyType) {
        int i3 = keylineState.f32456e;
        int i4 = keylineState.d;
        float f4 = keylineState.f32453a;
        List list = keylineState.f32455c;
        if (AnonymousClass1.f32476a[strategyType.ordinal()] != 1) {
            ArrayList arrayList = new ArrayList(list);
            KeylineState.Builder builder = new KeylineState.Builder(f4, i2);
            int size = z ? 0 : arrayList.size() - 1;
            int i5 = 0;
            while (i5 < arrayList.size()) {
                KeylineState.Keyline keyline = (KeylineState.Keyline) arrayList.get(i5);
                boolean z2 = keyline.f32468e;
                if (z2 && i5 == size) {
                    builder.b(keyline.f32466b, keyline.f32467c, keyline.d, false, true, keyline.f32469f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                } else {
                    float f5 = keyline.f32466b;
                    float f6 = z ? f5 + f2 : f5 - f2;
                    float f7 = z ? f2 : 0.0f;
                    float f8 = z ? 0.0f : f2;
                    boolean z3 = i5 >= i4 && i5 <= i3;
                    float f9 = f6;
                    float f10 = keyline.f32467c;
                    float f11 = keyline.d;
                    builder.b(f9, f10, f11, z3, z2, Math.abs(z ? Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, ((f11 / 2.0f) + f9) - i2) : Math.min(Call.Parameters.DEFAULT_CAMERA_ZOOM, f9 - (f11 / 2.0f))), f7, f8);
                }
                i5++;
            }
            return builder.d();
        }
        ArrayList arrayList2 = new ArrayList(list);
        KeylineState.Builder builder2 = new KeylineState.Builder(f4, i2);
        Iterator it = list.iterator();
        int i6 = 0;
        while (it.hasNext()) {
            if (((KeylineState.Keyline) it.next()).f32468e) {
                i6++;
            }
        }
        float size2 = f2 / (list.size() - i6);
        float f12 = z ? f2 : 0.0f;
        int i7 = 0;
        while (i7 < arrayList2.size()) {
            KeylineState.Keyline keyline2 = (KeylineState.Keyline) arrayList2.get(i7);
            if (keyline2.f32468e) {
                builder2.b(keyline2.f32466b, keyline2.f32467c, keyline2.d, false, true, keyline2.f32469f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            } else {
                boolean z4 = i7 >= i4 && i7 <= i3;
                float f13 = keyline2.d - size2;
                float fA = CarouselStrategy.a(f13, f4, f3);
                float f14 = (f13 / 2.0f) + f12;
                float fAbs = Math.abs(f14 - keyline2.f32466b);
                builder2.b(f14, fA, f13, z4, false, keyline2.f32469f, z ? fAbs : Call.Parameters.DEFAULT_CAMERA_ZOOM, z ? Call.Parameters.DEFAULT_CAMERA_ZOOM : fAbs);
                f12 += f13;
            }
            i7++;
        }
        return builder2.d();
    }

    public final KeylineState a() {
        return (KeylineState) fc.e(1, this.f32473c);
    }

    public final KeylineState b(float f2, float f3, float f4) {
        float fB;
        List list;
        float[] fArr;
        float[] fArr2;
        float f5 = this.f32475f;
        float f6 = f3 + f5;
        float f7 = this.g;
        float f8 = f4 - f7;
        float f9 = c().a().g;
        float f10 = a().a().f32470h;
        if (f5 == f9) {
            f6 += f9;
        }
        if (f7 == f10) {
            f8 -= f10;
        }
        if (f2 < f6) {
            fB = AnimationUtils.b(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, f6, f2);
            list = this.f32472b;
            fArr = this.d;
        } else {
            if (f2 <= f8) {
                return this.f32471a;
            }
            fB = AnimationUtils.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, f8, f4, f2);
            list = this.f32473c;
            fArr = this.f32474e;
        }
        int size = list.size();
        float f11 = fArr[0];
        int i2 = 1;
        while (true) {
            if (i2 >= size) {
                fArr2 = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                break;
            }
            float f12 = fArr[i2];
            if (fB <= f12) {
                fArr2 = new float[]{AnimationUtils.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, f11, f12, fB), i2 - 1, i2};
                break;
            }
            i2++;
            f11 = f12;
        }
        KeylineState keylineState = (KeylineState) list.get((int) fArr2[1]);
        KeylineState keylineState2 = (KeylineState) list.get((int) fArr2[2]);
        float f13 = fArr2[0];
        float f14 = keylineState.f32453a;
        List list2 = keylineState.f32455c;
        if (f14 != keylineState2.f32453a) {
            md.n("Keylines being linearly interpolated must have the same item size.");
            return null;
        }
        List list3 = keylineState2.f32455c;
        if (list2.size() != list3.size()) {
            md.n("Keylines being linearly interpolated must have the same number of keylines.");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < list2.size(); i3++) {
            KeylineState.Keyline keyline = (KeylineState.Keyline) list2.get(i3);
            KeylineState.Keyline keyline2 = (KeylineState.Keyline) list3.get(i3);
            arrayList.add(new KeylineState.Keyline(AnimationUtils.a(keyline.f32465a, keyline2.f32465a, f13), AnimationUtils.a(keyline.f32466b, keyline2.f32466b, f13), AnimationUtils.a(keyline.f32467c, keyline2.f32467c, f13), AnimationUtils.a(keyline.d, keyline2.d, f13), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, false));
        }
        return new KeylineState(keylineState.f32453a, arrayList, AnimationUtils.c(keylineState.d, keylineState2.d, f13), AnimationUtils.c(keylineState.f32456e, keylineState2.f32456e, f13), keylineState.f32457f);
    }

    public final KeylineState c() {
        return (KeylineState) fc.e(1, this.f32472b);
    }
}
