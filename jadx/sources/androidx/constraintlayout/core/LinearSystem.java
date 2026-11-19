package androidx.constraintlayout.core;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import java.util.ArrayList;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class LinearSystem {
    public static boolean q = false;
    public final PriorityGoalRow d;
    public final Cache m;
    public ArrayRow p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11297a = 1000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f11298b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11299c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11300e = 32;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11301f = 32;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f11302h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean[] f11303i = new boolean[32];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11304j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11305k = 0;
    public int l = 32;
    public SolverVariable[] n = new SolverVariable[1000];
    public int o = 0;
    public ArrayRow[] g = new ArrayRow[32];

    public interface Row {
        SolverVariable a(boolean[] zArr);

        SolverVariable getKey();
    }

    public LinearSystem() {
        s();
        Cache cache = new Cache();
        this.m = cache;
        this.d = new PriorityGoalRow(cache);
        this.p = new ArrayRow(cache);
    }

    public static int n(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).f11486i;
        if (solverVariable != null) {
            return (int) (solverVariable.g + 0.5f);
        }
        return 0;
    }

    public final SolverVariable a(SolverVariable.Type type, String str) {
        Pools$SimplePool pools$SimplePool = this.m.f11295b;
        int i2 = pools$SimplePool.f11307b;
        Object obj = null;
        if (i2 > 0) {
            int i3 = i2 - 1;
            Object[] objArr = pools$SimplePool.f11306a;
            Object obj2 = objArr[i3];
            objArr[i3] = null;
            pools$SimplePool.f11307b = i3;
            obj = obj2;
        }
        SolverVariable solverVariable = (SolverVariable) obj;
        if (solverVariable == null) {
            solverVariable = new SolverVariable(type, str);
            solverVariable.f11320k = type;
        } else {
            solverVariable.c();
            solverVariable.f11320k = type;
        }
        int i4 = this.o;
        int i5 = this.f11297a;
        if (i4 >= i5) {
            int i6 = i5 * 2;
            this.f11297a = i6;
            this.n = (SolverVariable[]) Arrays.copyOf(this.n, i6);
        }
        SolverVariable[] solverVariableArr = this.n;
        int i7 = this.o;
        this.o = i7 + 1;
        solverVariableArr[i7] = solverVariable;
        return solverVariable;
    }

    public final void b(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, float f2, SolverVariable solverVariable3, SolverVariable solverVariable4, int i3, int i4) {
        ArrayRow arrayRowL = l();
        if (solverVariable2 == solverVariable3) {
            arrayRowL.d.g(solverVariable, 1.0f);
            arrayRowL.d.g(solverVariable4, 1.0f);
            arrayRowL.d.g(solverVariable2, -2.0f);
        } else {
            ArrayRow.ArrayRowVariables arrayRowVariables = arrayRowL.d;
            if (f2 == 0.5f) {
                arrayRowVariables.g(solverVariable, 1.0f);
                arrayRowL.d.g(solverVariable2, -1.0f);
                arrayRowL.d.g(solverVariable3, -1.0f);
                arrayRowL.d.g(solverVariable4, 1.0f);
                if (i2 > 0 || i3 > 0) {
                    arrayRowL.f11291b = (-i2) + i3;
                }
            } else if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                arrayRowVariables.g(solverVariable, -1.0f);
                arrayRowL.d.g(solverVariable2, 1.0f);
                arrayRowL.f11291b = i2;
            } else if (f2 >= 1.0f) {
                arrayRowVariables.g(solverVariable4, -1.0f);
                arrayRowL.d.g(solverVariable3, 1.0f);
                arrayRowL.f11291b = -i3;
            } else {
                float f3 = 1.0f - f2;
                arrayRowVariables.g(solverVariable, f3 * 1.0f);
                arrayRowL.d.g(solverVariable2, f3 * (-1.0f));
                arrayRowL.d.g(solverVariable3, (-1.0f) * f2);
                arrayRowL.d.g(solverVariable4, 1.0f * f2);
                if (i2 > 0 || i3 > 0) {
                    arrayRowL.f11291b = (i3 * f2) + ((-i2) * f3);
                }
            }
        }
        if (i4 != 8) {
            arrayRowL.b(this, i4);
        }
        c(arrayRowL);
    }

    /* JADX WARN: Code duplicated, block: B:114:0x0197  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:71:0x00e3  */
    public final void c(ArrayRow arrayRow) {
        boolean z;
        boolean z2;
        SolverVariable solverVariableF;
        boolean z3 = true;
        if (this.f11305k + 1 >= this.l || this.f11304j + 1 >= this.f11301f) {
            o();
        }
        if (arrayRow.f11293e) {
            z = false;
        } else {
            ArrayList arrayList = arrayRow.f11292c;
            if (this.g.length != 0) {
                boolean z4 = false;
                while (!z4) {
                    int iE = arrayRow.d.e();
                    for (int i2 = 0; i2 < iE; i2++) {
                        SolverVariable solverVariableB = arrayRow.d.b(i2);
                        if (solverVariableB.f11315e != -1 || solverVariableB.f11317h) {
                            arrayList.add(solverVariableB);
                        }
                    }
                    int size = arrayList.size();
                    if (size > 0) {
                        for (int i3 = 0; i3 < size; i3++) {
                            SolverVariable solverVariable = (SolverVariable) arrayList.get(i3);
                            if (solverVariable.f11317h) {
                                arrayRow.h(this, solverVariable, true);
                            } else {
                                arrayRow.i(this, this.g[solverVariable.f11315e], true);
                            }
                        }
                        arrayList.clear();
                    } else {
                        z4 = true;
                    }
                }
                if (arrayRow.f11290a != null && arrayRow.d.e() == 0) {
                    arrayRow.f11293e = true;
                    this.f11298b = true;
                }
            }
            if (arrayRow.e()) {
                return;
            }
            float f2 = arrayRow.f11291b;
            float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                arrayRow.f11291b = f2 * (-1.0f);
                arrayRow.d.invert();
            }
            int iE2 = arrayRow.d.e();
            float f4 = 0.0f;
            float f5 = 0.0f;
            SolverVariable solverVariable2 = null;
            SolverVariable solverVariable3 = null;
            int i4 = 0;
            boolean z5 = false;
            boolean z6 = false;
            while (i4 < iE2) {
                float fH = arrayRow.d.h(i4);
                SolverVariable solverVariableB2 = arrayRow.d.b(i4);
                float f6 = f3;
                if (solverVariableB2.f11320k == SolverVariable.Type.UNRESTRICTED) {
                    if (solverVariable2 == null) {
                        if (solverVariableB2.n <= 1) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        solverVariable2 = solverVariableB2;
                        f4 = fH;
                    } else {
                        if (f4 > fH) {
                            if (solverVariableB2.n > 1) {
                                z5 = false;
                            }
                            solverVariable2 = solverVariableB2;
                            f4 = fH;
                        } else if (z5 || solverVariableB2.n > 1) {
                        }
                        z5 = true;
                        solverVariable2 = solverVariableB2;
                        f4 = fH;
                    }
                } else if (solverVariable2 == null && fH < f6) {
                    if (solverVariable3 == null) {
                        if (solverVariableB2.n <= 1) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        solverVariable3 = solverVariableB2;
                        f5 = fH;
                    } else {
                        if (f5 > fH) {
                            if (solverVariableB2.n > 1) {
                                z6 = false;
                            }
                            solverVariable3 = solverVariableB2;
                            f5 = fH;
                        } else if (z6 || solverVariableB2.n > 1) {
                        }
                        z6 = true;
                        solverVariable3 = solverVariableB2;
                        f5 = fH;
                    }
                }
                i4++;
                f3 = f6;
            }
            float f7 = f3;
            if (solverVariable2 == null) {
                solverVariable2 = solverVariable3;
            }
            if (solverVariable2 == null) {
                z2 = true;
            } else {
                arrayRow.g(solverVariable2);
                z2 = false;
            }
            if (arrayRow.d.e() == 0) {
                arrayRow.f11293e = true;
            }
            if (z2) {
                if (this.f11304j + 1 >= this.f11301f) {
                    o();
                }
                SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
                int i5 = this.f11299c + 1;
                this.f11299c = i5;
                this.f11304j++;
                solverVariableA.d = i5;
                Cache cache = this.m;
                cache.f11296c[i5] = solverVariableA;
                arrayRow.f11290a = solverVariableA;
                int i6 = this.f11305k;
                h(arrayRow);
                if (this.f11305k == i6 + 1) {
                    ArrayRow arrayRow2 = this.p;
                    arrayRow2.f11290a = null;
                    arrayRow2.d.clear();
                    for (int i7 = 0; i7 < arrayRow.d.e(); i7++) {
                        arrayRow2.d.c(arrayRow.d.b(i7), arrayRow.d.h(i7), true);
                    }
                    r(this.p);
                    if (solverVariableA.f11315e == -1) {
                        if (arrayRow.f11290a == solverVariableA && (solverVariableF = arrayRow.f(null, solverVariableA)) != null) {
                            arrayRow.g(solverVariableF);
                        }
                        if (!arrayRow.f11293e) {
                            arrayRow.f11290a.e(this, arrayRow);
                        }
                        cache.f11294a.a(arrayRow);
                        this.f11305k--;
                    }
                } else {
                    z3 = false;
                }
            } else {
                z3 = false;
            }
            SolverVariable solverVariable4 = arrayRow.f11290a;
            if (solverVariable4 == null) {
                return;
            }
            if (solverVariable4.f11320k != SolverVariable.Type.UNRESTRICTED && arrayRow.f11291b < f7) {
                return;
            } else {
                z = z3;
            }
        }
        if (z) {
            return;
        }
        h(arrayRow);
    }

    public final void d(SolverVariable solverVariable, int i2) {
        int i3 = solverVariable.f11315e;
        if (i3 == -1) {
            solverVariable.d(this, i2);
            for (int i4 = 0; i4 < this.f11299c + 1; i4++) {
                SolverVariable solverVariable2 = this.m.f11296c[i4];
            }
            return;
        }
        if (i3 == -1) {
            ArrayRow arrayRowL = l();
            arrayRowL.f11290a = solverVariable;
            float f2 = i2;
            solverVariable.g = f2;
            arrayRowL.f11291b = f2;
            arrayRowL.f11293e = true;
            c(arrayRowL);
            return;
        }
        ArrayRow arrayRow = this.g[i3];
        if (arrayRow.f11293e) {
            arrayRow.f11291b = i2;
            return;
        }
        if (arrayRow.d.e() == 0) {
            arrayRow.f11293e = true;
            arrayRow.f11291b = i2;
            return;
        }
        ArrayRow arrayRowL2 = l();
        if (i2 < 0) {
            arrayRowL2.f11291b = i2 * (-1);
            arrayRowL2.d.g(solverVariable, 1.0f);
        } else {
            arrayRowL2.f11291b = i2;
            arrayRowL2.d.g(solverVariable, -1.0f);
        }
        c(arrayRowL2);
    }

    public final void e(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, int i3) {
        if (i3 == 8 && solverVariable2.f11317h && solverVariable.f11315e == -1) {
            solverVariable.d(this, solverVariable2.g + i2);
            return;
        }
        ArrayRow arrayRowL = l();
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            arrayRowL.f11291b = i2;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRowL.d;
        if (z) {
            arrayRowVariables.g(solverVariable, 1.0f);
            arrayRowL.d.g(solverVariable2, -1.0f);
        } else {
            arrayRowVariables.g(solverVariable, -1.0f);
            arrayRowL.d.g(solverVariable2, 1.0f);
        }
        if (i3 != 8) {
            arrayRowL.b(this, i3);
        }
        c(arrayRowL);
    }

    public final void f(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, int i3) {
        ArrayRow arrayRowL = l();
        SolverVariable solverVariableM = m();
        solverVariableM.f11316f = 0;
        arrayRowL.c(solverVariable, solverVariable2, solverVariableM, i2);
        if (i3 != 8) {
            arrayRowL.d.g(j(i3, null), (int) (arrayRowL.d.i(solverVariableM) * (-1.0f)));
        }
        c(arrayRowL);
    }

    public final void g(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, int i3) {
        ArrayRow arrayRowL = l();
        SolverVariable solverVariableM = m();
        solverVariableM.f11316f = 0;
        arrayRowL.d(solverVariable, solverVariable2, solverVariableM, i2);
        if (i3 != 8) {
            arrayRowL.d.g(j(i3, null), (int) (arrayRowL.d.i(solverVariableM) * (-1.0f)));
        }
        c(arrayRowL);
    }

    public final void h(ArrayRow arrayRow) {
        int i2;
        if (arrayRow.f11293e) {
            arrayRow.f11290a.d(this, arrayRow.f11291b);
        } else {
            ArrayRow[] arrayRowArr = this.g;
            int i3 = this.f11305k;
            arrayRowArr[i3] = arrayRow;
            SolverVariable solverVariable = arrayRow.f11290a;
            solverVariable.f11315e = i3;
            this.f11305k = i3 + 1;
            solverVariable.e(this, arrayRow);
        }
        if (this.f11298b) {
            int i4 = 0;
            while (i4 < this.f11305k) {
                if (this.g[i4] == null) {
                    System.out.println("WTF");
                }
                ArrayRow arrayRow2 = this.g[i4];
                if (arrayRow2 != null && arrayRow2.f11293e) {
                    arrayRow2.f11290a.d(this, arrayRow2.f11291b);
                    this.m.f11294a.a(arrayRow2);
                    this.g[i4] = null;
                    int i5 = i4 + 1;
                    int i6 = i5;
                    while (true) {
                        i2 = this.f11305k;
                        if (i5 >= i2) {
                            break;
                        }
                        ArrayRow[] arrayRowArr2 = this.g;
                        int i7 = i5 - 1;
                        ArrayRow arrayRow3 = arrayRowArr2[i5];
                        arrayRowArr2[i7] = arrayRow3;
                        SolverVariable solverVariable2 = arrayRow3.f11290a;
                        if (solverVariable2.f11315e == i5) {
                            solverVariable2.f11315e = i7;
                        }
                        i6 = i5;
                        i5++;
                    }
                    if (i6 < i2) {
                        this.g[i6] = null;
                    }
                    this.f11305k = i2 - 1;
                    i4--;
                }
                i4++;
            }
            this.f11298b = false;
        }
    }

    public final void i() {
        for (int i2 = 0; i2 < this.f11305k; i2++) {
            ArrayRow arrayRow = this.g[i2];
            arrayRow.f11290a.g = arrayRow.f11291b;
        }
    }

    public final SolverVariable j(int i2, String str) {
        if (this.f11304j + 1 >= this.f11301f) {
            o();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.ERROR, str);
        float[] fArr = solverVariableA.f11319j;
        int i3 = this.f11299c + 1;
        this.f11299c = i3;
        this.f11304j++;
        solverVariableA.d = i3;
        solverVariableA.f11316f = i2;
        this.m.f11296c[i3] = solverVariableA;
        PriorityGoalRow priorityGoalRow = this.d;
        priorityGoalRow.f11310i.f11311a = solverVariableA;
        Arrays.fill(fArr, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        fArr[solverVariableA.f11316f] = 1.0f;
        priorityGoalRow.j(solverVariableA);
        return solverVariableA;
    }

    public final SolverVariable k(Object obj) {
        if (obj == null) {
            return null;
        }
        if (this.f11304j + 1 >= this.f11301f) {
            o();
        }
        if (!(obj instanceof ConstraintAnchor)) {
            return null;
        }
        ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
        SolverVariable solverVariable = constraintAnchor.f11486i;
        if (solverVariable == null) {
            constraintAnchor.k();
            solverVariable = constraintAnchor.f11486i;
        }
        int i2 = solverVariable.d;
        Cache cache = this.m;
        if (i2 != -1 && i2 <= this.f11299c && cache.f11296c[i2] != null) {
            return solverVariable;
        }
        if (i2 != -1) {
            solverVariable.c();
        }
        int i3 = this.f11299c + 1;
        this.f11299c = i3;
        this.f11304j++;
        solverVariable.d = i3;
        solverVariable.f11320k = SolverVariable.Type.UNRESTRICTED;
        cache.f11296c[i3] = solverVariable;
        return solverVariable;
    }

    public final ArrayRow l() {
        Object obj;
        Cache cache = this.m;
        Pools$SimplePool pools$SimplePool = cache.f11294a;
        int i2 = pools$SimplePool.f11307b;
        if (i2 > 0) {
            int i3 = i2 - 1;
            Object[] objArr = pools$SimplePool.f11306a;
            obj = objArr[i3];
            objArr[i3] = null;
            pools$SimplePool.f11307b = i3;
        } else {
            obj = null;
        }
        ArrayRow arrayRow = (ArrayRow) obj;
        if (arrayRow == null) {
            return new ArrayRow(cache);
        }
        arrayRow.f11290a = null;
        arrayRow.d.clear();
        arrayRow.f11291b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        arrayRow.f11293e = false;
        return arrayRow;
    }

    public final SolverVariable m() {
        if (this.f11304j + 1 >= this.f11301f) {
            o();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
        int i2 = this.f11299c + 1;
        this.f11299c = i2;
        this.f11304j++;
        solverVariableA.d = i2;
        this.m.f11296c[i2] = solverVariableA;
        return solverVariableA;
    }

    public final void o() {
        int i2 = this.f11300e * 2;
        this.f11300e = i2;
        this.g = (ArrayRow[]) Arrays.copyOf(this.g, i2);
        Cache cache = this.m;
        cache.f11296c = (SolverVariable[]) Arrays.copyOf(cache.f11296c, this.f11300e);
        int i3 = this.f11300e;
        this.f11303i = new boolean[i3];
        this.f11301f = i3;
        this.l = i3;
    }

    public final void p() {
        PriorityGoalRow priorityGoalRow = this.d;
        if (priorityGoalRow.e()) {
            i();
            return;
        }
        if (!this.f11302h) {
            q(priorityGoalRow);
            return;
        }
        for (int i2 = 0; i2 < this.f11305k; i2++) {
            if (!this.g[i2].f11293e) {
                q(priorityGoalRow);
                return;
            }
        }
        i();
    }

    public final void q(PriorityGoalRow priorityGoalRow) {
        for (int i2 = 0; i2 < this.f11305k; i2++) {
            ArrayRow arrayRow = this.g[i2];
            if (arrayRow.f11290a.f11320k != SolverVariable.Type.UNRESTRICTED) {
                float f2 = arrayRow.f11291b;
                float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    boolean z = false;
                    int i3 = 0;
                    while (!z) {
                        i3++;
                        float f4 = Float.MAX_VALUE;
                        int i4 = -1;
                        int i5 = -1;
                        int i6 = 0;
                        int i7 = 0;
                        while (i6 < this.f11305k) {
                            ArrayRow arrayRow2 = this.g[i6];
                            if (arrayRow2.f11290a.f11320k != SolverVariable.Type.UNRESTRICTED && !arrayRow2.f11293e && arrayRow2.f11291b < f3) {
                                int iE = arrayRow2.d.e();
                                int i8 = 0;
                                while (i8 < iE) {
                                    SolverVariable solverVariableB = arrayRow2.d.b(i8);
                                    float fI = arrayRow2.d.i(solverVariableB);
                                    if (fI > f3) {
                                        for (int i9 = 0; i9 < 9; i9++) {
                                            float f5 = solverVariableB.f11318i[i9] / fI;
                                            if ((f5 < f4 && i9 == i7) || i9 > i7) {
                                                i7 = i9;
                                                i5 = solverVariableB.d;
                                                i4 = i6;
                                                f4 = f5;
                                            }
                                        }
                                    }
                                    i8++;
                                    f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                            }
                            i6++;
                            f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        }
                        if (i4 != -1) {
                            ArrayRow arrayRow3 = this.g[i4];
                            arrayRow3.f11290a.f11315e = -1;
                            arrayRow3.g(this.m.f11296c[i5]);
                            SolverVariable solverVariable = arrayRow3.f11290a;
                            solverVariable.f11315e = i4;
                            solverVariable.e(this, arrayRow3);
                        } else {
                            z = true;
                        }
                        if (i3 > this.f11304j / 2) {
                            z = true;
                        }
                        f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                    break;
                }
            }
        }
        r(priorityGoalRow);
        i();
    }

    public final void r(Row row) {
        for (int i2 = 0; i2 < this.f11304j; i2++) {
            this.f11303i[i2] = false;
        }
        boolean z = false;
        int i3 = 0;
        while (!z) {
            i3++;
            if (i3 >= this.f11304j * 2) {
                return;
            }
            if (row.getKey() != null) {
                this.f11303i[row.getKey().d] = true;
            }
            SolverVariable solverVariableA = row.a(this.f11303i);
            if (solverVariableA != null) {
                boolean[] zArr = this.f11303i;
                int i4 = solverVariableA.d;
                if (zArr[i4]) {
                    return;
                } else {
                    zArr[i4] = true;
                }
            }
            if (solverVariableA != null) {
                float f2 = Float.MAX_VALUE;
                int i5 = -1;
                for (int i6 = 0; i6 < this.f11305k; i6++) {
                    ArrayRow arrayRow = this.g[i6];
                    if (arrayRow.f11290a.f11320k != SolverVariable.Type.UNRESTRICTED && !arrayRow.f11293e && arrayRow.d.a(solverVariableA)) {
                        float fI = arrayRow.d.i(solverVariableA);
                        if (fI < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            float f3 = (-arrayRow.f11291b) / fI;
                            if (f3 < f2) {
                                i5 = i6;
                                f2 = f3;
                            }
                        }
                    }
                }
                if (i5 > -1) {
                    ArrayRow arrayRow2 = this.g[i5];
                    arrayRow2.f11290a.f11315e = -1;
                    arrayRow2.g(solverVariableA);
                    SolverVariable solverVariable = arrayRow2.f11290a;
                    solverVariable.f11315e = i5;
                    solverVariable.e(this, arrayRow2);
                }
            } else {
                z = true;
            }
        }
    }

    public final void s() {
        for (int i2 = 0; i2 < this.f11305k; i2++) {
            ArrayRow arrayRow = this.g[i2];
            if (arrayRow != null) {
                this.m.f11294a.a(arrayRow);
            }
            this.g[i2] = null;
        }
    }

    public final void t() {
        Cache cache;
        int i2 = 0;
        while (true) {
            cache = this.m;
            SolverVariable[] solverVariableArr = cache.f11296c;
            if (i2 >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i2];
            if (solverVariable != null) {
                solverVariable.c();
            }
            i2++;
        }
        Pools$SimplePool pools$SimplePool = cache.f11295b;
        SolverVariable[] solverVariableArr2 = this.n;
        int length = this.o;
        pools$SimplePool.getClass();
        if (length > solverVariableArr2.length) {
            length = solverVariableArr2.length;
        }
        for (int i3 = 0; i3 < length; i3++) {
            SolverVariable solverVariable2 = solverVariableArr2[i3];
            int i4 = pools$SimplePool.f11307b;
            Object[] objArr = pools$SimplePool.f11306a;
            if (i4 < objArr.length) {
                objArr[i4] = solverVariable2;
                pools$SimplePool.f11307b = i4 + 1;
            }
        }
        this.o = 0;
        Arrays.fill(cache.f11296c, (Object) null);
        this.f11299c = 0;
        PriorityGoalRow priorityGoalRow = this.d;
        priorityGoalRow.f11309h = 0;
        priorityGoalRow.f11291b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f11304j = 1;
        for (int i5 = 0; i5 < this.f11305k; i5++) {
            ArrayRow arrayRow = this.g[i5];
        }
        s();
        this.f11305k = 0;
        this.p = new ArrayRow(cache);
    }
}
