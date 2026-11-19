package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import defpackage.n00;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class Barrier extends HelperWidget {
    public int y0 = 0;
    public boolean z0 = true;
    public int A0 = 0;
    public boolean B0 = false;

    public Barrier(String str) {
        this.m0 = str;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean F() {
        return this.B0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean G() {
        return this.B0;
    }

    public final boolean a0() {
        int i2;
        int i3;
        int i4;
        boolean z = true;
        int i5 = 0;
        while (true) {
            i2 = this.x0;
            if (i5 >= i2) {
                break;
            }
            ConstraintWidget constraintWidget = this.w0[i5];
            if ((this.z0 || constraintWidget.g()) && ((((i3 = this.y0) == 0 || i3 == 1) && !constraintWidget.F()) || (((i4 = this.y0) == 2 || i4 == 3) && !constraintWidget.G()))) {
                z = false;
            }
            i5++;
        }
        if (!z || i2 <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z2 = false;
        for (int i6 = 0; i6 < this.x0; i6++) {
            ConstraintWidget constraintWidget2 = this.w0[i6];
            if (this.z0 || constraintWidget2.g()) {
                if (!z2) {
                    int i7 = this.y0;
                    if (i7 == 0) {
                        iMax = constraintWidget2.n(ConstraintAnchor.Type.LEFT).d();
                    } else if (i7 == 1) {
                        iMax = constraintWidget2.n(ConstraintAnchor.Type.RIGHT).d();
                    } else if (i7 == 2) {
                        iMax = constraintWidget2.n(ConstraintAnchor.Type.TOP).d();
                    } else if (i7 == 3) {
                        iMax = constraintWidget2.n(ConstraintAnchor.Type.BOTTOM).d();
                    }
                    z2 = true;
                }
                int i8 = this.y0;
                if (i8 == 0) {
                    iMax = Math.min(iMax, constraintWidget2.n(ConstraintAnchor.Type.LEFT).d());
                } else if (i8 == 1) {
                    iMax = Math.max(iMax, constraintWidget2.n(ConstraintAnchor.Type.RIGHT).d());
                } else if (i8 == 2) {
                    iMax = Math.min(iMax, constraintWidget2.n(ConstraintAnchor.Type.TOP).d());
                } else if (i8 == 3) {
                    iMax = Math.max(iMax, constraintWidget2.n(ConstraintAnchor.Type.BOTTOM).d());
                }
            }
        }
        int i9 = iMax + this.A0;
        int i10 = this.y0;
        if (i10 == 0 || i10 == 1) {
            P(i9, i9);
        } else {
            Q(i9, i9);
        }
        this.B0 = true;
        return true;
    }

    public final int b0() {
        int i2 = this.y0;
        if (i2 == 0 || i2 == 1) {
            return 0;
        }
        return (i2 == 2 || i2 == 3) ? 1 : -1;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void f(LinearSystem linearSystem, boolean z) {
        boolean z2;
        int i2;
        int i3;
        ConstraintAnchor[] constraintAnchorArr = this.T;
        ConstraintAnchor constraintAnchor = this.L;
        constraintAnchorArr[0] = constraintAnchor;
        int i4 = 2;
        ConstraintAnchor constraintAnchor2 = this.M;
        constraintAnchorArr[2] = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = this.N;
        constraintAnchorArr[1] = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = this.O;
        constraintAnchorArr[3] = constraintAnchor4;
        for (ConstraintAnchor constraintAnchor5 : constraintAnchorArr) {
            constraintAnchor5.f11486i = linearSystem.k(constraintAnchor5);
        }
        int i5 = this.y0;
        if (i5 < 0 || i5 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr[i5];
        if (!this.B0) {
            a0();
        }
        if (this.B0) {
            this.B0 = false;
            int i6 = this.y0;
            if (i6 == 0 || i6 == 1) {
                linearSystem.d(constraintAnchor.f11486i, this.c0);
                linearSystem.d(constraintAnchor3.f11486i, this.c0);
                return;
            } else {
                if (i6 == 2 || i6 == 3) {
                    linearSystem.d(constraintAnchor2.f11486i, this.d0);
                    linearSystem.d(constraintAnchor4.f11486i, this.d0);
                    return;
                }
                return;
            }
        }
        int i7 = 0;
        while (true) {
            if (i7 >= this.x0) {
                z2 = false;
                break;
            }
            ConstraintWidget constraintWidget = this.w0[i7];
            if ((this.z0 || constraintWidget.g()) && ((((i3 = this.y0) == 0 || i3 == 1) && constraintWidget.W[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.L.f11484f != null && constraintWidget.N.f11484f != null) || ((i3 == 2 || i3 == 3) && constraintWidget.W[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.M.f11484f != null && constraintWidget.O.f11484f != null))) {
                z2 = true;
                break;
            }
            i7++;
        }
        boolean z3 = constraintAnchor.g() || constraintAnchor3.g();
        boolean z4 = constraintAnchor2.g() || constraintAnchor4.g();
        int i8 = !(!z2 && (((i2 = this.y0) == 0 && z3) || ((i2 == 2 && z4) || ((i2 == 1 && z3) || (i2 == 3 && z4))))) ? 4 : 5;
        int i9 = 0;
        while (i9 < this.x0) {
            ConstraintWidget constraintWidget2 = this.w0[i9];
            if (this.z0 || constraintWidget2.g()) {
                SolverVariable solverVariableK = linearSystem.k(constraintWidget2.T[this.y0]);
                ConstraintAnchor[] constraintAnchorArr2 = constraintWidget2.T;
                int i10 = this.y0;
                ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[i10];
                constraintAnchor7.f11486i = solverVariableK;
                ConstraintAnchor constraintAnchor8 = constraintAnchor7.f11484f;
                int i11 = (constraintAnchor8 == null || constraintAnchor8.d != this) ? 0 : constraintAnchor7.g;
                if (i10 == 0 || i10 == i4) {
                    SolverVariable solverVariable = constraintAnchor6.f11486i;
                    int i12 = this.A0 - i11;
                    ArrayRow arrayRowL = linearSystem.l();
                    SolverVariable solverVariableM = linearSystem.m();
                    solverVariableM.f11316f = 0;
                    arrayRowL.d(solverVariable, solverVariableK, solverVariableM, i12);
                    linearSystem.c(arrayRowL);
                } else {
                    SolverVariable solverVariable2 = constraintAnchor6.f11486i;
                    int i13 = this.A0 + i11;
                    ArrayRow arrayRowL2 = linearSystem.l();
                    SolverVariable solverVariableM2 = linearSystem.m();
                    solverVariableM2.f11316f = 0;
                    arrayRowL2.c(solverVariable2, solverVariableK, solverVariableM2, i13);
                    linearSystem.c(arrayRowL2);
                }
                linearSystem.e(constraintAnchor6.f11486i, solverVariableK, this.A0 + i11, i8);
            }
            i9++;
            i4 = 2;
        }
        int i14 = this.y0;
        if (i14 == 0) {
            linearSystem.e(constraintAnchor3.f11486i, constraintAnchor.f11486i, 0, 8);
            linearSystem.e(constraintAnchor.f11486i, this.X.N.f11486i, 0, 4);
            linearSystem.e(constraintAnchor.f11486i, this.X.L.f11486i, 0, 0);
            return;
        }
        if (i14 == 1) {
            linearSystem.e(constraintAnchor.f11486i, constraintAnchor3.f11486i, 0, 8);
            linearSystem.e(constraintAnchor.f11486i, this.X.L.f11486i, 0, 4);
            linearSystem.e(constraintAnchor.f11486i, this.X.N.f11486i, 0, 0);
        } else if (i14 == 2) {
            linearSystem.e(constraintAnchor4.f11486i, constraintAnchor2.f11486i, 0, 8);
            linearSystem.e(constraintAnchor2.f11486i, this.X.O.f11486i, 0, 4);
            linearSystem.e(constraintAnchor2.f11486i, this.X.M.f11486i, 0, 0);
        } else if (i14 == 3) {
            linearSystem.e(constraintAnchor2.f11486i, constraintAnchor4.f11486i, 0, 8);
            linearSystem.e(constraintAnchor2.f11486i, this.X.M.f11486i, 0, 4);
            linearSystem.e(constraintAnchor2.f11486i, this.X.O.f11486i, 0, 0);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean g() {
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void k(ConstraintWidget constraintWidget, HashMap map) {
        super.k(constraintWidget, map);
        Barrier barrier = (Barrier) constraintWidget;
        this.y0 = barrier.y0;
        this.z0 = barrier.z0;
        this.A0 = barrier.A0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final String toString() {
        String strR = n00.r(this.m0, " {", new StringBuilder("[Barrier] "));
        for (int i2 = 0; i2 < this.x0; i2++) {
            ConstraintWidget constraintWidget = this.w0[i2];
            if (i2 > 0) {
                strR = strR.concat(", ");
            }
            StringBuilder sbT = n00.t(strR);
            sbT.append(constraintWidget.m0);
            strR = sbT.toString();
        }
        return strR.concat("}");
    }

    public Barrier() {
    }
}
