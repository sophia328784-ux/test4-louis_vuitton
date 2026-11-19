package androidx.constraintlayout.core;

import defpackage.d21;
import defpackage.n00;
import java.util.Arrays;
import java.util.Comparator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class PriorityGoalRow extends ArrayRow {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SolverVariable[] f11308f;
    public SolverVariable[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11309h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GoalVariableAccessor f11310i;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.PriorityGoalRow$1, reason: invalid class name */
    class AnonymousClass1 implements Comparator<SolverVariable> {
        @Override // java.util.Comparator
        public final int compare(SolverVariable solverVariable, SolverVariable solverVariable2) {
            return solverVariable.d - solverVariable2.d;
        }
    }

    public class GoalVariableAccessor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SolverVariable f11311a;

        public GoalVariableAccessor() {
        }

        public final String toString() {
            String strE = "[ ";
            if (this.f11311a != null) {
                for (int i2 = 0; i2 < 9; i2++) {
                    strE = d21.e(this.f11311a.f11319j[i2], " ", n00.t(strE));
                }
            }
            StringBuilder sbU = n00.u(strE, "] ");
            sbU.append(this.f11311a);
            return sbU.toString();
        }
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.f11308f = new SolverVariable[128];
        this.g = new SolverVariable[128];
        this.f11309h = 0;
        this.f11310i = new GoalVariableAccessor();
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public final SolverVariable a(boolean[] zArr) {
        int i2 = -1;
        for (int i3 = 0; i3 < this.f11309h; i3++) {
            SolverVariable[] solverVariableArr = this.f11308f;
            SolverVariable solverVariable = solverVariableArr[i3];
            if (!zArr[solverVariable.d]) {
                GoalVariableAccessor goalVariableAccessor = this.f11310i;
                goalVariableAccessor.f11311a = solverVariable;
                int i4 = 8;
                if (i2 != -1) {
                    SolverVariable solverVariable2 = solverVariableArr[i2];
                    while (i4 >= 0) {
                        float f2 = solverVariable2.f11319j[i4];
                        float f3 = goalVariableAccessor.f11311a.f11319j[i4];
                        if (f3 != f2) {
                            if (f3 >= f2) {
                                break;
                            }
                            i2 = i3;
                            break;
                            break;
                        }
                        i4--;
                    }
                } else {
                    while (i4 >= 0) {
                        float f4 = goalVariableAccessor.f11311a.f11319j[i4];
                        if (f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            break;
                        }
                        if (f4 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            i2 = i3;
                            break;
                        }
                        i4--;
                    }
                }
            }
        }
        if (i2 == -1) {
            return null;
        }
        return this.f11308f[i2];
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final boolean e() {
        return this.f11309h == 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final void i(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        SolverVariable solverVariable = arrayRow.f11290a;
        if (solverVariable == null) {
            return;
        }
        float[] fArr = solverVariable.f11319j;
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.d;
        int iE = arrayRowVariables.e();
        for (int i2 = 0; i2 < iE; i2++) {
            SolverVariable solverVariableB = arrayRowVariables.b(i2);
            float fH = arrayRowVariables.h(i2);
            GoalVariableAccessor goalVariableAccessor = this.f11310i;
            goalVariableAccessor.f11311a = solverVariableB;
            if (solverVariableB.f11313b) {
                boolean z2 = true;
                for (int i3 = 0; i3 < 9; i3++) {
                    float[] fArr2 = goalVariableAccessor.f11311a.f11319j;
                    float f2 = (fArr[i3] * fH) + fArr2[i3];
                    fArr2[i3] = f2;
                    if (Math.abs(f2) < 1.0E-4f) {
                        goalVariableAccessor.f11311a.f11319j[i3] = 0.0f;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    PriorityGoalRow.this.k(goalVariableAccessor.f11311a);
                }
            } else {
                for (int i4 = 0; i4 < 9; i4++) {
                    float f3 = fArr[i4];
                    if (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        float f4 = f3 * fH;
                        if (Math.abs(f4) < 1.0E-4f) {
                            f4 = 0.0f;
                        }
                        goalVariableAccessor.f11311a.f11319j[i4] = f4;
                    } else {
                        goalVariableAccessor.f11311a.f11319j[i4] = 0.0f;
                    }
                }
                j(solverVariableB);
            }
            this.f11291b = (arrayRow.f11291b * fH) + this.f11291b;
        }
        k(solverVariable);
    }

    public final void j(SolverVariable solverVariable) {
        int i2;
        SolverVariable[] solverVariableArr;
        int i3 = this.f11309h + 1;
        SolverVariable[] solverVariableArr2 = this.f11308f;
        if (i3 > solverVariableArr2.length) {
            SolverVariable[] solverVariableArr3 = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
            this.f11308f = solverVariableArr3;
            this.g = (SolverVariable[]) Arrays.copyOf(solverVariableArr3, solverVariableArr3.length * 2);
        }
        SolverVariable[] solverVariableArr4 = this.f11308f;
        int i4 = this.f11309h;
        solverVariableArr4[i4] = solverVariable;
        int i5 = i4 + 1;
        this.f11309h = i5;
        if (i5 > 1 && solverVariableArr4[i4].d > solverVariable.d) {
            int i6 = 0;
            while (true) {
                i2 = this.f11309h;
                solverVariableArr = this.g;
                if (i6 >= i2) {
                    break;
                }
                solverVariableArr[i6] = this.f11308f[i6];
                i6++;
            }
            Arrays.sort(solverVariableArr, 0, i2, new AnonymousClass1());
            for (int i7 = 0; i7 < this.f11309h; i7++) {
                this.f11308f[i7] = this.g[i7];
            }
        }
        solverVariable.f11313b = true;
        solverVariable.a(this);
    }

    public final void k(SolverVariable solverVariable) {
        int i2 = 0;
        while (i2 < this.f11309h) {
            if (this.f11308f[i2] == solverVariable) {
                while (true) {
                    int i3 = this.f11309h;
                    if (i2 >= i3 - 1) {
                        this.f11309h = i3 - 1;
                        solverVariable.f11313b = false;
                        return;
                    } else {
                        SolverVariable[] solverVariableArr = this.f11308f;
                        int i4 = i2 + 1;
                        solverVariableArr[i2] = solverVariableArr[i4];
                        i2 = i4;
                    }
                }
            } else {
                i2++;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final String toString() {
        String strE = d21.e(this.f11291b, ") : ", new StringBuilder(" goal -> ("));
        for (int i2 = 0; i2 < this.f11309h; i2++) {
            SolverVariable solverVariable = this.f11308f[i2];
            GoalVariableAccessor goalVariableAccessor = this.f11310i;
            goalVariableAccessor.f11311a = solverVariable;
            strE = strE + goalVariableAccessor + " ";
        }
        return strE;
    }
}
