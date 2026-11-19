package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes2.dex */
class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewOffsetHelper f32277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f32278c;

    public ViewOffsetBehavior() {
        this.f32278c = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i2) {
        y(coordinatorLayout, view, i2);
        if (this.f32277b == null) {
            this.f32277b = new ViewOffsetHelper(view);
        }
        ViewOffsetHelper viewOffsetHelper = this.f32277b;
        View view2 = viewOffsetHelper.f32279a;
        viewOffsetHelper.f32280b = view2.getTop();
        viewOffsetHelper.f32281c = view2.getLeft();
        this.f32277b.a();
        int i3 = this.f32278c;
        if (i3 == 0) {
            return true;
        }
        ViewOffsetHelper viewOffsetHelper2 = this.f32277b;
        if (viewOffsetHelper2.d != i3) {
            viewOffsetHelper2.d = i3;
            viewOffsetHelper2.a();
        }
        this.f32278c = 0;
        return true;
    }

    public int w() {
        ViewOffsetHelper viewOffsetHelper = this.f32277b;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.d;
        }
        return 0;
    }

    public int x() {
        return w();
    }

    public void y(CoordinatorLayout coordinatorLayout, View view, int i2) {
        coordinatorLayout.r(i2, view);
    }

    public boolean z(int i2) {
        ViewOffsetHelper viewOffsetHelper = this.f32277b;
        if (viewOffsetHelper == null) {
            this.f32278c = i2;
            return false;
        }
        if (viewOffsetHelper.d == i2) {
            return false;
        }
        viewOffsetHelper.d = i2;
        viewOffsetHelper.a();
        return true;
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32278c = 0;
    }
}
