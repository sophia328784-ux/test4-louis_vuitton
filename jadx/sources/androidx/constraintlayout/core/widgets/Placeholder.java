package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;

/* JADX INFO: loaded from: classes.dex */
public class Placeholder extends VirtualLayout {
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public final void a0(int i2, int i3, int i4, int i5) {
        int iV = this.C0 + this.D0;
        int iP = this.y0 + this.z0;
        if (this.x0 > 0) {
            iV += this.w0[0].v();
            iP += this.w0[0].p();
        }
        int iMax = Math.max(this.f0, iV);
        int iMax2 = Math.max(this.g0, iP);
        if (i2 != 1073741824) {
            if (i2 == Integer.MIN_VALUE) {
                i3 = Math.min(iMax, i3);
            } else {
                i3 = i2 == 0 ? iMax : 0;
            }
        }
        if (i4 != 1073741824) {
            if (i4 == Integer.MIN_VALUE) {
                i5 = Math.min(iMax2, i5);
            } else {
                i5 = i4 == 0 ? iMax2 : 0;
            }
        }
        this.F0 = i3;
        this.G0 = i5;
        W(i3);
        R(i5);
        this.E0 = this.x0 > 0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void f(LinearSystem linearSystem, boolean z) {
        super.f(linearSystem, z);
        if (this.x0 > 0) {
            ConstraintWidget constraintWidget = this.w0[0];
            constraintWidget.I();
            constraintWidget.i0 = 0.5f;
            constraintWidget.h0 = 0.5f;
            ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
            constraintWidget.i(type, this, type, 0);
            ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
            constraintWidget.i(type2, this, type2, 0);
            ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
            constraintWidget.i(type3, this, type3, 0);
            ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
            constraintWidget.i(type4, this, type4, 0);
        }
    }
}
