package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public abstract class OrientationHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RecyclerView.LayoutManager f19254a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f19255b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f19256c = new Rect();

    /* JADX INFO: renamed from: androidx.recyclerview.widget.OrientationHelper$1, reason: invalid class name */
    class AnonymousClass1 extends OrientationHelper {
        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int b(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f19254a.getClass();
            return RecyclerView.LayoutManager.G(view) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f19254a.getClass();
            return RecyclerView.LayoutManager.F(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int d(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f19254a.getClass();
            return RecyclerView.LayoutManager.E(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int e(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f19254a.getClass();
            return RecyclerView.LayoutManager.D(view) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int f() {
            return this.f19254a.n;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int g() {
            RecyclerView.LayoutManager layoutManager = this.f19254a;
            return layoutManager.n - layoutManager.L();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int h() {
            return this.f19254a.L();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int i() {
            return this.f19254a.l;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int j() {
            return this.f19254a.m;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int k() {
            return this.f19254a.K();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int l() {
            RecyclerView.LayoutManager layoutManager = this.f19254a;
            return (layoutManager.n - layoutManager.K()) - layoutManager.L();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int m(View view) {
            RecyclerView.LayoutManager layoutManager = this.f19254a;
            Rect rect = this.f19256c;
            layoutManager.Q(view, rect);
            return rect.right;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int n(View view) {
            RecyclerView.LayoutManager layoutManager = this.f19254a;
            Rect rect = this.f19256c;
            layoutManager.Q(view, rect);
            return rect.left;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final void o(int i2) {
            this.f19254a.V(i2);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.OrientationHelper$2, reason: invalid class name */
    class AnonymousClass2 extends OrientationHelper {
        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int b(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f19254a.getClass();
            return RecyclerView.LayoutManager.B(view) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f19254a.getClass();
            return RecyclerView.LayoutManager.E(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int d(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f19254a.getClass();
            return RecyclerView.LayoutManager.F(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int e(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f19254a.getClass();
            return RecyclerView.LayoutManager.H(view) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int f() {
            return this.f19254a.o;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int g() {
            RecyclerView.LayoutManager layoutManager = this.f19254a;
            return layoutManager.o - layoutManager.J();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int h() {
            return this.f19254a.J();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int i() {
            return this.f19254a.m;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int j() {
            return this.f19254a.l;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int k() {
            return this.f19254a.M();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int l() {
            RecyclerView.LayoutManager layoutManager = this.f19254a;
            return (layoutManager.o - layoutManager.M()) - layoutManager.J();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int m(View view) {
            RecyclerView.LayoutManager layoutManager = this.f19254a;
            Rect rect = this.f19256c;
            layoutManager.Q(view, rect);
            return rect.bottom;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int n(View view) {
            RecyclerView.LayoutManager layoutManager = this.f19254a;
            Rect rect = this.f19256c;
            layoutManager.Q(view, rect);
            return rect.top;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final void o(int i2) {
            this.f19254a.W(i2);
        }
    }

    public OrientationHelper(RecyclerView.LayoutManager layoutManager) {
        this.f19254a = layoutManager;
    }

    public static OrientationHelper a(RecyclerView.LayoutManager layoutManager, int i2) {
        if (i2 == 0) {
            return new AnonymousClass1(layoutManager);
        }
        if (i2 == 1) {
            return new AnonymousClass2(layoutManager);
        }
        md.n("invalid orientation");
        return null;
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m(View view);

    public abstract int n(View view);

    public abstract void o(int i2);
}
