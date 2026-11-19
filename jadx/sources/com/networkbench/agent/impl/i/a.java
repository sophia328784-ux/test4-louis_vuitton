package com.networkbench.agent.impl.i;

import android.graphics.Rect;
import com.networkbench.agent.impl.util.r;
import java.util.BitSet;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37324a = "AxisShadowCalc";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float f37325b = 0.8f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float f37326c = 0.6f;
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37327e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37328f;

    private int b() {
        return r.u().J().getResources().getDisplayMetrics().widthPixels;
    }

    private int c() {
        return r.u().J().getResources().getDisplayMetrics().heightPixels;
    }

    @Override // com.networkbench.agent.impl.i.c
    public boolean a(List<Rect> list, List<Rect> list2, int i2, int i3) {
        if (i2 <= 0 || i3 <= 0) {
            return false;
        }
        this.d = i2;
        this.f37327e = i3;
        BitSet bitSet = new BitSet(this.d);
        BitSet bitSet2 = new BitSet(this.f37327e);
        for (Rect rect : list) {
            bitSet.set(rect.left, rect.right, true);
            bitSet2.set(rect.top, rect.bottom, true);
        }
        for (Rect rect2 : list2) {
            bitSet.set(rect2.left, rect2.right, false);
            bitSet2.set(rect2.top, rect2.bottom, false);
        }
        int iCardinality = bitSet.cardinality();
        int iCardinality2 = bitSet2.cardinality();
        if (iCardinality <= 0) {
            iCardinality = 0;
        }
        return a(iCardinality, iCardinality2 > 0 ? iCardinality2 : 0);
    }

    @Override // com.networkbench.agent.impl.i.c
    public int a() {
        return this.f37328f;
    }

    private int[] a(List<Rect> list) {
        int i2;
        int i3;
        int[] iArr = {0, 0};
        if (list.size() == 0) {
            return iArr;
        }
        Collections.sort(list, new Comparator<Rect>() { // from class: com.networkbench.agent.impl.i.a.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Rect rect, Rect rect2) {
                return rect.left - rect2.left;
            }
        });
        int i4 = 0;
        int i5 = 0;
        for (Rect rect : list) {
            int i6 = rect.left;
            int i7 = rect.right;
            if (i6 >= i4) {
                i3 = i7 - i6;
            } else if (i7 > i4) {
                i3 = i7 - i4;
            }
            i5 += i3;
            i4 = i7;
        }
        Collections.sort(list, new Comparator<Rect>() { // from class: com.networkbench.agent.impl.i.a.2
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Rect rect2, Rect rect3) {
                return rect2.top - rect3.top;
            }
        });
        int i8 = 0;
        int i9 = 0;
        for (Rect rect2 : list) {
            int i10 = rect2.top;
            int i11 = rect2.bottom;
            if (i10 >= i9) {
                i2 = i11 - i10;
            } else if (i11 > i9) {
                i2 = i11 - i9;
            }
            i8 += i2;
            i9 = i11;
        }
        iArr[0] = i5;
        iArr[1] = i8;
        return iArr;
    }

    private boolean a(int i2, int i3) {
        int i4;
        int i5 = this.d;
        if (i5 > 0 && (i4 = this.f37327e) > 0) {
            float f2 = i2 / i5;
            float f3 = i3 / i4;
            this.f37328f = (int) (f2 * f3 * 100.0f);
            if (f2 >= f37325b && f3 >= f37326c) {
                return true;
            }
        }
        return false;
    }
}
