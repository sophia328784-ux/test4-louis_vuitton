package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.VirtualLayout;

/* JADX INFO: loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public androidx.constraintlayout.core.widgets.Flow l;

    public Flow(Context context) {
        super(context);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    public final void h(AttributeSet attributeSet) {
        super.h(attributeSet);
        this.l = new androidx.constraintlayout.core.widgets.Flow();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.f11819b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == 0) {
                    this.l.b1 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    androidx.constraintlayout.core.widgets.Flow flow = this.l;
                    int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    flow.y0 = dimensionPixelSize;
                    flow.z0 = dimensionPixelSize;
                    flow.A0 = dimensionPixelSize;
                    flow.B0 = dimensionPixelSize;
                } else if (index == 18) {
                    androidx.constraintlayout.core.widgets.Flow flow2 = this.l;
                    int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    flow2.A0 = dimensionPixelSize2;
                    flow2.C0 = dimensionPixelSize2;
                    flow2.D0 = dimensionPixelSize2;
                } else if (index == 19) {
                    this.l.B0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.l.C0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.l.y0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.l.D0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.l.z0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 54) {
                    this.l.Z0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 44) {
                    this.l.J0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 53) {
                    this.l.K0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 38) {
                    this.l.L0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 46) {
                    this.l.N0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 40) {
                    this.l.M0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 48) {
                    this.l.O0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 42) {
                    this.l.P0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 37) {
                    this.l.R0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 45) {
                    this.l.T0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 39) {
                    this.l.S0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 47) {
                    this.l.U0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 51) {
                    this.l.Q0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 41) {
                    this.l.X0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 50) {
                    this.l.Y0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 43) {
                    this.l.V0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 52) {
                    this.l.W0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 49) {
                    this.l.a1 = typedArrayObtainStyledAttributes.getInt(index, -1);
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
        if (helperWidget instanceof androidx.constraintlayout.core.widgets.Flow) {
            androidx.constraintlayout.core.widgets.Flow flow = (androidx.constraintlayout.core.widgets.Flow) helperWidget;
            int i2 = layoutParams.V;
            if (i2 != -1) {
                flow.b1 = i2;
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void j(ConstraintWidget constraintWidget, boolean z) {
        androidx.constraintlayout.core.widgets.Flow flow = this.l;
        int i2 = flow.A0;
        if (i2 > 0 || flow.B0 > 0) {
            if (z) {
                flow.C0 = flow.B0;
                flow.D0 = i2;
            } else {
                flow.C0 = i2;
                flow.D0 = flow.B0;
            }
        }
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    public final void l(androidx.constraintlayout.core.widgets.VirtualLayout virtualLayout, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (virtualLayout == null) {
            setMeasuredDimension(0, 0);
        } else {
            virtualLayout.a0(mode, size, mode2, size2);
            setMeasuredDimension(virtualLayout.F0, virtualLayout.G0);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onMeasure(int i2, int i3) {
        l(this.l, i2, i3);
    }

    public void setFirstHorizontalBias(float f2) {
        this.l.R0 = f2;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i2) {
        this.l.L0 = i2;
        requestLayout();
    }

    public void setFirstVerticalBias(float f2) {
        this.l.S0 = f2;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i2) {
        this.l.M0 = i2;
        requestLayout();
    }

    public void setHorizontalAlign(int i2) {
        this.l.X0 = i2;
        requestLayout();
    }

    public void setHorizontalBias(float f2) {
        this.l.P0 = f2;
        requestLayout();
    }

    public void setHorizontalGap(int i2) {
        this.l.V0 = i2;
        requestLayout();
    }

    public void setHorizontalStyle(int i2) {
        this.l.J0 = i2;
        requestLayout();
    }

    public void setLastHorizontalBias(float f2) {
        this.l.T0 = f2;
        requestLayout();
    }

    public void setLastHorizontalStyle(int i2) {
        this.l.N0 = i2;
        requestLayout();
    }

    public void setLastVerticalBias(float f2) {
        this.l.U0 = f2;
        requestLayout();
    }

    public void setLastVerticalStyle(int i2) {
        this.l.O0 = i2;
        requestLayout();
    }

    public void setMaxElementsWrap(int i2) {
        this.l.a1 = i2;
        requestLayout();
    }

    public void setOrientation(int i2) {
        this.l.b1 = i2;
        requestLayout();
    }

    public void setPadding(int i2) {
        androidx.constraintlayout.core.widgets.Flow flow = this.l;
        flow.y0 = i2;
        flow.z0 = i2;
        flow.A0 = i2;
        flow.B0 = i2;
        requestLayout();
    }

    public void setPaddingBottom(int i2) {
        this.l.z0 = i2;
        requestLayout();
    }

    public void setPaddingLeft(int i2) {
        this.l.C0 = i2;
        requestLayout();
    }

    public void setPaddingRight(int i2) {
        this.l.D0 = i2;
        requestLayout();
    }

    public void setPaddingTop(int i2) {
        this.l.y0 = i2;
        requestLayout();
    }

    public void setVerticalAlign(int i2) {
        this.l.Y0 = i2;
        requestLayout();
    }

    public void setVerticalBias(float f2) {
        this.l.Q0 = f2;
        requestLayout();
    }

    public void setVerticalGap(int i2) {
        this.l.W0 = i2;
        requestLayout();
    }

    public void setVerticalStyle(int i2) {
        this.l.K0 = i2;
        requestLayout();
    }

    public void setWrapMode(int i2) {
        this.l.Z0 = i2;
        requestLayout();
    }

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Flow(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
