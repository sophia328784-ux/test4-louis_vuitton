package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.HelperWidget;

/* JADX INFO: loaded from: classes.dex */
public class Barrier extends ConstraintHelper {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11709j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11710k;
    public androidx.constraintlayout.core.widgets.Barrier l;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public boolean getAllowsGoneWidget() {
        return this.l.z0;
    }

    public int getMargin() {
        return this.l.A0;
    }

    public int getType() {
        return this.f11709j;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void h(AttributeSet attributeSet) {
        super.h(attributeSet);
        this.l = new androidx.constraintlayout.core.widgets.Barrier();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.f11819b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == 26) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == 25) {
                    this.l.z0 = typedArrayObtainStyledAttributes.getBoolean(index, true);
                } else if (index == 27) {
                    this.l.A0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f11719e = this.l;
        k();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void i(ConstraintSet.Constraint constraint, HelperWidget helperWidget, Constraints.LayoutParams layoutParams, SparseArray sparseArray) {
        super.i(constraint, helperWidget, layoutParams, sparseArray);
        ConstraintSet.Layout layout = constraint.f11771e;
        if (helperWidget instanceof androidx.constraintlayout.core.widgets.Barrier) {
            androidx.constraintlayout.core.widgets.Barrier barrier = (androidx.constraintlayout.core.widgets.Barrier) helperWidget;
            l(barrier, layout.g0, ((ConstraintWidgetContainer) helperWidget.X).B0);
            barrier.z0 = layout.o0;
            barrier.A0 = layout.h0;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void j(ConstraintWidget constraintWidget, boolean z) {
        l(constraintWidget, this.f11709j, z);
    }

    public final void l(ConstraintWidget constraintWidget, int i2, boolean z) {
        this.f11710k = i2;
        int i3 = this.f11709j;
        if (z) {
            if (i3 == 5) {
                this.f11710k = 1;
            } else if (i3 == 6) {
                this.f11710k = 0;
            }
        } else if (i3 == 5) {
            this.f11710k = 0;
        } else if (i3 == 6) {
            this.f11710k = 1;
        }
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.Barrier) {
            ((androidx.constraintlayout.core.widgets.Barrier) constraintWidget).y0 = this.f11710k;
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.l.z0 = z;
    }

    public void setDpMargin(int i2) {
        this.l.A0 = (int) ((i2 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i2) {
        this.l.A0 = i2;
    }

    public void setType(int i2) {
        this.f11709j = i2;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        super.setVisibility(8);
    }
}
