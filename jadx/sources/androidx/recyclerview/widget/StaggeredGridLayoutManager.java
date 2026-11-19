package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import defpackage.cj;
import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    public int A;
    public final LazySpanLookup B;
    public final int C;
    public boolean D;
    public boolean E;
    public SavedState F;
    public final Rect G;
    public final AnchorInfo H;
    public final boolean I;
    public int[] J;
    public final Runnable K;
    public int p;
    public Span[] q;
    public final OrientationHelper r;
    public final OrientationHelper s;
    public final int t;
    public int u;
    public final LayoutState v;
    public boolean w;
    public boolean x;
    public BitSet y;
    public int z;

    public class AnchorInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f19328a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19329b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f19330c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f19331e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int[] f19332f;

        public AnchorInfo() {
            a();
        }

        public final void a() {
            this.f19328a = -1;
            this.f19329b = Integer.MIN_VALUE;
            this.f19330c = false;
            this.d = false;
            this.f19331e = false;
            int[] iArr = this.f19332f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    public static class LazySpanLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f19334a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList f19335b;

        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new AnonymousClass1();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f19336b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f19337c;
            public int[] d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f19338e;

            /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$1, reason: invalid class name */
            public class AnonymousClass1 implements Parcelable.Creator<FullSpanItem> {
                @Override // android.os.Parcelable.Creator
                public final FullSpanItem createFromParcel(Parcel parcel) {
                    FullSpanItem fullSpanItem = new FullSpanItem();
                    fullSpanItem.f19336b = parcel.readInt();
                    fullSpanItem.f19337c = parcel.readInt();
                    fullSpanItem.f19338e = parcel.readInt() == 1;
                    int i2 = parcel.readInt();
                    if (i2 > 0) {
                        int[] iArr = new int[i2];
                        fullSpanItem.d = iArr;
                        parcel.readIntArray(iArr);
                    }
                    return fullSpanItem;
                }

                @Override // android.os.Parcelable.Creator
                public final FullSpanItem[] newArray(int i2) {
                    return new FullSpanItem[i2];
                }
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final String toString() {
                return "FullSpanItem{mPosition=" + this.f19336b + ", mGapDir=" + this.f19337c + ", mHasUnwantedGapAfter=" + this.f19338e + ", mGapPerSpan=" + Arrays.toString(this.d) + '}';
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.f19336b);
                parcel.writeInt(this.f19337c);
                parcel.writeInt(this.f19338e ? 1 : 0);
                int[] iArr = this.d;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.d);
                }
            }
        }

        public final void a() {
            int[] iArr = this.f19334a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f19335b = null;
        }

        public final void b(int i2) {
            int[] iArr = this.f19334a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i2, 10) + 1];
                this.f19334a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i2 >= iArr.length) {
                int length = iArr.length;
                while (length <= i2) {
                    length *= 2;
                }
                int[] iArr3 = new int[length];
                this.f19334a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f19334a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public final void c(int i2, int i3) {
            int[] iArr = this.f19334a;
            if (iArr == null || i2 >= iArr.length) {
                return;
            }
            int i4 = i2 + i3;
            b(i4);
            int[] iArr2 = this.f19334a;
            System.arraycopy(iArr2, i2, iArr2, i4, (iArr2.length - i2) - i3);
            Arrays.fill(this.f19334a, i2, i4, -1);
            ArrayList arrayList = this.f19335b;
            if (arrayList == null) {
                return;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f19335b.get(size);
                int i5 = fullSpanItem.f19336b;
                if (i5 >= i2) {
                    fullSpanItem.f19336b = i5 + i3;
                }
            }
        }

        public final void d(int i2, int i3) {
            int[] iArr = this.f19334a;
            if (iArr == null || i2 >= iArr.length) {
                return;
            }
            int i4 = i2 + i3;
            b(i4);
            int[] iArr2 = this.f19334a;
            System.arraycopy(iArr2, i4, iArr2, i2, (iArr2.length - i2) - i3);
            int[] iArr3 = this.f19334a;
            Arrays.fill(iArr3, iArr3.length - i3, iArr3.length, -1);
            ArrayList arrayList = this.f19335b;
            if (arrayList == null) {
                return;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f19335b.get(size);
                int i5 = fullSpanItem.f19336b;
                if (i5 >= i2) {
                    if (i5 < i4) {
                        this.f19335b.remove(size);
                    } else {
                        fullSpanItem.f19336b = i5 - i3;
                    }
                }
            }
        }
    }

    public class Span {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f19347a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19348b = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f19349c = Integer.MIN_VALUE;
        public int d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f19350e;

        public Span(int i2) {
            this.f19350e = i2;
        }

        public final void a() {
            View view = (View) cj.c(1, this.f19347a);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.f19349c = StaggeredGridLayoutManager.this.r.b(view);
            layoutParams.getClass();
        }

        public final void b() {
            this.f19347a.clear();
            this.f19348b = Integer.MIN_VALUE;
            this.f19349c = Integer.MIN_VALUE;
            this.d = 0;
        }

        public final int c() {
            boolean z = StaggeredGridLayoutManager.this.w;
            ArrayList arrayList = this.f19347a;
            return z ? e(arrayList.size() - 1, -1) : e(0, arrayList.size());
        }

        public final int d() {
            boolean z = StaggeredGridLayoutManager.this.w;
            ArrayList arrayList = this.f19347a;
            return z ? e(0, arrayList.size()) : e(arrayList.size() - 1, -1);
        }

        public final int e(int i2, int i3) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            int iK = staggeredGridLayoutManager.r.k();
            int iG = staggeredGridLayoutManager.r.g();
            int i4 = i3 > i2 ? 1 : -1;
            while (i2 != i3) {
                View view = (View) this.f19347a.get(i2);
                int iE = staggeredGridLayoutManager.r.e(view);
                int iB = staggeredGridLayoutManager.r.b(view);
                boolean z = iE <= iG;
                boolean z2 = iB >= iK;
                if (z && z2 && (iE < iK || iB > iG)) {
                    return RecyclerView.LayoutManager.N(view);
                }
                i2 += i4;
            }
            return -1;
        }

        public final int f(int i2) {
            int i3 = this.f19349c;
            if (i3 != Integer.MIN_VALUE) {
                return i3;
            }
            if (this.f19347a.size() == 0) {
                return i2;
            }
            a();
            return this.f19349c;
        }

        public final View g(int i2, int i3) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            View view = null;
            ArrayList arrayList = this.f19347a;
            if (i3 != -1) {
                int size = arrayList.size() - 1;
                while (size >= 0) {
                    View view2 = (View) arrayList.get(size);
                    if ((staggeredGridLayoutManager.w && RecyclerView.LayoutManager.N(view2) >= i2) || ((!staggeredGridLayoutManager.w && RecyclerView.LayoutManager.N(view2) <= i2) || !view2.hasFocusable())) {
                        break;
                    }
                    size--;
                    view = view2;
                }
                return view;
            }
            int size2 = arrayList.size();
            int i4 = 0;
            while (i4 < size2) {
                View view3 = (View) arrayList.get(i4);
                if ((staggeredGridLayoutManager.w && RecyclerView.LayoutManager.N(view3) <= i2) || ((!staggeredGridLayoutManager.w && RecyclerView.LayoutManager.N(view3) >= i2) || !view3.hasFocusable())) {
                    break;
                }
                i4++;
                view = view3;
            }
            return view;
        }

        public final int h(int i2) {
            int i3 = this.f19348b;
            if (i3 != Integer.MIN_VALUE) {
                return i3;
            }
            ArrayList arrayList = this.f19347a;
            if (arrayList.size() == 0) {
                return i2;
            }
            View view = (View) arrayList.get(0);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.f19348b = StaggeredGridLayoutManager.this.r.e(view);
            layoutParams.getClass();
            return this.f19348b;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.p = -1;
        this.w = false;
        this.x = false;
        this.z = -1;
        this.A = Integer.MIN_VALUE;
        this.B = new LazySpanLookup();
        this.C = 2;
        this.G = new Rect();
        this.H = new AnchorInfo();
        this.I = true;
        this.K = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
            @Override // java.lang.Runnable
            public void run() {
                StaggeredGridLayoutManager.this.L0();
            }
        };
        RecyclerView.LayoutManager.Properties propertiesO = RecyclerView.LayoutManager.O(context, attributeSet, i2, i3);
        int i4 = propertiesO.f19281a;
        if (i4 != 0 && i4 != 1) {
            md.n("invalid orientation.");
            throw null;
        }
        d(null);
        if (i4 != this.t) {
            this.t = i4;
            OrientationHelper orientationHelper = this.r;
            this.r = this.s;
            this.s = orientationHelper;
            w0();
        }
        j1(propertiesO.f19282b);
        boolean z = propertiesO.f19283c;
        d(null);
        SavedState savedState = this.F;
        if (savedState != null && savedState.f19344i != z) {
            savedState.f19344i = z;
        }
        this.w = z;
        w0();
        this.v = new LayoutState();
        this.r = OrientationHelper.a(this, this.t);
        this.s = OrientationHelper.a(this, 1 - this.t);
    }

    public static int m1(int i2, int i3, int i4) {
        int mode;
        return (!(i3 == 0 && i4 == 0) && ((mode = View.MeasureSpec.getMode(i2)) == Integer.MIN_VALUE || mode == 1073741824)) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - i3) - i4), mode) : i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int A(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.t == 1) {
            return Math.min(this.p, state.b());
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void C0(Rect rect, int i2, int i3) {
        int i4;
        int i5;
        int iL = L() + K();
        int iJ = J() + M();
        if (this.t == 1) {
            int iHeight = rect.height() + iJ;
            RecyclerView recyclerView = this.f19271b;
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            i5 = RecyclerView.LayoutManager.i(i3, iHeight, recyclerView.getMinimumHeight());
            i4 = RecyclerView.LayoutManager.i(i2, (this.u * this.p) + iL, this.f19271b.getMinimumWidth());
        } else {
            int iWidth = rect.width() + iL;
            RecyclerView recyclerView2 = this.f19271b;
            WeakHashMap weakHashMap2 = ViewCompat.f12200a;
            i4 = RecyclerView.LayoutManager.i(i2, iWidth, recyclerView2.getMinimumWidth());
            i5 = RecyclerView.LayoutManager.i(i3, (this.u * this.p) + iJ, this.f19271b.getMinimumHeight());
        }
        this.f19271b.setMeasuredDimension(i4, i5);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void I0(RecyclerView recyclerView, int i2) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.f19301a = i2;
        J0(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean K0() {
        return this.F == null;
    }

    public final boolean L0() {
        int iS0;
        if (x() != 0 && this.C != 0 && this.g) {
            if (this.x) {
                iS0 = T0();
                S0();
            } else {
                iS0 = S0();
                T0();
            }
            if (iS0 == 0 && X0() != null) {
                this.B.a();
                this.f19274f = true;
                w0();
                return true;
            }
        }
        return false;
    }

    public final int M0(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.b(state, this.r, P0(z), O0(z), this, this.I, this.x);
    }

    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean, int] */
    public final int N0(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state) {
        Span span;
        ?? r8;
        int iH;
        int iC;
        int iC2;
        int iG;
        int i2;
        int i3;
        int i4;
        RecyclerView.Recycler recycler2 = recycler;
        int i5 = 0;
        int i6 = 1;
        this.y.set(0, this.p, true);
        LayoutState layoutState2 = this.v;
        int i7 = layoutState2.f19230i ? layoutState.f19227e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : layoutState.f19227e == 1 ? layoutState.g + layoutState.f19225b : layoutState.f19228f - layoutState.f19225b;
        int i8 = layoutState.f19227e;
        for (int i9 = 0; i9 < this.p; i9++) {
            if (!this.q[i9].f19347a.isEmpty()) {
                l1(this.q[i9], i8, i7);
            }
        }
        boolean z = this.x;
        OrientationHelper orientationHelper = this.r;
        int iG2 = z ? orientationHelper.g() : orientationHelper.k();
        boolean z2 = false;
        while (true) {
            int i10 = layoutState.f19226c;
            if (i10 < 0 || i10 >= state.b() || (!layoutState2.f19230i && this.y.isEmpty())) {
                break;
            }
            View viewD = recycler2.d(layoutState.f19226c);
            layoutState.f19226c += layoutState.d;
            LayoutParams layoutParams = (LayoutParams) viewD.getLayoutParams();
            int layoutPosition = layoutParams.f19284a.getLayoutPosition();
            LazySpanLookup lazySpanLookup = this.B;
            int[] iArr = lazySpanLookup.f19334a;
            int i11 = (iArr == null || layoutPosition >= iArr.length) ? -1 : iArr[layoutPosition];
            if (i11 == -1) {
                boolean zB1 = b1(layoutState.f19227e);
                int i12 = this.p;
                if (zB1) {
                    i4 = i12 - 1;
                    i3 = -1;
                    i2 = -1;
                } else {
                    i2 = i6;
                    i3 = i12;
                    i4 = i5;
                }
                Span span2 = null;
                if (layoutState.f19227e == i6) {
                    int iK = orientationHelper.k();
                    int i13 = Integer.MAX_VALUE;
                    while (i4 != i3) {
                        Span span3 = this.q[i4];
                        int i14 = i4;
                        int iF = span3.f(iK);
                        if (iF < i13) {
                            span2 = span3;
                            i13 = iF;
                        }
                        i4 = i14 + i2;
                    }
                } else {
                    int iG3 = orientationHelper.g();
                    int i15 = Integer.MIN_VALUE;
                    while (i4 != i3) {
                        Span span4 = this.q[i4];
                        int i16 = i3;
                        int iH2 = span4.h(iG3);
                        if (iH2 > i15) {
                            i15 = iH2;
                            span2 = span4;
                        }
                        i4 += i2;
                        i3 = i16;
                    }
                }
                span = span2;
                lazySpanLookup.b(layoutPosition);
                lazySpanLookup.f19334a[layoutPosition] = span.f19350e;
            } else {
                span = this.q[i11];
            }
            layoutParams.f19333e = span;
            if (layoutState.f19227e == 1) {
                r8 = 0;
                c(viewD, -1, false);
            } else {
                r8 = 0;
                c(viewD, 0, false);
            }
            int i17 = this.t;
            if (i17 == 1) {
                Z0(viewD, RecyclerView.LayoutManager.y(this.u, this.l, r8, r8, ((ViewGroup.MarginLayoutParams) layoutParams).width), RecyclerView.LayoutManager.y(this.o, this.m, true, J() + M(), ((ViewGroup.MarginLayoutParams) layoutParams).height));
            } else {
                Z0(viewD, RecyclerView.LayoutManager.y(this.n, this.l, true, L() + K(), ((ViewGroup.MarginLayoutParams) layoutParams).width), RecyclerView.LayoutManager.y(this.u, this.m, false, 0, ((ViewGroup.MarginLayoutParams) layoutParams).height));
            }
            if (layoutState.f19227e == 1) {
                iC = span.f(iG2);
                iH = orientationHelper.c(viewD) + iC;
            } else {
                iH = span.h(iG2);
                iC = iH - orientationHelper.c(viewD);
            }
            int i18 = layoutState.f19227e;
            Span span5 = layoutParams.f19333e;
            if (i18 == 1) {
                span5.getClass();
                LayoutParams layoutParams2 = (LayoutParams) viewD.getLayoutParams();
                layoutParams2.f19333e = span5;
                ArrayList arrayList = span5.f19347a;
                arrayList.add(viewD);
                span5.f19349c = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    span5.f19348b = Integer.MIN_VALUE;
                }
                if (layoutParams2.f19284a.isRemoved() || layoutParams2.f19284a.isUpdated()) {
                    span5.d = StaggeredGridLayoutManager.this.r.c(viewD) + span5.d;
                }
            } else {
                span5.getClass();
                LayoutParams layoutParams3 = (LayoutParams) viewD.getLayoutParams();
                layoutParams3.f19333e = span5;
                ArrayList arrayList2 = span5.f19347a;
                arrayList2.add(0, viewD);
                span5.f19348b = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    span5.f19349c = Integer.MIN_VALUE;
                }
                if (layoutParams3.f19284a.isRemoved() || layoutParams3.f19284a.isUpdated()) {
                    span5.d = StaggeredGridLayoutManager.this.r.c(viewD) + span5.d;
                }
            }
            boolean zY0 = Y0();
            OrientationHelper orientationHelper2 = this.s;
            if (zY0 && i17 == 1) {
                iG = orientationHelper2.g() - (((this.p - 1) - span.f19350e) * this.u);
                iC2 = iG - orientationHelper2.c(viewD);
            } else {
                int iK2 = (span.f19350e * this.u) + orientationHelper2.k();
                int iC3 = orientationHelper2.c(viewD) + iK2;
                iC2 = iK2;
                iG = iC3;
            }
            if (i17 == 1) {
                RecyclerView.LayoutManager.U(viewD, iC2, iC, iG, iH);
            } else {
                RecyclerView.LayoutManager.U(viewD, iC, iC2, iH, iG);
            }
            l1(span, layoutState2.f19227e, i7);
            recycler2 = recycler;
            d1(recycler2, layoutState2);
            if (layoutState2.f19229h && viewD.hasFocusable()) {
                this.y.set(span.f19350e, false);
            }
            i6 = 1;
            z2 = true;
            i5 = 0;
        }
        if (!z2) {
            d1(recycler2, layoutState2);
        }
        int iK3 = layoutState2.f19227e == -1 ? orientationHelper.k() - V0(orientationHelper.k()) : U0(orientationHelper.g()) - orientationHelper.g();
        if (iK3 > 0) {
            return Math.min(layoutState.f19225b, iK3);
        }
        return 0;
    }

    public final View O0(boolean z) {
        OrientationHelper orientationHelper = this.r;
        int iK = orientationHelper.k();
        int iG = orientationHelper.g();
        View view = null;
        for (int iX = x() - 1; iX >= 0; iX--) {
            View viewW = w(iX);
            int iE = orientationHelper.e(viewW);
            int iB = orientationHelper.b(viewW);
            if (iB > iK && iE < iG) {
                if (iB <= iG || !z) {
                    return viewW;
                }
                if (view == null) {
                    view = viewW;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int P(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.t == 0) {
            return Math.min(this.p, state.b());
        }
        return -1;
    }

    public final View P0(boolean z) {
        OrientationHelper orientationHelper = this.r;
        int iK = orientationHelper.k();
        int iG = orientationHelper.g();
        int iX = x();
        View view = null;
        for (int i2 = 0; i2 < iX; i2++) {
            View viewW = w(i2);
            int iE = orientationHelper.e(viewW);
            if (orientationHelper.b(viewW) > iK && iE < iG) {
                if (iE >= iK || !z) {
                    return viewW;
                }
                if (view == null) {
                    view = viewW;
                }
            }
        }
        return view;
    }

    public final void Q0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int iG;
        int iU0 = U0(Integer.MIN_VALUE);
        if (iU0 != Integer.MIN_VALUE && (iG = this.r.g() - iU0) > 0) {
            int i2 = iG - (-h1(-iG, recycler, state));
            if (!z || i2 <= 0) {
                return;
            }
            this.r.o(i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean R() {
        return this.C != 0;
    }

    public final void R0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int iK;
        int iV0 = V0(Integer.MAX_VALUE);
        if (iV0 != Integer.MAX_VALUE && (iK = iV0 - this.r.k()) > 0) {
            int iH1 = iK - h1(iK, recycler, state);
            if (!z || iH1 <= 0) {
                return;
            }
            this.r.o(-iH1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean S() {
        return this.w;
    }

    public final int S0() {
        if (x() == 0) {
            return 0;
        }
        return RecyclerView.LayoutManager.N(w(0));
    }

    public final int T0() {
        int iX = x();
        if (iX == 0) {
            return 0;
        }
        return RecyclerView.LayoutManager.N(w(iX - 1));
    }

    public final int U0(int i2) {
        int iF = this.q[0].f(i2);
        for (int i3 = 1; i3 < this.p; i3++) {
            int iF2 = this.q[i3].f(i2);
            if (iF2 > iF) {
                iF = iF2;
            }
        }
        return iF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void V(int i2) {
        super.V(i2);
        for (int i3 = 0; i3 < this.p; i3++) {
            Span span = this.q[i3];
            int i4 = span.f19348b;
            if (i4 != Integer.MIN_VALUE) {
                span.f19348b = i4 + i2;
            }
            int i5 = span.f19349c;
            if (i5 != Integer.MIN_VALUE) {
                span.f19349c = i5 + i2;
            }
        }
    }

    public final int V0(int i2) {
        int iH = this.q[0].h(i2);
        for (int i3 = 1; i3 < this.p; i3++) {
            int iH2 = this.q[i3].h(i2);
            if (iH2 < iH) {
                iH = iH2;
            }
        }
        return iH;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void W(int i2) {
        super.W(i2);
        for (int i3 = 0; i3 < this.p; i3++) {
            Span span = this.q[i3];
            int i4 = span.f19348b;
            if (i4 != Integer.MIN_VALUE) {
                span.f19348b = i4 + i2;
            }
            int i5 = span.f19349c;
            if (i5 != Integer.MIN_VALUE) {
                span.f19349c = i5 + i2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0031  */
    /* JADX WARN: Code duplicated, block: B:22:0x0033  */
    /* JADX WARN: Code duplicated, block: B:24:0x003a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0047 A[LOOP:0: B:23:0x0038->B:27:0x0047, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x004d  */
    /* JADX WARN: Code duplicated, block: B:33:0x005b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0068 A[LOOP:1: B:32:0x0059->B:36:0x0068, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x006e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0081  */
    /* JADX WARN: Code duplicated, block: B:43:0x0089  */
    /* JADX WARN: Code duplicated, block: B:45:0x0096  */
    /* JADX WARN: Code duplicated, block: B:47:0x0099 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x009c  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:61:0x004a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x004b A[EDGE_INSN: B:62:0x004b->B:29:0x004b BREAK  A[LOOP:0: B:23:0x0038->B:27:0x0047], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x006b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x006c A[EDGE_INSN: B:64:0x006c->B:38:0x006c BREAK  A[LOOP:1: B:32:0x0059->B:36:0x0068], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:? A[RETURN, SYNTHETIC] */
    public final void W0(int i2, int i3, int i4) {
        int i5;
        int i6;
        LazySpanLookup lazySpanLookup;
        int[] iArr;
        int iT0;
        ArrayList arrayList;
        int size;
        LazySpanLookup.FullSpanItem fullSpanItem;
        int size2;
        int i7;
        int i8;
        int[] iArr2;
        int iT1 = this.x ? T0() : S0();
        if (i4 == 8) {
            if (i2 < i3) {
                i5 = i3 + 1;
            } else {
                i5 = i2 + 1;
                i6 = i3;
            }
            lazySpanLookup = this.B;
            iArr = lazySpanLookup.f19334a;
            if (iArr != null && i6 < iArr.length) {
                arrayList = lazySpanLookup.f19335b;
                if (arrayList == null) {
                    i8 = -1;
                } else {
                    size = arrayList.size() - 1;
                    while (true) {
                        if (size >= 0) {
                            fullSpanItem = null;
                            break;
                        }
                        fullSpanItem = (LazySpanLookup.FullSpanItem) lazySpanLookup.f19335b.get(size);
                        if (fullSpanItem.f19336b == i6) {
                            break;
                        } else {
                            size--;
                        }
                    }
                    if (fullSpanItem != null) {
                        lazySpanLookup.f19335b.remove(fullSpanItem);
                    }
                    size2 = lazySpanLookup.f19335b.size();
                    i7 = 0;
                    while (true) {
                        if (i7 < size2) {
                            i7 = -1;
                            break;
                        } else if (((LazySpanLookup.FullSpanItem) lazySpanLookup.f19335b.get(i7)).f19336b >= i6) {
                            break;
                        } else {
                            i7++;
                        }
                    }
                    if (i7 != -1) {
                        LazySpanLookup.FullSpanItem fullSpanItem2 = (LazySpanLookup.FullSpanItem) lazySpanLookup.f19335b.get(i7);
                        lazySpanLookup.f19335b.remove(i7);
                        i8 = fullSpanItem2.f19336b;
                    } else {
                        i8 = -1;
                    }
                }
                iArr2 = lazySpanLookup.f19334a;
                if (i8 == -1) {
                    Arrays.fill(iArr2, i6, iArr2.length, -1);
                    int length = lazySpanLookup.f19334a.length;
                } else {
                    Arrays.fill(lazySpanLookup.f19334a, i6, Math.min(i8 + 1, iArr2.length), -1);
                }
            }
            if (i4 != 1) {
                lazySpanLookup.c(i2, i3);
            } else if (i4 != 2) {
                lazySpanLookup.d(i2, i3);
            } else if (i4 == 8) {
                lazySpanLookup.d(i2, 1);
                lazySpanLookup.c(i3, 1);
            }
            if (i5 <= iT1) {
                return;
            }
            if (this.x) {
                iT0 = S0();
            } else {
                iT0 = T0();
            }
            if (i6 <= iT0) {
                w0();
            }
        }
        i5 = i2 + i3;
        i6 = i2;
        lazySpanLookup = this.B;
        iArr = lazySpanLookup.f19334a;
        if (iArr != null) {
            arrayList = lazySpanLookup.f19335b;
            if (arrayList == null) {
                i8 = -1;
            } else {
                size = arrayList.size() - 1;
                while (true) {
                    if (size >= 0) {
                        fullSpanItem = null;
                        break;
                    }
                    fullSpanItem = (LazySpanLookup.FullSpanItem) lazySpanLookup.f19335b.get(size);
                    if (fullSpanItem.f19336b == i6) {
                        break;
                        break;
                    }
                    size--;
                }
                if (fullSpanItem != null) {
                    lazySpanLookup.f19335b.remove(fullSpanItem);
                }
                size2 = lazySpanLookup.f19335b.size();
                i7 = 0;
                while (true) {
                    if (i7 < size2) {
                        i7 = -1;
                        break;
                    } else {
                        if (((LazySpanLookup.FullSpanItem) lazySpanLookup.f19335b.get(i7)).f19336b >= i6) {
                            break;
                            break;
                        }
                        i7++;
                    }
                }
                if (i7 != -1) {
                    LazySpanLookup.FullSpanItem fullSpanItem3 = (LazySpanLookup.FullSpanItem) lazySpanLookup.f19335b.get(i7);
                    lazySpanLookup.f19335b.remove(i7);
                    i8 = fullSpanItem3.f19336b;
                } else {
                    i8 = -1;
                }
            }
            iArr2 = lazySpanLookup.f19334a;
            if (i8 == -1) {
                Arrays.fill(iArr2, i6, iArr2.length, -1);
                int length2 = lazySpanLookup.f19334a.length;
            } else {
                Arrays.fill(lazySpanLookup.f19334a, i6, Math.min(i8 + 1, iArr2.length), -1);
            }
        }
        if (i4 != 1) {
            lazySpanLookup.c(i2, i3);
        } else if (i4 != 2) {
            lazySpanLookup.d(i2, i3);
        } else if (i4 == 8) {
            lazySpanLookup.d(i2, 1);
            lazySpanLookup.c(i3, 1);
        }
        if (i5 <= iT1) {
            return;
        }
        if (this.x) {
            iT0 = S0();
        } else {
            iT0 = T0();
        }
        if (i6 <= iT0) {
            w0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void X() {
        this.B.a();
        for (int i2 = 0; i2 < this.p; i2++) {
            this.q[i2].b();
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:55:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x002c A[SYNTHETIC] */
    public final View X0() {
        boolean z;
        boolean z2;
        int iX = x();
        int i2 = iX - 1;
        BitSet bitSet = new BitSet(this.p);
        bitSet.set(0, this.p, true);
        byte b2 = (this.t == 1 && Y0()) ? (byte) 1 : (byte) -1;
        if (this.x) {
            iX = -1;
        } else {
            i2 = 0;
        }
        int i3 = i2 < iX ? 1 : -1;
        while (i2 != iX) {
            View viewW = w(i2);
            LayoutParams layoutParams = (LayoutParams) viewW.getLayoutParams();
            boolean z3 = bitSet.get(layoutParams.f19333e.f19350e);
            OrientationHelper orientationHelper = this.r;
            if (z3) {
                Span span = layoutParams.f19333e;
                if (this.x) {
                    int i4 = span.f19349c;
                    if (i4 == Integer.MIN_VALUE) {
                        span.a();
                        i4 = span.f19349c;
                    }
                    if (i4 < orientationHelper.g()) {
                        ((LayoutParams) ((View) cj.c(1, span.f19347a)).getLayoutParams()).getClass();
                        return viewW;
                    }
                } else {
                    int i5 = span.f19348b;
                    ArrayList arrayList = span.f19347a;
                    if (i5 == Integer.MIN_VALUE) {
                        View view = (View) arrayList.get(0);
                        LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                        span.f19348b = StaggeredGridLayoutManager.this.r.e(view);
                        layoutParams2.getClass();
                        i5 = span.f19348b;
                    }
                    if (i5 > orientationHelper.k()) {
                        ((LayoutParams) ((View) arrayList.get(0)).getLayoutParams()).getClass();
                        return viewW;
                    }
                }
                bitSet.clear(layoutParams.f19333e.f19350e);
            }
            i2 += i3;
            if (i2 != iX) {
                View viewW2 = w(i2);
                if (this.x) {
                    int iB = orientationHelper.b(viewW);
                    int iB2 = orientationHelper.b(viewW2);
                    if (iB >= iB2) {
                        if (iB == iB2) {
                            if (layoutParams.f19333e.f19350e - ((LayoutParams) viewW2.getLayoutParams()).f19333e.f19350e < 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (b2 < 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z != z2) {
                            }
                        } else {
                            continue;
                        }
                    }
                    return viewW;
                }
                int iE = orientationHelper.e(viewW);
                int iE2 = orientationHelper.e(viewW2);
                if (iE <= iE2) {
                    if (iE == iE2) {
                        if (layoutParams.f19333e.f19350e - ((LayoutParams) viewW2.getLayoutParams()).f19333e.f19350e < 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (b2 < 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z != z2) {
                        }
                    } else {
                        continue;
                    }
                }
                return viewW;
            }
        }
        return null;
    }

    public final boolean Y0() {
        return this.f19271b.getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Z(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f19271b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.K);
        }
        for (int i2 = 0; i2 < this.p; i2++) {
            this.q[i2].b();
        }
        recyclerView.requestLayout();
    }

    public final void Z0(View view, int i2, int i3) {
        Rect rect = this.G;
        e(view, rect);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int iM1 = m1(i2, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int iM2 = m1(i3, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect.bottom);
        if (F0(view, iM1, iM2, layoutParams)) {
            view.measure(iM1, iM2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000c  */
    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public final PointF a(int i2) {
        int i3 = -1;
        if (x() != 0) {
            if ((i2 < S0()) == this.x) {
                i3 = 1;
            }
        } else if (this.x) {
            i3 = 1;
        }
        PointF pointF = new PointF();
        if (i3 == 0) {
            return null;
        }
        if (this.t == 0) {
            pointF.x = i3;
            pointF.y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            return pointF;
        }
        pointF.x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        pointF.y = i3;
        return pointF;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0046  */
    /* JADX WARN: Code duplicated, block: B:34:0x004d  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final View a0(View view, int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        View viewFindContainingItemView;
        int i3;
        if (x() != 0) {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView == null || (viewFindContainingItemView = recyclerView.findContainingItemView(view)) == null || this.f19270a.f19143c.contains(viewFindContainingItemView)) {
                viewFindContainingItemView = null;
            }
            if (viewFindContainingItemView != null) {
                g1();
                int i4 = this.t;
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 17) {
                            if (i2 != 33) {
                                if (i2 == 66 ? i4 == 0 : !(i2 != 130 || i4 != 1)) {
                                    i3 = 1;
                                }
                            } else if (i4 == 1) {
                                i3 = -1;
                            }
                            i3 = Integer.MIN_VALUE;
                        } else if (i4 == 0) {
                            i3 = -1;
                        } else {
                            i3 = Integer.MIN_VALUE;
                        }
                    } else if (i4 != 1 && Y0()) {
                        i3 = -1;
                    } else {
                        i3 = 1;
                    }
                } else if (i4 != 1 && Y0()) {
                    i3 = 1;
                } else {
                    i3 = -1;
                }
                if (i3 != Integer.MIN_VALUE) {
                    LayoutParams layoutParams = (LayoutParams) viewFindContainingItemView.getLayoutParams();
                    layoutParams.getClass();
                    Span span = layoutParams.f19333e;
                    int iT0 = i3 == 1 ? T0() : S0();
                    k1(iT0, state);
                    i1(i3);
                    LayoutState layoutState = this.v;
                    layoutState.f19226c = layoutState.d + iT0;
                    layoutState.f19225b = (int) (this.r.l() * 0.33333334f);
                    layoutState.f19229h = true;
                    layoutState.f19224a = false;
                    N0(recycler, layoutState, state);
                    this.D = this.x;
                    View viewG = span.g(iT0, i3);
                    if (viewG != null && viewG != viewFindContainingItemView) {
                        return viewG;
                    }
                    if (b1(i3)) {
                        for (int i5 = this.p - 1; i5 >= 0; i5--) {
                            View viewG2 = this.q[i5].g(iT0, i3);
                            if (viewG2 != null && viewG2 != viewFindContainingItemView) {
                                return viewG2;
                            }
                        }
                    } else {
                        for (int i6 = 0; i6 < this.p; i6++) {
                            View viewG3 = this.q[i6].g(iT0, i3);
                            if (viewG3 != null && viewG3 != viewFindContainingItemView) {
                                return viewG3;
                            }
                        }
                    }
                    boolean z = (this.w ^ true) == (i3 == -1);
                    View viewS = s(z ? span.c() : span.d());
                    if (viewS != null && viewS != viewFindContainingItemView) {
                        return viewS;
                    }
                    if (b1(i3)) {
                        for (int i7 = this.p - 1; i7 >= 0; i7--) {
                            if (i7 != span.f19350e) {
                                Span[] spanArr = this.q;
                                View viewS2 = s(z ? spanArr[i7].c() : spanArr[i7].d());
                                if (viewS2 != null && viewS2 != viewFindContainingItemView) {
                                    return viewS2;
                                }
                            }
                        }
                    } else {
                        for (int i8 = 0; i8 < this.p; i8++) {
                            Span[] spanArr2 = this.q;
                            View viewS3 = s(z ? spanArr2[i8].c() : spanArr2[i8].d());
                            if (viewS3 != null && viewS3 != viewFindContainingItemView) {
                                return viewS3;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x018e  */
    /* JADX WARN: Code duplicated, block: B:109:0x0190  */
    /* JADX WARN: Code duplicated, block: B:123:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:125:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:131:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:133:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:253:0x03e9  */
    /* JADX WARN: Code duplicated, block: B:264:0x01de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:268:0x01de A[SYNTHETIC] */
    public final void a1(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        boolean z2;
        SavedState savedState;
        Span[] spanArr;
        int iX;
        int i2;
        int iN;
        int iN2;
        int iX2;
        int i3;
        boolean z3;
        SavedState savedState2 = this.F;
        AnchorInfo anchorInfo = this.H;
        if (!(savedState2 == null && this.z == -1) && state.b() == 0) {
            r0(recycler);
            anchorInfo.a();
            return;
        }
        boolean z4 = anchorInfo.f19331e;
        StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
        boolean z5 = (z4 && this.z == -1 && this.F == null) ? false : true;
        LazySpanLookup lazySpanLookup = this.B;
        if (z5) {
            anchorInfo.a();
            SavedState savedState3 = this.F;
            OrientationHelper orientationHelper = this.r;
            if (savedState3 != null) {
                int i4 = savedState3.d;
                if (i4 > 0) {
                    if (i4 == this.p) {
                        for (int i5 = 0; i5 < this.p; i5++) {
                            this.q[i5].b();
                            SavedState savedState4 = this.F;
                            int iG = savedState4.f19341e[i5];
                            if (iG != Integer.MIN_VALUE) {
                                iG += savedState4.f19345j ? orientationHelper.g() : orientationHelper.k();
                            }
                            Span span = this.q[i5];
                            span.f19348b = iG;
                            span.f19349c = iG;
                        }
                    } else {
                        savedState3.f19341e = null;
                        savedState3.d = 0;
                        savedState3.f19342f = 0;
                        savedState3.g = null;
                        savedState3.f19343h = null;
                        savedState3.f19339b = savedState3.f19340c;
                    }
                }
                SavedState savedState5 = this.F;
                this.E = savedState5.f19346k;
                boolean z6 = savedState5.f19344i;
                d(null);
                SavedState savedState6 = this.F;
                if (savedState6 != null && savedState6.f19344i != z6) {
                    savedState6.f19344i = z6;
                }
                this.w = z6;
                w0();
                g1();
                SavedState savedState7 = this.F;
                int i6 = savedState7.f19339b;
                if (i6 != -1) {
                    this.z = i6;
                    anchorInfo.f19330c = savedState7.f19345j;
                } else {
                    anchorInfo.f19330c = this.x;
                }
                if (savedState7.f19342f > 1) {
                    lazySpanLookup.f19334a = savedState7.g;
                    lazySpanLookup.f19335b = savedState7.f19343h;
                }
            } else {
                g1();
                anchorInfo.f19330c = this.x;
            }
            if (state.g || (i3 = this.z) == -1) {
                if (this.D) {
                    int iB = state.b();
                    iX2 = x() - 1;
                    while (true) {
                        if (iX2 < 0) {
                            iN2 = 0;
                            break;
                        }
                        iN2 = RecyclerView.LayoutManager.N(w(iX2));
                        if (iN2 < 0 && iN2 < iB) {
                            break;
                        } else {
                            iX2--;
                        }
                    }
                } else {
                    int iB2 = state.b();
                    iX = x();
                    i2 = 0;
                    while (true) {
                        if (i2 >= iX) {
                            iN2 = 0;
                            break;
                        }
                        iN = RecyclerView.LayoutManager.N(w(i2));
                        if (iN < 0 && iN < iB2) {
                            iN2 = iN;
                            break;
                        }
                        i2++;
                    }
                }
                anchorInfo.f19328a = iN2;
                anchorInfo.f19329b = Integer.MIN_VALUE;
            } else if (i3 < 0 || i3 >= state.b()) {
                this.z = -1;
                this.A = Integer.MIN_VALUE;
                if (this.D) {
                    int iB3 = state.b();
                    iX2 = x() - 1;
                    while (true) {
                        if (iX2 < 0) {
                            iN2 = 0;
                            break;
                        } else {
                            iN2 = RecyclerView.LayoutManager.N(w(iX2));
                            if (iN2 < 0) {
                            }
                            iX2--;
                        }
                    }
                } else {
                    int iB4 = state.b();
                    iX = x();
                    i2 = 0;
                    while (true) {
                        if (i2 >= iX) {
                            iN2 = 0;
                            break;
                        } else {
                            iN = RecyclerView.LayoutManager.N(w(i2));
                            if (iN < 0) {
                            }
                            i2++;
                        }
                    }
                }
                anchorInfo.f19328a = iN2;
                anchorInfo.f19329b = Integer.MIN_VALUE;
            } else {
                SavedState savedState8 = this.F;
                if (savedState8 == null || savedState8.f19339b == -1 || savedState8.d < 1) {
                    View viewS = s(this.z);
                    if (viewS != null) {
                        anchorInfo.f19328a = this.x ? T0() : S0();
                        if (this.A != Integer.MIN_VALUE) {
                            if (anchorInfo.f19330c) {
                                anchorInfo.f19329b = (orientationHelper.g() - this.A) - orientationHelper.b(viewS);
                            } else {
                                anchorInfo.f19329b = (orientationHelper.k() + this.A) - orientationHelper.e(viewS);
                            }
                        } else if (orientationHelper.c(viewS) > orientationHelper.l()) {
                            anchorInfo.f19329b = anchorInfo.f19330c ? orientationHelper.g() : orientationHelper.k();
                        } else {
                            int iE = orientationHelper.e(viewS) - orientationHelper.k();
                            if (iE < 0) {
                                anchorInfo.f19329b = -iE;
                            } else {
                                int iG2 = orientationHelper.g() - orientationHelper.b(viewS);
                                if (iG2 < 0) {
                                    anchorInfo.f19329b = iG2;
                                } else {
                                    anchorInfo.f19329b = Integer.MIN_VALUE;
                                }
                            }
                        }
                    } else {
                        int i7 = this.z;
                        anchorInfo.f19328a = i7;
                        int i8 = this.A;
                        if (i8 == Integer.MIN_VALUE) {
                            if (x() != 0) {
                                if ((i7 < S0()) != this.x) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                            } else if (this.x) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            anchorInfo.f19330c = z3;
                            OrientationHelper orientationHelper2 = staggeredGridLayoutManager.r;
                            anchorInfo.f19329b = z3 ? orientationHelper2.g() : orientationHelper2.k();
                        } else {
                            boolean z7 = anchorInfo.f19330c;
                            OrientationHelper orientationHelper3 = staggeredGridLayoutManager.r;
                            if (z7) {
                                anchorInfo.f19329b = orientationHelper3.g() - i8;
                            } else {
                                anchorInfo.f19329b = orientationHelper3.k() + i8;
                            }
                        }
                        anchorInfo.d = true;
                    }
                } else {
                    anchorInfo.f19329b = Integer.MIN_VALUE;
                    anchorInfo.f19328a = this.z;
                }
            }
            anchorInfo.f19331e = true;
        }
        if (this.F == null && this.z == -1 && (anchorInfo.f19330c != this.D || Y0() != this.E)) {
            lazySpanLookup.a();
            anchorInfo.d = true;
        }
        if (x() > 0 && ((savedState = this.F) == null || savedState.d < 1)) {
            if (anchorInfo.d) {
                for (int i9 = 0; i9 < this.p; i9++) {
                    this.q[i9].b();
                    int i10 = anchorInfo.f19329b;
                    if (i10 != Integer.MIN_VALUE) {
                        Span span2 = this.q[i9];
                        span2.f19348b = i10;
                        span2.f19349c = i10;
                    }
                }
            } else if (z5 || anchorInfo.f19332f == null) {
                int i11 = 0;
                while (true) {
                    int i12 = this.p;
                    spanArr = this.q;
                    if (i11 >= i12) {
                        break;
                    }
                    Span span3 = spanArr[i11];
                    boolean z8 = this.x;
                    int i13 = anchorInfo.f19329b;
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    int iF = z8 ? span3.f(Integer.MIN_VALUE) : span3.h(Integer.MIN_VALUE);
                    span3.b();
                    if (iF != Integer.MIN_VALUE && ((!z8 || iF >= staggeredGridLayoutManager2.r.g()) && (z8 || iF <= staggeredGridLayoutManager2.r.k()))) {
                        if (i13 != Integer.MIN_VALUE) {
                            iF += i13;
                        }
                        span3.f19349c = iF;
                        span3.f19348b = iF;
                    }
                    i11++;
                }
                int length = spanArr.length;
                int[] iArr = anchorInfo.f19332f;
                if (iArr == null || iArr.length < length) {
                    anchorInfo.f19332f = new int[staggeredGridLayoutManager.q.length];
                }
                for (int i14 = 0; i14 < length; i14++) {
                    anchorInfo.f19332f[i14] = spanArr[i14].h(Integer.MIN_VALUE);
                }
            } else {
                for (int i15 = 0; i15 < this.p; i15++) {
                    Span span4 = this.q[i15];
                    span4.b();
                    int i16 = anchorInfo.f19332f[i15];
                    span4.f19348b = i16;
                    span4.f19349c = i16;
                }
            }
        }
        r(recycler);
        LayoutState layoutState = this.v;
        layoutState.f19224a = false;
        OrientationHelper orientationHelper4 = this.s;
        int iL = orientationHelper4.l();
        this.u = iL / this.p;
        View.MeasureSpec.makeMeasureSpec(iL, orientationHelper4.i());
        k1(anchorInfo.f19328a, state);
        if (anchorInfo.f19330c) {
            i1(-1);
            N0(recycler, layoutState, state);
            i1(1);
            layoutState.f19226c = anchorInfo.f19328a + layoutState.d;
            N0(recycler, layoutState, state);
        } else {
            i1(1);
            N0(recycler, layoutState, state);
            i1(-1);
            layoutState.f19226c = anchorInfo.f19328a + layoutState.d;
            N0(recycler, layoutState, state);
        }
        if (orientationHelper4.i() != 1073741824) {
            int iX3 = x();
            float fMax = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            for (int i17 = 0; i17 < iX3; i17++) {
                View viewW = w(i17);
                float fC = orientationHelper4.c(viewW);
                if (fC >= fMax) {
                    ((LayoutParams) viewW.getLayoutParams()).getClass();
                    fMax = Math.max(fMax, fC);
                }
            }
            int i18 = this.u;
            int iRound = Math.round(fMax * this.p);
            if (orientationHelper4.i() == Integer.MIN_VALUE) {
                iRound = Math.min(iRound, orientationHelper4.l());
            }
            this.u = iRound / this.p;
            View.MeasureSpec.makeMeasureSpec(iRound, orientationHelper4.i());
            if (this.u != i18) {
                for (int i19 = 0; i19 < iX3; i19++) {
                    View viewW2 = w(i19);
                    LayoutParams layoutParams = (LayoutParams) viewW2.getLayoutParams();
                    layoutParams.getClass();
                    boolean zY0 = Y0();
                    int i20 = this.t;
                    if (zY0 && i20 == 1) {
                        int i21 = -((this.p - 1) - layoutParams.f19333e.f19350e);
                        viewW2.offsetLeftAndRight((this.u * i21) - (i21 * i18));
                    } else {
                        int i22 = layoutParams.f19333e.f19350e;
                        int i23 = this.u * i22;
                        int i24 = i22 * i18;
                        if (i20 == 1) {
                            viewW2.offsetLeftAndRight(i23 - i24);
                        } else {
                            viewW2.offsetTopAndBottom(i23 - i24);
                        }
                    }
                }
            }
        }
        if (x() > 0) {
            if (this.x) {
                Q0(recycler, state, true);
                R0(recycler, state, false);
            } else {
                R0(recycler, state, true);
                Q0(recycler, state, false);
            }
        }
        if (z && !state.g && this.C != 0 && x() > 0 && X0() != null) {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView != null) {
                recyclerView.removeCallbacks(this.K);
            }
            z2 = L0();
        }
        if (state.g) {
            anchorInfo.a();
        }
        this.D = anchorInfo.f19330c;
        this.E = Y0();
        if (z2) {
            anchorInfo.a();
            a1(recycler, state, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void b0(AccessibilityEvent accessibilityEvent) {
        super.b0(accessibilityEvent);
        if (x() > 0) {
            View viewP0 = P0(false);
            View viewO0 = O0(false);
            if (viewP0 == null || viewO0 == null) {
                return;
            }
            int iN = RecyclerView.LayoutManager.N(viewP0);
            int iN2 = RecyclerView.LayoutManager.N(viewO0);
            if (iN < iN2) {
                accessibilityEvent.setFromIndex(iN);
                accessibilityEvent.setToIndex(iN2);
            } else {
                accessibilityEvent.setFromIndex(iN2);
                accessibilityEvent.setToIndex(iN);
            }
        }
    }

    public final boolean b1(int i2) {
        if (this.t == 0) {
            return (i2 == -1) != this.x;
        }
        return ((i2 == -1) == this.x) == Y0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void c0(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.c0(recycler, state, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.i("androidx.recyclerview.widget.StaggeredGridLayoutManager");
    }

    public final void c1(int i2, RecyclerView.State state) {
        int iS0;
        int i3;
        if (i2 > 0) {
            iS0 = T0();
            i3 = 1;
        } else {
            iS0 = S0();
            i3 = -1;
        }
        LayoutState layoutState = this.v;
        layoutState.f19224a = true;
        k1(iS0, state);
        i1(i3);
        layoutState.f19226c = iS0 + layoutState.d;
        layoutState.f19225b = Math.abs(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void d(String str) {
        if (this.F == null) {
            super.d(str);
        }
    }

    public final void d1(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (!layoutState.f19224a || layoutState.f19230i) {
            return;
        }
        int i2 = layoutState.f19225b;
        int i3 = layoutState.f19227e;
        if (i2 == 0) {
            if (i3 == -1) {
                e1(recycler, layoutState.g);
                return;
            } else {
                f1(recycler, layoutState.f19228f);
                return;
            }
        }
        int i4 = 1;
        if (i3 == -1) {
            int i5 = layoutState.f19228f;
            int iH = this.q[0].h(i5);
            while (i4 < this.p) {
                int iH2 = this.q[i4].h(i5);
                if (iH2 > iH) {
                    iH = iH2;
                }
                i4++;
            }
            int i6 = i5 - iH;
            int iMin = layoutState.g;
            if (i6 >= 0) {
                iMin -= Math.min(i6, layoutState.f19225b);
            }
            e1(recycler, iMin);
            return;
        }
        int i7 = layoutState.g;
        int iF = this.q[0].f(i7);
        while (i4 < this.p) {
            int iF2 = this.q[i4].f(i7);
            if (iF2 < iF) {
                iF = iF2;
            }
            i4++;
        }
        int i8 = iF - layoutState.g;
        int iMin2 = layoutState.f19228f;
        if (i8 >= 0) {
            iMin2 += Math.min(i8, layoutState.f19225b);
        }
        f1(recycler, iMin2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void e0(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            d0(view, accessibilityNodeInfoCompat);
            return;
        }
        Span span = ((LayoutParams) layoutParams).f19333e;
        if (this.t == 0) {
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(span == null ? -1 : span.f19350e, 1, false, -1, -1));
        } else {
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(-1, -1, false, span == null ? -1 : span.f19350e, 1));
        }
    }

    public final void e1(RecyclerView.Recycler recycler, int i2) {
        for (int iX = x() - 1; iX >= 0; iX--) {
            View viewW = w(iX);
            OrientationHelper orientationHelper = this.r;
            if (orientationHelper.e(viewW) < i2 || orientationHelper.n(viewW) < i2) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) viewW.getLayoutParams();
            layoutParams.getClass();
            if (layoutParams.f19333e.f19347a.size() == 1) {
                return;
            }
            Span span = layoutParams.f19333e;
            ArrayList arrayList = span.f19347a;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
            layoutParams2.f19333e = null;
            if (layoutParams2.f19284a.isRemoved() || layoutParams2.f19284a.isUpdated()) {
                span.d -= StaggeredGridLayoutManager.this.r.c(view);
            }
            if (size == 1) {
                span.f19348b = Integer.MIN_VALUE;
            }
            span.f19349c = Integer.MIN_VALUE;
            t0(viewW, recycler);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean f() {
        return this.t == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void f0(int i2, int i3) {
        W0(i2, i3, 1);
    }

    public final void f1(RecyclerView.Recycler recycler, int i2) {
        while (x() > 0) {
            View viewW = w(0);
            OrientationHelper orientationHelper = this.r;
            if (orientationHelper.b(viewW) > i2 || orientationHelper.m(viewW) > i2) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) viewW.getLayoutParams();
            layoutParams.getClass();
            if (layoutParams.f19333e.f19347a.size() == 1) {
                return;
            }
            Span span = layoutParams.f19333e;
            ArrayList arrayList = span.f19347a;
            View view = (View) arrayList.remove(0);
            LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
            layoutParams2.f19333e = null;
            if (arrayList.size() == 0) {
                span.f19349c = Integer.MIN_VALUE;
            }
            if (layoutParams2.f19284a.isRemoved() || layoutParams2.f19284a.isUpdated()) {
                span.d -= StaggeredGridLayoutManager.this.r.c(view);
            }
            span.f19348b = Integer.MIN_VALUE;
            t0(viewW, recycler);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean g() {
        return this.t == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void g0() {
        this.B.a();
        w0();
    }

    public final void g1() {
        if (this.t == 1 || !Y0()) {
            this.x = this.w;
        } else {
            this.x = !this.w;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean h(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void h0(int i2, int i3) {
        W0(i2, i3, 8);
    }

    public final int h1(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (x() == 0 || i2 == 0) {
            return 0;
        }
        c1(i2, state);
        LayoutState layoutState = this.v;
        int iN0 = N0(recycler, layoutState, state);
        if (layoutState.f19225b >= iN0) {
            i2 = i2 < 0 ? -iN0 : iN0;
        }
        this.r.o(-i2);
        this.D = this.x;
        layoutState.f19225b = 0;
        d1(recycler, layoutState);
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void i0(int i2, int i3) {
        W0(i2, i3, 2);
    }

    public final void i1(int i2) {
        LayoutState layoutState = this.v;
        layoutState.f19227e = i2;
        layoutState.d = this.x != (i2 == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void j(int i2, int i3, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        LayoutState layoutState;
        int iF;
        int iH;
        if (this.t != 0) {
            i2 = i3;
        }
        if (x() == 0 || i2 == 0) {
            return;
        }
        c1(i2, state);
        int[] iArr = this.J;
        if (iArr == null || iArr.length < this.p) {
            this.J = new int[this.p];
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = this.p;
            layoutState = this.v;
            if (i4 >= i6) {
                break;
            }
            if (layoutState.d == -1) {
                iF = layoutState.f19228f;
                iH = this.q[i4].h(iF);
            } else {
                iF = this.q[i4].f(layoutState.g);
                iH = layoutState.g;
            }
            int i7 = iF - iH;
            if (i7 >= 0) {
                this.J[i5] = i7;
                i5++;
            }
            i4++;
        }
        Arrays.sort(this.J, 0, i5);
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = layoutState.f19226c;
            if (i9 < 0 || i9 >= state.b()) {
                return;
            }
            ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(layoutState.f19226c, this.J[i8]);
            layoutState.f19226c += layoutState.d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void j0(int i2, int i3) {
        W0(i2, i3, 4);
    }

    public final void j1(int i2) {
        d(null);
        if (i2 != this.p) {
            this.B.a();
            w0();
            this.p = i2;
            this.y = new BitSet(this.p);
            this.q = new Span[this.p];
            for (int i3 = 0; i3 < this.p; i3++) {
                this.q[i3] = new Span(i3);
            }
            w0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void k0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        a1(recycler, state, true);
    }

    public final void k1(int i2, RecyclerView.State state) {
        int iL;
        int iL2;
        int i3;
        LayoutState layoutState = this.v;
        boolean z = false;
        layoutState.f19225b = 0;
        layoutState.f19226c = i2;
        RecyclerView.SmoothScroller smoothScroller = this.f19273e;
        OrientationHelper orientationHelper = this.r;
        if (smoothScroller == null || !smoothScroller.f19304e || (i3 = state.f19311a) == -1) {
            iL = 0;
            iL2 = 0;
        } else {
            if (this.x == (i3 < i2)) {
                iL = orientationHelper.l();
                iL2 = 0;
            } else {
                iL2 = orientationHelper.l();
                iL = 0;
            }
        }
        if (z()) {
            layoutState.f19228f = orientationHelper.k() - iL2;
            layoutState.g = orientationHelper.g() + iL;
        } else {
            layoutState.g = orientationHelper.f() + iL;
            layoutState.f19228f = -iL2;
        }
        layoutState.f19229h = false;
        layoutState.f19224a = true;
        if (orientationHelper.i() == 0 && orientationHelper.f() == 0) {
            z = true;
        }
        layoutState.f19230i = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int l(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.a(state, this.r, P0(z), O0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void l0(RecyclerView.State state) {
        this.z = -1;
        this.A = Integer.MIN_VALUE;
        this.F = null;
        this.H.a();
    }

    public final void l1(Span span, int i2, int i3) {
        int i4 = span.d;
        int i5 = span.f19350e;
        if (i2 != -1) {
            int i6 = span.f19349c;
            if (i6 == Integer.MIN_VALUE) {
                span.a();
                i6 = span.f19349c;
            }
            if (i6 - i4 >= i3) {
                this.y.set(i5, false);
                return;
            }
            return;
        }
        int i7 = span.f19348b;
        if (i7 == Integer.MIN_VALUE) {
            View view = (View) span.f19347a.get(0);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            span.f19348b = StaggeredGridLayoutManager.this.r.e(view);
            layoutParams.getClass();
            i7 = span.f19348b;
        }
        if (i7 + i4 <= i3) {
            this.y.set(i5, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int m(RecyclerView.State state) {
        return M0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void m0(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.F = savedState;
            if (this.z != -1) {
                savedState.f19339b = -1;
                savedState.f19340c = -1;
                savedState.f19341e = null;
                savedState.d = 0;
                savedState.f19342f = 0;
                savedState.g = null;
                savedState.f19343h = null;
            }
            w0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int n(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.c(state, this.r, P0(z), O0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable n0() {
        int iH;
        int iK;
        int[] iArr;
        SavedState savedState = this.F;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.f19344i = this.w;
        savedState2.f19345j = this.D;
        savedState2.f19346k = this.E;
        LazySpanLookup lazySpanLookup = this.B;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f19334a) == null) {
            savedState2.f19342f = 0;
        } else {
            savedState2.g = iArr;
            savedState2.f19342f = iArr.length;
            savedState2.f19343h = lazySpanLookup.f19335b;
        }
        if (x() <= 0) {
            savedState2.f19339b = -1;
            savedState2.f19340c = -1;
            savedState2.d = 0;
            return savedState2;
        }
        savedState2.f19339b = this.D ? T0() : S0();
        View viewO0 = this.x ? O0(true) : P0(true);
        savedState2.f19340c = viewO0 != null ? RecyclerView.LayoutManager.N(viewO0) : -1;
        int i2 = this.p;
        savedState2.d = i2;
        savedState2.f19341e = new int[i2];
        for (int i3 = 0; i3 < this.p; i3++) {
            boolean z = this.D;
            Span[] spanArr = this.q;
            OrientationHelper orientationHelper = this.r;
            if (z) {
                iH = spanArr[i3].f(Integer.MIN_VALUE);
                if (iH != Integer.MIN_VALUE) {
                    iK = orientationHelper.g();
                    iH -= iK;
                }
            } else {
                iH = spanArr[i3].h(Integer.MIN_VALUE);
                if (iH != Integer.MIN_VALUE) {
                    iK = orientationHelper.k();
                    iH -= iK;
                }
            }
            savedState2.f19341e[i3] = iH;
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int o(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.a(state, this.r, P0(z), O0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void o0(int i2) {
        if (i2 == 0) {
            L0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int p(RecyclerView.State state) {
        return M0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int q(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.c(state, this.r, P0(z), O0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams t() {
        return this.t == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams u(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams v(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int x0(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return h1(i2, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void y0(int i2) {
        SavedState savedState = this.F;
        if (savedState != null && savedState.f19339b != i2) {
            savedState.f19341e = null;
            savedState.d = 0;
            savedState.f19339b = -1;
            savedState.f19340c = -1;
        }
        this.z = i2;
        this.A = Integer.MIN_VALUE;
        w0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int z0(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return h1(i2, recycler, state);
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Span f19333e;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19339b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f19340c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int[] f19341e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f19342f;
        public int[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ArrayList f19343h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f19344i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f19345j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f19346k;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState();
                savedState.f19339b = parcel.readInt();
                savedState.f19340c = parcel.readInt();
                int i2 = parcel.readInt();
                savedState.d = i2;
                if (i2 > 0) {
                    int[] iArr = new int[i2];
                    savedState.f19341e = iArr;
                    parcel.readIntArray(iArr);
                }
                int i3 = parcel.readInt();
                savedState.f19342f = i3;
                if (i3 > 0) {
                    int[] iArr2 = new int[i3];
                    savedState.g = iArr2;
                    parcel.readIntArray(iArr2);
                }
                savedState.f19344i = parcel.readInt() == 1;
                savedState.f19345j = parcel.readInt() == 1;
                savedState.f19346k = parcel.readInt() == 1;
                savedState.f19343h = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
                return savedState;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        public SavedState(SavedState savedState) {
            this.d = savedState.d;
            this.f19339b = savedState.f19339b;
            this.f19340c = savedState.f19340c;
            this.f19341e = savedState.f19341e;
            this.f19342f = savedState.f19342f;
            this.g = savedState.g;
            this.f19344i = savedState.f19344i;
            this.f19345j = savedState.f19345j;
            this.f19346k = savedState.f19346k;
            this.f19343h = savedState.f19343h;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f19339b);
            parcel.writeInt(this.f19340c);
            parcel.writeInt(this.d);
            if (this.d > 0) {
                parcel.writeIntArray(this.f19341e);
            }
            parcel.writeInt(this.f19342f);
            if (this.f19342f > 0) {
                parcel.writeIntArray(this.g);
            }
            parcel.writeInt(this.f19344i ? 1 : 0);
            parcel.writeInt(this.f19345j ? 1 : 0);
            parcel.writeInt(this.f19346k ? 1 : 0);
            parcel.writeList(this.f19343h);
        }

        public SavedState() {
        }
    }

    public StaggeredGridLayoutManager(int i2, int i3) {
        this.p = -1;
        this.w = false;
        this.x = false;
        this.z = -1;
        this.A = Integer.MIN_VALUE;
        this.B = new LazySpanLookup();
        this.C = 2;
        this.G = new Rect();
        this.H = new AnchorInfo();
        this.I = true;
        this.K = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
            @Override // java.lang.Runnable
            public void run() {
                StaggeredGridLayoutManager.this.L0();
            }
        };
        this.t = i3;
        j1(i2);
        this.v = new LayoutState();
        this.r = OrientationHelper.a(this, this.t);
        this.s = OrientationHelper.a(this, 1 - this.t);
    }
}
