package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;

/* JADX INFO: loaded from: classes.dex */
public class Optimizer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean[] f11507a = new boolean[3];

    public static void a(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        constraintWidget.q = -1;
        ConstraintAnchor constraintAnchor = constraintWidget.P;
        ConstraintAnchor constraintAnchor2 = constraintWidget.O;
        ConstraintAnchor constraintAnchor3 = constraintWidget.M;
        ConstraintAnchor constraintAnchor4 = constraintWidget.N;
        ConstraintAnchor constraintAnchor5 = constraintWidget.L;
        constraintWidget.r = -1;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidgetContainer.W[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour != dimensionBehaviour2 && constraintWidget.W[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i2 = constraintAnchor5.g;
            int iV = constraintWidgetContainer.v() - constraintAnchor4.g;
            constraintAnchor5.f11486i = linearSystem.k(constraintAnchor5);
            constraintAnchor4.f11486i = linearSystem.k(constraintAnchor4);
            linearSystem.d(constraintAnchor5.f11486i, i2);
            linearSystem.d(constraintAnchor4.f11486i, iV);
            constraintWidget.q = 2;
            constraintWidget.c0 = i2;
            int i3 = iV - i2;
            constraintWidget.Y = i3;
            int i4 = constraintWidget.f0;
            if (i3 < i4) {
                constraintWidget.Y = i4;
            }
        }
        if (constraintWidgetContainer.W[1] == dimensionBehaviour2 || constraintWidget.W[1] != ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            return;
        }
        int i5 = constraintAnchor3.g;
        int iP = constraintWidgetContainer.p() - constraintAnchor2.g;
        constraintAnchor3.f11486i = linearSystem.k(constraintAnchor3);
        constraintAnchor2.f11486i = linearSystem.k(constraintAnchor2);
        linearSystem.d(constraintAnchor3.f11486i, i5);
        linearSystem.d(constraintAnchor2.f11486i, iP);
        if (constraintWidget.e0 > 0 || constraintWidget.k0 == 8) {
            SolverVariable solverVariableK = linearSystem.k(constraintAnchor);
            constraintAnchor.f11486i = solverVariableK;
            linearSystem.d(solverVariableK, constraintWidget.e0 + i5);
        }
        constraintWidget.r = 2;
        constraintWidget.d0 = i5;
        int i6 = iP - i5;
        constraintWidget.Z = i6;
        int i7 = constraintWidget.g0;
        if (i6 < i7) {
            constraintWidget.Z = i7;
        }
    }

    public static final boolean b(int i2, int i3) {
        return (i2 & i3) == i3;
    }
}
