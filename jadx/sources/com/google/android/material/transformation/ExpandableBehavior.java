package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.expandable.ExpandableWidget;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f33253b;

    public ExpandableBehavior() {
        this.f33253b = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean f(View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        ExpandableWidget expandableWidget = (ExpandableWidget) view2;
        boolean zA = expandableWidget.a();
        int i2 = this.f33253b;
        if (zA) {
            if (i2 != 0 && i2 != 2) {
                return false;
            }
        } else if (i2 != 1) {
            return false;
        }
        this.f33253b = expandableWidget.a() ? 1 : 2;
        w((View) expandableWidget, view, expandableWidget.a(), true);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean l(CoordinatorLayout coordinatorLayout, final View view, int i2) {
        final ExpandableWidget expandableWidget;
        if (!view.isLaidOut()) {
            List listE = coordinatorLayout.e(view);
            int size = listE.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    expandableWidget = null;
                    break;
                }
                View view2 = (View) listE.get(i3);
                if (f(view, view2)) {
                    expandableWidget = (ExpandableWidget) view2;
                    break;
                }
                i3++;
            }
            if (expandableWidget != null) {
                boolean zA = expandableWidget.a();
                int i4 = this.f33253b;
                if (!zA ? i4 == 1 : !(i4 != 0 && i4 != 2)) {
                    final int i5 = expandableWidget.a() ? 1 : 2;
                    this.f33253b = i5;
                    view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.transformation.ExpandableBehavior.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // android.view.ViewTreeObserver.OnPreDrawListener
                        public final boolean onPreDraw() {
                            View view3 = view;
                            view3.getViewTreeObserver().removeOnPreDrawListener(this);
                            ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                            if (expandableBehavior.f33253b == i5) {
                                ExpandableWidget expandableWidget2 = expandableWidget;
                                expandableBehavior.w((View) expandableWidget2, view3, expandableWidget2.a(), false);
                            }
                            return false;
                        }
                    });
                }
            }
        }
        return false;
    }

    public abstract void w(View view, View view2, boolean z, boolean z2);

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33253b = 0;
    }
}
