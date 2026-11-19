package androidx.constraintlayout.core;

import com.linkplay.medialib.ContentTree;
import defpackage.n00;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ArrayRow implements LinearSystem.Row {
    public final ArrayRowVariables d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SolverVariable f11290a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f11291b = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f11292c = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f11293e = false;

    public interface ArrayRowVariables {
        boolean a(SolverVariable solverVariable);

        SolverVariable b(int i2);

        void c(SolverVariable solverVariable, float f2, boolean z);

        void clear();

        float d(SolverVariable solverVariable, boolean z);

        int e();

        float f(ArrayRow arrayRow, boolean z);

        void g(SolverVariable solverVariable, float f2);

        float h(int i2);

        float i(SolverVariable solverVariable);

        void invert();

        void j(float f2);
    }

    public ArrayRow(Cache cache) {
        this.d = new ArrayLinkedVariables(this, cache);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable a(boolean[] zArr) {
        return f(zArr, null);
    }

    public final void b(LinearSystem linearSystem, int i2) {
        SolverVariable solverVariableJ = linearSystem.j(i2, "ep");
        ArrayRowVariables arrayRowVariables = this.d;
        arrayRowVariables.g(solverVariableJ, 1.0f);
        arrayRowVariables.g(linearSystem.j(i2, "em"), -1.0f);
    }

    public final void c(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i2) {
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            this.f11291b = i2;
        }
        ArrayRowVariables arrayRowVariables = this.d;
        if (z) {
            arrayRowVariables.g(solverVariable, 1.0f);
            arrayRowVariables.g(solverVariable2, -1.0f);
            arrayRowVariables.g(solverVariable3, -1.0f);
        } else {
            arrayRowVariables.g(solverVariable, -1.0f);
            arrayRowVariables.g(solverVariable2, 1.0f);
            arrayRowVariables.g(solverVariable3, 1.0f);
        }
    }

    public final void d(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i2) {
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            this.f11291b = i2;
        }
        ArrayRowVariables arrayRowVariables = this.d;
        if (z) {
            arrayRowVariables.g(solverVariable, 1.0f);
            arrayRowVariables.g(solverVariable2, -1.0f);
            arrayRowVariables.g(solverVariable3, 1.0f);
        } else {
            arrayRowVariables.g(solverVariable, -1.0f);
            arrayRowVariables.g(solverVariable2, 1.0f);
            arrayRowVariables.g(solverVariable3, -1.0f);
        }
    }

    public boolean e() {
        return this.f11290a == null && this.f11291b == Call.Parameters.DEFAULT_CAMERA_ZOOM && this.d.e() == 0;
    }

    public final SolverVariable f(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        ArrayRowVariables arrayRowVariables = this.d;
        int iE = arrayRowVariables.e();
        SolverVariable solverVariable2 = null;
        float f2 = 0.0f;
        for (int i2 = 0; i2 < iE; i2++) {
            float fH = arrayRowVariables.h(i2);
            if (fH < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                SolverVariable solverVariableB = arrayRowVariables.b(i2);
                if ((zArr == null || !zArr[solverVariableB.d]) && solverVariableB != solverVariable && (((type = solverVariableB.f11320k) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && fH < f2)) {
                    f2 = fH;
                    solverVariable2 = solverVariableB;
                }
            }
        }
        return solverVariable2;
    }

    public final void g(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.f11290a;
        ArrayRowVariables arrayRowVariables = this.d;
        if (solverVariable2 != null) {
            arrayRowVariables.g(solverVariable2, -1.0f);
            this.f11290a.f11315e = -1;
            this.f11290a = null;
        }
        float fD = arrayRowVariables.d(solverVariable, true) * (-1.0f);
        this.f11290a = solverVariable;
        if (fD == 1.0f) {
            return;
        }
        this.f11291b /= fD;
        arrayRowVariables.j(fD);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public final SolverVariable getKey() {
        return this.f11290a;
    }

    public final void h(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (solverVariable.f11317h) {
            ArrayRowVariables arrayRowVariables = this.d;
            float fI = arrayRowVariables.i(solverVariable);
            this.f11291b = (solverVariable.g * fI) + this.f11291b;
            arrayRowVariables.d(solverVariable, z);
            if (z) {
                solverVariable.b(this);
            }
            if (arrayRowVariables.e() == 0) {
                this.f11293e = true;
                linearSystem.f11298b = true;
            }
        }
    }

    public void i(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        ArrayRowVariables arrayRowVariables = this.d;
        float f2 = arrayRowVariables.f(arrayRow, z);
        this.f11291b = (arrayRow.f11291b * f2) + this.f11291b;
        if (z) {
            arrayRow.f11290a.b(this);
        }
        if (this.f11290a == null || arrayRowVariables.e() != 0) {
            return;
        }
        this.f11293e = true;
        linearSystem.f11298b = true;
    }

    public String toString() {
        boolean z;
        String strConcat = (this.f11290a == null ? ContentTree.ROOT_ID : "" + this.f11290a).concat(" = ");
        if (this.f11291b != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            StringBuilder sbT = n00.t(strConcat);
            sbT.append(this.f11291b);
            strConcat = sbT.toString();
            z = true;
        } else {
            z = false;
        }
        ArrayRowVariables arrayRowVariables = this.d;
        int iE = arrayRowVariables.e();
        for (int i2 = 0; i2 < iE; i2++) {
            SolverVariable solverVariableB = arrayRowVariables.b(i2);
            if (solverVariableB != null) {
                float fH = arrayRowVariables.h(i2);
                if (fH != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    String string = solverVariableB.toString();
                    if (z) {
                        if (fH > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            strConcat = strConcat.concat(" + ");
                        } else {
                            strConcat = strConcat.concat(" - ");
                            fH *= -1.0f;
                        }
                    } else if (fH < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        strConcat = strConcat.concat("- ");
                        fH *= -1.0f;
                    }
                    strConcat = fH == 1.0f ? strConcat.concat(string) : strConcat + fH + " " + string;
                    z = true;
                }
            }
        }
        return !z ? strConcat.concat("0.0") : strConcat;
    }

    public ArrayRow() {
    }
}
