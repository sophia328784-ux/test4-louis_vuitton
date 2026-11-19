package androidx.constraintlayout.core.utils;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import defpackage.x5;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class GridCore extends VirtualLayout {
    public ConstraintWidgetContainer J0;
    public ConstraintWidget[] K0;
    public int M0;
    public int N0;
    public int O0;
    public int P0;
    public float Q0;
    public float R0;
    public String S0;
    public String T0;
    public String U0;
    public String V0;
    public int W0;
    public boolean[][] Y0;
    public int[][] a1;
    public int b1;
    public int[][] c1;
    public boolean L0 = false;
    public int X0 = 0;
    public final HashSet Z0 = new HashSet();
    public int d1 = 0;

    public GridCore(int i2, int i3) {
        this.N0 = i2;
        this.P0 = i3;
        if (i2 > 50) {
            this.N0 = 3;
        }
        if (i3 > 50) {
            this.P0 = 3;
        }
        n0();
        i0();
    }

    public static void c0(ConstraintWidget constraintWidget) {
        constraintWidget.p0[1] = -1.0f;
        constraintWidget.M.j();
        constraintWidget.O.j();
        constraintWidget.P.j();
    }

    public static float[] m0(int i2, String str) {
        if (str == null || str.trim().isEmpty()) {
            return null;
        }
        String[] strArrSplit = str.split(",");
        float[] fArr = new float[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 < strArrSplit.length) {
                try {
                    fArr[i3] = Float.parseFloat(strArrSplit[i3]);
                } catch (Exception e2) {
                    System.err.println("Error parsing `" + strArrSplit[i3] + "`: " + e2.getMessage());
                    fArr[i3] = 1.0f;
                }
            } else {
                fArr[i3] = 1.0f;
            }
        }
        return fArr;
    }

    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public final void a0(int i2, int i3, int i4, int i5) {
        int[][] iArrL0;
        this.J0 = (ConstraintWidgetContainer) this.X;
        if (this.M0 >= 1 && this.O0 >= 1) {
            this.X0 = 0;
            String str = this.V0;
            if (str != null && !str.trim().isEmpty() && (iArrL0 = l0(this.V0, false)) != null) {
                g0(iArrL0);
            }
            String str2 = this.U0;
            if (str2 != null && !str2.trim().isEmpty()) {
                this.c1 = l0(this.U0, true);
            }
            int iMax = Math.max(this.M0, this.O0);
            ConstraintWidget[] constraintWidgetArr = this.K0;
            if (constraintWidgetArr == null) {
                this.K0 = new ConstraintWidget[iMax];
                int i6 = 0;
                while (true) {
                    ConstraintWidget[] constraintWidgetArr2 = this.K0;
                    if (i6 >= constraintWidgetArr2.length) {
                        break;
                    }
                    ConstraintWidget constraintWidget = new ConstraintWidget();
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.W;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    dimensionBehaviourArr[0] = dimensionBehaviour;
                    dimensionBehaviourArr[1] = dimensionBehaviour;
                    constraintWidget.l = String.valueOf(constraintWidget.hashCode());
                    constraintWidgetArr2[i6] = constraintWidget;
                    i6++;
                }
            } else if (iMax != constraintWidgetArr.length) {
                ConstraintWidget[] constraintWidgetArr3 = new ConstraintWidget[iMax];
                for (int i7 = 0; i7 < iMax; i7++) {
                    ConstraintWidget[] constraintWidgetArr4 = this.K0;
                    if (i7 < constraintWidgetArr4.length) {
                        constraintWidgetArr3[i7] = constraintWidgetArr4[i7];
                    } else {
                        ConstraintWidget constraintWidget2 = new ConstraintWidget();
                        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidget2.W;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        dimensionBehaviourArr2[0] = dimensionBehaviour2;
                        dimensionBehaviourArr2[1] = dimensionBehaviour2;
                        constraintWidget2.l = String.valueOf(constraintWidget2.hashCode());
                        constraintWidgetArr3[i7] = constraintWidget2;
                    }
                }
                while (true) {
                    ConstraintWidget[] constraintWidgetArr5 = this.K0;
                    if (iMax >= constraintWidgetArr5.length) {
                        break;
                    }
                    ConstraintWidget constraintWidget3 = constraintWidgetArr5[iMax];
                    this.J0.w0.remove(constraintWidget3);
                    constraintWidget3.H();
                    iMax++;
                }
                this.K0 = constraintWidgetArr3;
            }
            int[][] iArr = this.c1;
            if (iArr != null) {
                h0(iArr);
            }
        }
        ConstraintWidgetContainer constraintWidgetContainer = this.J0;
        ConstraintWidget[] constraintWidgetArr6 = this.K0;
        constraintWidgetContainer.getClass();
        for (ConstraintWidget constraintWidget4 : constraintWidgetArr6) {
            constraintWidgetContainer.a(constraintWidget4);
        }
    }

    public final void d0(ConstraintWidget constraintWidget, int i2, int i3, int i4, int i5) {
        constraintWidget.L.a(this.K0[i3].L, 0);
        constraintWidget.M.a(this.K0[i2].M, 0);
        constraintWidget.N.a(this.K0[(i3 + i5) - 1].N, 0);
        constraintWidget.O.a(this.K0[(i2 + i4) - 1].O, 0);
    }

    public final int e0(int i2) {
        return this.W0 == 1 ? i2 / this.M0 : i2 % this.O0;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x013d  */
    /* JADX WARN: Code duplicated, block: B:75:0x01b4  */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void f(LinearSystem linearSystem, boolean z) {
        int i2;
        int i3;
        GridCore gridCore;
        int[][] iArr;
        int i4;
        super.f(linearSystem, z);
        int iMax = Math.max(this.M0, this.O0);
        ConstraintWidget constraintWidget = this.K0[0];
        float[] fArrM0 = m0(this.M0, this.S0);
        int i5 = this.M0;
        ConstraintAnchor constraintAnchor = this.O;
        ConstraintAnchor constraintAnchor2 = this.M;
        if (i5 == 1) {
            c0(constraintWidget);
            constraintWidget.M.a(constraintAnchor2, 0);
            constraintWidget.O.a(constraintAnchor, 0);
        } else {
            int i6 = 0;
            while (true) {
                i2 = this.M0;
                if (i6 >= i2) {
                    break;
                }
                ConstraintWidget constraintWidget2 = this.K0[i6];
                c0(constraintWidget2);
                ConstraintAnchor constraintAnchor3 = constraintWidget2.M;
                if (fArrM0 != null) {
                    constraintWidget2.p0[1] = fArrM0[i6];
                }
                if (i6 > 0) {
                    constraintAnchor3.a(this.K0[i6 - 1].O, 0);
                } else {
                    constraintAnchor3.a(constraintAnchor2, 0);
                }
                int i7 = this.M0 - 1;
                ConstraintAnchor constraintAnchor4 = constraintWidget2.O;
                if (i6 < i7) {
                    constraintAnchor4.a(this.K0[i6 + 1].M, 0);
                } else {
                    constraintAnchor4.a(constraintAnchor, 0);
                }
                if (i6 > 0) {
                    constraintAnchor3.g = (int) this.R0;
                }
                i6++;
            }
            while (i2 < iMax) {
                ConstraintWidget constraintWidget3 = this.K0[i2];
                c0(constraintWidget3);
                constraintWidget3.M.a(constraintAnchor2, 0);
                constraintWidget3.O.a(constraintAnchor, 0);
                i2++;
            }
        }
        int iMax2 = Math.max(this.M0, this.O0);
        ConstraintWidget constraintWidget4 = this.K0[0];
        float[] fArrM1 = m0(this.O0, this.T0);
        int i8 = this.O0;
        ConstraintAnchor constraintAnchor5 = this.N;
        ConstraintAnchor constraintAnchor6 = this.L;
        if (i8 == 1) {
            float[] fArr = constraintWidget4.p0;
            ConstraintAnchor constraintAnchor7 = constraintWidget4.N;
            ConstraintAnchor constraintAnchor8 = constraintWidget4.L;
            fArr[0] = -1.0f;
            constraintAnchor8.j();
            constraintAnchor7.j();
            constraintAnchor8.a(constraintAnchor6, 0);
            constraintAnchor7.a(constraintAnchor5, 0);
        } else {
            int i9 = 0;
            while (true) {
                i3 = this.O0;
                if (i9 >= i3) {
                    break;
                }
                ConstraintWidget constraintWidget5 = this.K0[i9];
                float[] fArr2 = constraintWidget5.p0;
                ConstraintAnchor constraintAnchor9 = constraintWidget5.N;
                ConstraintAnchor constraintAnchor10 = constraintWidget5.L;
                fArr2[0] = -1.0f;
                constraintAnchor10.j();
                constraintAnchor9.j();
                if (fArrM1 != null) {
                    constraintWidget5.p0[0] = fArrM1[i9];
                }
                if (i9 > 0) {
                    constraintAnchor10.a(this.K0[i9 - 1].N, 0);
                } else {
                    constraintAnchor10.a(constraintAnchor6, 0);
                }
                if (i9 < this.O0 - 1) {
                    constraintAnchor9.a(this.K0[i9 + 1].L, 0);
                } else {
                    constraintAnchor9.a(constraintAnchor5, 0);
                }
                if (i9 > 0) {
                    constraintAnchor10.g = (int) this.Q0;
                }
                i9++;
            }
            while (i3 < iMax2) {
                ConstraintWidget constraintWidget6 = this.K0[i3];
                float[] fArr3 = constraintWidget6.p0;
                ConstraintAnchor constraintAnchor11 = constraintWidget6.N;
                ConstraintAnchor constraintAnchor12 = constraintWidget6.L;
                fArr3[0] = -1.0f;
                constraintAnchor12.j();
                constraintAnchor11.j();
                constraintAnchor12.a(constraintAnchor6, 0);
                constraintAnchor11.a(constraintAnchor5, 0);
                i3++;
            }
        }
        int i10 = 0;
        while (i10 < this.x0) {
            if (this.Z0.contains(this.w0[i10].l)) {
                gridCore = this;
            } else {
                boolean z2 = false;
                int i11 = 0;
                while (!z2) {
                    i11 = this.X0;
                    if (i11 >= this.M0 * this.O0) {
                        i11 = -1;
                        break;
                    }
                    int iF0 = this.f0(i11);
                    int iE0 = this.e0(this.X0);
                    boolean[] zArr = this.Y0[iF0];
                    if (zArr[iE0]) {
                        zArr[iE0] = false;
                        z2 = true;
                    }
                    this.X0++;
                }
                int iF1 = this.f0(i11);
                int iE1 = this.e0(i11);
                if (i11 == -1) {
                    return;
                }
                if ((this.b1 & 2) <= 0 || (iArr = this.c1) == null || (i4 = this.d1) >= iArr.length) {
                    gridCore = this;
                    gridCore.d0(gridCore.w0[i10], iF1, iE1, 1, 1);
                } else {
                    int[] iArr2 = iArr[i4];
                    if (iArr2[0] == i11) {
                        this.Y0[iF1][iE1] = true;
                        if (this.k0(iF1, iE1, iArr2[1], iArr2[2])) {
                            ConstraintWidget constraintWidget7 = this.w0[i10];
                            int[] iArr3 = this.c1[this.d1];
                            gridCore = this;
                            gridCore.d0(constraintWidget7, iF1, iE1, iArr3[1], iArr3[2]);
                            gridCore.d1++;
                        } else {
                            gridCore = this;
                        }
                    } else {
                        gridCore = this;
                        gridCore.d0(gridCore.w0[i10], iF1, iE1, 1, 1);
                    }
                }
            }
            i10++;
            this = gridCore;
        }
    }

    public final int f0(int i2) {
        return this.W0 == 1 ? i2 % this.M0 : i2 / this.O0;
    }

    public final void g0(int[][] iArr) {
        for (int[] iArr2 : iArr) {
            if (!k0(f0(iArr2[0]), e0(iArr2[0]), iArr2[1], iArr2[2])) {
                return;
            }
        }
    }

    public final void h0(int[][] iArr) {
        if ((this.b1 & 2) > 0) {
            return;
        }
        int i2 = 0;
        while (i2 < iArr.length) {
            int iF0 = this.f0(iArr[i2][0]);
            int iE0 = this.e0(iArr[i2][0]);
            int[] iArr2 = iArr[i2];
            if (!this.k0(iF0, iE0, iArr2[1], iArr2[2])) {
                return;
            }
            ConstraintWidget constraintWidget = this.w0[i2];
            int[] iArr3 = iArr[i2];
            GridCore gridCore = this;
            gridCore.d0(constraintWidget, iF0, iE0, iArr3[1], iArr3[2]);
            gridCore.Z0.add(gridCore.w0[i2].l);
            i2++;
            this = gridCore;
        }
    }

    public final void i0() {
        int[][] iArrL0;
        int[][] iArrL1;
        boolean[][] zArr;
        int[][] iArr = this.a1;
        boolean z = iArr != null && iArr.length == this.x0 && (zArr = this.Y0) != null && zArr.length == this.M0 && zArr[0].length == this.O0;
        if (!z) {
            j0();
        }
        if (z) {
            for (int i2 = 0; i2 < this.Y0.length; i2++) {
                int i3 = 0;
                while (true) {
                    boolean[][] zArr2 = this.Y0;
                    if (i3 < zArr2[0].length) {
                        zArr2[i2][i3] = true;
                        i3++;
                    }
                }
            }
            for (int i4 = 0; i4 < this.a1.length; i4++) {
                int i5 = 0;
                while (true) {
                    int[][] iArr2 = this.a1;
                    if (i5 < iArr2[0].length) {
                        iArr2[i4][i5] = -1;
                        i5++;
                    }
                }
            }
        }
        this.X0 = 0;
        String str = this.V0;
        if (str != null && !str.trim().isEmpty() && (iArrL1 = l0(this.V0, false)) != null) {
            g0(iArrL1);
        }
        String str2 = this.U0;
        if (str2 == null || str2.trim().isEmpty() || (iArrL0 = l0(this.U0, true)) == null) {
            return;
        }
        h0(iArrL0);
    }

    public final void j0() {
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.M0, this.O0);
        this.Y0 = zArr;
        for (boolean[] zArr2 : zArr) {
            Arrays.fill(zArr2, true);
        }
        int i2 = this.x0;
        if (i2 > 0) {
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, 4);
            this.a1 = iArr;
            for (int[] iArr2 : iArr) {
                Arrays.fill(iArr2, -1);
            }
        }
    }

    public final boolean k0(int i2, int i3, int i4, int i5) {
        for (int i6 = i2; i6 < i2 + i4; i6++) {
            for (int i7 = i3; i7 < i3 + i5; i7++) {
                boolean[][] zArr = this.Y0;
                if (i6 < zArr.length && i7 < zArr[0].length) {
                    boolean[] zArr2 = zArr[i6];
                    if (zArr2[i7]) {
                        zArr2[i7] = false;
                    }
                }
                return false;
            }
        }
        return true;
    }

    public final int[][] l0(String str, boolean z) {
        int i2;
        int i3;
        try {
            String[] strArrSplit = str.split(",");
            Arrays.sort(strArrSplit, new x5(8));
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, strArrSplit.length, 3);
            if (this.M0 != 1 && this.O0 != 1) {
                for (int i4 = 0; i4 < strArrSplit.length; i4++) {
                    String[] strArrSplit2 = strArrSplit[i4].trim().split(":");
                    String[] strArrSplit3 = strArrSplit2[1].split("x");
                    iArr[i4][0] = Integer.parseInt(strArrSplit2[0]);
                    if ((this.b1 & 1) > 0) {
                        iArr[i4][1] = Integer.parseInt(strArrSplit3[1]);
                        iArr[i4][2] = Integer.parseInt(strArrSplit3[0]);
                    } else {
                        iArr[i4][1] = Integer.parseInt(strArrSplit3[0]);
                        iArr[i4][2] = Integer.parseInt(strArrSplit3[1]);
                    }
                }
                return iArr;
            }
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < strArrSplit.length; i7++) {
                String[] strArrSplit4 = strArrSplit[i7].trim().split(":");
                iArr[i7][0] = Integer.parseInt(strArrSplit4[0]);
                int[] iArr2 = iArr[i7];
                iArr2[1] = 1;
                iArr2[2] = 1;
                if (this.O0 == 1) {
                    iArr2[1] = Integer.parseInt(strArrSplit4[1]);
                    i5 += iArr[i7][1];
                    if (z) {
                        i5--;
                    }
                }
                if (this.M0 == 1) {
                    iArr[i7][2] = Integer.parseInt(strArrSplit4[1]);
                    i6 += iArr[i7][2];
                    if (z) {
                        i6--;
                    }
                }
            }
            if (i5 != 0 && !this.L0 && (i3 = this.M0 + i5) <= 50 && this.N0 != i3) {
                this.N0 = i3;
                n0();
                j0();
            }
            if (i6 != 0 && !this.L0 && (i2 = this.O0 + i6) <= 50 && this.P0 != i2) {
                this.P0 = i2;
                n0();
                j0();
            }
            this.L0 = true;
            return iArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public final void n0() {
        int i2;
        int i3 = this.N0;
        if (i3 != 0 && (i2 = this.P0) != 0) {
            this.M0 = i3;
            this.O0 = i2;
            return;
        }
        int i4 = this.P0;
        if (i4 > 0) {
            this.O0 = i4;
            this.M0 = ((this.x0 + i4) - 1) / i4;
        } else if (i3 > 0) {
            this.M0 = i3;
            this.O0 = ((this.x0 + i3) - 1) / i3;
        } else {
            int iSqrt = (int) (Math.sqrt(this.x0) + 1.5d);
            this.M0 = iSqrt;
            this.O0 = ((this.x0 + iSqrt) - 1) / iSqrt;
        }
    }

    public GridCore() {
        n0();
        i0();
    }
}
