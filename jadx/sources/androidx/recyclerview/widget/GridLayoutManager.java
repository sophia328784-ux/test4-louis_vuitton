package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import defpackage.a;
import defpackage.fc;
import defpackage.md;
import defpackage.mt;
import defpackage.pq0;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public static final Set P = Collections.unmodifiableSet(new HashSet(Arrays.asList(17, 66, 33, 130)));
    public boolean E;
    public int F;
    public int[] G;
    public View[] H;
    public final SparseIntArray I;
    public final SparseIntArray J;
    public SpanSizeLookup K;
    public final Rect L;
    public int M;
    public int N;
    public int O;

    public static final class DefaultSpanSizeLookup extends SpanSizeLookup {
        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public final int b(int i2, int i3) {
            return i2 % i3;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public final int c(int i2) {
            return 1;
        }
    }

    public static abstract class SpanSizeLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SparseIntArray f19199a = new SparseIntArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SparseIntArray f19200b = new SparseIntArray();

        public final int a(int i2, int i3) {
            int iC = c(i2);
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                int iC2 = c(i6);
                i4 += iC2;
                if (i4 == i3) {
                    i5++;
                    i4 = 0;
                } else if (i4 > i3) {
                    i5++;
                    i4 = iC2;
                }
            }
            return i4 + iC > i3 ? i5 + 1 : i5;
        }

        public int b(int i2, int i3) {
            int iC = c(i2);
            if (iC == i3) {
                return 0;
            }
            int i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                int iC2 = c(i5);
                i4 += iC2;
                if (i4 == i3) {
                    i4 = 0;
                } else if (i4 > i3) {
                    i4 = iC2;
                }
            }
            if (iC + i4 <= i3) {
                return i4;
            }
            return 0;
        }

        public abstract int c(int i2);

        public final void d() {
            this.f19199a.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new DefaultSpanSizeLookup();
        this.L = new Rect();
        this.M = -1;
        this.N = -1;
        this.O = -1;
        C1(RecyclerView.LayoutManager.O(context, attributeSet, i2, i3).f19282b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int A(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 1) {
            return Math.min(this.F, I());
        }
        if (state.b() < 1) {
            return 0;
        }
        return y1(state.b() - 1, recycler, state) + 1;
    }

    public final int A1(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!state.g) {
            return this.K.c(i2);
        }
        int i3 = this.I.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        int iB = recycler.b(i2);
        if (iB == -1) {
            return 1;
        }
        return this.K.c(iB);
    }

    public final void B1(View view, int i2, boolean z) {
        int iY;
        int iY2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.f19285b;
        int i3 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i4 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int iX1 = x1(layoutParams.f19197e, layoutParams.f19198f);
        if (this.p == 1) {
            iY2 = RecyclerView.LayoutManager.y(iX1, i2, false, i4, ((ViewGroup.MarginLayoutParams) layoutParams).width);
            iY = RecyclerView.LayoutManager.y(this.r.l(), this.m, true, i3, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        } else {
            int iY3 = RecyclerView.LayoutManager.y(iX1, i2, false, i3, ((ViewGroup.MarginLayoutParams) layoutParams).height);
            int iY4 = RecyclerView.LayoutManager.y(this.r.l(), this.l, true, i4, ((ViewGroup.MarginLayoutParams) layoutParams).width);
            iY = iY3;
            iY2 = iY4;
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z ? H0(view, iY2, iY, layoutParams2) : F0(view, iY2, iY, layoutParams2)) {
            view.measure(iY2, iY);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void C0(Rect rect, int i2, int i3) {
        int i4;
        int i5;
        if (this.G == null) {
            super.C0(rect, i2, i3);
        }
        int iL = L() + K();
        int iJ = J() + M();
        if (this.p == 1) {
            int iHeight = rect.height() + iJ;
            RecyclerView recyclerView = this.f19271b;
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            i5 = RecyclerView.LayoutManager.i(i3, iHeight, recyclerView.getMinimumHeight());
            int[] iArr = this.G;
            i4 = RecyclerView.LayoutManager.i(i2, iArr[iArr.length - 1] + iL, this.f19271b.getMinimumWidth());
        } else {
            int iWidth = rect.width() + iL;
            RecyclerView recyclerView2 = this.f19271b;
            WeakHashMap weakHashMap2 = ViewCompat.f12200a;
            i4 = RecyclerView.LayoutManager.i(i2, iWidth, recyclerView2.getMinimumWidth());
            int[] iArr2 = this.G;
            i5 = RecyclerView.LayoutManager.i(i3, iArr2[iArr2.length - 1] + iJ, this.f19271b.getMinimumHeight());
        }
        this.f19271b.setMeasuredDimension(i4, i5);
    }

    public final void C1(int i2) {
        if (i2 == this.F) {
            return;
        }
        this.E = true;
        if (i2 < 1) {
            md.n(pq0.k(i2, "Span count should be at least 1. Provided "));
            return;
        }
        this.F = i2;
        this.K.d();
        w0();
    }

    public final void D1() {
        int iJ;
        int iM;
        if (this.p == 1) {
            iJ = this.n - L();
            iM = K();
        } else {
            iJ = this.o - J();
            iM = M();
        }
        r1(iJ - iM);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean K0() {
        return this.z == null && !this.E;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void M0(RecyclerView.State state, LinearLayoutManager.LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i2;
        int iC = this.F;
        for (int i3 = 0; i3 < this.F && (i2 = layoutState.d) >= 0 && i2 < state.b() && iC > 0; i3++) {
            int i4 = layoutState.d;
            ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(i4, Math.max(0, layoutState.g));
            iC -= this.K.c(i4);
            layoutState.d += layoutState.f19241e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int P(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 0) {
            return Math.min(this.F, I());
        }
        if (state.b() < 1) {
            return 0;
        }
        return y1(state.b() - 1, recycler, state) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View Z0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z, boolean z2) {
        int i2;
        int iX;
        int iX2 = x();
        int i3 = 1;
        if (z2) {
            iX = x() - 1;
            i2 = -1;
            i3 = -1;
        } else {
            i2 = iX2;
            iX = 0;
        }
        int iB = state.b();
        R0();
        int iK = this.r.k();
        int iG = this.r.g();
        View view = null;
        View view2 = null;
        while (iX != i2) {
            View viewW = w(iX);
            int iN = RecyclerView.LayoutManager.N(viewW);
            if (iN >= 0 && iN < iB && z1(iN, recycler, state) == 0) {
                if (((RecyclerView.LayoutParams) viewW.getLayoutParams()).f19284a.isRemoved()) {
                    if (view2 == null) {
                        view2 = viewW;
                    }
                } else {
                    if (this.r.e(viewW) < iG && this.r.b(viewW) >= iK) {
                        return viewW;
                    }
                    if (view == null) {
                        view = viewW;
                    }
                }
            }
            iX += i3;
        }
        return view != null ? view : view2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e0, code lost:
    
        if (r13 == (r2 > r15)) goto L57;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View a0(android.view.View r23, int r24, androidx.recyclerview.widget.RecyclerView.Recycler r25, androidx.recyclerview.widget.RecyclerView.State r26) {
        /*
            Method dump skipped, instruction units count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.a0(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void c0(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.c0(recycler, state, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.i(GridView.class.getName());
        RecyclerView.Adapter adapter = this.f19271b.mAdapter;
        if (adapter == null || adapter.getItemCount() <= 1) {
            return;
        }
        accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void e0(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            d0(view, accessibilityNodeInfoCompat);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int iY1 = y1(layoutParams2.f19284a.getLayoutPosition(), recycler, state);
        int i2 = this.p;
        int i3 = layoutParams2.f19197e;
        int i4 = layoutParams2.f19198f;
        if (i2 == 0) {
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(i3, i4, false, iY1, 1));
        } else {
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(iY1, 1, false, i3, i4));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void f0(int i2, int i3) {
        this.K.d();
        this.K.f19200b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void f1(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.LayoutState layoutState, LinearLayoutManager.LayoutChunkResult layoutChunkResult) {
        int i2;
        int i3;
        int i4;
        int iD;
        int iK;
        int iY;
        int iY2;
        boolean z;
        int i5;
        View viewB;
        int iJ = this.r.j();
        boolean z2 = iJ != 1073741824;
        int i6 = x() > 0 ? this.G[this.F] : 0;
        if (z2) {
            D1();
        }
        boolean z3 = layoutState.f19241e == 1;
        int iZ1 = this.F;
        if (!z3) {
            iZ1 = z1(layoutState.d, recycler, state) + A1(layoutState.d, recycler, state);
        }
        int i7 = 0;
        while (i7 < this.F && (i5 = layoutState.d) >= 0 && i5 < state.b() && iZ1 > 0) {
            int i8 = layoutState.d;
            int iA1 = A1(i8, recycler, state);
            if (iA1 > this.F) {
                md.n(a.i(this.F, " spans.", fc.p(i8, iA1, "Item at position ", " requires ", " spans but GridLayoutManager has only ")));
                return;
            }
            iZ1 -= iA1;
            if (iZ1 < 0 || (viewB = layoutState.b(recycler)) == null) {
                break;
            }
            this.H[i7] = viewB;
            i7++;
        }
        if (i7 == 0) {
            layoutChunkResult.f19236b = true;
            return;
        }
        if (z3) {
            i4 = 1;
            i3 = i7;
            i2 = 0;
        } else {
            i2 = i7 - 1;
            i3 = -1;
            i4 = -1;
        }
        int i9 = 0;
        while (i2 != i3) {
            View view = this.H[i2];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int iA2 = A1(RecyclerView.LayoutManager.N(view), recycler, state);
            layoutParams.f19198f = iA2;
            layoutParams.f19197e = i9;
            i9 += iA2;
            i2 += i4;
        }
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i10 = 0;
        for (int i11 = 0; i11 < i7; i11++) {
            View view2 = this.H[i11];
            if (layoutState.f19246k != null) {
                z = false;
                if (z3) {
                    c(view2, -1, true);
                } else {
                    c(view2, 0, true);
                }
            } else if (z3) {
                z = false;
                c(view2, -1, false);
            } else {
                z = false;
                c(view2, 0, false);
            }
            e(view2, this.L);
            B1(view2, iJ, z);
            int iC = this.r.c(view2);
            if (iC > i10) {
                i10 = iC;
            }
            float fD = (this.r.d(view2) * 1.0f) / ((LayoutParams) view2.getLayoutParams()).f19198f;
            if (fD > f2) {
                f2 = fD;
            }
        }
        if (z2) {
            r1(Math.max(Math.round(f2 * this.F), i6));
            i10 = 0;
            for (int i12 = 0; i12 < i7; i12++) {
                View view3 = this.H[i12];
                B1(view3, 1073741824, true);
                int iC2 = this.r.c(view3);
                if (iC2 > i10) {
                    i10 = iC2;
                }
            }
        }
        for (int i13 = 0; i13 < i7; i13++) {
            View view4 = this.H[i13];
            if (this.r.c(view4) != i10) {
                LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
                Rect rect = layoutParams2.f19285b;
                int i14 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                int i15 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                int iX1 = x1(layoutParams2.f19197e, layoutParams2.f19198f);
                if (this.p == 1) {
                    iY2 = RecyclerView.LayoutManager.y(iX1, 1073741824, false, i15, ((ViewGroup.MarginLayoutParams) layoutParams2).width);
                    iY = View.MeasureSpec.makeMeasureSpec(i10 - i14, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i10 - i15, 1073741824);
                    iY = RecyclerView.LayoutManager.y(iX1, 1073741824, false, i14, ((ViewGroup.MarginLayoutParams) layoutParams2).height);
                    iY2 = iMakeMeasureSpec;
                }
                if (H0(view4, iY2, iY, (RecyclerView.LayoutParams) view4.getLayoutParams())) {
                    view4.measure(iY2, iY);
                }
            }
        }
        int iM = 0;
        layoutChunkResult.f19235a = i10;
        int i16 = this.p;
        int i17 = layoutState.f19242f;
        int iD2 = layoutState.f19239b;
        if (i16 != 1) {
            if (i17 == -1) {
                iK = iD2 - i10;
                iD = iD2;
            } else {
                iD = iD2 + i10;
                iK = iD2;
            }
            iD2 = iM;
        } else if (i17 == -1) {
            iM = iD2 - i10;
            iK = 0;
            iD = 0;
        } else {
            iD = 0;
            iM = iD2;
            iD2 += i10;
            iK = 0;
        }
        int i18 = 0;
        while (true) {
            View[] viewArr = this.H;
            if (i18 >= i7) {
                Arrays.fill(viewArr, (Object) null);
                return;
            }
            View view5 = viewArr[i18];
            LayoutParams layoutParams3 = (LayoutParams) view5.getLayoutParams();
            if (this.p != 1) {
                iM = M() + this.G[layoutParams3.f19197e];
                iD2 = this.r.d(view5) + iM;
            } else if (e1()) {
                int iK2 = K() + this.G[this.F - layoutParams3.f19197e];
                iD = iK2;
                iK = iK2 - this.r.d(view5);
            } else {
                iK = K() + this.G[layoutParams3.f19197e];
                iD = this.r.d(view5) + iK;
            }
            RecyclerView.LayoutManager.U(view5, iK, iM, iD, iD2);
            if (layoutParams3.f19284a.isRemoved() || layoutParams3.f19284a.isUpdated()) {
                layoutChunkResult.f19237c = true;
            }
            layoutChunkResult.d = view5.hasFocusable() | layoutChunkResult.d;
            i18++;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void g0() {
        this.K.d();
        this.K.f19200b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void g1(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.AnchorInfo anchorInfo, int i2) {
        D1();
        if (state.b() > 0 && !state.g) {
            boolean z = i2 == 1;
            int iZ1 = z1(anchorInfo.f19232b, recycler, state);
            if (z) {
                while (iZ1 > 0) {
                    int i3 = anchorInfo.f19232b;
                    if (i3 <= 0) {
                        break;
                    }
                    int i4 = i3 - 1;
                    anchorInfo.f19232b = i4;
                    iZ1 = z1(i4, recycler, state);
                }
            } else {
                int iB = state.b() - 1;
                int i5 = anchorInfo.f19232b;
                while (i5 < iB) {
                    int i6 = i5 + 1;
                    int iZ2 = z1(i6, recycler, state);
                    if (iZ2 <= iZ1) {
                        break;
                    }
                    i5 = i6;
                    iZ1 = iZ2;
                }
                anchorInfo.f19232b = i5;
            }
        }
        s1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean h(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void h0(int i2, int i3) {
        this.K.d();
        this.K.f19200b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void i0(int i2, int i3) {
        this.K.d();
        this.K.f19200b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void j0(int i2, int i3) {
        this.K.d();
        this.K.f19200b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void k0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z = state.g;
        SparseIntArray sparseIntArray = this.J;
        SparseIntArray sparseIntArray2 = this.I;
        if (z) {
            int iX = x();
            for (int i2 = 0; i2 < iX; i2++) {
                LayoutParams layoutParams = (LayoutParams) w(i2).getLayoutParams();
                int layoutPosition = layoutParams.f19284a.getLayoutPosition();
                sparseIntArray2.put(layoutPosition, layoutParams.f19198f);
                sparseIntArray.put(layoutPosition, layoutParams.f19197e);
            }
        }
        super.k0(recycler, state);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void l0(RecyclerView.State state) {
        View viewS;
        super.l0(state);
        this.E = false;
        int i2 = this.M;
        if (i2 == -1 || (viewS = s(i2)) == null) {
            return;
        }
        viewS.sendAccessibilityEvent(67108864);
        this.M = -1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int m(RecyclerView.State state) {
        return O0(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int n(RecyclerView.State state) {
        return P0(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void n1(boolean z) {
        if (z) {
            mt.i("GridLayoutManager does not support stack from end. Consider using reverse layout");
        } else {
            super.n1(false);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int p(RecyclerView.State state) {
        return O0(state);
    }

    /* JADX WARN: Code duplicated, block: B:118:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:121:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:122:0x01a9 A[EDGE_INSN: B:122:0x01a9->B:166:0x027c BREAK  A[LOOP:2: B:126:0x01b9->B:135:0x01e2, LOOP_LABEL: LOOP:2: B:126:0x01b9->B:135:0x01e2]] */
    /* JADX WARN: Code duplicated, block: B:123:0x01ac A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:128:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:131:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:134:0x01da A[LOOP:3: B:129:0x01c7->B:134:0x01da, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:139:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:142:0x0213  */
    /* JADX WARN: Code duplicated, block: B:143:0x0215  */
    /* JADX WARN: Code duplicated, block: B:145:0x0218 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:150:0x0227  */
    /* JADX WARN: Code duplicated, block: B:153:0x0235  */
    /* JADX WARN: Code duplicated, block: B:156:0x0243  */
    /* JADX WARN: Code duplicated, block: B:163:0x0262  */
    /* JADX WARN: Code duplicated, block: B:167:0x027e  */
    /* JADX WARN: Code duplicated, block: B:206:0x01a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x01e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:209:0x01a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:0x01ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:? A[LOOP:4: B:137:0x01ed->B:211:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:212:0x0254 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x01a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:0x0251 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x0249 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x022f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x01a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:0x026e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:? A[LOOP:7: B:161:0x025c->B:221:?, LOOP_END, SYNTHETIC] */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean p0(int i2, Bundle bundle) {
        View viewW;
        RecyclerView.ViewHolder childViewHolder;
        int iIntValue;
        int i3;
        TreeMap treeMap;
        int i4;
        Iterator it;
        Integer num;
        int iIntValue2;
        Iterator it2;
        Integer num2;
        TreeMap treeMap2;
        int i5;
        Iterator it3;
        Integer num3;
        int iIntValue3;
        Iterator it4;
        Integer num4;
        if (i2 == AccessibilityNodeInfoCompat.AccessibilityActionCompat.s.a() && i2 != -1) {
            int i6 = 0;
            while (true) {
                if (i6 >= x()) {
                    viewW = null;
                    break;
                }
                View viewW2 = w(i6);
                Objects.requireNonNull(viewW2);
                if (viewW2.isAccessibilityFocused()) {
                    viewW = w(i6);
                    break;
                }
                i6++;
            }
            if (viewW != null && bundle != null) {
                int i7 = bundle.getInt("android.view.accessibility.action.ARGUMENT_DIRECTION_INT", -1);
                if (P.contains(Integer.valueOf(i7)) && (childViewHolder = this.f19271b.getChildViewHolder(viewW)) != null) {
                    int absoluteAdapterPosition = childViewHolder.getAbsoluteAdapterPosition();
                    int iU1 = u1(absoluteAdapterPosition);
                    int iT1 = t1(absoluteAdapterPosition);
                    if (iU1 >= 0 && iT1 >= 0) {
                        if (!v1(absoluteAdapterPosition).contains(Integer.valueOf(this.N)) || !w1(t1(absoluteAdapterPosition), absoluteAdapterPosition).contains(Integer.valueOf(this.O))) {
                            this.N = iU1;
                            this.O = iT1;
                        }
                        int i8 = this.N;
                        if (i8 == -1) {
                            i8 = iU1;
                        }
                        int i9 = this.O;
                        if (i9 != -1) {
                            iT1 = i9;
                        }
                        if (i7 == 17) {
                            iIntValue = absoluteAdapterPosition - 1;
                            while (true) {
                                if (iIntValue >= 0) {
                                    int iU2 = u1(iIntValue);
                                    int iT2 = t1(iIntValue);
                                    if (iU2 >= 0 && iT2 >= 0) {
                                        if (this.p != 1) {
                                            if (v1(iIntValue).contains(Integer.valueOf(i8)) && iT2 < iT1) {
                                                this.O = iT2;
                                                break;
                                            }
                                            iIntValue--;
                                        } else {
                                            if ((iU2 == i8 && iT2 < iT1) || iU2 < i8) {
                                                this.N = iU2;
                                                this.O = iT2;
                                                break;
                                            }
                                            iIntValue--;
                                        }
                                    }
                                }
                                iIntValue = -1;
                                break;
                            }
                            if (iIntValue == -1) {
                                if (i7 == 17) {
                                    if (i7 == 66) {
                                        if (iU1 < 0) {
                                            treeMap = new TreeMap();
                                            i4 = 0;
                                            loop5: while (true) {
                                                if (i4 < I()) {
                                                    it2 = v1(i4).iterator();
                                                    while (true) {
                                                        if (it2.hasNext()) {
                                                            num2 = (Integer) it2.next();
                                                            if (num2.intValue() < 0) {
                                                                if (!treeMap.containsKey(num2)) {
                                                                    treeMap.put(num2, Integer.valueOf(i4));
                                                                }
                                                            }
                                                        } else {
                                                            i4++;
                                                        }
                                                    }
                                                } else {
                                                    it = treeMap.keySet().iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            num = (Integer) it.next();
                                                            iIntValue2 = num.intValue();
                                                            if (iIntValue2 > iU1) {
                                                                iIntValue = ((Integer) treeMap.get(num)).intValue();
                                                                this.N = iIntValue2;
                                                                this.O = 0;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                }
                                                iIntValue = -1;
                                                break loop2;
                                            }
                                        }
                                        iIntValue = -1;
                                        break loop2;
                                    }
                                } else {
                                    if (iU1 < 0) {
                                        treeMap2 = new TreeMap(Collections.reverseOrder());
                                        i5 = 0;
                                        loop2: while (true) {
                                            if (i5 < I()) {
                                                it4 = v1(i5).iterator();
                                                while (true) {
                                                    if (it4.hasNext()) {
                                                        num4 = (Integer) it4.next();
                                                        if (num4.intValue() < 0) {
                                                            treeMap2.put(num4, Integer.valueOf(i5));
                                                        }
                                                    } else {
                                                        i5++;
                                                    }
                                                }
                                            } else {
                                                it3 = treeMap2.keySet().iterator();
                                                while (true) {
                                                    if (it3.hasNext()) {
                                                        num3 = (Integer) it3.next();
                                                        iIntValue3 = num3.intValue();
                                                        if (iIntValue3 < iU1) {
                                                            iIntValue = ((Integer) treeMap2.get(num3)).intValue();
                                                            this.N = iIntValue3;
                                                            this.O = t1(iIntValue);
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                            iIntValue = -1;
                                            break loop2;
                                        }
                                    }
                                    iIntValue = -1;
                                    break loop2;
                                }
                            }
                            if (iIntValue != -1) {
                                y0(iIntValue);
                                this.M = iIntValue;
                                return true;
                            }
                        } else if (i7 == 33) {
                            iIntValue = absoluteAdapterPosition - 1;
                            while (true) {
                                if (iIntValue >= 0) {
                                    int iU3 = u1(iIntValue);
                                    int iT3 = t1(iIntValue);
                                    if (iU3 >= 0 && iT3 >= 0) {
                                        if (this.p != 1) {
                                            if (iU3 < i8 && iT3 == iT1) {
                                                this.N = ((Integer) Collections.max(v1(iIntValue))).intValue();
                                                break;
                                            }
                                            iIntValue--;
                                        } else {
                                            if (iU3 < i8 && w1(t1(iIntValue), iIntValue).contains(Integer.valueOf(iT1))) {
                                                this.N = iU3;
                                                break;
                                            }
                                            iIntValue--;
                                        }
                                    }
                                }
                                iIntValue = -1;
                                break;
                            }
                            if (iIntValue == -1) {
                                if (i7 == 17) {
                                    if (i7 == 66) {
                                        if (iU1 < 0) {
                                            treeMap = new TreeMap();
                                            i4 = 0;
                                            loop5: while (true) {
                                                if (i4 < I()) {
                                                    it2 = v1(i4).iterator();
                                                    while (true) {
                                                        if (it2.hasNext()) {
                                                            num2 = (Integer) it2.next();
                                                            if (num2.intValue() < 0) {
                                                                if (!treeMap.containsKey(num2)) {
                                                                    treeMap.put(num2, Integer.valueOf(i4));
                                                                }
                                                            }
                                                        } else {
                                                            i4++;
                                                        }
                                                    }
                                                } else {
                                                    it = treeMap.keySet().iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            num = (Integer) it.next();
                                                            iIntValue2 = num.intValue();
                                                            if (iIntValue2 > iU1) {
                                                                iIntValue = ((Integer) treeMap.get(num)).intValue();
                                                                this.N = iIntValue2;
                                                                this.O = 0;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                }
                                                iIntValue = -1;
                                                break loop2;
                                            }
                                        }
                                        iIntValue = -1;
                                        break loop2;
                                    }
                                } else {
                                    if (iU1 < 0) {
                                        treeMap2 = new TreeMap(Collections.reverseOrder());
                                        i5 = 0;
                                        loop2: while (true) {
                                            if (i5 < I()) {
                                                it4 = v1(i5).iterator();
                                                while (true) {
                                                    if (it4.hasNext()) {
                                                        num4 = (Integer) it4.next();
                                                        if (num4.intValue() < 0) {
                                                            treeMap2.put(num4, Integer.valueOf(i5));
                                                        }
                                                    } else {
                                                        i5++;
                                                    }
                                                }
                                            } else {
                                                it3 = treeMap2.keySet().iterator();
                                                while (true) {
                                                    if (it3.hasNext()) {
                                                        num3 = (Integer) it3.next();
                                                        iIntValue3 = num3.intValue();
                                                        if (iIntValue3 < iU1) {
                                                            iIntValue = ((Integer) treeMap2.get(num3)).intValue();
                                                            this.N = iIntValue3;
                                                            this.O = t1(iIntValue);
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                            iIntValue = -1;
                                            break loop2;
                                        }
                                    }
                                    iIntValue = -1;
                                    break loop2;
                                }
                            }
                            if (iIntValue != -1) {
                                y0(iIntValue);
                                this.M = iIntValue;
                                return true;
                            }
                        } else if (i7 == 66) {
                            iIntValue = absoluteAdapterPosition + 1;
                            while (true) {
                                if (iIntValue < I()) {
                                    int iU4 = u1(iIntValue);
                                    int iT4 = t1(iIntValue);
                                    if (iU4 >= 0 && iT4 >= 0) {
                                        if (this.p != 1) {
                                            if (iT4 > iT1 && v1(iIntValue).contains(Integer.valueOf(i8))) {
                                                this.O = iT4;
                                                break;
                                            }
                                            iIntValue++;
                                        } else {
                                            if ((iU4 == i8 && iT4 > iT1) || iU4 > i8) {
                                                this.N = iU4;
                                                this.O = iT4;
                                                break;
                                            }
                                            iIntValue++;
                                        }
                                    }
                                }
                                iIntValue = -1;
                                break;
                            }
                            if (iIntValue == -1) {
                                if (i7 == 17) {
                                    if (i7 == 66) {
                                        if (iU1 < 0) {
                                            treeMap = new TreeMap();
                                            i4 = 0;
                                            loop5: while (true) {
                                                if (i4 < I()) {
                                                    it2 = v1(i4).iterator();
                                                    while (true) {
                                                        if (it2.hasNext()) {
                                                            num2 = (Integer) it2.next();
                                                            if (num2.intValue() < 0) {
                                                                if (!treeMap.containsKey(num2)) {
                                                                    treeMap.put(num2, Integer.valueOf(i4));
                                                                }
                                                            }
                                                        } else {
                                                            i4++;
                                                        }
                                                    }
                                                } else {
                                                    it = treeMap.keySet().iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            num = (Integer) it.next();
                                                            iIntValue2 = num.intValue();
                                                            if (iIntValue2 > iU1) {
                                                                iIntValue = ((Integer) treeMap.get(num)).intValue();
                                                                this.N = iIntValue2;
                                                                this.O = 0;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                }
                                                iIntValue = -1;
                                                break loop2;
                                            }
                                        }
                                        iIntValue = -1;
                                        break loop2;
                                    }
                                } else {
                                    if (iU1 < 0) {
                                        treeMap2 = new TreeMap(Collections.reverseOrder());
                                        i5 = 0;
                                        loop2: while (true) {
                                            if (i5 < I()) {
                                                it4 = v1(i5).iterator();
                                                while (true) {
                                                    if (it4.hasNext()) {
                                                        num4 = (Integer) it4.next();
                                                        if (num4.intValue() < 0) {
                                                            treeMap2.put(num4, Integer.valueOf(i5));
                                                        }
                                                    } else {
                                                        i5++;
                                                    }
                                                }
                                            } else {
                                                it3 = treeMap2.keySet().iterator();
                                                while (true) {
                                                    if (it3.hasNext()) {
                                                        num3 = (Integer) it3.next();
                                                        iIntValue3 = num3.intValue();
                                                        if (iIntValue3 < iU1) {
                                                            iIntValue = ((Integer) treeMap2.get(num3)).intValue();
                                                            this.N = iIntValue3;
                                                            this.O = t1(iIntValue);
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                            iIntValue = -1;
                                            break loop2;
                                        }
                                    }
                                    iIntValue = -1;
                                    break loop2;
                                }
                            }
                            if (iIntValue != -1) {
                                y0(iIntValue);
                                this.M = iIntValue;
                                return true;
                            }
                        } else if (i7 == 130) {
                            iIntValue = absoluteAdapterPosition + 1;
                            while (true) {
                                if (iIntValue < I()) {
                                    int iU5 = u1(iIntValue);
                                    int iT5 = t1(iIntValue);
                                    if (iU5 >= 0 && iT5 >= 0) {
                                        if (this.p != 1) {
                                            if (iU5 > i8 && iT5 == iT1) {
                                                this.N = u1(iIntValue);
                                                break;
                                            }
                                            iIntValue++;
                                        } else {
                                            if (iU5 > i8 && (iT5 == iT1 || w1(t1(iIntValue), iIntValue).contains(Integer.valueOf(iT1)))) {
                                                this.N = iU5;
                                                break;
                                            }
                                            iIntValue++;
                                        }
                                    }
                                }
                                iIntValue = -1;
                                break;
                            }
                            if (iIntValue == -1 && (i3 = this.p) == 0) {
                                if (i7 == 17) {
                                    if (i7 == 66) {
                                        if (iU1 < 0 || i3 == 1) {
                                            iIntValue = -1;
                                            break loop2;
                                        }
                                        treeMap = new TreeMap();
                                        i4 = 0;
                                        loop5: while (true) {
                                            if (i4 < I()) {
                                                it2 = v1(i4).iterator();
                                                while (true) {
                                                    if (it2.hasNext()) {
                                                        num2 = (Integer) it2.next();
                                                        if (num2.intValue() < 0) {
                                                            if (!treeMap.containsKey(num2)) {
                                                                treeMap.put(num2, Integer.valueOf(i4));
                                                            }
                                                        }
                                                    } else {
                                                        i4++;
                                                    }
                                                }
                                            } else {
                                                it = treeMap.keySet().iterator();
                                                while (true) {
                                                    if (it.hasNext()) {
                                                        num = (Integer) it.next();
                                                        iIntValue2 = num.intValue();
                                                        if (iIntValue2 > iU1) {
                                                            iIntValue = ((Integer) treeMap.get(num)).intValue();
                                                            this.N = iIntValue2;
                                                            this.O = 0;
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                            iIntValue = -1;
                                            break loop2;
                                        }
                                    }
                                } else {
                                    if (iU1 < 0 || i3 == 1) {
                                        iIntValue = -1;
                                        break loop2;
                                    }
                                    treeMap2 = new TreeMap(Collections.reverseOrder());
                                    i5 = 0;
                                    loop2: while (true) {
                                        if (i5 < I()) {
                                            it4 = v1(i5).iterator();
                                            while (true) {
                                                if (it4.hasNext()) {
                                                    num4 = (Integer) it4.next();
                                                    if (num4.intValue() < 0) {
                                                        treeMap2.put(num4, Integer.valueOf(i5));
                                                    }
                                                } else {
                                                    i5++;
                                                }
                                            }
                                        } else {
                                            it3 = treeMap2.keySet().iterator();
                                            while (true) {
                                                if (it3.hasNext()) {
                                                    num3 = (Integer) it3.next();
                                                    iIntValue3 = num3.intValue();
                                                    if (iIntValue3 < iU1) {
                                                        iIntValue = ((Integer) treeMap2.get(num3)).intValue();
                                                        this.N = iIntValue3;
                                                        this.O = t1(iIntValue);
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                        iIntValue = -1;
                                        break loop2;
                                    }
                                }
                            }
                            if (iIntValue != -1) {
                                y0(iIntValue);
                                this.M = iIntValue;
                                return true;
                            }
                        }
                    }
                }
            }
        } else {
            if (i2 != 16908343 || bundle == null) {
                return super.p0(i2, bundle);
            }
            int i10 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
            int i11 = bundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT", -1);
            if (i10 != -1 && i11 != -1) {
                int itemCount = this.f19271b.mAdapter.getItemCount();
                int i12 = 0;
                while (true) {
                    if (i12 >= itemCount) {
                        i12 = -1;
                        break;
                    }
                    RecyclerView recyclerView = this.f19271b;
                    int iZ1 = z1(i12, recyclerView.mRecycler, recyclerView.mState);
                    RecyclerView recyclerView2 = this.f19271b;
                    int iY1 = y1(i12, recyclerView2.mRecycler, recyclerView2.mState);
                    if (this.p != 1) {
                        if (iZ1 == i10 && iY1 == i11) {
                            break;
                        }
                        i12++;
                    } else {
                        if (iZ1 == i11 && iY1 == i10) {
                            break;
                        }
                        i12++;
                    }
                }
                if (i12 > -1) {
                    l1(i12, 0);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int q(RecyclerView.State state) {
        return P0(state);
    }

    public final void r1(int i2) {
        int i3;
        int[] iArr = this.G;
        int i4 = this.F;
        if (iArr == null || iArr.length != i4 + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i4 + 1];
        }
        int i5 = 0;
        iArr[0] = 0;
        int i6 = i2 / i4;
        int i7 = i2 % i4;
        int i8 = 0;
        for (int i9 = 1; i9 <= i4; i9++) {
            i5 += i7;
            if (i5 <= 0 || i4 - i5 >= i7) {
                i3 = i6;
            } else {
                i3 = i6 + 1;
                i5 -= i4;
            }
            i8 += i3;
            iArr[i9] = i8;
        }
        this.G = iArr;
    }

    public final void s1() {
        View[] viewArr = this.H;
        if (viewArr == null || viewArr.length != this.F) {
            this.H = new View[this.F];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams t() {
        return this.p == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    public final int t1(int i2) {
        int i3 = this.p;
        RecyclerView recyclerView = this.f19271b;
        return i3 == 0 ? y1(i2, recyclerView.mRecycler, recyclerView.mState) : z1(i2, recyclerView.mRecycler, recyclerView.mState);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams u(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public final int u1(int i2) {
        int i3 = this.p;
        RecyclerView recyclerView = this.f19271b;
        return i3 == 1 ? y1(i2, recyclerView.mRecycler, recyclerView.mState) : z1(i2, recyclerView.mRecycler, recyclerView.mState);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams v(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public final HashSet v1(int i2) {
        return w1(u1(i2), i2);
    }

    public final HashSet w1(int i2, int i3) {
        HashSet hashSet = new HashSet();
        RecyclerView recyclerView = this.f19271b;
        int iA1 = A1(i3, recyclerView.mRecycler, recyclerView.mState);
        for (int i4 = i2; i4 < i2 + iA1; i4++) {
            hashSet.add(Integer.valueOf(i4));
        }
        return hashSet;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int x0(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        D1();
        s1();
        return super.x0(i2, recycler, state);
    }

    public final int x1(int i2, int i3) {
        if (this.p != 1 || !e1()) {
            int[] iArr = this.G;
            return iArr[i3 + i2] - iArr[i2];
        }
        int[] iArr2 = this.G;
        int i4 = this.F;
        return iArr2[i4 - i2] - iArr2[(i4 - i2) - i3];
    }

    public final int y1(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!state.g) {
            return this.K.a(i2, this.F);
        }
        int iB = recycler.b(i2);
        if (iB == -1) {
            return 0;
        }
        return this.K.a(iB, this.F);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int z0(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        D1();
        s1();
        return super.z0(i2, recycler, state);
    }

    public final int z1(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!state.g) {
            return this.K.b(i2, this.F);
        }
        int i3 = this.J.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        int iB = recycler.b(i2);
        if (iB == -1) {
            return 0;
        }
        return this.K.b(iB, this.F);
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f19197e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f19198f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f19197e = -1;
            this.f19198f = 0;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f19197e = -1;
            this.f19198f = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f19197e = -1;
            this.f19198f = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f19197e = -1;
            this.f19198f = 0;
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
            this.f19197e = -1;
            this.f19198f = 0;
        }
    }

    public GridLayoutManager(Context context, int i2) {
        super(context);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new DefaultSpanSizeLookup();
        this.L = new Rect();
        this.M = -1;
        this.N = -1;
        this.O = -1;
        C1(i2);
    }

    public GridLayoutManager(Context context, int i2, int i3, boolean z) {
        super(context, i3, z);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new DefaultSpanSizeLookup();
        this.L = new Rect();
        this.M = -1;
        this.N = -1;
        this.O = -1;
        C1(i2);
    }
}
