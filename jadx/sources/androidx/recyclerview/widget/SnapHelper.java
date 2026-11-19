package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public abstract class SnapHelper extends RecyclerView.OnFlingListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RecyclerView f19324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView.OnScrollListener f19325b = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.SnapHelper.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f19326a = false;

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void a(int i2) {
            if (i2 == 0 && this.f19326a) {
                this.f19326a = false;
                SnapHelper.this.g();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void b(RecyclerView recyclerView, int i2, int i3) {
            if (i2 == 0 && i3 == 0) {
                return;
            }
            this.f19326a = true;
        }
    };

    @Override // androidx.recyclerview.widget.RecyclerView.OnFlingListener
    public final boolean a(int i2, int i3) {
        RecyclerView.SmoothScroller smoothScrollerD;
        int iF;
        RecyclerView.LayoutManager layoutManager = this.f19324a.getLayoutManager();
        if (layoutManager == null || this.f19324a.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.f19324a.getMinFlingVelocity();
        if ((Math.abs(i3) <= minFlingVelocity && Math.abs(i2) <= minFlingVelocity) || !(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (smoothScrollerD = d(layoutManager)) == null || (iF = f(layoutManager, i2, i3)) == -1) {
            return false;
        }
        smoothScrollerD.f19301a = iF;
        layoutManager.J0(smoothScrollerD);
        return true;
    }

    public final void b(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f19324a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        RecyclerView.OnScrollListener onScrollListener = this.f19325b;
        if (recyclerView2 != null) {
            recyclerView2.removeOnScrollListener(onScrollListener);
            this.f19324a.setOnFlingListener(null);
        }
        this.f19324a = recyclerView;
        if (recyclerView != null) {
            if (recyclerView.getOnFlingListener() != null) {
                md.k("An instance of OnFlingListener already set.");
                return;
            }
            this.f19324a.addOnScrollListener(onScrollListener);
            this.f19324a.setOnFlingListener(this);
            new Scroller(this.f19324a.getContext(), new DecelerateInterpolator());
            g();
        }
    }

    public abstract int[] c(RecyclerView.LayoutManager layoutManager, View view);

    public RecyclerView.SmoothScroller d(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new LinearSmoothScroller(this.f19324a.getContext()) { // from class: androidx.recyclerview.widget.SnapHelper.2
                @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                public final void e(View view, RecyclerView.SmoothScroller.Action action) {
                    SnapHelper snapHelper = SnapHelper.this;
                    RecyclerView recyclerView = snapHelper.f19324a;
                    if (recyclerView == null) {
                        return;
                    }
                    int[] iArrC = snapHelper.c(recyclerView.getLayoutManager(), view);
                    int i2 = iArrC[0];
                    int i3 = iArrC[1];
                    int iCeil = (int) Math.ceil(((double) k(Math.max(Math.abs(i2), Math.abs(i3)))) / 0.3356d);
                    if (iCeil > 0) {
                        action.f19306a = i2;
                        action.f19307b = i3;
                        action.f19308c = iCeil;
                        action.f19309e = this.f19250i;
                        action.f19310f = true;
                    }
                }

                @Override // androidx.recyclerview.widget.LinearSmoothScroller
                public final float j(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }
            };
        }
        return null;
    }

    public abstract View e(RecyclerView.LayoutManager layoutManager);

    public abstract int f(RecyclerView.LayoutManager layoutManager, int i2, int i3);

    public final void g() {
        RecyclerView.LayoutManager layoutManager;
        View viewE;
        RecyclerView recyclerView = this.f19324a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewE = e(layoutManager)) == null) {
            return;
        }
        int[] iArrC = c(layoutManager, viewE);
        int i2 = iArrC[0];
        if (i2 == 0 && iArrC[1] == 0) {
            return;
        }
        this.f19324a.smoothScrollBy(i2, iArrC[1]);
    }
}
