package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class Chain {
    /* JADX WARN: Code duplicated, block: B:189:0x0297  */
    /* JADX WARN: Code duplicated, block: B:206:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:208:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:210:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:212:0x0311  */
    /* JADX WARN: Code duplicated, block: B:234:0x037e  */
    /* JADX WARN: Code duplicated, block: B:236:0x0396  */
    /* JADX WARN: Code duplicated, block: B:238:0x039b  */
    /* JADX WARN: Code duplicated, block: B:242:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:252:0x0428  */
    /* JADX WARN: Code duplicated, block: B:408:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:411:0x06ad  */
    /* JADX WARN: Code duplicated, block: B:412:0x06b0  */
    /* JADX WARN: Code duplicated, block: B:415:0x06b6  */
    /* JADX WARN: Code duplicated, block: B:416:0x06b9  */
    /* JADX WARN: Code duplicated, block: B:418:0x06bd  */
    /* JADX WARN: Code duplicated, block: B:420:0x06c5  */
    /* JADX WARN: Code duplicated, block: B:423:0x06cd  */
    /* JADX WARN: Code duplicated, block: B:425:0x06d1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:435:0x06ed A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:74:0x0115  */
    public static void a(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList arrayList, int i2) {
        int i3;
        ChainHead[] chainHeadArr;
        int i4;
        int i5;
        float f2;
        boolean z;
        boolean z2;
        boolean z3;
        int i6;
        ChainHead[] chainHeadArr2;
        ConstraintWidget constraintWidget;
        LinearSystem linearSystem2;
        SolverVariable solverVariable;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable2;
        int i7;
        ConstraintAnchor[] constraintAnchorArr;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable3;
        ConstraintWidget constraintWidget2;
        int i8;
        ConstraintAnchor[] constraintAnchorArr2;
        int i9;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        SolverVariable solverVariable4;
        ConstraintAnchor constraintAnchor5;
        SolverVariable solverVariable5;
        int size;
        ArrayList arrayList2;
        float f3;
        float f4;
        SolverVariable solverVariable6;
        SolverVariable solverVariable7;
        SolverVariable solverVariable8;
        SolverVariable solverVariable9;
        ArrayRow arrayRowL;
        float f5;
        ConstraintAnchor constraintAnchor6;
        ConstraintWidget constraintWidget3;
        int i10;
        int i11;
        int i12;
        ConstraintWidget constraintWidget4;
        float f6;
        ConstraintWidgetContainer constraintWidgetContainer2 = constraintWidgetContainer;
        if (i2 == 0) {
            i3 = constraintWidgetContainer2.F0;
            chainHeadArr = constraintWidgetContainer2.I0;
            i4 = 0;
        } else {
            i3 = constraintWidgetContainer2.G0;
            chainHeadArr = constraintWidgetContainer2.H0;
            i4 = 2;
        }
        int i13 = i3;
        ChainHead[] chainHeadArr3 = chainHeadArr;
        int i14 = 0;
        while (i14 < i13) {
            ChainHead chainHead = chainHeadArr3[i14];
            boolean z4 = chainHead.q;
            ConstraintWidget constraintWidget5 = chainHead.f11471a;
            int i15 = 8;
            if (z4) {
                i5 = i14;
                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            } else {
                int i16 = chainHead.l;
                int i17 = i16 * 2;
                ConstraintWidget constraintWidget6 = constraintWidget5;
                ConstraintWidget constraintWidget7 = constraintWidget6;
                boolean z5 = false;
                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                while (!z5) {
                    chainHead.f11477i++;
                    ConstraintWidget[] constraintWidgetArr = constraintWidget6.r0;
                    ConstraintAnchor[] constraintAnchorArr3 = constraintWidget6.T;
                    constraintWidgetArr[i16] = null;
                    constraintWidget6.q0[i16] = null;
                    if (constraintWidget6.k0 != i15) {
                        constraintWidget6.o(i16);
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        constraintAnchorArr3[i17].e();
                        int i18 = i17 + 1;
                        constraintAnchorArr3[i18].e();
                        constraintAnchorArr3[i17].e();
                        constraintAnchorArr3[i18].e();
                        if (chainHead.f11472b == null) {
                            chainHead.f11472b = constraintWidget6;
                        }
                        chainHead.d = constraintWidget6;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget6.W[i16];
                        if (dimensionBehaviour2 == dimensionBehaviour) {
                            i11 = i14;
                            int i19 = constraintWidget6.v[i16];
                            i12 = i16;
                            if (i19 == 0 || i19 == 3 || i19 == 2) {
                                chainHead.f11478j++;
                                float f7 = constraintWidget6.p0[i12];
                                if (f7 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f6 = f7;
                                    chainHead.f11479k += f6;
                                } else {
                                    f6 = f7;
                                }
                                if (constraintWidget6.k0 != 8 && dimensionBehaviour2 == dimensionBehaviour && (i19 == 0 || i19 == 3)) {
                                    if (f6 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        chainHead.n = true;
                                    } else {
                                        chainHead.o = true;
                                    }
                                    if (chainHead.f11476h == null) {
                                        chainHead.f11476h = new ArrayList();
                                    }
                                    chainHead.f11476h.add(constraintWidget6);
                                }
                                if (chainHead.f11475f == null) {
                                    chainHead.f11475f = constraintWidget6;
                                }
                                ConstraintWidget constraintWidget8 = chainHead.g;
                                if (constraintWidget8 != null) {
                                    constraintWidget8.q0[i12] = constraintWidget6;
                                }
                                chainHead.g = constraintWidget6;
                            }
                            if (i12 == 0) {
                                if (constraintWidget6.t == 0 && constraintWidget6.w == 0) {
                                    int i20 = constraintWidget6.x;
                                }
                            } else if (constraintWidget6.u == 0 && constraintWidget6.z == 0) {
                                int i21 = constraintWidget6.A;
                            }
                        } else {
                            i11 = i14;
                            i12 = i16;
                            i17 = i17;
                        }
                    } else {
                        i11 = i14;
                        i12 = i16;
                        i17 = i17;
                    }
                    if (constraintWidget7 != constraintWidget6) {
                        constraintWidget7.r0[i12] = constraintWidget6;
                    }
                    ConstraintAnchor constraintAnchor7 = constraintAnchorArr3[i17 + 1].f11484f;
                    if (constraintAnchor7 != null) {
                        constraintWidget4 = constraintAnchor7.d;
                        ConstraintAnchor constraintAnchor8 = constraintWidget4.T[i17].f11484f;
                        if (constraintAnchor8 == null || constraintAnchor8.d != constraintWidget6) {
                            constraintWidget4 = null;
                        }
                    } else {
                        constraintWidget4 = null;
                    }
                    if (constraintWidget4 == null) {
                        constraintWidget4 = constraintWidget6;
                        z5 = true;
                    }
                    constraintWidget7 = constraintWidget6;
                    i16 = i12;
                    i17 = i17;
                    i15 = 8;
                    constraintWidget6 = constraintWidget4;
                    i14 = i11;
                }
                i5 = i14;
                int i22 = i16;
                int i23 = i17;
                ConstraintWidget constraintWidget9 = chainHead.f11472b;
                if (constraintWidget9 != null) {
                    constraintWidget9.T[i23].e();
                }
                ConstraintWidget constraintWidget10 = chainHead.d;
                if (constraintWidget10 != null) {
                    constraintWidget10.T[i23 + 1].e();
                }
                chainHead.f11473c = constraintWidget6;
                if (i22 == 0 && chainHead.m) {
                    chainHead.f11474e = constraintWidget6;
                } else {
                    chainHead.f11474e = constraintWidget5;
                }
                chainHead.p = chainHead.o && chainHead.n;
            }
            chainHead.q = true;
            if (arrayList == 0 || arrayList.contains(constraintWidget5)) {
                ConstraintWidget constraintWidget11 = chainHead.f11473c;
                ConstraintWidget constraintWidget12 = chainHead.f11472b;
                ConstraintWidget constraintWidget13 = chainHead.d;
                ConstraintWidget constraintWidget14 = chainHead.f11474e;
                float f8 = chainHead.f11479k;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidgetContainer2.W;
                ConstraintAnchor[] constraintAnchorArr4 = constraintWidgetContainer2.T;
                boolean z6 = dimensionBehaviourArr[i2] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (i2 == 0) {
                    int i24 = constraintWidget14.n0;
                    boolean z7 = i24 == 0;
                    z2 = i24 == 1;
                    z3 = i24 == 2;
                    z = z7;
                } else {
                    int i25 = constraintWidget14.o0;
                    z = i25 == 0;
                    z2 = i25 == 1;
                    z3 = i25 == 2;
                }
                boolean z8 = z2;
                boolean z9 = false;
                while (!z9) {
                    ConstraintAnchor[] constraintAnchorArr5 = constraintWidget5.T;
                    ConstraintAnchor constraintAnchor9 = constraintAnchorArr5[i4];
                    int i26 = z3 ? 1 : 4;
                    int iE = constraintAnchor9.e();
                    ConstraintAnchor[] constraintAnchorArr6 = constraintAnchorArr4;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = constraintWidget5.W[i2];
                    boolean z10 = z3;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    boolean z11 = dimensionBehaviour3 == dimensionBehaviour4 && constraintWidget5.v[i2] == 0;
                    ConstraintAnchor constraintAnchor10 = constraintAnchor9.f11484f;
                    if (constraintAnchor10 != null && constraintWidget5 != constraintWidget5) {
                        iE = constraintAnchor10.e() + iE;
                    }
                    int i27 = iE;
                    if (z10 && constraintWidget5 != constraintWidget5 && constraintWidget5 != constraintWidget12) {
                        i26 = 8;
                    }
                    ConstraintAnchor constraintAnchor11 = constraintAnchor9.f11484f;
                    int i28 = i13;
                    if (constraintAnchor11 != null) {
                        SolverVariable solverVariable10 = constraintAnchor9.f11486i;
                        SolverVariable solverVariable11 = constraintAnchor11.f11486i;
                        if (constraintWidget5 == constraintWidget12) {
                            linearSystem.f(solverVariable10, solverVariable11, i27, 6);
                        } else {
                            linearSystem.f(solverVariable10, solverVariable11, i27, 8);
                        }
                        if (z11 && !z10) {
                            i26 = 5;
                        }
                        linearSystem.e(constraintAnchor9.f11486i, constraintAnchor9.f11484f.f11486i, i27, (constraintWidget5 == constraintWidget12 && z10 && constraintWidget5.V[i2]) ? 5 : i26);
                    } else {
                        chainHeadArr3 = chainHeadArr3;
                    }
                    if (z6) {
                        if (constraintWidget5.k0 == 8 || constraintWidget5.W[i2] != dimensionBehaviour4) {
                            i10 = 0;
                        } else {
                            i10 = 0;
                            linearSystem.f(constraintAnchorArr5[i4 + 1].f11486i, constraintAnchorArr5[i4].f11486i, 0, 5);
                        }
                        linearSystem.f(constraintAnchorArr5[i4].f11486i, constraintAnchorArr6[i4].f11486i, i10, 8);
                    }
                    ConstraintAnchor constraintAnchor12 = constraintAnchorArr5[i4 + 1].f11484f;
                    if (constraintAnchor12 != null) {
                        constraintWidget3 = constraintAnchor12.d;
                        ConstraintAnchor constraintAnchor13 = constraintWidget3.T[i4].f11484f;
                        if (constraintAnchor13 == null || constraintAnchor13.d != constraintWidget5) {
                            constraintWidget3 = null;
                        }
                    } else {
                        constraintWidget3 = null;
                    }
                    if (constraintWidget3 != null) {
                        constraintWidget5 = constraintWidget3;
                    } else {
                        z9 = true;
                    }
                    i13 = i28;
                    constraintAnchorArr4 = constraintAnchorArr6;
                    z3 = z10;
                    chainHeadArr3 = chainHeadArr3;
                }
                ConstraintAnchor[] constraintAnchorArr7 = constraintAnchorArr4;
                boolean z12 = z3;
                i6 = i13;
                chainHeadArr2 = chainHeadArr3;
                if (constraintWidget13 != null) {
                    int i29 = i4 + 1;
                    if (constraintWidget11.T[i29].f11484f != null) {
                        ConstraintAnchor constraintAnchor14 = constraintWidget13.T[i29];
                        if (constraintWidget13.W[i2] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget13.v[i2] == 0 && !z12) {
                            ConstraintAnchor constraintAnchor15 = constraintAnchor14.f11484f;
                            if (constraintAnchor15.d == constraintWidgetContainer2) {
                                linearSystem.e(constraintAnchor14.f11486i, constraintAnchor15.f11486i, -constraintAnchor14.e(), 5);
                            } else if (z12) {
                                constraintAnchor6 = constraintAnchor14.f11484f;
                                if (constraintAnchor6.d == constraintWidgetContainer2) {
                                    linearSystem.e(constraintAnchor14.f11486i, constraintAnchor6.f11486i, -constraintAnchor14.e(), 4);
                                }
                            }
                        } else if (z12) {
                            constraintAnchor6 = constraintAnchor14.f11484f;
                            if (constraintAnchor6.d == constraintWidgetContainer2) {
                                linearSystem.e(constraintAnchor14.f11486i, constraintAnchor6.f11486i, -constraintAnchor14.e(), 4);
                            }
                        }
                        linearSystem.g(constraintAnchor14.f11486i, constraintWidget11.T[i29].f11484f.f11486i, -constraintAnchor14.e(), 6);
                    }
                }
                if (z6 != 0) {
                    int i30 = i4 + 1;
                    SolverVariable solverVariable12 = constraintAnchorArr7[i30].f11486i;
                    ConstraintAnchor constraintAnchor16 = constraintWidget11.T[i30];
                    linearSystem.f(solverVariable12, constraintAnchor16.f11486i, constraintAnchor16.e(), 8);
                }
                ArrayList arrayList3 = chainHead.f11476h;
                if (arrayList3 != null && (size = arrayList3.size()) > 1) {
                    if (chainHead.n && !chainHead.p) {
                        f8 = chainHead.f11478j;
                    }
                    ConstraintWidget constraintWidget15 = null;
                    float f9 = f2;
                    int i31 = 0;
                    while (i31 < size) {
                        ConstraintWidget constraintWidget16 = (ConstraintWidget) arrayList3.get(i31);
                        float[] fArr = constraintWidget16.p0;
                        ConstraintAnchor[] constraintAnchorArr8 = constraintWidget16.T;
                        float f10 = fArr[i2];
                        if (f10 >= f2) {
                            arrayList2 = arrayList3;
                            if (f10 == f2) {
                                linearSystem.e(constraintAnchorArr8[i4 + 1].f11486i, constraintAnchorArr8[i4].f11486i, 0, 8);
                                size = size;
                                f3 = f2;
                            } else {
                                i31 = i31;
                                if (constraintWidget15 != null) {
                                    ConstraintAnchor[] constraintAnchorArr9 = constraintWidget15.T;
                                    solverVariable6 = constraintAnchorArr9[i4].f11486i;
                                    int i32 = i4 + 1;
                                    solverVariable7 = constraintAnchorArr9[i32].f11486i;
                                    solverVariable8 = constraintAnchorArr8[i4].f11486i;
                                    solverVariable9 = constraintAnchorArr8[i32].f11486i;
                                    arrayRowL = linearSystem.l();
                                    f5 = f2;
                                    arrayRowL.f11291b = f5;
                                    f3 = f5;
                                    if (f8 != f5 || f9 == f10) {
                                        f4 = f10;
                                        arrayRowL.d.g(solverVariable6, 1.0f);
                                        arrayRowL.d.g(solverVariable7, -1.0f);
                                        arrayRowL.d.g(solverVariable9, 1.0f);
                                        arrayRowL.d.g(solverVariable8, -1.0f);
                                    } else {
                                        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRowL.d;
                                        if (f9 == f3) {
                                            f4 = f10;
                                            arrayRowVariables.g(solverVariable6, 1.0f);
                                            arrayRowL.d.g(solverVariable7, -1.0f);
                                        } else {
                                            f4 = f10;
                                            float f11 = f9;
                                            if (f10 == f2) {
                                                arrayRowVariables.g(solverVariable8, 1.0f);
                                                arrayRowL.d.g(solverVariable9, -1.0f);
                                            } else {
                                                float f12 = (f11 / f8) / (f4 / f8);
                                                arrayRowVariables.g(solverVariable6, 1.0f);
                                                arrayRowL.d.g(solverVariable7, -1.0f);
                                                arrayRowL.d.g(solverVariable9, f12);
                                                arrayRowL.d.g(solverVariable8, -f12);
                                            }
                                        }
                                    }
                                    linearSystem.c(arrayRowL);
                                } else {
                                    f3 = f2;
                                    f4 = f10;
                                }
                                f9 = f4;
                                constraintWidget15 = constraintWidget16;
                            }
                        } else {
                            if (chainHead.p) {
                                arrayList2 = arrayList3;
                                linearSystem.e(constraintAnchorArr8[i4 + 1].f11486i, constraintAnchorArr8[i4].f11486i, 0, 4);
                            } else {
                                f10 = 1.0f;
                                arrayList2 = arrayList3;
                                if (f10 == f2) {
                                    linearSystem.e(constraintAnchorArr8[i4 + 1].f11486i, constraintAnchorArr8[i4].f11486i, 0, 8);
                                } else {
                                    i31 = i31;
                                    if (constraintWidget15 != null) {
                                        ConstraintAnchor[] constraintAnchorArr10 = constraintWidget15.T;
                                        solverVariable6 = constraintAnchorArr10[i4].f11486i;
                                        int i33 = i4 + 1;
                                        solverVariable7 = constraintAnchorArr10[i33].f11486i;
                                        solverVariable8 = constraintAnchorArr8[i4].f11486i;
                                        solverVariable9 = constraintAnchorArr8[i33].f11486i;
                                        arrayRowL = linearSystem.l();
                                        f5 = f2;
                                        arrayRowL.f11291b = f5;
                                        f3 = f5;
                                        if (f8 != f5) {
                                            f4 = f10;
                                            arrayRowL.d.g(solverVariable6, 1.0f);
                                            arrayRowL.d.g(solverVariable7, -1.0f);
                                            arrayRowL.d.g(solverVariable9, 1.0f);
                                            arrayRowL.d.g(solverVariable8, -1.0f);
                                        } else {
                                            f4 = f10;
                                            arrayRowL.d.g(solverVariable6, 1.0f);
                                            arrayRowL.d.g(solverVariable7, -1.0f);
                                            arrayRowL.d.g(solverVariable9, 1.0f);
                                            arrayRowL.d.g(solverVariable8, -1.0f);
                                        }
                                        linearSystem.c(arrayRowL);
                                    } else {
                                        f3 = f2;
                                        f4 = f10;
                                    }
                                    f9 = f4;
                                    constraintWidget15 = constraintWidget16;
                                }
                            }
                            size = size;
                            f3 = f2;
                        }
                        i31++;
                        arrayList3 = arrayList2;
                        size = size;
                        f2 = f3;
                    }
                }
                if (constraintWidget12 == null || !(constraintWidget12 == constraintWidget13 || z12)) {
                    constraintWidget = constraintWidget13;
                    if (z && constraintWidget12 != null) {
                        int i34 = chainHead.f11478j;
                        boolean z13 = i34 > 0 && chainHead.f11477i == i34;
                        ConstraintWidget constraintWidget17 = constraintWidget12;
                        ConstraintWidget constraintWidget18 = constraintWidget17;
                        while (true) {
                            ConstraintAnchor[] constraintAnchorArr11 = constraintWidget18.T;
                            if (constraintWidget17 == null) {
                                break;
                            }
                            ConstraintAnchor[] constraintAnchorArr12 = constraintWidget17.T;
                            ConstraintWidget constraintWidget19 = constraintWidget17.r0[i2];
                            while (true) {
                                if (constraintWidget19 == null) {
                                    i7 = 8;
                                    break;
                                }
                                i7 = 8;
                                if (constraintWidget19.k0 != 8) {
                                    break;
                                } else {
                                    constraintWidget19 = constraintWidget19.r0[i2];
                                }
                            }
                            if (constraintWidget19 != null || constraintWidget17 == constraintWidget) {
                                ConstraintAnchor constraintAnchor17 = constraintAnchorArr12[i4];
                                SolverVariable solverVariable13 = constraintAnchor17.f11486i;
                                ConstraintAnchor constraintAnchor18 = constraintAnchor17.f11484f;
                                SolverVariable solverVariable14 = constraintAnchor18 != null ? constraintAnchor18.f11486i : null;
                                if (constraintWidget18 != constraintWidget17) {
                                    solverVariable14 = constraintAnchorArr11[i4 + 1].f11486i;
                                } else if (constraintWidget17 == constraintWidget12) {
                                    ConstraintAnchor constraintAnchor19 = constraintWidget5.T[i4].f11484f;
                                    solverVariable14 = constraintAnchor19 != null ? constraintAnchor19.f11486i : null;
                                }
                                int iE2 = constraintAnchor17.e();
                                int i35 = i4 + 1;
                                int iE3 = constraintAnchorArr12[i35].e();
                                if (constraintWidget19 != null) {
                                    constraintAnchor2 = constraintWidget19.T[i4];
                                    constraintAnchorArr = constraintAnchorArr11;
                                    solverVariable3 = constraintAnchor2.f11486i;
                                } else {
                                    constraintAnchorArr = constraintAnchorArr11;
                                    constraintAnchor2 = constraintWidget11.T[i35].f11484f;
                                    solverVariable3 = constraintAnchor2 != null ? constraintAnchor2.f11486i : null;
                                }
                                SolverVariable solverVariable15 = constraintAnchorArr12[i35].f11486i;
                                if (constraintAnchor2 != null) {
                                    iE3 += constraintAnchor2.e();
                                }
                                int iE4 = constraintAnchorArr[i35].e() + iE2;
                                if (solverVariable13 == null || solverVariable14 == null || solverVariable3 == null || solverVariable15 == null) {
                                    constraintWidget2 = constraintWidget5;
                                    i8 = 8;
                                } else {
                                    if (constraintWidget17 == constraintWidget12) {
                                        iE4 = constraintWidget12.T[i4].e();
                                    }
                                    if (constraintWidget17 == constraintWidget) {
                                        iE3 = constraintWidget.T[i35].e();
                                    }
                                    constraintWidget2 = constraintWidget5;
                                    i8 = 8;
                                    linearSystem.b(solverVariable13, solverVariable14, iE4, 0.5f, solverVariable3, solverVariable15, iE3, z13 ? 8 : 5);
                                }
                            } else {
                                constraintWidget2 = constraintWidget5;
                                i8 = i7;
                            }
                            if (constraintWidget17.k0 != i8) {
                                constraintWidget18 = constraintWidget17;
                            }
                            constraintWidget17 = constraintWidget19;
                            constraintWidget18 = constraintWidget18;
                            constraintWidget5 = constraintWidget2;
                        }
                    } else {
                        int i36 = 8;
                        if (z8 && constraintWidget12 != null) {
                            int i37 = chainHead.f11478j;
                            boolean z14 = i37 > 0 && chainHead.f11477i == i37;
                            ConstraintWidget constraintWidget20 = constraintWidget12;
                            ConstraintWidget constraintWidget21 = constraintWidget20;
                            while (true) {
                                ConstraintAnchor[] constraintAnchorArr13 = constraintWidget21.T;
                                if (constraintWidget20 == null) {
                                    break;
                                }
                                ConstraintAnchor[] constraintAnchorArr14 = constraintWidget20.T;
                                ConstraintWidget constraintWidget22 = constraintWidget20.r0[i2];
                                while (constraintWidget22 != null && constraintWidget22.k0 == i36) {
                                    constraintWidget22 = constraintWidget22.r0[i2];
                                }
                                if (constraintWidget20 != constraintWidget12 && constraintWidget20 != constraintWidget && constraintWidget22 != null) {
                                    if (constraintWidget22 == constraintWidget) {
                                        constraintWidget22 = null;
                                    }
                                    ConstraintAnchor constraintAnchor20 = constraintAnchorArr14[i4];
                                    SolverVariable solverVariable16 = constraintAnchor20.f11486i;
                                    int i38 = i4 + 1;
                                    SolverVariable solverVariable17 = constraintAnchorArr13[i38].f11486i;
                                    int iE5 = constraintAnchor20.e();
                                    int iE6 = constraintAnchorArr14[i38].e();
                                    if (constraintWidget22 != null) {
                                        constraintAnchor = constraintWidget22.T[i4];
                                        solverVariable2 = constraintAnchor.f11486i;
                                        ConstraintAnchor constraintAnchor21 = constraintAnchor.f11484f;
                                        solverVariable = constraintAnchor21 != null ? constraintAnchor21.f11486i : null;
                                    } else {
                                        ConstraintAnchor constraintAnchor22 = constraintWidget.T[i4];
                                        SolverVariable solverVariable18 = constraintAnchor22 != null ? constraintAnchor22.f11486i : null;
                                        solverVariable = constraintAnchorArr14[i38].f11486i;
                                        constraintAnchor = constraintAnchor22;
                                        solverVariable2 = solverVariable18;
                                    }
                                    if (constraintAnchor != null) {
                                        iE6 += constraintAnchor.e();
                                    }
                                    int iE7 = iE5 + constraintAnchorArr13[i38].e();
                                    int i39 = z14 ? 8 : 4;
                                    if (solverVariable16 != null && solverVariable17 != null && solverVariable2 != null && solverVariable != null) {
                                        linearSystem.b(solverVariable16, solverVariable17, iE7, 0.5f, solverVariable2, solverVariable, iE6, i39);
                                    }
                                    constraintWidget22 = constraintWidget22;
                                }
                                i36 = 8;
                                if (constraintWidget20.k0 != 8) {
                                    constraintWidget21 = constraintWidget20;
                                }
                                constraintWidget20 = constraintWidget22;
                            }
                            linearSystem2 = linearSystem;
                            ConstraintAnchor constraintAnchor23 = constraintWidget12.T[i4];
                            ConstraintAnchor constraintAnchor24 = constraintWidget5.T[i4].f11484f;
                            int i40 = i4 + 1;
                            ConstraintAnchor constraintAnchor25 = constraintWidget.T[i40];
                            ConstraintAnchor constraintAnchor26 = constraintWidget11.T[i40].f11484f;
                            if (constraintAnchor24 != null) {
                                if (constraintWidget12 != constraintWidget) {
                                    linearSystem2.e(constraintAnchor23.f11486i, constraintAnchor24.f11486i, constraintAnchor23.e(), 5);
                                } else if (constraintAnchor26 != null) {
                                    linearSystem2.b(constraintAnchor23.f11486i, constraintAnchor24.f11486i, constraintAnchor23.e(), 0.5f, constraintAnchor25.f11486i, constraintAnchor26.f11486i, constraintAnchor25.e(), 5);
                                }
                            }
                            if (constraintAnchor26 != null && constraintWidget12 != constraintWidget) {
                                linearSystem2.e(constraintAnchor25.f11486i, constraintAnchor26.f11486i, -constraintAnchor25.e(), 5);
                            }
                        }
                        if ((z || z8) && constraintWidget12 != null && constraintWidget12 != constraintWidget) {
                            constraintAnchorArr2 = constraintWidget12.T;
                            ConstraintAnchor constraintAnchor27 = constraintAnchorArr2[i4];
                            if (constraintWidget == null) {
                                constraintWidget = constraintWidget12;
                            }
                            ConstraintAnchor[] constraintAnchorArr15 = constraintWidget.T;
                            i9 = i4 + 1;
                            constraintAnchor3 = constraintAnchorArr15[i9];
                            constraintAnchor4 = constraintAnchor27.f11484f;
                            if (constraintAnchor4 != null) {
                                solverVariable4 = constraintAnchor4.f11486i;
                            } else {
                                solverVariable4 = null;
                            }
                            constraintAnchor5 = constraintAnchor3.f11484f;
                            if (constraintAnchor5 != null) {
                                solverVariable5 = constraintAnchor5.f11486i;
                            } else {
                                solverVariable5 = null;
                            }
                            if (constraintWidget11 != constraintWidget) {
                                ConstraintAnchor constraintAnchor28 = constraintWidget11.T[i9].f11484f;
                                solverVariable5 = constraintAnchor28 != null ? constraintAnchor28.f11486i : null;
                            }
                            if (constraintWidget12 == constraintWidget) {
                                constraintAnchor3 = constraintAnchorArr2[i9];
                            }
                            if (solverVariable4 == null && solverVariable5 != null) {
                                linearSystem2.b(constraintAnchor27.f11486i, solverVariable4, constraintAnchor27.e(), 0.5f, solverVariable5, constraintAnchor3.f11486i, constraintAnchorArr15[i9].e(), 5);
                            }
                        }
                    }
                } else {
                    ConstraintAnchor constraintAnchor29 = constraintWidget5.T[i4];
                    int i41 = i4 + 1;
                    ConstraintAnchor constraintAnchor30 = constraintWidget11.T[i41];
                    ConstraintAnchor constraintAnchor31 = constraintAnchor29.f11484f;
                    SolverVariable solverVariable19 = constraintAnchor31 != null ? constraintAnchor31.f11486i : null;
                    ConstraintAnchor constraintAnchor32 = constraintAnchor30.f11484f;
                    SolverVariable solverVariable20 = constraintAnchor32 != null ? constraintAnchor32.f11486i : null;
                    ConstraintAnchor constraintAnchor33 = constraintWidget12.T[i4];
                    if (constraintWidget13 != null) {
                        constraintAnchor30 = constraintWidget13.T[i41];
                    }
                    if (solverVariable19 == null || solverVariable20 == null) {
                        constraintWidget = constraintWidget13;
                    } else {
                        float f13 = i2 == 0 ? constraintWidget14.h0 : constraintWidget14.i0;
                        int iE8 = constraintAnchor33.e();
                        int iE9 = constraintAnchor30.e();
                        SolverVariable solverVariable21 = constraintAnchor33.f11486i;
                        SolverVariable solverVariable22 = constraintAnchor30.f11486i;
                        SolverVariable solverVariable23 = solverVariable19;
                        constraintWidget = constraintWidget13;
                        linearSystem.b(solverVariable21, solverVariable23, iE8, f13, solverVariable20, solverVariable22, iE9, 7);
                    }
                }
                linearSystem2 = linearSystem;
                if (z) {
                    constraintAnchorArr2 = constraintWidget12.T;
                    ConstraintAnchor constraintAnchor210 = constraintAnchorArr2[i4];
                    if (constraintWidget == null) {
                        constraintWidget = constraintWidget12;
                    }
                    ConstraintAnchor[] constraintAnchorArr16 = constraintWidget.T;
                    i9 = i4 + 1;
                    constraintAnchor3 = constraintAnchorArr16[i9];
                    constraintAnchor4 = constraintAnchor210.f11484f;
                    if (constraintAnchor4 != null) {
                        solverVariable4 = constraintAnchor4.f11486i;
                    } else {
                        solverVariable4 = null;
                    }
                    constraintAnchor5 = constraintAnchor3.f11484f;
                    if (constraintAnchor5 != null) {
                        solverVariable5 = constraintAnchor5.f11486i;
                    } else {
                        solverVariable5 = null;
                    }
                    if (constraintWidget11 != constraintWidget) {
                        ConstraintAnchor constraintAnchor211 = constraintWidget11.T[i9].f11484f;
                        solverVariable5 = constraintAnchor211 != null ? constraintAnchor211.f11486i : null;
                    }
                    if (constraintWidget12 == constraintWidget) {
                        constraintAnchor3 = constraintAnchorArr2[i9];
                    }
                    if (solverVariable4 == null) {
                    }
                } else {
                    constraintAnchorArr2 = constraintWidget12.T;
                    ConstraintAnchor constraintAnchor212 = constraintAnchorArr2[i4];
                    if (constraintWidget == null) {
                        constraintWidget = constraintWidget12;
                    }
                    ConstraintAnchor[] constraintAnchorArr17 = constraintWidget.T;
                    i9 = i4 + 1;
                    constraintAnchor3 = constraintAnchorArr17[i9];
                    constraintAnchor4 = constraintAnchor212.f11484f;
                    if (constraintAnchor4 != null) {
                        solverVariable4 = constraintAnchor4.f11486i;
                    } else {
                        solverVariable4 = null;
                    }
                    constraintAnchor5 = constraintAnchor3.f11484f;
                    if (constraintAnchor5 != null) {
                        solverVariable5 = constraintAnchor5.f11486i;
                    } else {
                        solverVariable5 = null;
                    }
                    if (constraintWidget11 != constraintWidget) {
                        ConstraintAnchor constraintAnchor213 = constraintWidget11.T[i9].f11484f;
                        solverVariable5 = constraintAnchor213 != null ? constraintAnchor213.f11486i : null;
                    }
                    if (constraintWidget12 == constraintWidget) {
                        constraintAnchor3 = constraintAnchorArr2[i9];
                    }
                    if (solverVariable4 == null) {
                    }
                }
            } else {
                i6 = i13;
                chainHeadArr2 = chainHeadArr3;
            }
            i14 = i5 + 1;
            constraintWidgetContainer2 = constraintWidgetContainer;
            i13 = i6;
            chainHeadArr3 = chainHeadArr2;
        }
    }
}
