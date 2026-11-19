package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class Guideline extends ConstraintWidget {
    public boolean B0;
    public float w0 = -1.0f;
    public int x0 = -1;
    public int y0 = -1;
    public ConstraintAnchor z0 = this.M;
    public int A0 = 0;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.Guideline$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11506a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f11506a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11506a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11506a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11506a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11506a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11506a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f11506a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f11506a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f11506a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public Guideline() {
        this.U.clear();
        this.U.add(this.z0);
        int length = this.T.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.T[i2] = this.z0;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean F() {
        return this.B0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean G() {
        return this.B0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void Y(LinearSystem linearSystem, boolean z) {
        if (this.X == null) {
            return;
        }
        ConstraintAnchor constraintAnchor = this.z0;
        linearSystem.getClass();
        int iN = LinearSystem.n(constraintAnchor);
        if (this.A0 == 1) {
            this.c0 = iN;
            this.d0 = 0;
            R(this.X.p());
            W(0);
            return;
        }
        this.c0 = 0;
        this.d0 = iN;
        W(this.X.v());
        R(0);
    }

    public final void Z(int i2) {
        this.z0.l(i2);
        this.B0 = true;
    }

    public final void a0(int i2) {
        if (this.A0 == i2) {
            return;
        }
        this.A0 = i2;
        ArrayList arrayList = this.U;
        arrayList.clear();
        if (this.A0 == 1) {
            this.z0 = this.L;
        } else {
            this.z0 = this.M;
        }
        arrayList.add(this.z0);
        ConstraintAnchor[] constraintAnchorArr = this.T;
        int length = constraintAnchorArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            constraintAnchorArr[i3] = this.z0;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void f(LinearSystem linearSystem, boolean z) {
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) this.X;
        if (constraintWidgetContainer == null) {
            return;
        }
        Object objN = constraintWidgetContainer.n(ConstraintAnchor.Type.LEFT);
        Object objN2 = constraintWidgetContainer.n(ConstraintAnchor.Type.RIGHT);
        ConstraintWidget constraintWidget = this.X;
        boolean z2 = constraintWidget != null && constraintWidget.W[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (this.A0 == 0) {
            objN = constraintWidgetContainer.n(ConstraintAnchor.Type.TOP);
            objN2 = constraintWidgetContainer.n(ConstraintAnchor.Type.BOTTOM);
            ConstraintWidget constraintWidget2 = this.X;
            z2 = constraintWidget2 != null && constraintWidget2.W[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        }
        if (this.B0) {
            ConstraintAnchor constraintAnchor = this.z0;
            if (constraintAnchor.f11482c) {
                SolverVariable solverVariableK = linearSystem.k(constraintAnchor);
                linearSystem.d(solverVariableK, this.z0.d());
                if (this.x0 != -1) {
                    if (z2) {
                        linearSystem.f(linearSystem.k(objN2), solverVariableK, 0, 5);
                    }
                } else if (this.y0 != -1 && z2) {
                    SolverVariable solverVariableK2 = linearSystem.k(objN2);
                    linearSystem.f(solverVariableK, linearSystem.k(objN), 0, 5);
                    linearSystem.f(solverVariableK2, solverVariableK, 0, 5);
                }
                this.B0 = false;
                return;
            }
        }
        if (this.x0 != -1) {
            SolverVariable solverVariableK3 = linearSystem.k(this.z0);
            linearSystem.e(solverVariableK3, linearSystem.k(objN), this.x0, 8);
            if (z2) {
                linearSystem.f(linearSystem.k(objN2), solverVariableK3, 0, 5);
                return;
            }
            return;
        }
        if (this.y0 != -1) {
            SolverVariable solverVariableK4 = linearSystem.k(this.z0);
            SolverVariable solverVariableK5 = linearSystem.k(objN2);
            linearSystem.e(solverVariableK4, solverVariableK5, -this.y0, 8);
            if (z2) {
                linearSystem.f(solverVariableK4, linearSystem.k(objN), 0, 5);
                linearSystem.f(solverVariableK5, solverVariableK4, 0, 5);
                return;
            }
            return;
        }
        if (this.w0 != -1.0f) {
            SolverVariable solverVariableK6 = linearSystem.k(this.z0);
            SolverVariable solverVariableK7 = linearSystem.k(objN2);
            float f2 = this.w0;
            ArrayRow arrayRowL = linearSystem.l();
            arrayRowL.d.g(solverVariableK6, -1.0f);
            arrayRowL.d.g(solverVariableK7, f2);
            linearSystem.c(arrayRowL);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean g() {
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void k(ConstraintWidget constraintWidget, HashMap map) {
        super.k(constraintWidget, map);
        Guideline guideline = (Guideline) constraintWidget;
        this.w0 = guideline.w0;
        this.x0 = guideline.x0;
        this.y0 = guideline.y0;
        a0(guideline.A0);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final ConstraintAnchor n(ConstraintAnchor.Type type) {
        int i2 = AnonymousClass1.f11506a[type.ordinal()];
        if (i2 == 1 || i2 == 2) {
            if (this.A0 == 1) {
                return this.z0;
            }
            return null;
        }
        if ((i2 == 3 || i2 == 4) && this.A0 == 0) {
            return this.z0;
        }
        return null;
    }
}
