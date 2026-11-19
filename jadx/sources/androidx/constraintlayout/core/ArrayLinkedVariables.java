package androidx.constraintlayout.core;

import defpackage.d21;
import defpackage.n00;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ArrayLinkedVariables implements ArrayRow.ArrayRowVariables {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayRow f11283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Cache f11284c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11282a = 0;
    public int d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f11285e = new int[8];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f11286f = new int[8];
    public float[] g = new float[8];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11287h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11288i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f11289j = false;

    public ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.f11283b = arrayRow;
        this.f11284c = cache;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final boolean a(SolverVariable solverVariable) {
        int i2 = this.f11287h;
        if (i2 != -1) {
            for (int i3 = 0; i2 != -1 && i3 < this.f11282a; i3++) {
                if (this.f11285e[i2] == solverVariable.d) {
                    return true;
                }
                i2 = this.f11286f[i2];
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final SolverVariable b(int i2) {
        int i3 = this.f11287h;
        for (int i4 = 0; i3 != -1 && i4 < this.f11282a; i4++) {
            if (i4 == i2) {
                return this.f11284c.f11296c[this.f11285e[i3]];
            }
            i3 = this.f11286f[i3];
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void c(SolverVariable solverVariable, float f2, boolean z) {
        if (f2 <= -0.001f || f2 >= 0.001f) {
            int i2 = this.f11287h;
            ArrayRow arrayRow = this.f11283b;
            if (i2 == -1) {
                this.f11287h = 0;
                this.g[0] = f2;
                this.f11285e[0] = solverVariable.d;
                this.f11286f[0] = -1;
                solverVariable.n++;
                solverVariable.a(arrayRow);
                this.f11282a++;
                if (this.f11289j) {
                    return;
                }
                int i3 = this.f11288i + 1;
                this.f11288i = i3;
                int[] iArr = this.f11285e;
                if (i3 >= iArr.length) {
                    this.f11289j = true;
                    this.f11288i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i4 = -1;
            for (int i5 = 0; i2 != -1 && i5 < this.f11282a; i5++) {
                int i6 = this.f11285e[i2];
                int i7 = solverVariable.d;
                if (i6 == i7) {
                    float[] fArr = this.g;
                    float f3 = fArr[i2] + f2;
                    if (f3 > -0.001f && f3 < 0.001f) {
                        f3 = 0.0f;
                    }
                    fArr[i2] = f3;
                    if (f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        int i8 = this.f11287h;
                        int[] iArr2 = this.f11286f;
                        if (i2 == i8) {
                            this.f11287h = iArr2[i2];
                        } else {
                            iArr2[i4] = iArr2[i2];
                        }
                        if (z) {
                            solverVariable.b(arrayRow);
                        }
                        if (this.f11289j) {
                            this.f11288i = i2;
                        }
                        solverVariable.n--;
                        this.f11282a--;
                        return;
                    }
                    return;
                }
                if (i6 < i7) {
                    i4 = i2;
                }
                i2 = this.f11286f[i2];
            }
            int length = this.f11288i;
            int i9 = length + 1;
            if (this.f11289j) {
                int[] iArr3 = this.f11285e;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i9;
            }
            int[] iArr4 = this.f11285e;
            if (length >= iArr4.length && this.f11282a < iArr4.length) {
                int i10 = 0;
                while (true) {
                    int[] iArr5 = this.f11285e;
                    if (i10 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i10] == -1) {
                        length = i10;
                        break;
                    }
                    i10++;
                }
            }
            int[] iArr6 = this.f11285e;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i11 = this.d * 2;
                this.d = i11;
                this.f11289j = false;
                this.f11288i = length - 1;
                this.g = Arrays.copyOf(this.g, i11);
                this.f11285e = Arrays.copyOf(this.f11285e, this.d);
                this.f11286f = Arrays.copyOf(this.f11286f, this.d);
            }
            this.f11285e[length] = solverVariable.d;
            this.g[length] = f2;
            int[] iArr7 = this.f11286f;
            if (i4 != -1) {
                iArr7[length] = iArr7[i4];
                iArr7[i4] = length;
            } else {
                iArr7[length] = this.f11287h;
                this.f11287h = length;
            }
            solverVariable.n++;
            solverVariable.a(arrayRow);
            this.f11282a++;
            if (!this.f11289j) {
                this.f11288i++;
            }
            int i12 = this.f11288i;
            int[] iArr8 = this.f11285e;
            if (i12 >= iArr8.length) {
                this.f11289j = true;
                this.f11288i = iArr8.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void clear() {
        int i2 = this.f11287h;
        for (int i3 = 0; i2 != -1 && i3 < this.f11282a; i3++) {
            SolverVariable solverVariable = this.f11284c.f11296c[this.f11285e[i2]];
            if (solverVariable != null) {
                solverVariable.b(this.f11283b);
            }
            i2 = this.f11286f[i2];
        }
        this.f11287h = -1;
        this.f11288i = -1;
        this.f11289j = false;
        this.f11282a = 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float d(SolverVariable solverVariable, boolean z) {
        int i2 = this.f11287h;
        if (i2 == -1) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        int i3 = 0;
        int i4 = -1;
        while (i2 != -1 && i3 < this.f11282a) {
            if (this.f11285e[i2] == solverVariable.d) {
                int i5 = this.f11287h;
                int[] iArr = this.f11286f;
                if (i2 == i5) {
                    this.f11287h = iArr[i2];
                } else {
                    iArr[i4] = iArr[i2];
                }
                if (z) {
                    solverVariable.b(this.f11283b);
                }
                solverVariable.n--;
                this.f11282a--;
                this.f11285e[i2] = -1;
                if (this.f11289j) {
                    this.f11288i = i2;
                }
                return this.g[i2];
            }
            i3++;
            i4 = i2;
            i2 = this.f11286f[i2];
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final int e() {
        return this.f11282a;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float f(ArrayRow arrayRow, boolean z) {
        float fI = i(arrayRow.f11290a);
        d(arrayRow.f11290a, z);
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.d;
        int iE = arrayRowVariables.e();
        for (int i2 = 0; i2 < iE; i2++) {
            SolverVariable solverVariableB = arrayRowVariables.b(i2);
            c(solverVariableB, arrayRowVariables.i(solverVariableB) * fI, z);
        }
        return fI;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void g(SolverVariable solverVariable, float f2) {
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            d(solverVariable, true);
            return;
        }
        int i2 = this.f11287h;
        ArrayRow arrayRow = this.f11283b;
        if (i2 == -1) {
            this.f11287h = 0;
            this.g[0] = f2;
            this.f11285e[0] = solverVariable.d;
            this.f11286f[0] = -1;
            solverVariable.n++;
            solverVariable.a(arrayRow);
            this.f11282a++;
            if (this.f11289j) {
                return;
            }
            int i3 = this.f11288i + 1;
            this.f11288i = i3;
            int[] iArr = this.f11285e;
            if (i3 >= iArr.length) {
                this.f11289j = true;
                this.f11288i = iArr.length - 1;
                return;
            }
            return;
        }
        int i4 = -1;
        for (int i5 = 0; i2 != -1 && i5 < this.f11282a; i5++) {
            int i6 = this.f11285e[i2];
            int i7 = solverVariable.d;
            if (i6 == i7) {
                this.g[i2] = f2;
                return;
            }
            if (i6 < i7) {
                i4 = i2;
            }
            i2 = this.f11286f[i2];
        }
        int length = this.f11288i;
        int i8 = length + 1;
        if (this.f11289j) {
            int[] iArr2 = this.f11285e;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i8;
        }
        int[] iArr3 = this.f11285e;
        if (length >= iArr3.length && this.f11282a < iArr3.length) {
            int i9 = 0;
            while (true) {
                int[] iArr4 = this.f11285e;
                if (i9 >= iArr4.length) {
                    break;
                }
                if (iArr4[i9] == -1) {
                    length = i9;
                    break;
                }
                i9++;
            }
        }
        int[] iArr5 = this.f11285e;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i10 = this.d * 2;
            this.d = i10;
            this.f11289j = false;
            this.f11288i = length - 1;
            this.g = Arrays.copyOf(this.g, i10);
            this.f11285e = Arrays.copyOf(this.f11285e, this.d);
            this.f11286f = Arrays.copyOf(this.f11286f, this.d);
        }
        this.f11285e[length] = solverVariable.d;
        this.g[length] = f2;
        int[] iArr6 = this.f11286f;
        if (i4 != -1) {
            iArr6[length] = iArr6[i4];
            iArr6[i4] = length;
        } else {
            iArr6[length] = this.f11287h;
            this.f11287h = length;
        }
        solverVariable.n++;
        solverVariable.a(arrayRow);
        int i11 = this.f11282a + 1;
        this.f11282a = i11;
        if (!this.f11289j) {
            this.f11288i++;
        }
        int[] iArr7 = this.f11285e;
        if (i11 >= iArr7.length) {
            this.f11289j = true;
        }
        if (this.f11288i >= iArr7.length) {
            this.f11289j = true;
            this.f11288i = iArr7.length - 1;
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float h(int i2) {
        int i3 = this.f11287h;
        for (int i4 = 0; i3 != -1 && i4 < this.f11282a; i4++) {
            if (i4 == i2) {
                return this.g[i3];
            }
            i3 = this.f11286f[i3];
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float i(SolverVariable solverVariable) {
        int i2 = this.f11287h;
        for (int i3 = 0; i2 != -1 && i3 < this.f11282a; i3++) {
            if (this.f11285e[i2] == solverVariable.d) {
                return this.g[i2];
            }
            i2 = this.f11286f[i2];
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void invert() {
        int i2 = this.f11287h;
        for (int i3 = 0; i2 != -1 && i3 < this.f11282a; i3++) {
            float[] fArr = this.g;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f11286f[i2];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void j(float f2) {
        int i2 = this.f11287h;
        for (int i3 = 0; i2 != -1 && i3 < this.f11282a; i3++) {
            float[] fArr = this.g;
            fArr[i2] = fArr[i2] / f2;
            i2 = this.f11286f[i2];
        }
    }

    public final String toString() {
        int i2 = this.f11287h;
        String string = "";
        for (int i3 = 0; i2 != -1 && i3 < this.f11282a; i3++) {
            StringBuilder sbT = n00.t(d21.e(this.g[i2], " : ", n00.t(string.concat(" -> "))));
            sbT.append(this.f11284c.f11296c[this.f11285e[i2]]);
            string = sbT.toString();
            i2 = this.f11286f[i2];
        }
        return string;
    }
}
