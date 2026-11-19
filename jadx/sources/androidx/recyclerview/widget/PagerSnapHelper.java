package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class PagerSnapHelper extends SnapHelper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OrientationHelper f19257c;
    public OrientationHelper d;

    public static int h(View view, OrientationHelper orientationHelper) {
        return ((orientationHelper.c(view) / 2) + orientationHelper.e(view)) - ((orientationHelper.l() / 2) + orientationHelper.k());
    }

    public static View i(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int iX = layoutManager.x();
        View view = null;
        if (iX == 0) {
            return null;
        }
        int iL = (orientationHelper.l() / 2) + orientationHelper.k();
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < iX; i3++) {
            View viewW = layoutManager.w(i3);
            int iAbs = Math.abs(((orientationHelper.c(viewW) / 2) + orientationHelper.e(viewW)) - iL);
            if (iAbs < i2) {
                view = viewW;
                i2 = iAbs;
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final int[] c(RecyclerView.LayoutManager layoutManager, View view) {
        int[] iArr = new int[2];
        if (layoutManager.f()) {
            iArr[0] = h(view, j(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.g()) {
            iArr[1] = h(view, k(layoutManager));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final RecyclerView.SmoothScroller d(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new LinearSmoothScroller(this.f19324a.getContext()) { // from class: androidx.recyclerview.widget.PagerSnapHelper.1
                @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                public final void e(View view, RecyclerView.SmoothScroller.Action action) {
                    PagerSnapHelper pagerSnapHelper = PagerSnapHelper.this;
                    int[] iArrC = pagerSnapHelper.c(pagerSnapHelper.f19324a.getLayoutManager(), view);
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

                @Override // androidx.recyclerview.widget.LinearSmoothScroller
                public final int k(int i2) {
                    return Math.min(100, super.k(i2));
                }
            };
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View e(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.g()) {
            return i(layoutManager, k(layoutManager));
        }
        if (layoutManager.f()) {
            return i(layoutManager, j(layoutManager));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.SnapHelper
    public final int f(RecyclerView.LayoutManager layoutManager, int i2, int i3) {
        PointF pointFA;
        int I = layoutManager.I();
        if (I != 0) {
            View view = null;
            OrientationHelper orientationHelperK = layoutManager.g() ? k(layoutManager) : layoutManager.f() ? j(layoutManager) : null;
            if (orientationHelperK != null) {
                int iX = layoutManager.x();
                boolean z = false;
                int i4 = Integer.MAX_VALUE;
                int i5 = Integer.MIN_VALUE;
                View view2 = null;
                for (int i6 = 0; i6 < iX; i6++) {
                    View viewW = layoutManager.w(i6);
                    if (viewW != null) {
                        int iH = h(viewW, orientationHelperK);
                        if (iH <= 0 && iH > i5) {
                            view2 = viewW;
                            i5 = iH;
                        }
                        if (iH >= 0 && iH < i4) {
                            view = viewW;
                            i4 = iH;
                        }
                    }
                }
                boolean z2 = !layoutManager.f() ? i3 <= 0 : i2 <= 0;
                if (z2 && view != null) {
                    return RecyclerView.LayoutManager.N(view);
                }
                if (!z2 && view2 != null) {
                    return RecyclerView.LayoutManager.N(view2);
                }
                if (z2) {
                    view = view2;
                }
                if (view != null) {
                    int iN = RecyclerView.LayoutManager.N(view);
                    int I2 = layoutManager.I();
                    if ((layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) && (pointFA = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).a(I2 - 1)) != null && (pointFA.x < Call.Parameters.DEFAULT_CAMERA_ZOOM || pointFA.y < Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
                        z = true;
                    }
                    int i7 = iN + (z == z2 ? -1 : 1);
                    if (i7 >= 0 && i7 < I) {
                        return i7;
                    }
                }
            }
        }
        return -1;
    }

    public final OrientationHelper j(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.d;
        if (orientationHelper == null || orientationHelper.f19254a != layoutManager) {
            this.d = new OrientationHelper.AnonymousClass1(layoutManager);
        }
        return this.d;
    }

    public final OrientationHelper k(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.f19257c;
        if (orientationHelper == null || orientationHelper.f19254a != layoutManager) {
            this.f19257c = new OrientationHelper.AnonymousClass2(layoutManager);
        }
        return this.f19257c;
    }
}
