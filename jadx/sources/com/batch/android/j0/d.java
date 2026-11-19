package com.batch.android.j0;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import defpackage.md;
import defpackage.pq0;
import defpackage.r81;
import defpackage.tr;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class d extends ViewGroup {
    public static final int A = 0;
    public static final int B = 1;
    public static final int C = 2;
    public static final int D = 3;
    public static final int E = 4;
    public static final int F = 5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f23501j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f23502k = 1;
    public static final int l = 2;
    public static final int m = 3;
    public static final int n = 0;
    public static final int o = 1;
    public static final int p = 2;
    public static final int q = 0;
    public static final int r = 1;
    public static final int s = 2;
    public static final int t = 3;
    public static final int u = 4;
    public static final int v = 0;
    public static final int w = 1;
    public static final int x = 2;
    public static final int y = 3;
    public static final int z = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f23503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f23504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f23505c;
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f23506e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f23507f;
    private SparseIntArray g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<e> f23508h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean[] f23509i;

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface c {
    }

    /* JADX INFO: renamed from: com.batch.android.j0.d$d, reason: collision with other inner class name */
    @Retention(RetentionPolicy.SOURCE)
    public @interface InterfaceC0056d {
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f23510a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f23511b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f23512c;
        float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f23513e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f23514f;
        List<Integer> g;

        private e() {
            this.g = new ArrayList();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface f {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface g {
    }

    public static class i implements Comparable<i> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f23524b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f23525c;

        private i() {
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(i iVar) {
            int i2 = this.f23525c;
            int i3 = iVar.f23525c;
            return i2 != i3 ? i2 - i3 : this.f23524b - iVar.f23524b;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Order{order=");
            sb.append(this.f23525c);
            sb.append(", index=");
            return tr.k(sb, this.f23524b, '}');
        }
    }

    public d(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f23508h = new ArrayList();
    }

    private void a(int i2, int i3) {
        int i4;
        int measuredHeight;
        d dVar = this;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        dVar.f23508h.clear();
        int childCount = dVar.getChildCount();
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        int paddingStart = dVar.getPaddingStart();
        int paddingEnd = dVar.getPaddingEnd();
        e eVar = new e();
        int i5 = paddingStart + paddingEnd;
        eVar.f23510a = i5;
        e eVar2 = eVar;
        int i6 = 0;
        int i7 = Integer.MIN_VALUE;
        for (int i8 = 0; i8 < childCount; i8++) {
            View viewB = dVar.b(i8);
            if (viewB == null) {
                dVar.a(i8, childCount, eVar2);
            } else if (viewB.getVisibility() == 8) {
                eVar2.f23512c++;
                dVar.a(i8, childCount, eVar2);
            } else {
                h hVar = (h) viewB.getLayoutParams();
                if (hVar.d == 4) {
                    eVar2.g.add(Integer.valueOf(i8));
                }
                int iRound = ((ViewGroup.MarginLayoutParams) hVar).width;
                float f2 = hVar.f23519e;
                if (f2 != -1.0f && mode == 1073741824) {
                    iRound = Math.round(size * f2);
                }
                viewB.measure(ViewGroup.getChildMeasureSpec(i2, dVar.getPaddingRight() + dVar.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) hVar).leftMargin + ((ViewGroup.MarginLayoutParams) hVar).rightMargin, iRound), ViewGroup.getChildMeasureSpec(i3, dVar.getPaddingBottom() + dVar.getPaddingTop() + ((ViewGroup.MarginLayoutParams) hVar).topMargin + ((ViewGroup.MarginLayoutParams) hVar).bottomMargin, ((ViewGroup.MarginLayoutParams) hVar).height));
                dVar.a(viewB);
                int iCombineMeasuredStates = View.combineMeasuredStates(i6, viewB.getMeasuredState());
                int iMax = Math.max(i7, viewB.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) hVar).topMargin + ((ViewGroup.MarginLayoutParams) hVar).bottomMargin);
                int i9 = dVar.f23504b;
                dVar = this;
                if (dVar.a(i9, mode, size, eVar2.f23510a, viewB.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) hVar).leftMargin + ((ViewGroup.MarginLayoutParams) hVar).rightMargin, hVar)) {
                    dVar.f23508h.add(eVar2);
                    eVar2 = new e();
                    eVar2.f23512c = 1;
                    eVar2.f23510a = i5;
                    measuredHeight = viewB.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) hVar).topMargin + ((ViewGroup.MarginLayoutParams) hVar).bottomMargin;
                } else {
                    eVar2.f23512c++;
                    measuredHeight = iMax;
                }
                eVar2.f23510a = viewB.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) hVar).leftMargin + ((ViewGroup.MarginLayoutParams) hVar).rightMargin + eVar2.f23510a;
                eVar2.d += hVar.f23517b;
                eVar2.f23513e += hVar.f23518c;
                eVar2.f23511b = Math.max(eVar2.f23511b, measuredHeight);
                int i10 = dVar.f23504b;
                int i11 = eVar2.f23514f;
                if (i10 != 2) {
                    eVar2.f23514f = Math.max(i11, viewB.getBaseline() + ((ViewGroup.MarginLayoutParams) hVar).topMargin);
                } else {
                    eVar2.f23514f = Math.max(i11, (viewB.getMeasuredHeight() - viewB.getBaseline()) + ((ViewGroup.MarginLayoutParams) hVar).bottomMargin);
                }
                dVar.a(i8, childCount, eVar2);
                i7 = measuredHeight;
                i6 = iCombineMeasuredStates;
            }
        }
        dVar.a(dVar.f23503a, i2, i3);
        if (dVar.d == 3) {
            int i12 = 0;
            for (e eVar3 : dVar.f23508h) {
                int i13 = i12;
                int iMax2 = Integer.MIN_VALUE;
                while (true) {
                    i4 = eVar3.f23512c + i12;
                    if (i13 < i4) {
                        View viewB2 = dVar.b(i13);
                        h hVar2 = (h) viewB2.getLayoutParams();
                        int i14 = dVar.f23504b;
                        int i15 = eVar3.f23514f;
                        iMax2 = i14 != 2 ? Math.max(iMax2, viewB2.getHeight() + Math.max(i15 - viewB2.getBaseline(), ((ViewGroup.MarginLayoutParams) hVar2).topMargin) + ((ViewGroup.MarginLayoutParams) hVar2).bottomMargin) : Math.max(iMax2, viewB2.getHeight() + ((ViewGroup.MarginLayoutParams) hVar2).topMargin + Math.max(viewB2.getBaseline() + (i15 - viewB2.getMeasuredHeight()), ((ViewGroup.MarginLayoutParams) hVar2).bottomMargin));
                        i13++;
                    }
                }
                eVar3.f23511b = iMax2;
                i12 = i4;
            }
        }
        dVar.a(dVar.f23503a, i2, i3, dVar.getPaddingBottom() + dVar.getPaddingTop());
        dVar.c(dVar.f23503a, dVar.d);
        dVar.b(dVar.f23503a, i2, i3, i6);
    }

    private void b(int i2, int i3) {
        int iMax;
        a aVar;
        d dVar = this;
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        dVar.f23508h.clear();
        int childCount = dVar.getChildCount();
        int paddingTop = dVar.getPaddingTop();
        int paddingBottom = dVar.getPaddingBottom();
        a aVar2 = null;
        e eVar = new e();
        int i4 = paddingTop + paddingBottom;
        eVar.f23510a = i4;
        int i5 = 0;
        int i6 = Integer.MIN_VALUE;
        int i7 = 0;
        e eVar2 = eVar;
        while (i7 < childCount) {
            View viewB = dVar.b(i7);
            if (viewB == null) {
                dVar.a(i7, childCount, eVar2);
            } else {
                if (viewB.getVisibility() == 8) {
                    eVar2.f23512c++;
                    dVar.a(i7, childCount, eVar2);
                } else {
                    h hVar = (h) viewB.getLayoutParams();
                    if (hVar.d == 4) {
                        eVar2.g.add(Integer.valueOf(i7));
                    }
                    int iRound = ((ViewGroup.MarginLayoutParams) hVar).height;
                    float f2 = hVar.f23519e;
                    if (f2 != -1.0f && mode == 1073741824) {
                        iRound = Math.round(size * f2);
                    }
                    viewB.measure(ViewGroup.getChildMeasureSpec(i2, dVar.getPaddingRight() + dVar.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) hVar).leftMargin + ((ViewGroup.MarginLayoutParams) hVar).rightMargin, ((ViewGroup.MarginLayoutParams) hVar).width), ViewGroup.getChildMeasureSpec(i3, dVar.getPaddingBottom() + dVar.getPaddingTop() + ((ViewGroup.MarginLayoutParams) hVar).topMargin + ((ViewGroup.MarginLayoutParams) hVar).bottomMargin, iRound));
                    dVar.a(viewB);
                    WeakHashMap weakHashMap = ViewCompat.f12200a;
                    int iCombineMeasuredStates = View.combineMeasuredStates(i5, viewB.getMeasuredState());
                    iMax = Math.max(i6, viewB.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) hVar).leftMargin + ((ViewGroup.MarginLayoutParams) hVar).rightMargin);
                    int i8 = dVar.f23504b;
                    dVar = this;
                    if (dVar.a(i8, mode, size, eVar2.f23510a, viewB.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) hVar).topMargin + ((ViewGroup.MarginLayoutParams) hVar).bottomMargin, hVar)) {
                        dVar.f23508h.add(eVar2);
                        aVar = null;
                        eVar2 = new e();
                        eVar2.f23512c = 1;
                        eVar2.f23510a = i4;
                        iMax = viewB.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) hVar).leftMargin + ((ViewGroup.MarginLayoutParams) hVar).rightMargin;
                    } else {
                        aVar = null;
                        eVar2.f23512c++;
                    }
                    eVar2.f23510a = viewB.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) hVar).topMargin + ((ViewGroup.MarginLayoutParams) hVar).bottomMargin + eVar2.f23510a;
                    eVar2.d += hVar.f23517b;
                    eVar2.f23513e += hVar.f23518c;
                    eVar2.f23511b = Math.max(eVar2.f23511b, iMax);
                    dVar.a(i7, childCount, eVar2);
                    i5 = iCombineMeasuredStates;
                }
                i7++;
                aVar2 = aVar;
                i6 = iMax;
            }
            iMax = i6;
            aVar = aVar2;
            i7++;
            aVar2 = aVar;
            i6 = iMax;
        }
        dVar.a(dVar.f23503a, i2, i3);
        dVar.a(dVar.f23503a, i2, i3, dVar.getPaddingRight() + dVar.getPaddingLeft());
        dVar.c(dVar.f23503a, dVar.d);
        dVar.b(dVar.f23503a, i2, i3, i5);
    }

    private void c(int i2, int i3) {
        List<e> list = this.f23508h;
        if (i3 != 4) {
            for (e eVar : list) {
                Iterator<Integer> it = eVar.g.iterator();
                while (it.hasNext()) {
                    View viewB = b(it.next().intValue());
                    if (i2 == 0 || i2 == 1) {
                        b(viewB, eVar.f23511b);
                    } else {
                        if (i2 != 2 && i2 != 3) {
                            md.n(pq0.k(i2, "Invalid flex direction: "));
                            return;
                        }
                        a(viewB, eVar.f23511b);
                    }
                }
            }
            return;
        }
        int i4 = 0;
        for (e eVar2 : list) {
            int i5 = 0;
            while (i5 < eVar2.f23512c) {
                View viewB2 = b(i4);
                int i6 = ((h) viewB2.getLayoutParams()).d;
                if (i6 == -1 || i6 == 4) {
                    if (i2 == 0 || i2 == 1) {
                        b(viewB2, eVar2.f23511b);
                    } else {
                        if (i2 != 2 && i2 != 3) {
                            md.n(pq0.k(i2, "Invalid flex direction: "));
                            return;
                        }
                        a(viewB2, eVar2.f23511b);
                    }
                }
                i5++;
                i4++;
            }
        }
    }

    private int getLargestMainSize() {
        Iterator<e> it = this.f23508h.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it.hasNext()) {
            iMax = Math.max(iMax, it.next().f23510a);
        }
        return iMax;
    }

    private int getSumOfCrossSize() {
        Iterator<e> it = this.f23508h.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 += it.next().f23511b;
        }
        return i2;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        this.f23507f = a(view, i2, layoutParams);
        super.addView(view, i2, layoutParams);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof h;
    }

    @Override // android.view.ViewGroup
    public h generateLayoutParams(AttributeSet attributeSet) {
        return new h(getContext(), attributeSet);
    }

    public int getAlignContent() {
        return this.f23506e;
    }

    public int getAlignItems() {
        return this.d;
    }

    public int getFlexDirection() {
        return this.f23503a;
    }

    public int getFlexWrap() {
        return this.f23504b;
    }

    public int getJustifyContent() {
        return this.f23505c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        boolean z3;
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        int layoutDirection = getLayoutDirection();
        int i6 = this.f23503a;
        if (i6 == 0) {
            a(layoutDirection == 1, i2, i3, i4, i5);
            return;
        }
        if (i6 == 1) {
            a(layoutDirection != 1, i2, i3, i4, i5);
            return;
        }
        if (i6 == 2) {
            z3 = layoutDirection == 1;
            if (this.f23504b == 2) {
                z3 = !z3;
            }
            a(z3, false, i2, i3, i4, i5);
            return;
        }
        if (i6 != 3) {
            r81.c(this.f23503a, "Invalid flex direction is set: ");
            return;
        }
        z3 = layoutDirection == 1;
        if (this.f23504b == 2) {
            z3 = !z3;
        }
        a(z3, true, i2, i3, i4, i5);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (b()) {
            this.f23507f = a();
        }
        boolean[] zArr = this.f23509i;
        if (zArr == null || zArr.length < getChildCount()) {
            this.f23509i = new boolean[getChildCount()];
        }
        int i4 = this.f23503a;
        if (i4 == 0 || i4 == 1) {
            a(i2, i3);
        } else {
            if (i4 != 2 && i4 != 3) {
                r81.c(this.f23503a, "Invalid value for the flex direction is set: ");
                return;
            }
            b(i2, i3);
        }
        Arrays.fill(this.f23509i, false);
    }

    public void setAlignContent(int i2) {
        if (this.f23506e != i2) {
            this.f23506e = i2;
            requestLayout();
        }
    }

    public void setAlignItems(int i2) {
        if (this.d != i2) {
            this.d = i2;
            requestLayout();
        }
    }

    public void setFlexDirection(int i2) {
        if (this.f23503a != i2) {
            this.f23503a = i2;
            requestLayout();
        }
    }

    public void setFlexWrap(int i2) {
        if (this.f23504b != i2) {
            this.f23504b = i2;
            requestLayout();
        }
    }

    public void setJustifyContent(int i2) {
        if (this.f23505c != i2) {
            this.f23505c = i2;
            requestLayout();
        }
    }

    public d(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new h(layoutParams);
    }

    public d(Context context) {
        this(context, null);
    }

    public static class h extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final int f23515k = 1;
        private static final float l = 0.0f;
        private static final float m = 1.0f;
        public static final float n = -1.0f;
        public static final int o = -1;
        public static final int p = 0;
        public static final int q = 1;
        public static final int r = 2;
        public static final int s = 3;
        public static final int t = 4;
        private static final int u = 16777215;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f23516a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f23517b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f23518c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f23519e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f23520f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f23521h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f23522i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f23523j;

        public h(h hVar) {
            super((ViewGroup.MarginLayoutParams) hVar);
            this.f23516a = 1;
            this.f23517b = 0.0f;
            this.f23518c = 1.0f;
            this.d = -1;
            this.f23519e = -1.0f;
            this.f23521h = u;
            this.f23522i = u;
            this.f23516a = hVar.f23516a;
            this.f23517b = hVar.f23517b;
            this.f23518c = hVar.f23518c;
            this.d = hVar.d;
            this.f23519e = hVar.f23519e;
            this.f23520f = hVar.f23520f;
            this.g = hVar.g;
            this.f23521h = hVar.f23521h;
            this.f23522i = hVar.f23522i;
            this.f23523j = hVar.f23523j;
        }

        public h(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f23516a = 1;
            this.f23517b = 0.0f;
            this.f23518c = 1.0f;
            this.d = -1;
            this.f23519e = -1.0f;
            this.f23521h = u;
            this.f23522i = u;
        }

        public h(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f23516a = 1;
            this.f23517b = 0.0f;
            this.f23518c = 1.0f;
            this.d = -1;
            this.f23519e = -1.0f;
            this.f23521h = u;
            this.f23522i = u;
        }

        public h(int i2, int i3) {
            super(new ViewGroup.LayoutParams(i2, i3));
            this.f23516a = 1;
            this.f23517b = 0.0f;
            this.f23518c = 1.0f;
            this.d = -1;
            this.f23519e = -1.0f;
            this.f23521h = u;
            this.f23522i = u;
        }
    }

    private boolean b() {
        int childCount = getChildCount();
        if (this.g == null) {
            this.g = new SparseIntArray(childCount);
        }
        if (this.g.size() != childCount) {
            return true;
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null && ((h) childAt.getLayoutParams()).f23516a != this.g.get(i2)) {
                return true;
            }
        }
        return false;
    }

    public View b(int i2) {
        if (i2 < 0) {
            return null;
        }
        int[] iArr = this.f23507f;
        if (i2 >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i2]);
    }

    private int b(e eVar, int i2, int i3, int i4, int i5) {
        int i6 = eVar.f23510a;
        float f2 = eVar.f23513e;
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM && i3 <= i6) {
            float f3 = (i6 - i3) / f2;
            eVar.f23510a = i4;
            int i7 = i5;
            float f4 = 0.0f;
            boolean z2 = false;
            for (int i8 = 0; i8 < eVar.f23512c; i8++) {
                View viewB = b(i7);
                if (viewB != null) {
                    if (viewB.getVisibility() != 8) {
                        h hVar = (h) viewB.getLayoutParams();
                        if (i2 != 0 && i2 != 1) {
                            if (!this.f23509i[i7]) {
                                float measuredHeight = viewB.getMeasuredHeight() - (hVar.f23518c * f3);
                                if (i8 == eVar.f23512c - 1) {
                                    measuredHeight += f4;
                                    f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                int iRound = Math.round(measuredHeight);
                                int i9 = hVar.g;
                                if (iRound < i9) {
                                    this.f23509i[i7] = true;
                                    eVar.f23513e -= hVar.f23518c;
                                    iRound = i9;
                                    z2 = true;
                                } else {
                                    float f5 = (measuredHeight - iRound) + f4;
                                    double d = f5;
                                    if (d > 1.0d) {
                                        iRound++;
                                        f5 -= 1.0f;
                                    } else if (d < -1.0d) {
                                        iRound--;
                                        f5 += 1.0f;
                                    }
                                    f4 = f5;
                                }
                                viewB.measure(View.MeasureSpec.makeMeasureSpec(viewB.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(iRound, 1073741824));
                            }
                            eVar.f23510a = viewB.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) hVar).topMargin + ((ViewGroup.MarginLayoutParams) hVar).bottomMargin + eVar.f23510a;
                        } else {
                            if (!this.f23509i[i7]) {
                                float measuredWidth = viewB.getMeasuredWidth() - (hVar.f23518c * f3);
                                if (i8 == eVar.f23512c - 1) {
                                    measuredWidth += f4;
                                    f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                int iRound2 = Math.round(measuredWidth);
                                int i10 = hVar.f23520f;
                                if (iRound2 < i10) {
                                    this.f23509i[i7] = true;
                                    eVar.f23513e -= hVar.f23518c;
                                    iRound2 = i10;
                                    z2 = true;
                                } else {
                                    float f6 = (measuredWidth - iRound2) + f4;
                                    double d2 = f6;
                                    if (d2 > 1.0d) {
                                        iRound2++;
                                        f6 -= 1.0f;
                                    } else if (d2 < -1.0d) {
                                        iRound2--;
                                        f6 += 1.0f;
                                    }
                                    f4 = f6;
                                }
                                viewB.measure(View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824), View.MeasureSpec.makeMeasureSpec(viewB.getMeasuredHeight(), 1073741824));
                            }
                            eVar.f23510a = viewB.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) hVar).leftMargin + ((ViewGroup.MarginLayoutParams) hVar).rightMargin + eVar.f23510a;
                        }
                    }
                    i7++;
                }
            }
            if (z2 && i6 != eVar.f23510a) {
                b(eVar, i2, i3, i4, i5);
            }
            return i7;
        }
        return i5 + eVar.f23512c;
    }

    private void b(View view, int i2) {
        h hVar = (h) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.max((i2 - ((ViewGroup.MarginLayoutParams) hVar).topMargin) - ((ViewGroup.MarginLayoutParams) hVar).bottomMargin, 0), 1073741824));
    }

    private void b(int i2, int i3, int i4, int i5) {
        int paddingBottom;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i4);
        if (i2 == 0 || i2 == 1) {
            paddingBottom = getPaddingBottom() + getPaddingTop() + getSumOfCrossSize();
            largestMainSize = getLargestMainSize();
        } else {
            if (i2 != 2 && i2 != 3) {
                md.n(pq0.k(i2, "Invalid flex direction: "));
                return;
            }
            paddingBottom = getLargestMainSize();
            largestMainSize = getPaddingRight() + getPaddingLeft() + getSumOfCrossSize();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                i5 = View.combineMeasuredStates(i5, 16777216);
            } else {
                size = largestMainSize;
            }
            WeakHashMap weakHashMap2 = ViewCompat.f12200a;
            iResolveSizeAndState = View.resolveSizeAndState(size, i3, i5);
        } else if (mode == 0) {
            WeakHashMap weakHashMap3 = ViewCompat.f12200a;
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i3, i5);
        } else if (mode == 1073741824) {
            if (size < largestMainSize) {
                WeakHashMap weakHashMap4 = ViewCompat.f12200a;
                i5 = View.combineMeasuredStates(i5, 16777216);
            }
            WeakHashMap weakHashMap5 = ViewCompat.f12200a;
            iResolveSizeAndState = View.resolveSizeAndState(size, i3, i5);
        } else {
            md.k(pq0.k(mode, "Unknown width mode is set: "));
            return;
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < paddingBottom) {
                i5 = View.combineMeasuredStates(i5, 256);
            } else {
                size2 = paddingBottom;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i4, i5);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(paddingBottom, i4, i5);
        } else if (mode2 == 1073741824) {
            if (size2 < paddingBottom) {
                i5 = View.combineMeasuredStates(i5, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i4, i5);
        } else {
            md.k(pq0.k(mode2, "Unknown height mode is set: "));
            return;
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    private int[] a() {
        int childCount = getChildCount();
        return a(childCount, a(childCount));
    }

    private int[] a(int i2, List<i> list) {
        Collections.sort(list);
        if (this.g == null) {
            this.g = new SparseIntArray(i2);
        }
        this.g.clear();
        int[] iArr = new int[i2];
        int i3 = 0;
        for (i iVar : list) {
            iArr[i3] = iVar.f23524b;
            this.g.append(i3, iVar.f23525c);
            i3++;
        }
        return iArr;
    }

    private List<i> a(int i2) {
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < i2; i3++) {
            h hVar = (h) getChildAt(i3).getLayoutParams();
            i iVar = new i();
            iVar.f23525c = hVar.f23516a;
            iVar.f23524b = i3;
            arrayList.add(iVar);
        }
        return arrayList;
    }

    private int[] a(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        int childCount = getChildCount();
        List<i> listA = a(childCount);
        i iVar = new i();
        if (view != null && (layoutParams instanceof h)) {
            iVar.f23525c = ((h) layoutParams).f23516a;
        } else {
            iVar.f23525c = 1;
        }
        if (i2 != -1 && i2 != childCount && i2 < getChildCount()) {
            iVar.f23524b = i2;
            while (i2 < childCount) {
                listA.get(i2).f23524b++;
                i2++;
            }
        } else {
            iVar.f23524b = childCount;
        }
        listA.add(iVar);
        return a(childCount + 1, listA);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0017 A[PHI: r3
      0x0017: PHI (r3v3 int) = (r3v0 int), (r3v1 int) binds: [B:3:0x0015, B:6:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
    private void a(View view) {
        boolean z2;
        h hVar = (h) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int i2 = hVar.f23520f;
        boolean z3 = true;
        if (measuredWidth2 < i2) {
            measuredWidth = i2;
            z2 = true;
        } else {
            int measuredWidth3 = view.getMeasuredWidth();
            i2 = hVar.f23521h;
            if (measuredWidth3 > i2) {
                measuredWidth = i2;
                z2 = true;
            } else {
                z2 = false;
            }
        }
        int i3 = hVar.g;
        if (measuredHeight < i3) {
            measuredHeight = i3;
        } else {
            int i4 = hVar.f23522i;
            if (measuredHeight > i4) {
                measuredHeight = i4;
            } else {
                z3 = z2;
            }
        }
        if (z3) {
            view.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        }
    }

    private void a(int i2, int i3, e eVar) {
        if (i2 != i3 - 1 || eVar.f23512c == 0) {
            return;
        }
        this.f23508h.add(eVar);
    }

    private void a(int i2, int i3, int i4) {
        int size;
        int paddingLeft;
        int paddingRight;
        if (i2 != 0 && i2 != 1) {
            if (i2 != 2 && i2 != 3) {
                md.n(pq0.k(i2, "Invalid flex direction: "));
                return;
            }
            int mode = View.MeasureSpec.getMode(i4);
            size = View.MeasureSpec.getSize(i4);
            if (mode != 1073741824) {
                size = getLargestMainSize();
            }
            paddingLeft = getPaddingTop();
            paddingRight = getPaddingBottom();
        } else {
            int mode2 = View.MeasureSpec.getMode(i3);
            int size2 = View.MeasureSpec.getSize(i3);
            if (mode2 != 1073741824) {
                size2 = getLargestMainSize();
            }
            size = size2;
            paddingLeft = getPaddingLeft();
            paddingRight = getPaddingRight();
        }
        int i5 = paddingRight + paddingLeft;
        int i6 = size;
        int iA = 0;
        for (e eVar : this.f23508h) {
            if (eVar.f23510a < i6) {
                iA = a(eVar, i2, i6, i5, iA);
            } else {
                iA = b(eVar, i2, i6, i5, iA);
            }
        }
    }

    private int a(e eVar, int i2, int i3, int i4, int i5) {
        int i6;
        double d;
        double d2;
        float f2 = eVar.d;
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM && i3 >= (i6 = eVar.f23510a)) {
            float f3 = (i3 - i6) / f2;
            eVar.f23510a = i4;
            int i7 = i5;
            float f4 = 0.0f;
            boolean z2 = false;
            for (int i8 = 0; i8 < eVar.f23512c; i8++) {
                View viewB = b(i7);
                if (viewB != null) {
                    if (viewB.getVisibility() != 8) {
                        h hVar = (h) viewB.getLayoutParams();
                        if (i2 != 0 && i2 != 1) {
                            if (!this.f23509i[i7]) {
                                float measuredHeight = (hVar.f23517b * f3) + viewB.getMeasuredHeight();
                                if (i8 == eVar.f23512c - 1) {
                                    measuredHeight += f4;
                                    f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                int iRound = Math.round(measuredHeight);
                                int i9 = hVar.f23522i;
                                if (iRound > i9) {
                                    this.f23509i[i7] = true;
                                    eVar.d -= hVar.f23517b;
                                    iRound = i9;
                                    z2 = true;
                                } else {
                                    float f5 = (measuredHeight - iRound) + f4;
                                    double d3 = f5;
                                    if (d3 > 1.0d) {
                                        iRound++;
                                        d2 = d3 - 1.0d;
                                    } else if (d3 < -1.0d) {
                                        iRound--;
                                        d2 = d3 + 1.0d;
                                    } else {
                                        f4 = f5;
                                    }
                                    f4 = (float) d2;
                                }
                                viewB.measure(View.MeasureSpec.makeMeasureSpec(viewB.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(iRound, 1073741824));
                            }
                            eVar.f23510a = viewB.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) hVar).topMargin + ((ViewGroup.MarginLayoutParams) hVar).bottomMargin + eVar.f23510a;
                        } else {
                            if (!this.f23509i[i7]) {
                                float measuredWidth = (hVar.f23517b * f3) + viewB.getMeasuredWidth();
                                if (i8 == eVar.f23512c - 1) {
                                    measuredWidth += f4;
                                    f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                int iRound2 = Math.round(measuredWidth);
                                int i10 = hVar.f23521h;
                                if (iRound2 > i10) {
                                    this.f23509i[i7] = true;
                                    eVar.d -= hVar.f23517b;
                                    iRound2 = i10;
                                    z2 = true;
                                } else {
                                    float f6 = (measuredWidth - iRound2) + f4;
                                    double d4 = f6;
                                    if (d4 > 1.0d) {
                                        iRound2++;
                                        d = d4 - 1.0d;
                                    } else {
                                        if (d4 < -1.0d) {
                                            iRound2--;
                                            d = d4 + 1.0d;
                                        }
                                        f4 = f6;
                                    }
                                    f6 = (float) d;
                                    f4 = f6;
                                }
                                viewB.measure(View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824), View.MeasureSpec.makeMeasureSpec(viewB.getMeasuredHeight(), 1073741824));
                            }
                            eVar.f23510a = viewB.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) hVar).leftMargin + ((ViewGroup.MarginLayoutParams) hVar).rightMargin + eVar.f23510a;
                        }
                    }
                    i7++;
                }
            }
            if (z2 && i6 != eVar.f23510a) {
                a(eVar, i2, i3, i4, i5);
            }
            return i7;
        }
        return i5 + eVar.f23512c;
    }

    private void a(int i2, int i3, int i4, int i5) {
        int mode;
        int size;
        if (i2 == 0 || i2 == 1) {
            mode = View.MeasureSpec.getMode(i4);
            size = View.MeasureSpec.getSize(i4);
        } else if (i2 != 2 && i2 != 3) {
            md.n(pq0.k(i2, "Invalid flex direction: "));
            return;
        } else {
            mode = View.MeasureSpec.getMode(i3);
            size = View.MeasureSpec.getSize(i3);
        }
        if (mode == 1073741824) {
            int sumOfCrossSize = getSumOfCrossSize() + i5;
            int size2 = this.f23508h.size();
            List<e> list = this.f23508h;
            int i6 = 0;
            if (size2 == 1) {
                list.get(0).f23511b = size - i5;
                return;
            }
            if (list.size() < 2 || sumOfCrossSize >= size) {
                return;
            }
            int i7 = this.f23506e;
            if (i7 == 1) {
                int i8 = size - sumOfCrossSize;
                e eVar = new e();
                eVar.f23511b = i8;
                this.f23508h.add(0, eVar);
                return;
            }
            if (i7 == 2) {
                int i9 = (size - sumOfCrossSize) / 2;
                ArrayList arrayList = new ArrayList();
                e eVar2 = new e();
                eVar2.f23511b = i9;
                while (i6 < this.f23508h.size()) {
                    if (i6 == 0) {
                        arrayList.add(eVar2);
                    }
                    arrayList.add(this.f23508h.get(i6));
                    if (i6 == this.f23508h.size() - 1) {
                        arrayList.add(eVar2);
                    }
                    i6++;
                }
                this.f23508h = arrayList;
                return;
            }
            if (i7 == 3) {
                float size3 = (size - sumOfCrossSize) / (this.f23508h.size() - 1);
                ArrayList arrayList2 = new ArrayList();
                float f2 = 0.0f;
                while (i6 < this.f23508h.size()) {
                    arrayList2.add(this.f23508h.get(i6));
                    if (i6 != this.f23508h.size() - 1) {
                        e eVar3 = new e();
                        if (i6 == this.f23508h.size() - 2) {
                            eVar3.f23511b = Math.round(f2 + size3);
                            f2 = 0.0f;
                        } else {
                            eVar3.f23511b = Math.round(size3);
                        }
                        int i10 = eVar3.f23511b;
                        float f3 = (size3 - i10) + f2;
                        if (f3 > 1.0f) {
                            eVar3.f23511b = i10 + 1;
                            f3 -= 1.0f;
                        } else if (f3 < -1.0f) {
                            eVar3.f23511b = i10 - 1;
                            f3 += 1.0f;
                        }
                        f2 = f3;
                        arrayList2.add(eVar3);
                    }
                    i6++;
                }
                this.f23508h = arrayList2;
                return;
            }
            if (i7 == 4) {
                int size4 = (size - sumOfCrossSize) / (this.f23508h.size() * 2);
                ArrayList arrayList3 = new ArrayList();
                e eVar4 = new e();
                eVar4.f23511b = size4;
                for (e eVar5 : this.f23508h) {
                    arrayList3.add(eVar4);
                    arrayList3.add(eVar5);
                    arrayList3.add(eVar4);
                }
                this.f23508h = arrayList3;
                return;
            }
            if (i7 != 5) {
                return;
            }
            float size5 = (size - sumOfCrossSize) / this.f23508h.size();
            float f4 = 0.0f;
            while (i6 < this.f23508h.size()) {
                e eVar6 = this.f23508h.get(i6);
                float f5 = eVar6.f23511b + size5;
                if (i6 == this.f23508h.size() - 1) {
                    f5 += f4;
                    f4 = 0.0f;
                }
                int iRound = Math.round(f5);
                float f6 = (f5 - iRound) + f4;
                if (f6 > 1.0f) {
                    iRound++;
                    f6 -= 1.0f;
                } else if (f6 < -1.0f) {
                    iRound--;
                    f6 += 1.0f;
                }
                f4 = f6;
                eVar6.f23511b = iRound;
                i6++;
            }
        }
    }

    private void a(View view, int i2) {
        h hVar = (h) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec(Math.max((i2 - ((ViewGroup.MarginLayoutParams) hVar).leftMargin) - ((ViewGroup.MarginLayoutParams) hVar).rightMargin, 0), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824));
    }

    private boolean a(int i2, int i3, int i4, int i5, int i6, h hVar) {
        if (i2 == 0) {
            return false;
        }
        if (hVar.f23523j) {
            return true;
        }
        return (i3 == 1073741824 || i3 == Integer.MIN_VALUE) && i4 < i5 + i6;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009a  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:48:0x0111  */
    /* JADX WARN: Code duplicated, block: B:50:0x011b  */
    /* JADX WARN: Code duplicated, block: B:51:0x0133  */
    private void a(boolean z2, int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float fMax;
        int i6;
        int i7;
        View viewB;
        float f5;
        float f6;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        d dVar = this;
        int paddingLeft = dVar.getPaddingLeft();
        int paddingRight = dVar.getPaddingRight();
        int i13 = i4 - i2;
        int paddingBottom = (i5 - i3) - dVar.getPaddingBottom();
        int paddingTop = dVar.getPaddingTop();
        int i14 = paddingBottom;
        int i15 = paddingTop;
        int i16 = 0;
        for (e eVar : dVar.f23508h) {
            int i17 = dVar.f23505c;
            if (i17 == 0) {
                f2 = paddingLeft;
                f3 = i13 - paddingRight;
            } else if (i17 == 1) {
                int i18 = eVar.f23510a;
                f3 = i18 - paddingLeft;
                f2 = (i13 - i18) + paddingRight;
            } else {
                if (i17 == 2) {
                    float f7 = (i13 - eVar.f23510a) / 2.0f;
                    f2 = paddingLeft + f7;
                    f3 = (i13 - paddingRight) - f7;
                } else if (i17 == 3) {
                    f2 = paddingLeft;
                    int i19 = eVar.f23512c;
                    f4 = (i13 - eVar.f23510a) / (i19 != 1 ? i19 - 1 : 1.0f);
                    f3 = i13 - paddingRight;
                } else if (i17 == 4) {
                    int i20 = eVar.f23512c;
                    f4 = i20 != 0 ? (i13 - eVar.f23510a) / i20 : 0.0f;
                    float f8 = f4 / 2.0f;
                    f2 = paddingLeft + f8;
                    f3 = (i13 - paddingRight) - f8;
                } else {
                    r81.c(dVar.f23505c, "Invalid justifyContent is set: ");
                    return;
                }
                fMax = Math.max(f4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                i6 = 0;
                while (i6 < eVar.f23512c) {
                    i7 = i16;
                    viewB = dVar.b(i7);
                    if (viewB == null) {
                        i16 = i7;
                    } else {
                        if (viewB.getVisibility() == 8) {
                            i16 = i7 + 1;
                        } else {
                            h hVar = (h) viewB.getLayoutParams();
                            f5 = f2 + ((ViewGroup.MarginLayoutParams) hVar).leftMargin;
                            f6 = f3 - ((ViewGroup.MarginLayoutParams) hVar).rightMargin;
                            i8 = dVar.f23504b;
                            if (i8 == 2) {
                                i6 = i6;
                                i12 = dVar.d;
                                if (z2) {
                                    dVar.a(viewB, eVar, i8, i12, Math.round(f6) - viewB.getMeasuredWidth(), i14 - viewB.getMeasuredHeight(), Math.round(f6), i14);
                                } else {
                                    a(viewB, eVar, i8, i12, Math.round(f5), i14 - viewB.getMeasuredHeight(), viewB.getMeasuredWidth() + Math.round(f5), i14);
                                }
                                i9 = i14;
                                i11 = i15;
                            } else {
                                i6 = i6;
                                i7 = i7;
                                i9 = i14;
                                i10 = dVar.d;
                                if (z2) {
                                    i11 = i15;
                                    dVar.a(viewB, eVar, i8, i10, Math.round(f6) - viewB.getMeasuredWidth(), i11, Math.round(f6), viewB.getMeasuredHeight() + i15);
                                } else {
                                    i11 = i15;
                                    a(viewB, eVar, i8, i10, Math.round(f5), i11, viewB.getMeasuredWidth() + Math.round(f5), viewB.getMeasuredHeight() + i11);
                                }
                            }
                            float measuredWidth = viewB.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) hVar).rightMargin + f5;
                            float measuredWidth2 = f6 - ((viewB.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) hVar).leftMargin);
                            i16 = i7 + 1;
                            f2 = measuredWidth;
                            f3 = measuredWidth2;
                        }
                        i6++;
                        dVar = this;
                        i15 = i11;
                        i14 = i9;
                    }
                    i9 = i14;
                    i11 = i15;
                    i6++;
                    dVar = this;
                    i15 = i11;
                    i14 = i9;
                }
                int i21 = eVar.f23511b;
                i15 += i21;
                i14 -= i21;
                dVar = this;
            }
            f4 = 0.0f;
            fMax = Math.max(f4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            i6 = 0;
            while (i6 < eVar.f23512c) {
                i7 = i16;
                viewB = dVar.b(i7);
                if (viewB == null) {
                    i16 = i7;
                } else {
                    if (viewB.getVisibility() == 8) {
                        i16 = i7 + 1;
                    } else {
                        h hVar2 = (h) viewB.getLayoutParams();
                        f5 = f2 + ((ViewGroup.MarginLayoutParams) hVar2).leftMargin;
                        f6 = f3 - ((ViewGroup.MarginLayoutParams) hVar2).rightMargin;
                        i8 = dVar.f23504b;
                        if (i8 == 2) {
                            i6 = i6;
                            i12 = dVar.d;
                            if (z2) {
                                dVar.a(viewB, eVar, i8, i12, Math.round(f6) - viewB.getMeasuredWidth(), i14 - viewB.getMeasuredHeight(), Math.round(f6), i14);
                            } else {
                                a(viewB, eVar, i8, i12, Math.round(f5), i14 - viewB.getMeasuredHeight(), viewB.getMeasuredWidth() + Math.round(f5), i14);
                            }
                            i9 = i14;
                            i11 = i15;
                        } else {
                            i6 = i6;
                            i7 = i7;
                            i9 = i14;
                            i10 = dVar.d;
                            if (z2) {
                                i11 = i15;
                                dVar.a(viewB, eVar, i8, i10, Math.round(f6) - viewB.getMeasuredWidth(), i11, Math.round(f6), viewB.getMeasuredHeight() + i15);
                            } else {
                                i11 = i15;
                                a(viewB, eVar, i8, i10, Math.round(f5), i11, viewB.getMeasuredWidth() + Math.round(f5), viewB.getMeasuredHeight() + i11);
                            }
                        }
                        float measuredWidth3 = viewB.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) hVar2).rightMargin + f5;
                        float measuredWidth4 = f6 - ((viewB.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) hVar2).leftMargin);
                        i16 = i7 + 1;
                        f2 = measuredWidth3;
                        f3 = measuredWidth4;
                    }
                    i6++;
                    dVar = this;
                    i15 = i11;
                    i14 = i9;
                }
                i9 = i14;
                i11 = i15;
                i6++;
                dVar = this;
                i15 = i11;
                i14 = i9;
            }
            int i22 = eVar.f23511b;
            i15 += i22;
            i14 -= i22;
            dVar = this;
        }
    }

    private void a(View view, e eVar, int i2, int i3, int i4, int i5, int i6, int i7) {
        h hVar = (h) view.getLayoutParams();
        int i8 = hVar.d;
        if (i8 != -1) {
            i3 = i8;
        }
        int i9 = eVar.f23511b;
        if (i3 != 0) {
            if (i3 == 1) {
                if (i2 != 2) {
                    int i10 = i5 + i9;
                    int measuredHeight = i10 - view.getMeasuredHeight();
                    int i11 = ((ViewGroup.MarginLayoutParams) hVar).bottomMargin;
                    view.layout(i4, measuredHeight - i11, i6, i10 - i11);
                    return;
                }
                view.layout(i4, view.getMeasuredHeight() + (i5 - i9) + ((ViewGroup.MarginLayoutParams) hVar).topMargin, i6, view.getMeasuredHeight() + (i7 - i9) + ((ViewGroup.MarginLayoutParams) hVar).topMargin);
                return;
            }
            if (i3 == 2) {
                int measuredHeight2 = (i9 - view.getMeasuredHeight()) / 2;
                int i12 = ((ViewGroup.MarginLayoutParams) hVar).topMargin;
                if (i2 != 2) {
                    int i13 = i5 + measuredHeight2;
                    view.layout(i4, (i12 + i13) - ((ViewGroup.MarginLayoutParams) hVar).bottomMargin, i6, ((view.getMeasuredHeight() + i13) + ((ViewGroup.MarginLayoutParams) hVar).topMargin) - ((ViewGroup.MarginLayoutParams) hVar).bottomMargin);
                    return;
                } else {
                    int i14 = i5 - measuredHeight2;
                    view.layout(i4, (i12 + i14) - ((ViewGroup.MarginLayoutParams) hVar).bottomMargin, i6, ((view.getMeasuredHeight() + i14) + ((ViewGroup.MarginLayoutParams) hVar).topMargin) - ((ViewGroup.MarginLayoutParams) hVar).bottomMargin);
                    return;
                }
            }
            if (i3 == 3) {
                int i15 = eVar.f23514f;
                if (i2 != 2) {
                    int iMax = Math.max(i15 - view.getBaseline(), ((ViewGroup.MarginLayoutParams) hVar).topMargin);
                    view.layout(i4, i5 + iMax, i6, i7 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max(view.getBaseline() + (i15 - view.getMeasuredHeight()), ((ViewGroup.MarginLayoutParams) hVar).bottomMargin);
                    view.layout(i4, i5 - iMax2, i6, i7 - iMax2);
                    return;
                }
            }
            if (i3 != 4) {
                return;
            }
        }
        if (i2 != 2) {
            int i16 = ((ViewGroup.MarginLayoutParams) hVar).topMargin;
            view.layout(i4, i5 + i16, i6, i7 + i16);
        } else {
            int i17 = ((ViewGroup.MarginLayoutParams) hVar).bottomMargin;
            view.layout(i4, i5 - i17, i6, i7 - i17);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009a  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:48:0x010f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0119  */
    /* JADX WARN: Code duplicated, block: B:51:0x0133  */
    private void a(boolean z2, boolean z3, int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float fMax;
        int i6;
        int i7;
        View viewB;
        float f5;
        float f6;
        int i8;
        int i9;
        int i10;
        int i11;
        d dVar = this;
        int paddingTop = dVar.getPaddingTop();
        int paddingBottom = dVar.getPaddingBottom();
        int paddingRight = dVar.getPaddingRight();
        int paddingLeft = dVar.getPaddingLeft();
        int i12 = i5 - i3;
        int i13 = paddingLeft;
        int i14 = (i4 - i2) - paddingRight;
        int i15 = 0;
        for (e eVar : dVar.f23508h) {
            int i16 = dVar.f23505c;
            if (i16 == 0) {
                f2 = paddingTop;
                f3 = i12 - paddingBottom;
            } else if (i16 == 1) {
                int i17 = eVar.f23510a;
                f3 = i17 - paddingTop;
                f2 = (i12 - i17) + paddingBottom;
            } else {
                if (i16 == 2) {
                    float f7 = (i12 - eVar.f23510a) / 2.0f;
                    f2 = paddingTop + f7;
                    f3 = (i12 - paddingBottom) - f7;
                } else if (i16 == 3) {
                    f2 = paddingTop;
                    int i18 = eVar.f23512c;
                    f4 = (i12 - eVar.f23510a) / (i18 != 1 ? i18 - 1 : 1.0f);
                    f3 = i12 - paddingBottom;
                } else if (i16 == 4) {
                    int i19 = eVar.f23512c;
                    f4 = i19 != 0 ? (i12 - eVar.f23510a) / i19 : 0.0f;
                    float f8 = f4 / 2.0f;
                    f2 = paddingTop + f8;
                    f3 = (i12 - paddingBottom) - f8;
                } else {
                    r81.c(dVar.f23505c, "Invalid justifyContent is set: ");
                    return;
                }
                fMax = Math.max(f4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                i6 = 0;
                while (i6 < eVar.f23512c) {
                    i7 = i15;
                    viewB = dVar.b(i7);
                    if (viewB == null) {
                        i15 = i7;
                    } else {
                        if (viewB.getVisibility() == 8) {
                            i15 = i7 + 1;
                        } else {
                            h hVar = (h) viewB.getLayoutParams();
                            f5 = f2 + ((ViewGroup.MarginLayoutParams) hVar).topMargin;
                            f6 = f3 - ((ViewGroup.MarginLayoutParams) hVar).bottomMargin;
                            if (z2) {
                                i6 = i6;
                                i11 = dVar.d;
                                if (z3) {
                                    dVar.a(viewB, eVar, true, i11, i14 - viewB.getMeasuredWidth(), Math.round(f6) - viewB.getMeasuredHeight(), i14, Math.round(f6));
                                } else {
                                    a(viewB, eVar, true, i11, i14 - viewB.getMeasuredWidth(), Math.round(f5), i14, viewB.getMeasuredHeight() + Math.round(f5));
                                }
                                i8 = i14;
                                i10 = i13;
                            } else {
                                i6 = i6;
                                i7 = i7;
                                i8 = i14;
                                i9 = dVar.d;
                                if (z3) {
                                    i10 = i13;
                                    dVar.a(viewB, eVar, false, i9, i10, Math.round(f6) - viewB.getMeasuredHeight(), viewB.getMeasuredWidth() + i13, Math.round(f6));
                                } else {
                                    i10 = i13;
                                    a(viewB, eVar, false, i9, i10, Math.round(f5), viewB.getMeasuredWidth() + i10, viewB.getMeasuredHeight() + Math.round(f5));
                                }
                            }
                            float measuredHeight = viewB.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) hVar).bottomMargin + f5;
                            float measuredHeight2 = f6 - ((viewB.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) hVar).topMargin);
                            i15 = i7 + 1;
                            f2 = measuredHeight;
                            f3 = measuredHeight2;
                        }
                        i6++;
                        dVar = this;
                        i13 = i10;
                        i14 = i8;
                    }
                    i8 = i14;
                    i10 = i13;
                    i6++;
                    dVar = this;
                    i13 = i10;
                    i14 = i8;
                }
                int i20 = eVar.f23511b;
                i13 += i20;
                i14 -= i20;
                dVar = this;
            }
            f4 = 0.0f;
            fMax = Math.max(f4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            i6 = 0;
            while (i6 < eVar.f23512c) {
                i7 = i15;
                viewB = dVar.b(i7);
                if (viewB == null) {
                    i15 = i7;
                } else {
                    if (viewB.getVisibility() == 8) {
                        i15 = i7 + 1;
                    } else {
                        h hVar2 = (h) viewB.getLayoutParams();
                        f5 = f2 + ((ViewGroup.MarginLayoutParams) hVar2).topMargin;
                        f6 = f3 - ((ViewGroup.MarginLayoutParams) hVar2).bottomMargin;
                        if (z2) {
                            i6 = i6;
                            i11 = dVar.d;
                            if (z3) {
                                dVar.a(viewB, eVar, true, i11, i14 - viewB.getMeasuredWidth(), Math.round(f6) - viewB.getMeasuredHeight(), i14, Math.round(f6));
                            } else {
                                a(viewB, eVar, true, i11, i14 - viewB.getMeasuredWidth(), Math.round(f5), i14, viewB.getMeasuredHeight() + Math.round(f5));
                            }
                            i8 = i14;
                            i10 = i13;
                        } else {
                            i6 = i6;
                            i7 = i7;
                            i8 = i14;
                            i9 = dVar.d;
                            if (z3) {
                                i10 = i13;
                                dVar.a(viewB, eVar, false, i9, i10, Math.round(f6) - viewB.getMeasuredHeight(), viewB.getMeasuredWidth() + i13, Math.round(f6));
                            } else {
                                i10 = i13;
                                a(viewB, eVar, false, i9, i10, Math.round(f5), viewB.getMeasuredWidth() + i10, viewB.getMeasuredHeight() + Math.round(f5));
                            }
                        }
                        float measuredHeight3 = viewB.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) hVar2).bottomMargin + f5;
                        float measuredHeight4 = f6 - ((viewB.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) hVar2).topMargin);
                        i15 = i7 + 1;
                        f2 = measuredHeight3;
                        f3 = measuredHeight4;
                    }
                    i6++;
                    dVar = this;
                    i13 = i10;
                    i14 = i8;
                }
                i8 = i14;
                i10 = i13;
                i6++;
                dVar = this;
                i13 = i10;
                i14 = i8;
            }
            int i21 = eVar.f23511b;
            i13 += i21;
            i14 -= i21;
            dVar = this;
        }
    }

    private void a(View view, e eVar, boolean z2, int i2, int i3, int i4, int i5, int i6) {
        h hVar = (h) view.getLayoutParams();
        int i7 = hVar.d;
        if (i7 != -1) {
            i2 = i7;
        }
        int i8 = eVar.f23511b;
        if (i2 != 0) {
            if (i2 == 1) {
                if (!z2) {
                    view.layout(((i3 + i8) - view.getMeasuredWidth()) - ((ViewGroup.MarginLayoutParams) hVar).rightMargin, i4, ((i5 + i8) - view.getMeasuredWidth()) - ((ViewGroup.MarginLayoutParams) hVar).rightMargin, i6);
                    return;
                }
                view.layout(view.getMeasuredWidth() + (i3 - i8) + ((ViewGroup.MarginLayoutParams) hVar).leftMargin, i4, view.getMeasuredWidth() + (i5 - i8) + ((ViewGroup.MarginLayoutParams) hVar).leftMargin, i6);
                return;
            }
            if (i2 == 2) {
                int measuredWidth = (i8 - view.getMeasuredWidth()) / 2;
                int i9 = ((ViewGroup.MarginLayoutParams) hVar).leftMargin;
                if (!z2) {
                    int i10 = ((ViewGroup.MarginLayoutParams) hVar).rightMargin;
                    view.layout(((i3 + measuredWidth) + i9) - i10, i4, ((i5 + measuredWidth) + i9) - i10, i6);
                    return;
                } else {
                    int i11 = ((ViewGroup.MarginLayoutParams) hVar).rightMargin;
                    view.layout(((i3 - measuredWidth) + i9) - i11, i4, ((i5 - measuredWidth) + i9) - i11, i6);
                    return;
                }
            }
            if (i2 != 3 && i2 != 4) {
                return;
            }
        }
        if (!z2) {
            int i12 = ((ViewGroup.MarginLayoutParams) hVar).leftMargin;
            view.layout(i3 + i12, i4, i5 + i12, i6);
        } else {
            int i13 = ((ViewGroup.MarginLayoutParams) hVar).rightMargin;
            view.layout(i3 - i13, i4, i5 - i13, i6);
        }
    }
}
