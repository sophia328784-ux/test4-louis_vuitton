package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import defpackage.d21;
import defpackage.md;
import defpackage.pq0;
import java.util.List;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements ItemTouchHelper.ViewDropHandler, RecyclerView.SmoothScroller.ScrollVectorProvider {
    public final AnchorInfo A;
    public final LayoutChunkResult B;
    public final int C;
    public final int[] D;
    public int p;
    public LayoutState q;
    public OrientationHelper r;
    public boolean s;
    public final boolean t;
    public boolean u;
    public boolean v;
    public final boolean w;
    public int x;
    public int y;
    public SavedState z;

    public static class AnchorInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public OrientationHelper f19231a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19232b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f19233c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f19234e;

        public AnchorInfo() {
            c();
        }

        public final void a() {
            boolean z = this.d;
            OrientationHelper orientationHelper = this.f19231a;
            this.f19233c = z ? orientationHelper.g() : orientationHelper.k();
        }

        public final void b(int i2, View view) {
            OrientationHelper orientationHelper = this.f19231a;
            int iL = Integer.MIN_VALUE == orientationHelper.f19255b ? 0 : orientationHelper.l() - orientationHelper.f19255b;
            if (iL >= 0) {
                boolean z = this.d;
                OrientationHelper orientationHelper2 = this.f19231a;
                if (z) {
                    int iB = orientationHelper2.b(view);
                    OrientationHelper orientationHelper3 = this.f19231a;
                    this.f19233c = (Integer.MIN_VALUE != orientationHelper3.f19255b ? orientationHelper3.l() - orientationHelper3.f19255b : 0) + iB;
                } else {
                    this.f19233c = orientationHelper2.e(view);
                }
                this.f19232b = i2;
                return;
            }
            this.f19232b = i2;
            boolean z2 = this.d;
            OrientationHelper orientationHelper4 = this.f19231a;
            if (!z2) {
                int iE = orientationHelper4.e(view);
                int iK = iE - this.f19231a.k();
                this.f19233c = iE;
                if (iK > 0) {
                    int iG = (this.f19231a.g() - Math.min(0, (this.f19231a.g() - iL) - this.f19231a.b(view))) - (this.f19231a.c(view) + iE);
                    if (iG < 0) {
                        this.f19233c -= Math.min(iK, -iG);
                        return;
                    }
                    return;
                }
                return;
            }
            int iG2 = (orientationHelper4.g() - iL) - this.f19231a.b(view);
            this.f19233c = this.f19231a.g() - iG2;
            if (iG2 > 0) {
                int iC = this.f19233c - this.f19231a.c(view);
                int iK2 = this.f19231a.k();
                int iMin = iC - (Math.min(this.f19231a.e(view) - iK2, 0) + iK2);
                if (iMin < 0) {
                    this.f19233c = Math.min(iG2, -iMin) + this.f19233c;
                }
            }
        }

        public final void c() {
            this.f19232b = -1;
            this.f19233c = Integer.MIN_VALUE;
            this.d = false;
            this.f19234e = false;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("AnchorInfo{mPosition=");
            sb.append(this.f19232b);
            sb.append(", mCoordinate=");
            sb.append(this.f19233c);
            sb.append(", mLayoutFromEnd=");
            sb.append(this.d);
            sb.append(", mValid=");
            return d21.q(sb, this.f19234e, '}');
        }
    }

    public static class LayoutChunkResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f19235a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f19236b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f19237c;
        public boolean d;
    }

    public static class LayoutState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f19238a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19239b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f19240c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f19241e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f19242f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f19243h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f19244i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f19245j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public List f19246k;
        public boolean l;

        public final void a(View view) {
            int layoutPosition;
            int size = this.f19246k.size();
            View view2 = null;
            int i2 = Integer.MAX_VALUE;
            for (int i3 = 0; i3 < size; i3++) {
                View view3 = ((RecyclerView.ViewHolder) this.f19246k.get(i3)).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.f19284a.isRemoved() && (layoutPosition = (layoutParams.f19284a.getLayoutPosition() - this.d) * this.f19241e) >= 0 && layoutPosition < i2) {
                    view2 = view3;
                    if (layoutPosition == 0) {
                        break;
                    } else {
                        i2 = layoutPosition;
                    }
                }
            }
            if (view2 == null) {
                this.d = -1;
            } else {
                this.d = ((RecyclerView.LayoutParams) view2.getLayoutParams()).f19284a.getLayoutPosition();
            }
        }

        public final View b(RecyclerView.Recycler recycler) {
            List list = this.f19246k;
            if (list == null) {
                View viewD = recycler.d(this.d);
                this.d += this.f19241e;
                return viewD;
            }
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = ((RecyclerView.ViewHolder) this.f19246k.get(i2)).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.f19284a.isRemoved() && this.d == layoutParams.f19284a.getLayoutPosition()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.p = 1;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = true;
        this.x = -1;
        this.y = Integer.MIN_VALUE;
        this.z = null;
        this.A = new AnchorInfo();
        this.B = new LayoutChunkResult();
        this.C = 2;
        this.D = new int[2];
        RecyclerView.LayoutManager.Properties propertiesO = RecyclerView.LayoutManager.O(context, attributeSet, i2, i3);
        m1(propertiesO.f19281a);
        boolean z = propertiesO.f19283c;
        d(null);
        if (z != this.t) {
            this.t = z;
            w0();
        }
        n1(propertiesO.d);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean G0() {
        if (this.m != 1073741824 && this.l != 1073741824) {
            int iX = x();
            for (int i2 = 0; i2 < iX; i2++) {
                ViewGroup.LayoutParams layoutParams = w(i2).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void I0(RecyclerView recyclerView, int i2) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.f19301a = i2;
        J0(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean K0() {
        return this.z == null && this.s == this.v;
    }

    public void L0(RecyclerView.State state, int[] iArr) {
        int i2;
        int iL = state.f19311a != -1 ? this.r.l() : 0;
        if (this.q.f19242f == -1) {
            i2 = 0;
        } else {
            i2 = iL;
            iL = 0;
        }
        iArr[0] = iL;
        iArr[1] = i2;
    }

    public void M0(RecyclerView.State state, LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i2 = layoutState.d;
        if (i2 < 0 || i2 >= state.b()) {
            return;
        }
        ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(i2, Math.max(0, layoutState.g));
    }

    public final int N0(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        R0();
        OrientationHelper orientationHelper = this.r;
        boolean z = !this.w;
        return ScrollbarHelper.a(state, orientationHelper, U0(z), T0(z), this, this.w);
    }

    public final int O0(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        R0();
        OrientationHelper orientationHelper = this.r;
        boolean z = !this.w;
        return ScrollbarHelper.b(state, orientationHelper, U0(z), T0(z), this, this.w, this.u);
    }

    public final int P0(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        R0();
        OrientationHelper orientationHelper = this.r;
        boolean z = !this.w;
        return ScrollbarHelper.c(state, orientationHelper, U0(z), T0(z), this, this.w);
    }

    public final int Q0(int i2) {
        if (i2 == 1) {
            return (this.p != 1 && e1()) ? 1 : -1;
        }
        if (i2 == 2) {
            return (this.p != 1 && e1()) ? -1 : 1;
        }
        if (i2 == 17) {
            return this.p == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i2 == 33) {
            return this.p == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i2 != 66) {
            return (i2 == 130 && this.p == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.p == 0 ? 1 : Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean R() {
        return true;
    }

    public final void R0() {
        if (this.q == null) {
            LayoutState layoutState = new LayoutState();
            layoutState.f19238a = true;
            layoutState.f19243h = 0;
            layoutState.f19244i = 0;
            layoutState.f19246k = null;
            this.q = layoutState;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean S() {
        return this.t;
    }

    public final int S0(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state, boolean z) {
        int i2;
        int i3 = layoutState.f19240c;
        int i4 = layoutState.g;
        if (i4 != Integer.MIN_VALUE) {
            if (i3 < 0) {
                layoutState.g = i4 + i3;
            }
            h1(recycler, layoutState);
        }
        int i5 = layoutState.f19240c + layoutState.f19243h;
        while (true) {
            if ((!layoutState.l && i5 <= 0) || (i2 = layoutState.d) < 0 || i2 >= state.b()) {
                break;
            }
            LayoutChunkResult layoutChunkResult = this.B;
            layoutChunkResult.f19235a = 0;
            layoutChunkResult.f19236b = false;
            layoutChunkResult.f19237c = false;
            layoutChunkResult.d = false;
            f1(recycler, state, layoutState, layoutChunkResult);
            if (!layoutChunkResult.f19236b) {
                int i6 = layoutState.f19239b;
                int i7 = layoutChunkResult.f19235a;
                layoutState.f19239b = (layoutState.f19242f * i7) + i6;
                if (!layoutChunkResult.f19237c || layoutState.f19246k != null || !state.g) {
                    layoutState.f19240c -= i7;
                    i5 -= i7;
                }
                int i8 = layoutState.g;
                if (i8 != Integer.MIN_VALUE) {
                    int i9 = i8 + i7;
                    layoutState.g = i9;
                    int i10 = layoutState.f19240c;
                    if (i10 < 0) {
                        layoutState.g = i9 + i10;
                    }
                    h1(recycler, layoutState);
                }
                if (z && layoutChunkResult.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i3 - layoutState.f19240c;
    }

    public final View T0(boolean z) {
        return this.u ? Y0(0, x(), z, true) : Y0(x() - 1, -1, z, true);
    }

    public final View U0(boolean z) {
        return this.u ? Y0(x() - 1, -1, z, true) : Y0(0, x(), z, true);
    }

    public final int V0() {
        View viewY0 = Y0(0, x(), false, true);
        if (viewY0 == null) {
            return -1;
        }
        return RecyclerView.LayoutManager.N(viewY0);
    }

    public final int W0() {
        View viewY0 = Y0(x() - 1, -1, false, true);
        if (viewY0 == null) {
            return -1;
        }
        return RecyclerView.LayoutManager.N(viewY0);
    }

    public final View X0(int i2, int i3) {
        int i4;
        int i5;
        R0();
        if (i3 <= i2 && i3 >= i2) {
            return w(i2);
        }
        if (this.r.e(w(i2)) < this.r.k()) {
            i4 = 16644;
            i5 = 16388;
        } else {
            i4 = 4161;
            i5 = 4097;
        }
        return this.p == 0 ? this.f19272c.a(i2, i3, i4, i5) : this.d.a(i2, i3, i4, i5);
    }

    public final View Y0(int i2, int i3, boolean z, boolean z2) {
        R0();
        int i4 = DilithiumEngine.DilithiumPolyT1PackedBytes;
        int i5 = z ? 24579 : 320;
        if (!z2) {
            i4 = 0;
        }
        return this.p == 0 ? this.f19272c.a(i2, i3, i5, i4) : this.d.a(i2, i3, i5, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Z(RecyclerView recyclerView) {
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0075  */
    /* JADX WARN: Code duplicated, block: B:35:0x0079  */
    public View Z0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z, boolean z2) {
        int i2;
        int iX;
        int i3;
        R0();
        int iX2 = x();
        if (z2) {
            iX = x() - 1;
            i2 = -1;
            i3 = -1;
        } else {
            i2 = iX2;
            iX = 0;
            i3 = 1;
        }
        int iB = state.b();
        int iK = this.r.k();
        int iG = this.r.g();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (iX != i2) {
            View viewW = w(iX);
            int iN = RecyclerView.LayoutManager.N(viewW);
            int iE = this.r.e(viewW);
            int iB2 = this.r.b(viewW);
            if (iN >= 0 && iN < iB) {
                if (!((RecyclerView.LayoutParams) viewW.getLayoutParams()).f19284a.isRemoved()) {
                    boolean z3 = iB2 <= iK && iE < iK;
                    boolean z4 = iE >= iG && iB2 > iG;
                    if (!z3 && !z4) {
                        return viewW;
                    }
                    if (z) {
                        if (z4) {
                            view2 = viewW;
                        } else if (view == null) {
                            view = viewW;
                        }
                    } else if (z3) {
                        view2 = viewW;
                    } else if (view == null) {
                        view = viewW;
                    }
                } else if (view3 == null) {
                    view3 = viewW;
                }
            }
            iX += i3;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public final PointF a(int i2) {
        if (x() == 0) {
            return null;
        }
        int i3 = (i2 < RecyclerView.LayoutManager.N(w(0))) != this.u ? -1 : 1;
        return this.p == 0 ? new PointF(i3, Call.Parameters.DEFAULT_CAMERA_ZOOM) : new PointF(Call.Parameters.DEFAULT_CAMERA_ZOOM, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View a0(View view, int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int iQ0;
        View viewX0;
        j1();
        if (x() != 0 && (iQ0 = Q0(i2)) != Integer.MIN_VALUE) {
            R0();
            o1(iQ0, (int) (this.r.l() * 0.33333334f), false, state);
            LayoutState layoutState = this.q;
            layoutState.g = Integer.MIN_VALUE;
            layoutState.f19238a = false;
            S0(recycler, layoutState, state, true);
            boolean z = this.u;
            if (iQ0 == -1) {
                viewX0 = z ? X0(x() - 1, -1) : X0(0, x());
            } else {
                viewX0 = z ? X0(0, x()) : X0(x() - 1, -1);
            }
            View viewD1 = iQ0 == -1 ? d1() : c1();
            if (!viewD1.hasFocusable()) {
                return viewX0;
            }
            if (viewX0 != null) {
                return viewD1;
            }
        }
        return null;
    }

    public final int a1(int i2, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int iG;
        int iG2 = this.r.g() - i2;
        if (iG2 <= 0) {
            return 0;
        }
        int i3 = -k1(-iG2, recycler, state);
        int i4 = i2 + i3;
        if (!z || (iG = this.r.g() - i4) <= 0) {
            return i3;
        }
        this.r.o(iG);
        return iG + i3;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
    public final void b(View view, View view2) {
        d("Cannot drop a view during a scroll or layout calculation");
        R0();
        j1();
        int iN = RecyclerView.LayoutManager.N(view);
        int iN2 = RecyclerView.LayoutManager.N(view2);
        byte b2 = iN < iN2 ? (byte) 1 : (byte) -1;
        boolean z = this.u;
        OrientationHelper orientationHelper = this.r;
        if (z) {
            if (b2 == 1) {
                l1(iN2, orientationHelper.g() - (this.r.c(view) + this.r.e(view2)));
                return;
            } else {
                l1(iN2, orientationHelper.g() - this.r.b(view2));
                return;
            }
        }
        if (b2 == -1) {
            l1(iN2, orientationHelper.e(view2));
        } else {
            l1(iN2, orientationHelper.b(view2) - this.r.c(view));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void b0(AccessibilityEvent accessibilityEvent) {
        super.b0(accessibilityEvent);
        if (x() > 0) {
            accessibilityEvent.setFromIndex(V0());
            accessibilityEvent.setToIndex(W0());
        }
    }

    public final int b1(int i2, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int iK;
        int iK2 = i2 - this.r.k();
        if (iK2 <= 0) {
            return 0;
        }
        int i3 = -k1(iK2, recycler, state);
        int i4 = i2 + i3;
        if (!z || (iK = i4 - this.r.k()) <= 0) {
            return i3;
        }
        this.r.o(-iK);
        return i3 - iK;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void c0(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.c0(recycler, state, accessibilityNodeInfoCompat);
        RecyclerView.Adapter adapter = this.f19271b.mAdapter;
        if (adapter == null || adapter.getItemCount() <= 0) {
            return;
        }
        accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.m);
    }

    public final View c1() {
        return w(this.u ? 0 : x() - 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void d(String str) {
        if (this.z == null) {
            super.d(str);
        }
    }

    public final View d1() {
        return w(this.u ? x() - 1 : 0);
    }

    public final boolean e1() {
        return this.f19271b.getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean f() {
        return this.p == 0;
    }

    public void f1(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int i2;
        int iD;
        int i3;
        int iD2;
        View viewB = layoutState.b(recycler);
        if (viewB == null) {
            layoutChunkResult.f19236b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewB.getLayoutParams();
        List list = layoutState.f19246k;
        boolean z = this.u;
        int i4 = layoutState.f19242f;
        if (list == null) {
            if (z == (i4 == -1)) {
                c(viewB, -1, false);
            } else {
                c(viewB, 0, false);
            }
        } else {
            if (z == (i4 == -1)) {
                c(viewB, -1, true);
            } else {
                c(viewB, 0, true);
            }
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) viewB.getLayoutParams();
        Rect itemDecorInsetsForChild = this.f19271b.getItemDecorInsetsForChild(viewB);
        int i5 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
        int i6 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
        int iY = RecyclerView.LayoutManager.y(this.n, this.l, f(), L() + K() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin + i5, ((ViewGroup.MarginLayoutParams) layoutParams2).width);
        int iY2 = RecyclerView.LayoutManager.y(this.o, this.m, g(), J() + M() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i6, ((ViewGroup.MarginLayoutParams) layoutParams2).height);
        if (F0(viewB, iY, iY2, layoutParams2)) {
            viewB.measure(iY, iY2);
        }
        layoutChunkResult.f19235a = this.r.c(viewB);
        if (this.p == 1) {
            if (e1()) {
                iD2 = this.n - L();
                iD = iD2 - this.r.d(viewB);
            } else {
                int iK = K();
                iD2 = this.r.d(viewB) + iK;
                iD = iK;
            }
            int i7 = layoutState.f19242f;
            i3 = layoutState.f19239b;
            int i8 = layoutChunkResult.f19235a;
            if (i7 == -1) {
                int i9 = i3 - i8;
                i2 = i3;
                i3 = i9;
            } else {
                i2 = i8 + i3;
            }
        } else {
            int iM = M();
            int iD3 = this.r.d(viewB) + iM;
            int i10 = layoutState.f19242f;
            int i11 = layoutState.f19239b;
            int i12 = layoutChunkResult.f19235a;
            if (i10 == -1) {
                int i13 = i11 - i12;
                iD2 = i11;
                i3 = iM;
                i2 = iD3;
                iD = i13;
            } else {
                int i14 = i11 + i12;
                i2 = iD3;
                iD = i11;
                i3 = iM;
                iD2 = i14;
            }
        }
        RecyclerView.LayoutManager.U(viewB, iD, i3, iD2, i2);
        if (layoutParams.f19284a.isRemoved() || layoutParams.f19284a.isUpdated()) {
            layoutChunkResult.f19237c = true;
        }
        layoutChunkResult.d = viewB.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean g() {
        return this.p == 1;
    }

    public void g1(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo, int i2) {
    }

    public final void h1(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (!layoutState.f19238a || layoutState.l) {
            return;
        }
        int i2 = layoutState.g;
        int i3 = layoutState.f19244i;
        if (layoutState.f19242f == -1) {
            int iX = x();
            if (i2 < 0) {
                return;
            }
            int iF = (this.r.f() - i2) + i3;
            if (this.u) {
                for (int i4 = 0; i4 < iX; i4++) {
                    View viewW = w(i4);
                    if (this.r.e(viewW) < iF || this.r.n(viewW) < iF) {
                        i1(recycler, 0, i4);
                        return;
                    }
                }
                return;
            }
            int i5 = iX - 1;
            for (int i6 = i5; i6 >= 0; i6--) {
                View viewW2 = w(i6);
                if (this.r.e(viewW2) < iF || this.r.n(viewW2) < iF) {
                    i1(recycler, i5, i6);
                    return;
                }
            }
            return;
        }
        if (i2 < 0) {
            return;
        }
        int i7 = i2 - i3;
        int iX2 = x();
        if (!this.u) {
            for (int i8 = 0; i8 < iX2; i8++) {
                View viewW3 = w(i8);
                if (this.r.b(viewW3) > i7 || this.r.m(viewW3) > i7) {
                    i1(recycler, 0, i8);
                    return;
                }
            }
            return;
        }
        int i9 = iX2 - 1;
        for (int i10 = i9; i10 >= 0; i10--) {
            View viewW4 = w(i10);
            if (this.r.b(viewW4) > i7 || this.r.m(viewW4) > i7) {
                i1(recycler, i9, i10);
                return;
            }
        }
    }

    public final void i1(RecyclerView.Recycler recycler, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        if (i3 <= i2) {
            while (i2 > i3) {
                View viewW = w(i2);
                u0(i2);
                recycler.j(viewW);
                i2--;
            }
            return;
        }
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            View viewW2 = w(i4);
            u0(i4);
            recycler.j(viewW2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void j(int i2, int i3, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        if (this.p != 0) {
            i2 = i3;
        }
        if (x() == 0 || i2 == 0) {
            return;
        }
        R0();
        o1(i2 > 0 ? 1 : -1, Math.abs(i2), true, state);
        M0(state, this.q, layoutPrefetchRegistry);
    }

    public final void j1() {
        if (this.p == 1 || !e1()) {
            this.u = this.t;
        } else {
            this.u = !this.t;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void k(int i2, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        boolean z;
        int i3;
        SavedState savedState = this.z;
        if (savedState == null || (i3 = savedState.f19247b) < 0) {
            j1();
            z = this.u;
            i3 = this.x;
            if (i3 == -1) {
                i3 = z ? i2 - 1 : 0;
            }
        } else {
            z = savedState.d;
        }
        int i4 = z ? -1 : 1;
        for (int i5 = 0; i5 < this.C && i3 >= 0 && i3 < i2; i5++) {
            ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(i3, 0);
            i3 += i4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x019f  */
    /* JADX WARN: Code duplicated, block: B:104:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:111:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:114:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:118:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:120:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:121:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:123:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:126:0x020a  */
    /* JADX WARN: Code duplicated, block: B:130:0x022a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:132:0x022e  */
    /* JADX WARN: Code duplicated, block: B:134:0x0231 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:136:0x0235  */
    /* JADX WARN: Code duplicated, block: B:138:0x0238 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:139:0x023a  */
    /* JADX WARN: Code duplicated, block: B:141:0x023e  */
    /* JADX WARN: Code duplicated, block: B:143:0x0242  */
    /* JADX WARN: Code duplicated, block: B:145:0x0249  */
    /* JADX WARN: Code duplicated, block: B:146:0x024f  */
    /* JADX WARN: Code duplicated, block: B:95:0x018a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v14 */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void k0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        View focusedChild;
        int iB;
        RecyclerView recyclerView;
        View focusedChild2;
        boolean z;
        boolean z2;
        View viewZ0;
        boolean z3;
        OrientationHelper orientationHelper;
        int iE;
        int iB2;
        int iK;
        int iG;
        boolean z4;
        boolean z5;
        OrientationHelper orientationHelper2;
        int iL;
        RecyclerView.LayoutParams layoutParams;
        int i2;
        int iE2;
        int i3;
        int i4;
        ?? r4;
        List list;
        int i5;
        int i6;
        int iA1;
        int i7;
        View viewS;
        int iE3;
        int iG2;
        int i8;
        int i9 = -1;
        if (!(this.z == null && this.x == -1) && state.b() == 0) {
            r0(recycler);
            return;
        }
        SavedState savedState = this.z;
        if (savedState != null && (i8 = savedState.f19247b) >= 0) {
            this.x = i8;
        }
        R0();
        boolean z6 = false;
        this.q.f19238a = false;
        j1();
        RecyclerView recyclerView2 = this.f19271b;
        if (recyclerView2 == null || (focusedChild = recyclerView2.getFocusedChild()) == null || this.f19270a.f19143c.contains(focusedChild)) {
            focusedChild = null;
        }
        AnchorInfo anchorInfo = this.A;
        if (!anchorInfo.f19234e || this.x != -1 || this.z != null) {
            anchorInfo.c();
            anchorInfo.d = this.u ^ this.v;
            if (state.g || (i2 = this.x) == -1) {
                if (x() != 0) {
                    recyclerView = this.f19271b;
                    if (recyclerView != null || (focusedChild2 = recyclerView.getFocusedChild()) == null || this.f19270a.f19143c.contains(focusedChild2)) {
                        focusedChild2 = null;
                    }
                    if (focusedChild2 != null) {
                        layoutParams = (RecyclerView.LayoutParams) focusedChild2.getLayoutParams();
                        if (!layoutParams.f19284a.isRemoved() || layoutParams.f19284a.getLayoutPosition() < 0 || layoutParams.f19284a.getLayoutPosition() >= state.b()) {
                            z = this.s;
                            z2 = this.v;
                            if (z == z2 || (viewZ0 = Z0(recycler, state, anchorInfo.d, z2)) == null) {
                                anchorInfo.a();
                                if (this.v) {
                                    iB = state.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                anchorInfo.f19232b = iB;
                            } else {
                                int iN = RecyclerView.LayoutManager.N(viewZ0);
                                z3 = anchorInfo.d;
                                orientationHelper = anchorInfo.f19231a;
                                if (z3) {
                                    int iB3 = orientationHelper.b(viewZ0);
                                    orientationHelper2 = anchorInfo.f19231a;
                                    if (Integer.MIN_VALUE == orientationHelper2.f19255b) {
                                        iL = 0;
                                    } else {
                                        iL = orientationHelper2.l() - orientationHelper2.f19255b;
                                    }
                                    anchorInfo.f19233c = iL + iB3;
                                } else {
                                    anchorInfo.f19233c = orientationHelper.e(viewZ0);
                                }
                                anchorInfo.f19232b = iN;
                                if (!state.g && K0()) {
                                    iE = this.r.e(viewZ0);
                                    iB2 = this.r.b(viewZ0);
                                    iK = this.r.k();
                                    iG = this.r.g();
                                    if (iB2 <= iK || iE >= iK) {
                                        z4 = false;
                                    } else {
                                        z4 = true;
                                    }
                                    if (iE >= iG || iB2 <= iG) {
                                        z5 = false;
                                    } else {
                                        z5 = true;
                                    }
                                    if (z4 || z5) {
                                        if (anchorInfo.d) {
                                            iK = iG;
                                        }
                                        anchorInfo.f19233c = iK;
                                    }
                                }
                            }
                        } else {
                            anchorInfo.b(RecyclerView.LayoutManager.N(focusedChild2), focusedChild2);
                        }
                    } else {
                        z = this.s;
                        z2 = this.v;
                        if (z == z2) {
                            anchorInfo.a();
                            if (this.v) {
                                iB = state.b() - 1;
                            } else {
                                iB = 0;
                            }
                            anchorInfo.f19232b = iB;
                        } else {
                            int iN2 = RecyclerView.LayoutManager.N(viewZ0);
                            z3 = anchorInfo.d;
                            orientationHelper = anchorInfo.f19231a;
                            if (z3) {
                                int iB4 = orientationHelper.b(viewZ0);
                                orientationHelper2 = anchorInfo.f19231a;
                                if (Integer.MIN_VALUE == orientationHelper2.f19255b) {
                                    iL = 0;
                                } else {
                                    iL = orientationHelper2.l() - orientationHelper2.f19255b;
                                }
                                anchorInfo.f19233c = iL + iB4;
                            } else {
                                anchorInfo.f19233c = orientationHelper.e(viewZ0);
                            }
                            anchorInfo.f19232b = iN2;
                            if (!state.g) {
                                iE = this.r.e(viewZ0);
                                iB2 = this.r.b(viewZ0);
                                iK = this.r.k();
                                iG = this.r.g();
                                if (iB2 <= iK) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                if (iE >= iG) {
                                    z5 = false;
                                } else {
                                    z5 = false;
                                }
                                if (z4) {
                                    if (anchorInfo.d) {
                                        iK = iG;
                                    }
                                    anchorInfo.f19233c = iK;
                                } else {
                                    if (anchorInfo.d) {
                                        iK = iG;
                                    }
                                    anchorInfo.f19233c = iK;
                                }
                            }
                        }
                    }
                } else {
                    anchorInfo.a();
                    if (this.v) {
                        iB = state.b() - 1;
                    } else {
                        iB = 0;
                    }
                    anchorInfo.f19232b = iB;
                }
            } else if (i2 < 0 || i2 >= state.b()) {
                this.x = -1;
                this.y = Integer.MIN_VALUE;
                if (x() != 0) {
                    recyclerView = this.f19271b;
                    if (recyclerView != null) {
                        focusedChild2 = null;
                    } else {
                        focusedChild2 = null;
                    }
                    if (focusedChild2 != null) {
                        layoutParams = (RecyclerView.LayoutParams) focusedChild2.getLayoutParams();
                        if (layoutParams.f19284a.isRemoved()) {
                            z = this.s;
                            z2 = this.v;
                            if (z == z2) {
                                anchorInfo.a();
                                if (this.v) {
                                    iB = state.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                anchorInfo.f19232b = iB;
                            } else {
                                int iN3 = RecyclerView.LayoutManager.N(viewZ0);
                                z3 = anchorInfo.d;
                                orientationHelper = anchorInfo.f19231a;
                                if (z3) {
                                    int iB5 = orientationHelper.b(viewZ0);
                                    orientationHelper2 = anchorInfo.f19231a;
                                    if (Integer.MIN_VALUE == orientationHelper2.f19255b) {
                                        iL = 0;
                                    } else {
                                        iL = orientationHelper2.l() - orientationHelper2.f19255b;
                                    }
                                    anchorInfo.f19233c = iL + iB5;
                                } else {
                                    anchorInfo.f19233c = orientationHelper.e(viewZ0);
                                }
                                anchorInfo.f19232b = iN3;
                                if (!state.g) {
                                    iE = this.r.e(viewZ0);
                                    iB2 = this.r.b(viewZ0);
                                    iK = this.r.k();
                                    iG = this.r.g();
                                    if (iB2 <= iK) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (iE >= iG) {
                                        z5 = false;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z4) {
                                        if (anchorInfo.d) {
                                            iK = iG;
                                        }
                                        anchorInfo.f19233c = iK;
                                    } else {
                                        if (anchorInfo.d) {
                                            iK = iG;
                                        }
                                        anchorInfo.f19233c = iK;
                                    }
                                }
                            }
                        } else {
                            z = this.s;
                            z2 = this.v;
                            if (z == z2) {
                                anchorInfo.a();
                                if (this.v) {
                                    iB = state.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                anchorInfo.f19232b = iB;
                            } else {
                                int iN4 = RecyclerView.LayoutManager.N(viewZ0);
                                z3 = anchorInfo.d;
                                orientationHelper = anchorInfo.f19231a;
                                if (z3) {
                                    int iB6 = orientationHelper.b(viewZ0);
                                    orientationHelper2 = anchorInfo.f19231a;
                                    if (Integer.MIN_VALUE == orientationHelper2.f19255b) {
                                        iL = 0;
                                    } else {
                                        iL = orientationHelper2.l() - orientationHelper2.f19255b;
                                    }
                                    anchorInfo.f19233c = iL + iB6;
                                } else {
                                    anchorInfo.f19233c = orientationHelper.e(viewZ0);
                                }
                                anchorInfo.f19232b = iN4;
                                if (!state.g) {
                                    iE = this.r.e(viewZ0);
                                    iB2 = this.r.b(viewZ0);
                                    iK = this.r.k();
                                    iG = this.r.g();
                                    if (iB2 <= iK) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (iE >= iG) {
                                        z5 = false;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z4) {
                                        if (anchorInfo.d) {
                                            iK = iG;
                                        }
                                        anchorInfo.f19233c = iK;
                                    } else {
                                        if (anchorInfo.d) {
                                            iK = iG;
                                        }
                                        anchorInfo.f19233c = iK;
                                    }
                                }
                            }
                        }
                    } else {
                        z = this.s;
                        z2 = this.v;
                        if (z == z2) {
                            anchorInfo.a();
                            if (this.v) {
                                iB = state.b() - 1;
                            } else {
                                iB = 0;
                            }
                            anchorInfo.f19232b = iB;
                        } else {
                            int iN5 = RecyclerView.LayoutManager.N(viewZ0);
                            z3 = anchorInfo.d;
                            orientationHelper = anchorInfo.f19231a;
                            if (z3) {
                                int iB7 = orientationHelper.b(viewZ0);
                                orientationHelper2 = anchorInfo.f19231a;
                                if (Integer.MIN_VALUE == orientationHelper2.f19255b) {
                                    iL = 0;
                                } else {
                                    iL = orientationHelper2.l() - orientationHelper2.f19255b;
                                }
                                anchorInfo.f19233c = iL + iB7;
                            } else {
                                anchorInfo.f19233c = orientationHelper.e(viewZ0);
                            }
                            anchorInfo.f19232b = iN5;
                            if (!state.g) {
                                iE = this.r.e(viewZ0);
                                iB2 = this.r.b(viewZ0);
                                iK = this.r.k();
                                iG = this.r.g();
                                if (iB2 <= iK) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                if (iE >= iG) {
                                    z5 = false;
                                } else {
                                    z5 = false;
                                }
                                if (z4) {
                                    if (anchorInfo.d) {
                                        iK = iG;
                                    }
                                    anchorInfo.f19233c = iK;
                                } else {
                                    if (anchorInfo.d) {
                                        iK = iG;
                                    }
                                    anchorInfo.f19233c = iK;
                                }
                            }
                        }
                    }
                } else {
                    anchorInfo.a();
                    if (this.v) {
                        iB = state.b() - 1;
                    } else {
                        iB = 0;
                    }
                    anchorInfo.f19232b = iB;
                }
            } else {
                int i10 = this.x;
                anchorInfo.f19232b = i10;
                SavedState savedState2 = this.z;
                if (savedState2 != null && savedState2.f19247b >= 0) {
                    boolean z7 = savedState2.d;
                    anchorInfo.d = z7;
                    OrientationHelper orientationHelper3 = this.r;
                    if (z7) {
                        anchorInfo.f19233c = orientationHelper3.g() - this.z.f19248c;
                    } else {
                        anchorInfo.f19233c = orientationHelper3.k() + this.z.f19248c;
                    }
                } else if (this.y == Integer.MIN_VALUE) {
                    View viewS2 = s(i10);
                    if (viewS2 == null) {
                        if (x() > 0) {
                            anchorInfo.d = (this.x < RecyclerView.LayoutManager.N(w(0))) == this.u;
                        }
                        anchorInfo.a();
                    } else if (this.r.c(viewS2) > this.r.l()) {
                        anchorInfo.a();
                    } else {
                        int iE4 = this.r.e(viewS2) - this.r.k();
                        OrientationHelper orientationHelper4 = this.r;
                        if (iE4 < 0) {
                            anchorInfo.f19233c = orientationHelper4.k();
                            anchorInfo.d = false;
                        } else if (orientationHelper4.g() - this.r.b(viewS2) < 0) {
                            anchorInfo.f19233c = this.r.g();
                            anchorInfo.d = true;
                        } else {
                            boolean z8 = anchorInfo.d;
                            OrientationHelper orientationHelper5 = this.r;
                            if (z8) {
                                int iB8 = orientationHelper5.b(viewS2);
                                OrientationHelper orientationHelper6 = this.r;
                                iE2 = (Integer.MIN_VALUE == orientationHelper6.f19255b ? 0 : orientationHelper6.l() - orientationHelper6.f19255b) + iB8;
                            } else {
                                iE2 = orientationHelper5.e(viewS2);
                            }
                            anchorInfo.f19233c = iE2;
                        }
                    }
                } else {
                    boolean z9 = this.u;
                    anchorInfo.d = z9;
                    OrientationHelper orientationHelper7 = this.r;
                    if (z9) {
                        anchorInfo.f19233c = orientationHelper7.g() - this.y;
                    } else {
                        anchorInfo.f19233c = orientationHelper7.k() + this.y;
                    }
                }
            }
            anchorInfo.f19234e = true;
        } else if (focusedChild != null && (this.r.e(focusedChild) >= this.r.g() || this.r.b(focusedChild) <= this.r.k())) {
            anchorInfo.b(RecyclerView.LayoutManager.N(focusedChild), focusedChild);
        }
        LayoutState layoutState = this.q;
        layoutState.f19242f = layoutState.f19245j >= 0 ? 1 : -1;
        int[] iArr = this.D;
        iArr[0] = 0;
        iArr[1] = 0;
        L0(state, iArr);
        int iK2 = this.r.k() + Math.max(0, iArr[0]);
        int iH = this.r.h() + Math.max(0, iArr[1]);
        if (state.g && (i7 = this.x) != -1 && this.y != Integer.MIN_VALUE && (viewS = s(i7)) != null) {
            boolean z10 = this.u;
            OrientationHelper orientationHelper8 = this.r;
            if (z10) {
                iG2 = orientationHelper8.g() - this.r.b(viewS);
                iE3 = this.y;
            } else {
                iE3 = orientationHelper8.e(viewS) - this.r.k();
                iG2 = this.y;
            }
            int i11 = iG2 - iE3;
            if (i11 > 0) {
                iK2 += i11;
            } else {
                iH -= i11;
            }
        }
        boolean z11 = anchorInfo.d;
        boolean z12 = this.u;
        if (!z11 ? !z12 : z12) {
            i9 = 1;
        }
        g1(recycler, state, anchorInfo, i9);
        r(recycler);
        this.q.l = this.r.i() == 0 && this.r.f() == 0;
        this.q.getClass();
        this.q.f19244i = 0;
        boolean z13 = anchorInfo.d;
        int i12 = anchorInfo.f19232b;
        if (z13) {
            q1(i12, anchorInfo.f19233c);
            LayoutState layoutState2 = this.q;
            layoutState2.f19243h = iK2;
            S0(recycler, layoutState2, state, false);
            LayoutState layoutState3 = this.q;
            i4 = layoutState3.f19239b;
            int i13 = layoutState3.d;
            int i14 = layoutState3.f19240c;
            if (i14 > 0) {
                iH += i14;
            }
            p1(anchorInfo.f19232b, anchorInfo.f19233c);
            LayoutState layoutState4 = this.q;
            layoutState4.f19243h = iH;
            layoutState4.d += layoutState4.f19241e;
            S0(recycler, layoutState4, state, false);
            LayoutState layoutState5 = this.q;
            i3 = layoutState5.f19239b;
            int i15 = layoutState5.f19240c;
            if (i15 > 0) {
                q1(i13, i4);
                LayoutState layoutState6 = this.q;
                layoutState6.f19243h = i15;
                S0(recycler, layoutState6, state, false);
                i4 = this.q.f19239b;
            }
        } else {
            p1(i12, anchorInfo.f19233c);
            LayoutState layoutState7 = this.q;
            layoutState7.f19243h = iH;
            S0(recycler, layoutState7, state, false);
            LayoutState layoutState8 = this.q;
            i3 = layoutState8.f19239b;
            int i16 = layoutState8.d;
            int i17 = layoutState8.f19240c;
            if (i17 > 0) {
                iK2 += i17;
            }
            q1(anchorInfo.f19232b, anchorInfo.f19233c);
            LayoutState layoutState9 = this.q;
            layoutState9.f19243h = iK2;
            layoutState9.d += layoutState9.f19241e;
            S0(recycler, layoutState9, state, false);
            LayoutState layoutState10 = this.q;
            int i18 = layoutState10.f19239b;
            int i19 = layoutState10.f19240c;
            if (i19 > 0) {
                p1(i16, i3);
                LayoutState layoutState11 = this.q;
                layoutState11.f19243h = i19;
                S0(recycler, layoutState11, state, false);
                i3 = this.q.f19239b;
            }
            i4 = i18;
        }
        if (x() > 0) {
            if (this.u ^ this.v) {
                int iA2 = a1(i3, recycler, state, true);
                i5 = i4 + iA2;
                i6 = i3 + iA2;
                iA1 = b1(i5, recycler, state, false);
            } else {
                int iB1 = b1(i4, recycler, state, true);
                i5 = i4 + iB1;
                i6 = i3 + iB1;
                iA1 = a1(i6, recycler, state, false);
            }
            i4 = i5 + iA1;
            i3 = i6 + iA1;
        }
        if (state.f19319k && x() != 0 && !state.g && K0()) {
            List list2 = recycler.d;
            int size = list2.size();
            int iN6 = RecyclerView.LayoutManager.N(w(0));
            int i20 = 0;
            int iC = 0;
            int iC2 = 0;
            while (i20 < size) {
                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) list2.get(i20);
                if (!viewHolder.isRemoved()) {
                    boolean z14 = viewHolder.getLayoutPosition() < iN6 ? true : z6;
                    boolean z15 = this.u;
                    OrientationHelper orientationHelper9 = this.r;
                    View view = viewHolder.itemView;
                    if (z14 != z15) {
                        iC += orientationHelper9.c(view);
                    } else {
                        iC2 += orientationHelper9.c(view);
                    }
                }
                i20++;
                z6 = false;
            }
            this.q.f19246k = list2;
            if (iC > 0) {
                q1(RecyclerView.LayoutManager.N(d1()), i4);
                LayoutState layoutState12 = this.q;
                layoutState12.f19243h = iC;
                r4 = 0;
                layoutState12.f19240c = 0;
                layoutState12.a(null);
                S0(recycler, this.q, state, false);
            } else {
                r4 = 0;
            }
            if (iC2 > 0) {
                p1(RecyclerView.LayoutManager.N(c1()), i3);
                LayoutState layoutState13 = this.q;
                layoutState13.f19243h = iC2;
                layoutState13.f19240c = r4;
                list = null;
                layoutState13.a(null);
                S0(recycler, this.q, state, r4);
            } else {
                list = null;
            }
            this.q.f19246k = list;
        }
        if (state.g) {
            anchorInfo.c();
        } else {
            OrientationHelper orientationHelper10 = this.r;
            orientationHelper10.f19255b = orientationHelper10.l();
        }
        this.s = this.v;
    }

    public final int k1(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (x() != 0 && i2 != 0) {
            R0();
            this.q.f19238a = true;
            int i3 = i2 > 0 ? 1 : -1;
            int iAbs = Math.abs(i2);
            o1(i3, iAbs, true, state);
            LayoutState layoutState = this.q;
            int iS0 = S0(recycler, layoutState, state, false) + layoutState.g;
            if (iS0 >= 0) {
                if (iAbs > iS0) {
                    i2 = i3 * iS0;
                }
                this.r.o(-i2);
                this.q.f19245j = i2;
                return i2;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int l(RecyclerView.State state) {
        return N0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void l0(RecyclerView.State state) {
        this.z = null;
        this.x = -1;
        this.y = Integer.MIN_VALUE;
        this.A.c();
    }

    public final void l1(int i2, int i3) {
        this.x = i2;
        this.y = i3;
        SavedState savedState = this.z;
        if (savedState != null) {
            savedState.f19247b = -1;
        }
        w0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int m(RecyclerView.State state) {
        return O0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void m0(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.z = savedState;
            if (this.x != -1) {
                savedState.f19247b = -1;
            }
            w0();
        }
    }

    public final void m1(int i2) {
        if (i2 != 0 && i2 != 1) {
            md.n(pq0.k(i2, "invalid orientation:"));
            return;
        }
        d(null);
        if (i2 != this.p || this.r == null) {
            OrientationHelper orientationHelperA = OrientationHelper.a(this, i2);
            this.r = orientationHelperA;
            this.A.f19231a = orientationHelperA;
            this.p = i2;
            w0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int n(RecyclerView.State state) {
        return P0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable n0() {
        SavedState savedState = this.z;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (x() <= 0) {
            savedState2.f19247b = -1;
            return savedState2;
        }
        R0();
        boolean z = this.s ^ this.u;
        savedState2.d = z;
        if (z) {
            View viewC1 = c1();
            savedState2.f19248c = this.r.g() - this.r.b(viewC1);
            savedState2.f19247b = RecyclerView.LayoutManager.N(viewC1);
            return savedState2;
        }
        View viewD1 = d1();
        savedState2.f19247b = RecyclerView.LayoutManager.N(viewD1);
        savedState2.f19248c = this.r.e(viewD1) - this.r.k();
        return savedState2;
    }

    public void n1(boolean z) {
        d(null);
        if (this.v == z) {
            return;
        }
        this.v = z;
        w0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int o(RecyclerView.State state) {
        return N0(state);
    }

    public final void o1(int i2, int i3, boolean z, RecyclerView.State state) {
        int iK;
        this.q.l = this.r.i() == 0 && this.r.f() == 0;
        this.q.f19242f = i2;
        int[] iArr = this.D;
        iArr[0] = 0;
        iArr[1] = 0;
        L0(state, iArr);
        int iMax = Math.max(0, iArr[0]);
        int iMax2 = Math.max(0, iArr[1]);
        boolean z2 = i2 == 1;
        LayoutState layoutState = this.q;
        int i4 = z2 ? iMax2 : iMax;
        layoutState.f19243h = i4;
        if (!z2) {
            iMax = iMax2;
        }
        layoutState.f19244i = iMax;
        if (z2) {
            layoutState.f19243h = this.r.h() + i4;
            View viewC1 = c1();
            LayoutState layoutState2 = this.q;
            layoutState2.f19241e = this.u ? -1 : 1;
            int iN = RecyclerView.LayoutManager.N(viewC1);
            LayoutState layoutState3 = this.q;
            layoutState2.d = iN + layoutState3.f19241e;
            layoutState3.f19239b = this.r.b(viewC1);
            iK = this.r.b(viewC1) - this.r.g();
        } else {
            View viewD1 = d1();
            LayoutState layoutState4 = this.q;
            layoutState4.f19243h = this.r.k() + layoutState4.f19243h;
            LayoutState layoutState5 = this.q;
            layoutState5.f19241e = this.u ? 1 : -1;
            int iN2 = RecyclerView.LayoutManager.N(viewD1);
            LayoutState layoutState6 = this.q;
            layoutState5.d = iN2 + layoutState6.f19241e;
            layoutState6.f19239b = this.r.e(viewD1);
            iK = (-this.r.e(viewD1)) + this.r.k();
        }
        LayoutState layoutState7 = this.q;
        layoutState7.f19240c = i3;
        if (z) {
            layoutState7.f19240c = i3 - iK;
        }
        layoutState7.g = iK;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int p(RecyclerView.State state) {
        return O0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean p0(int i2, Bundle bundle) {
        int iMin;
        if (super.p0(i2, bundle)) {
            return true;
        }
        if (i2 == 16908343 && bundle != null) {
            if (this.p == 1) {
                int i3 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
                if (i3 < 0) {
                    return false;
                }
                RecyclerView recyclerView = this.f19271b;
                iMin = Math.min(i3, P(recyclerView.mRecycler, recyclerView.mState) - 1);
            } else {
                int i4 = bundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT", -1);
                if (i4 < 0) {
                    return false;
                }
                RecyclerView recyclerView2 = this.f19271b;
                iMin = Math.min(i4, A(recyclerView2.mRecycler, recyclerView2.mState) - 1);
            }
            if (iMin >= 0) {
                l1(iMin, 0);
                return true;
            }
        }
        return false;
    }

    public final void p1(int i2, int i3) {
        this.q.f19240c = this.r.g() - i3;
        LayoutState layoutState = this.q;
        layoutState.f19241e = this.u ? -1 : 1;
        layoutState.d = i2;
        layoutState.f19242f = 1;
        layoutState.f19239b = i3;
        layoutState.g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int q(RecyclerView.State state) {
        return P0(state);
    }

    public final void q1(int i2, int i3) {
        this.q.f19240c = i3 - this.r.k();
        LayoutState layoutState = this.q;
        layoutState.d = i2;
        layoutState.f19241e = this.u ? 1 : -1;
        layoutState.f19242f = -1;
        layoutState.f19239b = i3;
        layoutState.g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final View s(int i2) {
        int iX = x();
        if (iX == 0) {
            return null;
        }
        int iN = i2 - RecyclerView.LayoutManager.N(w(0));
        if (iN >= 0 && iN < iX) {
            View viewW = w(iN);
            if (RecyclerView.LayoutManager.N(viewW) == i2) {
                return viewW;
            }
        }
        return super.s(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams t() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int x0(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 1) {
            return 0;
        }
        return k1(i2, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void y0(int i2) {
        this.x = i2;
        this.y = Integer.MIN_VALUE;
        SavedState savedState = this.z;
        if (savedState != null) {
            savedState.f19247b = -1;
        }
        w0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int z0(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 0) {
            return 0;
        }
        return k1(i2, recycler, state);
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19247b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f19248c;
        public boolean d;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.LinearLayoutManager$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState();
                savedState.f19247b = parcel.readInt();
                savedState.f19248c = parcel.readInt();
                savedState.d = parcel.readInt() == 1;
                return savedState;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        public SavedState(SavedState savedState) {
            this.f19247b = savedState.f19247b;
            this.f19248c = savedState.f19248c;
            this.d = savedState.d;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f19247b);
            parcel.writeInt(this.f19248c);
            parcel.writeInt(this.d ? 1 : 0);
        }

        public SavedState() {
        }
    }

    public LinearLayoutManager(Context context, int i2, boolean z) {
        this.p = 1;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = true;
        this.x = -1;
        this.y = Integer.MIN_VALUE;
        this.z = null;
        this.A = new AnchorInfo();
        this.B = new LayoutChunkResult();
        this.C = 2;
        this.D = new int[2];
        m1(i2);
        d(null);
        if (z == this.t) {
            return;
        }
        this.t = z;
        w0();
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }
}
