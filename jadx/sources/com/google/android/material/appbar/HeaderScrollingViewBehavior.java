package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.search.SearchBar;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {
    public final Rect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f32275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32276f;
    public int g;

    public HeaderScrollingViewBehavior() {
        this.d = new Rect();
        this.f32275e = new Rect();
        this.f32276f = 0;
    }

    public abstract AppBarLayout A(List list);

    public float B(View view) {
        return 1.0f;
    }

    public int C(View view) {
        return view.getMeasuredHeight();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean m(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4) {
        AppBarLayout appBarLayoutA;
        WindowInsetsCompat lastWindowInsets;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (appBarLayoutA = A(coordinatorLayout.e(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i4);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (appBarLayoutA.getFitsSystemWindows() && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.g() + lastWindowInsets.j();
        }
        int iC = size + C(appBarLayoutA);
        int measuredHeight = appBarLayoutA.getMeasuredHeight();
        if (this instanceof SearchBar.ScrollingViewBehavior) {
            view.setTranslationY(-measuredHeight);
        } else {
            view.setTranslationY(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            iC -= measuredHeight;
        }
        coordinatorLayout.s(view, i2, i3, View.MeasureSpec.makeMeasureSpec(iC, i5 == -1 ? 1073741824 : Integer.MIN_VALUE));
        return true;
    }

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    public final void y(CoordinatorLayout coordinatorLayout, View view, int i2) {
        AppBarLayout appBarLayoutA = A(coordinatorLayout.e(view));
        int iB = 0;
        if (appBarLayoutA == null) {
            coordinatorLayout.r(i2, view);
            this.f32276f = 0;
            return;
        }
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
        int paddingLeft = coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        int bottom = appBarLayoutA.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        int width = (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int bottom2 = ((appBarLayoutA.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        Rect rect = this.d;
        rect.set(paddingLeft, bottom, width, bottom2);
        WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            rect.left = lastWindowInsets.h() + rect.left;
            rect.right -= lastWindowInsets.i();
        }
        int i3 = layoutParams.f11853c;
        if (i3 == 0) {
            i3 = 8388659;
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        Rect rect2 = this.f32275e;
        Gravity.apply(i3, measuredWidth, measuredHeight, rect, rect2, i2);
        if (this.g != 0) {
            float fB = B(appBarLayoutA);
            int i4 = this.g;
            iB = MathUtils.b((int) (fB * i4), 0, i4);
        }
        view.layout(rect2.left, rect2.top - iB, rect2.right, rect2.bottom - iB);
        this.f32276f = rect2.top - appBarLayoutA.getBottom();
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new Rect();
        this.f32275e = new Rect();
        this.f32276f = 0;
    }
}
