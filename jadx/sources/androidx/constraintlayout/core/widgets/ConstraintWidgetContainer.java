package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph;
import androidx.constraintlayout.core.widgets.analyzer.Direct;
import androidx.constraintlayout.core.widgets.analyzer.Grouping;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidgetContainer extends WidgetContainer {
    public BasicMeasure.Measurer A0;
    public boolean B0;
    public final LinearSystem C0;
    public int D0;
    public int E0;
    public int F0;
    public int G0;
    public ChainHead[] H0;
    public ChainHead[] I0;
    public int J0;
    public boolean K0;
    public boolean L0;
    public WeakReference M0;
    public WeakReference N0;
    public WeakReference O0;
    public WeakReference P0;
    public final HashSet Q0;
    public final BasicMeasure.Measure R0;
    public final BasicMeasure x0;
    public final DependencyGraph y0;
    public int z0;

    public ConstraintWidgetContainer(String str, int i2, int i3) {
        super(i2, i3);
        this.x0 = new BasicMeasure(this);
        this.y0 = new DependencyGraph(this);
        this.A0 = null;
        this.B0 = false;
        this.C0 = new LinearSystem();
        this.F0 = 0;
        this.G0 = 0;
        this.H0 = new ChainHead[4];
        this.I0 = new ChainHead[4];
        this.J0 = 257;
        this.K0 = false;
        this.L0 = false;
        this.M0 = null;
        this.N0 = null;
        this.O0 = null;
        this.P0 = null;
        this.Q0 = new HashSet();
        this.R0 = new BasicMeasure.Measure();
        this.m0 = str;
    }

    public static void d0(ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, BasicMeasure.Measure measure) {
        int i2;
        int i3;
        if (measurer == null) {
            return;
        }
        int i4 = constraintWidget.k0;
        int[] iArr = constraintWidget.v;
        if (i4 == 8 || (constraintWidget instanceof Guideline) || (constraintWidget instanceof Barrier)) {
            measure.f11514e = 0;
            measure.f11515f = 0;
            return;
        }
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.W;
        measure.f11511a = dimensionBehaviourArr[0];
        measure.f11512b = dimensionBehaviourArr[1];
        measure.f11513c = constraintWidget.v();
        measure.d = constraintWidget.p();
        measure.f11517i = false;
        measure.f11518j = 0;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.f11511a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z = dimensionBehaviour == dimensionBehaviour2;
        boolean z2 = measure.f11512b == dimensionBehaviour2;
        boolean z3 = z && constraintWidget.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        boolean z4 = z2 && constraintWidget.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (z && constraintWidget.y(0) && constraintWidget.t == 0 && !z3) {
            measure.f11511a = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z2 && constraintWidget.u == 0) {
                measure.f11511a = ConstraintWidget.DimensionBehaviour.FIXED;
            }
            z = false;
        }
        if (z2 && constraintWidget.y(1) && constraintWidget.u == 0 && !z4) {
            measure.f11512b = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z && constraintWidget.t == 0) {
                measure.f11512b = ConstraintWidget.DimensionBehaviour.FIXED;
            }
            z2 = false;
        }
        if (constraintWidget.F()) {
            measure.f11511a = ConstraintWidget.DimensionBehaviour.FIXED;
            z = false;
        }
        if (constraintWidget.G()) {
            measure.f11512b = ConstraintWidget.DimensionBehaviour.FIXED;
            z2 = false;
        }
        if (z3) {
            if (iArr[0] == 4) {
                measure.f11511a = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z2) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = measure.f11512b;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour3 == dimensionBehaviour4) {
                    i3 = measure.d;
                } else {
                    measure.f11511a = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    measurer.b(constraintWidget, measure);
                    i3 = measure.f11515f;
                }
                measure.f11511a = dimensionBehaviour4;
                measure.f11513c = (int) (constraintWidget.a0 * i3);
            }
        }
        if (z4) {
            if (iArr[1] == 4) {
                measure.f11512b = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = measure.f11511a;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour5 == dimensionBehaviour6) {
                    i2 = measure.f11513c;
                } else {
                    measure.f11512b = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    measurer.b(constraintWidget, measure);
                    i2 = measure.f11514e;
                }
                measure.f11512b = dimensionBehaviour6;
                int i5 = constraintWidget.b0;
                float f2 = constraintWidget.a0;
                if (i5 == -1) {
                    measure.d = (int) (i2 / f2);
                } else {
                    measure.d = (int) (f2 * i2);
                }
            }
        }
        measurer.b(constraintWidget, measure);
        constraintWidget.W(measure.f11514e);
        constraintWidget.R(measure.f11515f);
        constraintWidget.G = measure.f11516h;
        constraintWidget.N(measure.g);
        measure.f11518j = 0;
    }

    @Override // androidx.constraintlayout.core.widgets.WidgetContainer, androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void H() {
        this.C0.t();
        this.D0 = 0;
        this.E0 = 0;
        super.H();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void X(boolean z, boolean z2) {
        super.X(z, z2);
        int size = this.w0.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((ConstraintWidget) this.w0.get(i2)).X(z, z2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:358:0x0622  */
    /* JADX WARN: Code duplicated, block: B:372:0x0659  */
    /* JADX WARN: Code duplicated, block: B:396:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:401:0x06b3  */
    /* JADX WARN: Code duplicated, block: B:408:0x06c5  */
    /* JADX WARN: Code duplicated, block: B:411:0x06cd  */
    /* JADX WARN: Code duplicated, block: B:413:0x06d9  */
    /* JADX WARN: Code duplicated, block: B:417:0x06ea  */
    /* JADX WARN: Code duplicated, block: B:420:0x06fc A[Catch: Exception -> 0x070a, LOOP:12: B:419:0x06fa->B:420:0x06fc, LOOP_END, TryCatch #2 {Exception -> 0x070a, blocks: (B:418:0x06ee, B:420:0x06fc, B:423:0x0710), top: B:536:0x06ee }] */
    /* JADX WARN: Code duplicated, block: B:436:0x0741  */
    /* JADX WARN: Code duplicated, block: B:439:0x0747 A[Catch: Exception -> 0x0738, TryCatch #3 {Exception -> 0x0738, blocks: (B:430:0x0731, B:437:0x0743, B:439:0x0747, B:441:0x074d, B:442:0x0766, B:444:0x076a, B:446:0x0770, B:450:0x0785, B:453:0x0790, B:455:0x0794, B:457:0x079a), top: B:538:0x0731 }] */
    /* JADX WARN: Code duplicated, block: B:444:0x076a A[Catch: Exception -> 0x0738, TryCatch #3 {Exception -> 0x0738, blocks: (B:430:0x0731, B:437:0x0743, B:439:0x0747, B:441:0x074d, B:442:0x0766, B:444:0x076a, B:446:0x0770, B:450:0x0785, B:453:0x0790, B:455:0x0794, B:457:0x079a), top: B:538:0x0731 }] */
    /* JADX WARN: Code duplicated, block: B:453:0x0790 A[Catch: Exception -> 0x0738, PHI: r22
      0x0790: PHI (r22v7 androidx.constraintlayout.core.widgets.ConstraintAnchor) = 
      (r22v2 androidx.constraintlayout.core.widgets.ConstraintAnchor)
      (r22v2 androidx.constraintlayout.core.widgets.ConstraintAnchor)
      (r22v9 androidx.constraintlayout.core.widgets.ConstraintAnchor)
     binds: [B:443:0x0768, B:445:0x076e, B:450:0x0785] A[DONT_GENERATE, DONT_INLINE], TryCatch #3 {Exception -> 0x0738, blocks: (B:430:0x0731, B:437:0x0743, B:439:0x0747, B:441:0x074d, B:442:0x0766, B:444:0x076a, B:446:0x0770, B:450:0x0785, B:453:0x0790, B:455:0x0794, B:457:0x079a), top: B:538:0x0731 }] */
    /* JADX WARN: Code duplicated, block: B:455:0x0794 A[Catch: Exception -> 0x0738, TryCatch #3 {Exception -> 0x0738, blocks: (B:430:0x0731, B:437:0x0743, B:439:0x0747, B:441:0x074d, B:442:0x0766, B:444:0x076a, B:446:0x0770, B:450:0x0785, B:453:0x0790, B:455:0x0794, B:457:0x079a), top: B:538:0x0731 }] */
    /* JADX WARN: Code duplicated, block: B:465:0x07b8  */
    /* JADX WARN: Code duplicated, block: B:471:0x07dc  */
    /* JADX WARN: Code duplicated, block: B:473:0x07f5  */
    /* JADX WARN: Code duplicated, block: B:475:0x080b  */
    /* JADX WARN: Code duplicated, block: B:477:0x080f  */
    /* JADX WARN: Code duplicated, block: B:480:0x081b  */
    /* JADX WARN: Code duplicated, block: B:482:0x0824 A[LOOP:15: B:481:0x0822->B:482:0x0824, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:486:0x0837 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:502:0x08a8 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:505:0x08bc  */
    /* JADX WARN: Code duplicated, block: B:508:0x08da  */
    /* JADX WARN: Code duplicated, block: B:509:0x08e8  */
    /* JADX WARN: Code duplicated, block: B:511:0x08eb  */
    /* JADX WARN: Code duplicated, block: B:513:0x08f5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:516:0x08fd  */
    /* JADX WARN: Code duplicated, block: B:519:0x0911 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:523:0x0929 A[PHI: r14 r23
      0x0929: PHI (r14v9 ??) = (r14v8 ??), (r14v13 ??), (r14v13 ??), (r14v13 ??) binds: [B:510:0x08e9, B:518:0x090f, B:519:0x0911, B:521:0x0917] A[DONT_GENERATE, DONT_INLINE]
      0x0929: PHI (r23v5 boolean) = (r23v4 boolean), (r23v6 boolean), (r23v6 boolean), (r23v6 boolean) binds: [B:510:0x08e9, B:518:0x090f, B:519:0x0911, B:521:0x0917] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:525:0x092f  */
    /* JADX WARN: Code duplicated, block: B:529:0x093f  */
    /* JADX WARN: Code duplicated, block: B:590:0x06de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:593:0x0930 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v27 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v80 */
    /* JADX WARN: Type inference failed for: r14v81 */
    /* JADX WARN: Type inference failed for: r14v82 */
    /* JADX WARN: Type inference failed for: r14v88 */
    /* JADX WARN: Type inference failed for: r14v89 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r14v90 */
    /* JADX WARN: Type inference failed for: r14v91 */
    /* JADX WARN: Type inference failed for: r14v92 */
    /* JADX WARN: Type inference failed for: r14v93 */
    /* JADX WARN: Type inference failed for: r29v0, types: [androidx.constraintlayout.core.widgets.ConstraintWidget, androidx.constraintlayout.core.widgets.ConstraintWidgetContainer, androidx.constraintlayout.core.widgets.WidgetContainer] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v8 */
    @Override // androidx.constraintlayout.core.widgets.WidgetContainer
    public final void Z() {
        ConstraintAnchor constraintAnchor;
        int i2;
        boolean z;
        boolean z2;
        char c2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        boolean z3;
        int i3;
        boolean zE0;
        boolean z4;
        int i4;
        ?? r14;
        boolean z5;
        int i5;
        ConstraintAnchor constraintAnchor2;
        ?? r15;
        boolean[] zArr;
        boolean[] zArr2;
        int i6;
        boolean z6;
        int i7;
        int iMax;
        boolean z7;
        int iMax2;
        ?? r6;
        ?? r16;
        int i8;
        ?? r17;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4;
        boolean zE1;
        int size;
        int i9;
        boolean z8;
        ConstraintWidget constraintWidget;
        ?? r18;
        int i10;
        WeakReference weakReference;
        WeakReference weakReference2;
        WeakReference weakReference3;
        WeakReference weakReference4;
        ConstraintWidget constraintWidget2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5;
        WidgetGroup widgetGroup;
        WidgetGroup widgetGroup2;
        int iB;
        int iB2;
        int i11;
        ArrayList arrayList;
        WidgetGroup widgetGroup3;
        WidgetGroup widgetGroup4;
        ArrayList arrayList2;
        int i12;
        int i13;
        this.c0 = 0;
        this.d0 = 0;
        this.K0 = false;
        this.L0 = false;
        int size2 = this.w0.size();
        int iMax3 = Math.max(0, v());
        int iMax4 = Math.max(0, p());
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = this.W;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[1];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = dimensionBehaviourArr[0];
        int i14 = this.z0;
        ConstraintAnchor constraintAnchor3 = this.M;
        ConstraintAnchor constraintAnchor4 = this.L;
        if (i14 == 0 && Optimizer.b(this.J0, 1)) {
            BasicMeasure.Measurer measurer = this.A0;
            BasicMeasure.Measure measure = Direct.f11535a;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.W;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = dimensionBehaviourArr2[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour9 = dimensionBehaviourArr2[1];
            J();
            ArrayList arrayList3 = this.w0;
            int size3 = arrayList3.size();
            for (int i15 = 0; i15 < size3; i15++) {
                ((ConstraintWidget) arrayList3.get(i15)).J();
            }
            boolean z9 = this.B0;
            if (dimensionBehaviour8 == ConstraintWidget.DimensionBehaviour.FIXED) {
                P(0, v());
            } else {
                constraintAnchor4.l(0);
                this.c0 = 0;
            }
            boolean z10 = false;
            int i16 = 0;
            boolean z11 = false;
            while (i16 < size3) {
                ConstraintWidget constraintWidget3 = (ConstraintWidget) arrayList3.get(i16);
                boolean z12 = z10;
                if (constraintWidget3 instanceof Guideline) {
                    Guideline guideline = (Guideline) constraintWidget3;
                    i13 = i16;
                    if (guideline.A0 == 1) {
                        int i17 = guideline.x0;
                        if (i17 != -1) {
                            guideline.Z(i17);
                        } else if (guideline.y0 != -1 && F()) {
                            guideline.Z(v() - guideline.y0);
                        } else if (F()) {
                            guideline.Z((int) ((guideline.w0 * v()) + 0.5f));
                        }
                        z12 = true;
                    }
                } else {
                    i13 = i16;
                    if ((constraintWidget3 instanceof Barrier) && ((Barrier) constraintWidget3).b0() == 0) {
                        z10 = z12;
                        z11 = true;
                    }
                    i16 = i13 + 1;
                }
                z10 = z12;
                i16 = i13 + 1;
            }
            if (z10) {
                for (int i18 = 0; i18 < size3; i18 = i12 + 1) {
                    ConstraintWidget constraintWidget4 = (ConstraintWidget) arrayList3.get(i18);
                    if (constraintWidget4 instanceof Guideline) {
                        Guideline guideline2 = (Guideline) constraintWidget4;
                        i12 = i18;
                        if (guideline2.A0 == 1) {
                            Direct.b(0, guideline2, measurer, z9);
                        }
                    } else {
                        i12 = i18;
                    }
                }
            }
            Direct.b(0, this, measurer, z9);
            if (z11) {
                for (int i19 = 0; i19 < size3; i19++) {
                    ConstraintWidget constraintWidget5 = (ConstraintWidget) arrayList3.get(i19);
                    if (constraintWidget5 instanceof Barrier) {
                        Barrier barrier = (Barrier) constraintWidget5;
                        if (barrier.b0() == 0 && barrier.a0()) {
                            Direct.b(1, barrier, measurer, z9);
                        }
                    }
                }
            }
            if (dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED) {
                Q(0, p());
            } else {
                constraintAnchor3.l(0);
                this.d0 = 0;
            }
            int i20 = 0;
            boolean z13 = false;
            boolean z14 = false;
            while (i20 < size3) {
                ConstraintWidget constraintWidget6 = (ConstraintWidget) arrayList3.get(i20);
                int i21 = i20;
                if (constraintWidget6 instanceof Guideline) {
                    Guideline guideline3 = (Guideline) constraintWidget6;
                    if (guideline3.A0 == 0) {
                        int i22 = guideline3.x0;
                        if (i22 != -1) {
                            guideline3.Z(i22);
                        } else if (guideline3.y0 != -1 && G()) {
                            guideline3.Z(p() - guideline3.y0);
                        } else if (G()) {
                            guideline3.Z((int) ((guideline3.w0 * p()) + 0.5f));
                        }
                        z13 = true;
                    }
                } else if ((constraintWidget6 instanceof Barrier) && ((Barrier) constraintWidget6).b0() == 1) {
                    z14 = true;
                }
                i20 = i21 + 1;
            }
            if (z13) {
                for (int i23 = 0; i23 < size3; i23++) {
                    ConstraintWidget constraintWidget7 = (ConstraintWidget) arrayList3.get(i23);
                    if (constraintWidget7 instanceof Guideline) {
                        Guideline guideline4 = (Guideline) constraintWidget7;
                        if (guideline4.A0 == 0) {
                            Direct.g(1, guideline4, measurer);
                        }
                    }
                }
            }
            Direct.g(0, this, measurer);
            if (z14) {
                for (int i24 = 0; i24 < size3; i24++) {
                    ConstraintWidget constraintWidget8 = (ConstraintWidget) arrayList3.get(i24);
                    if (constraintWidget8 instanceof Barrier) {
                        Barrier barrier2 = (Barrier) constraintWidget8;
                        if (barrier2.b0() == 1 && barrier2.a0()) {
                            Direct.g(1, barrier2, measurer);
                        }
                    }
                }
            }
            for (int i25 = 0; i25 < size3; i25++) {
                ConstraintWidget constraintWidget9 = (ConstraintWidget) arrayList3.get(i25);
                if (constraintWidget9.E() && Direct.a(constraintWidget9)) {
                    d0(constraintWidget9, measurer, Direct.f11535a);
                    if (!(constraintWidget9 instanceof Guideline)) {
                        Direct.b(0, constraintWidget9, measurer, z9);
                        Direct.g(0, constraintWidget9, measurer);
                    } else if (((Guideline) constraintWidget9).A0 == 0) {
                        Direct.g(0, constraintWidget9, measurer);
                    } else {
                        Direct.b(0, constraintWidget9, measurer, z9);
                    }
                }
            }
            for (int i26 = 0; i26 < size2; i26++) {
                ConstraintWidget constraintWidget10 = (ConstraintWidget) this.w0.get(i26);
                if (constraintWidget10.E() && !(constraintWidget10 instanceof Guideline) && !(constraintWidget10 instanceof Barrier) && !(constraintWidget10 instanceof VirtualLayout) && !constraintWidget10.I) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourO = constraintWidget10.o(0);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourO2 = constraintWidget10.o(1);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour10 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviourO != dimensionBehaviour10 || constraintWidget10.t == 1 || dimensionBehaviourO2 != dimensionBehaviour10 || constraintWidget10.u == 1) {
                        d0(constraintWidget10, this.A0, new BasicMeasure.Measure());
                    }
                }
            }
        }
        LinearSystem linearSystem = this.C0;
        if (size2 > 2 && ((dimensionBehaviour7 == (dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour6 == dimensionBehaviour5) && Optimizer.b(this.J0, 1024))) {
            BasicMeasure.Measurer measurer2 = this.A0;
            ArrayList arrayList4 = this.w0;
            int size4 = arrayList4.size();
            int i27 = 0;
            while (true) {
                if (i27 >= size4) {
                    constraintAnchor = constraintAnchor4;
                    int i28 = 0;
                    ArrayList arrayList5 = null;
                    ArrayList arrayList6 = null;
                    ArrayList arrayList7 = null;
                    ArrayList arrayList8 = null;
                    ArrayList arrayList9 = null;
                    ArrayList arrayList10 = null;
                    while (i28 < size4) {
                        int i29 = i28;
                        ConstraintWidget constraintWidget11 = (ConstraintWidget) arrayList4.get(i28);
                        ArrayList arrayList11 = arrayList5;
                        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr3 = this.W;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour11 = dimensionBehaviourArr3[0];
                        ArrayList arrayList12 = arrayList6;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour12 = dimensionBehaviourArr3[1];
                        ArrayList arrayList13 = arrayList7;
                        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr4 = constraintWidget11.W;
                        ArrayList arrayList14 = arrayList8;
                        if (!Grouping.b(dimensionBehaviour11, dimensionBehaviour12, dimensionBehaviourArr4[0], dimensionBehaviourArr4[1])) {
                            d0(constraintWidget11, measurer2, this.R0);
                        }
                        boolean z15 = constraintWidget11 instanceof Guideline;
                        if (z15) {
                            Guideline guideline5 = (Guideline) constraintWidget11;
                            if (guideline5.A0 == 0) {
                                ArrayList arrayList15 = arrayList12 == null ? new ArrayList() : arrayList12;
                                arrayList15.add(guideline5);
                                arrayList12 = arrayList15;
                            }
                            if (guideline5.A0 == 1) {
                                ArrayList arrayList16 = arrayList10 == null ? new ArrayList() : arrayList10;
                                arrayList16.add(guideline5);
                                arrayList10 = arrayList16;
                            }
                        }
                        ArrayList arrayList17 = arrayList12;
                        if (!(constraintWidget11 instanceof HelperWidget)) {
                            arrayList5 = arrayList11;
                            arrayList7 = arrayList13;
                        } else if (constraintWidget11 instanceof Barrier) {
                            Barrier barrier3 = (Barrier) constraintWidget11;
                            if (barrier3.b0() == 0) {
                                arrayList2 = arrayList11 == null ? new ArrayList() : arrayList11;
                                arrayList2.add(barrier3);
                            } else {
                                arrayList2 = arrayList11;
                            }
                            if (barrier3.b0() == 1) {
                                ArrayList arrayList18 = arrayList13 == null ? new ArrayList() : arrayList13;
                                arrayList18.add(barrier3);
                                arrayList7 = arrayList18;
                            } else {
                                arrayList7 = arrayList13;
                            }
                            arrayList5 = arrayList2;
                        } else {
                            HelperWidget helperWidget = (HelperWidget) constraintWidget11;
                            ArrayList arrayList19 = arrayList11 == null ? new ArrayList() : arrayList11;
                            arrayList19.add(helperWidget);
                            arrayList7 = arrayList13 == null ? new ArrayList() : arrayList13;
                            arrayList7.add(helperWidget);
                            arrayList5 = arrayList19;
                        }
                        if (constraintWidget11.L.f11484f != null || constraintWidget11.N.f11484f != null || z15 || (constraintWidget11 instanceof Barrier)) {
                            arrayList8 = arrayList14;
                        } else {
                            arrayList8 = arrayList14 == null ? new ArrayList() : arrayList14;
                            arrayList8.add(constraintWidget11);
                        }
                        if (constraintWidget11.M.f11484f == null && constraintWidget11.O.f11484f == null && constraintWidget11.P.f11484f == null && z15 == 0 && !(constraintWidget11 instanceof Barrier)) {
                            if (arrayList9 == null) {
                                arrayList9 = new ArrayList();
                            }
                            ArrayList arrayList20 = arrayList9;
                            arrayList20.add(constraintWidget11);
                            arrayList9 = arrayList20;
                        }
                        i28 = i29 + 1;
                        arrayList6 = arrayList17;
                    }
                    ArrayList<HelperWidget> arrayList21 = arrayList5;
                    ArrayList arrayList22 = arrayList6;
                    ArrayList<HelperWidget> arrayList23 = arrayList7;
                    ArrayList arrayList24 = arrayList8;
                    ArrayList<WidgetGroup> arrayList25 = new ArrayList();
                    if (arrayList10 != null) {
                        Iterator it = arrayList10.iterator();
                        while (it.hasNext()) {
                            Grouping.a((Guideline) it.next(), 0, arrayList25, null);
                        }
                    }
                    WidgetGroup widgetGroup5 = null;
                    int i30 = 0;
                    if (arrayList21 != null) {
                        for (HelperWidget helperWidget2 : arrayList21) {
                            WidgetGroup widgetGroupA = Grouping.a(helperWidget2, i30, arrayList25, widgetGroup5);
                            helperWidget2.Z(i30, widgetGroupA, arrayList25);
                            widgetGroupA.a(arrayList25);
                            widgetGroup5 = null;
                            i30 = 0;
                        }
                    }
                    HashSet hashSet = n(ConstraintAnchor.Type.LEFT).f11480a;
                    if (hashSet != null) {
                        Iterator it2 = hashSet.iterator();
                        while (it2.hasNext()) {
                            Grouping.a(((ConstraintAnchor) it2.next()).d, 0, arrayList25, null);
                        }
                    }
                    HashSet hashSet2 = n(ConstraintAnchor.Type.RIGHT).f11480a;
                    if (hashSet2 != null) {
                        Iterator it3 = hashSet2.iterator();
                        while (it3.hasNext()) {
                            Grouping.a(((ConstraintAnchor) it3.next()).d, 0, arrayList25, null);
                        }
                    }
                    HashSet hashSet3 = n(ConstraintAnchor.Type.CENTER).f11480a;
                    if (hashSet3 != null) {
                        Iterator it4 = hashSet3.iterator();
                        while (it4.hasNext()) {
                            Grouping.a(((ConstraintAnchor) it4.next()).d, 0, arrayList25, null);
                        }
                    }
                    WidgetGroup widgetGroup6 = null;
                    if (arrayList24 != null) {
                        Iterator it5 = arrayList24.iterator();
                        while (it5.hasNext()) {
                            Grouping.a((ConstraintWidget) it5.next(), 0, arrayList25, null);
                        }
                    }
                    if (arrayList22 != null) {
                        Iterator it6 = arrayList22.iterator();
                        while (it6.hasNext()) {
                            Grouping.a((Guideline) it6.next(), 1, arrayList25, null);
                        }
                    }
                    int i31 = 1;
                    if (arrayList23 != null) {
                        for (HelperWidget helperWidget3 : arrayList23) {
                            WidgetGroup widgetGroupA2 = Grouping.a(helperWidget3, i31, arrayList25, widgetGroup6);
                            helperWidget3.Z(i31, widgetGroupA2, arrayList25);
                            widgetGroupA2.a(arrayList25);
                            widgetGroup6 = null;
                            i31 = 1;
                        }
                    }
                    HashSet hashSet4 = n(ConstraintAnchor.Type.TOP).f11480a;
                    if (hashSet4 != null) {
                        Iterator it7 = hashSet4.iterator();
                        while (it7.hasNext()) {
                            Grouping.a(((ConstraintAnchor) it7.next()).d, 1, arrayList25, null);
                        }
                    }
                    HashSet hashSet5 = n(ConstraintAnchor.Type.BASELINE).f11480a;
                    if (hashSet5 != null) {
                        Iterator it8 = hashSet5.iterator();
                        while (it8.hasNext()) {
                            Grouping.a(((ConstraintAnchor) it8.next()).d, 1, arrayList25, null);
                        }
                    }
                    HashSet hashSet6 = n(ConstraintAnchor.Type.BOTTOM).f11480a;
                    if (hashSet6 != null) {
                        Iterator it9 = hashSet6.iterator();
                        while (it9.hasNext()) {
                            Grouping.a(((ConstraintAnchor) it9.next()).d, 1, arrayList25, null);
                        }
                    }
                    HashSet hashSet7 = n(ConstraintAnchor.Type.CENTER).f11480a;
                    if (hashSet7 != null) {
                        Iterator it10 = hashSet7.iterator();
                        while (it10.hasNext()) {
                            Grouping.a(((ConstraintAnchor) it10.next()).d, 1, arrayList25, null);
                        }
                    }
                    if (arrayList9 != null) {
                        Iterator it11 = arrayList9.iterator();
                        while (it11.hasNext()) {
                            Grouping.a((ConstraintWidget) it11.next(), 1, arrayList25, null);
                        }
                    }
                    int i32 = 0;
                    while (i32 < size4) {
                        ConstraintWidget constraintWidget12 = (ConstraintWidget) arrayList4.get(i32);
                        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr5 = constraintWidget12.W;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = dimensionBehaviourArr5[0];
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (dimensionBehaviour13 == dimensionBehaviour14 && dimensionBehaviourArr5[1] == dimensionBehaviour14) {
                            int i33 = constraintWidget12.u0;
                            int size5 = arrayList25.size();
                            int i34 = 0;
                            while (true) {
                                if (i34 >= size5) {
                                    i11 = i32;
                                    arrayList = arrayList4;
                                    widgetGroup3 = null;
                                    break;
                                }
                                i11 = i32;
                                widgetGroup3 = (WidgetGroup) arrayList25.get(i34);
                                arrayList = arrayList4;
                                if (i33 == widgetGroup3.f11544b) {
                                    break;
                                }
                                i34++;
                                arrayList4 = arrayList;
                                i32 = i11;
                            }
                            int i35 = constraintWidget12.v0;
                            int size6 = arrayList25.size();
                            int i36 = 0;
                            while (true) {
                                if (i36 >= size6) {
                                    widgetGroup4 = null;
                                    break;
                                }
                                widgetGroup4 = (WidgetGroup) arrayList25.get(i36);
                                if (i35 == widgetGroup4.f11544b) {
                                    break;
                                } else {
                                    i36++;
                                }
                            }
                            if (widgetGroup3 != null && widgetGroup4 != null) {
                                widgetGroup3.c(0, widgetGroup4);
                                widgetGroup4.f11545c = 2;
                                arrayList25.remove(widgetGroup3);
                            }
                        } else {
                            i11 = i32;
                            arrayList = arrayList4;
                        }
                        i32 = i11 + 1;
                        arrayList4 = arrayList;
                    }
                    if (arrayList25.size() > 1) {
                        if (this.W[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                            widgetGroup = null;
                            int i37 = 0;
                            for (WidgetGroup widgetGroup7 : arrayList25) {
                                if (widgetGroup7.f11545c != 1 && (iB2 = widgetGroup7.b(linearSystem, 0)) > i37) {
                                    widgetGroup = widgetGroup7;
                                    i37 = iB2;
                                }
                            }
                            if (widgetGroup != null) {
                                S(ConstraintWidget.DimensionBehaviour.FIXED);
                                W(i37);
                            } else {
                                widgetGroup = null;
                            }
                        } else {
                            widgetGroup = null;
                        }
                        if (this.W[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                            widgetGroup2 = null;
                            int i38 = 0;
                            for (WidgetGroup widgetGroup8 : arrayList25) {
                                if (widgetGroup8.f11545c != 0 && (iB = widgetGroup8.b(linearSystem, 1)) > i38) {
                                    widgetGroup2 = widgetGroup8;
                                    i38 = iB;
                                }
                            }
                            if (widgetGroup2 != null) {
                                U(ConstraintWidget.DimensionBehaviour.FIXED);
                                R(i38);
                            } else {
                                widgetGroup2 = null;
                            }
                        } else {
                            widgetGroup2 = null;
                        }
                        if (widgetGroup != null || widgetGroup2 != null) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                            if (dimensionBehaviour7 == dimensionBehaviour15) {
                                if (iMax3 >= v() || iMax3 <= 0) {
                                    iMax3 = v();
                                } else {
                                    W(iMax3);
                                    this.K0 = true;
                                }
                            }
                            if (dimensionBehaviour6 == dimensionBehaviour15) {
                                if (iMax4 >= p() || iMax4 <= 0) {
                                    iMax4 = p();
                                } else {
                                    R(iMax4);
                                    this.L0 = true;
                                }
                            }
                            i2 = iMax3;
                            z = true;
                            break;
                        }
                    }
                } else {
                    ConstraintWidget constraintWidget13 = (ConstraintWidget) arrayList4.get(i27);
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr6 = this.W;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = dimensionBehaviourArr6[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = dimensionBehaviourArr6[1];
                    int i39 = i27;
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr7 = constraintWidget13.W;
                    constraintAnchor = constraintAnchor4;
                    if (Grouping.b(dimensionBehaviour16, dimensionBehaviour17, dimensionBehaviourArr7[0], dimensionBehaviourArr7[1]) && !(constraintWidget13 instanceof Flow)) {
                        i27 = i39 + 1;
                        constraintAnchor4 = constraintAnchor;
                    }
                }
            }
            if (!e0(64) || e0(128)) {
                z2 = true;
            } else {
                z2 = false;
            }
            linearSystem.getClass();
            linearSystem.f11302h = false;
            if (this.J0 == 0 && z2) {
                c2 = 1;
                linearSystem.f11302h = true;
            } else {
                c2 = 1;
            }
            ArrayList arrayList26 = this.w0;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr8 = this.W;
            dimensionBehaviour = dimensionBehaviourArr8[0];
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour != dimensionBehaviour2 || dimensionBehaviourArr8[c2] == dimensionBehaviour2) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.F0 = 0;
            this.G0 = 0;
            for (i3 = 0; i3 < size2; i3++) {
                constraintWidget2 = (ConstraintWidget) this.w0.get(i3);
                if (constraintWidget2 instanceof WidgetContainer) {
                    ((WidgetContainer) constraintWidget2).Z();
                }
            }
            zE0 = e0(64);
            z4 = z;
            i4 = 0;
            r14 = 1;
            while (r14 != 0) {
                i5 = i4 + 1;
                try {
                    linearSystem.t();
                    this.F0 = 0;
                    this.G0 = 0;
                    l(linearSystem);
                    for (i10 = 0; i10 < size2; i10++) {
                        ((ConstraintWidget) this.w0.get(i10)).l(linearSystem);
                    }
                    b0(linearSystem);
                    try {
                        weakReference = this.M0;
                        if (weakReference != null || weakReference.get() == null) {
                            constraintAnchor2 = constraintAnchor3;
                        } else {
                            constraintAnchor2 = constraintAnchor3;
                            try {
                                linearSystem.f(linearSystem.k((ConstraintAnchor) this.M0.get()), linearSystem.k(constraintAnchor3), 0, 5);
                                this.M0 = null;
                            } catch (Exception e2) {
                                e = e2;
                                r18 = 1;
                                e.printStackTrace();
                                System.out.println("EXCEPTION : " + e);
                                r15 = r18;
                                zArr = Optimizer.f11507a;
                                if (r15 != 0) {
                                    zArr[2] = false;
                                    zE1 = e0(64);
                                    Y(linearSystem, zE1);
                                    size = this.w0.size();
                                    i9 = 0;
                                    z8 = false;
                                    while (i9 < size) {
                                        boolean[] zArr3 = zArr;
                                        constraintWidget = (ConstraintWidget) this.w0.get(i9);
                                        constraintWidget.Y(linearSystem, zE1);
                                        int i40 = i9;
                                        boolean z16 = zE1;
                                        if (constraintWidget.f11493i == -1) {
                                            z8 = true;
                                        } else {
                                            z8 = true;
                                        }
                                        i9 = i40 + 1;
                                        zArr = zArr3;
                                        zE1 = z16;
                                        z8 = z8;
                                    }
                                    zArr2 = zArr;
                                    z6 = z8;
                                } else {
                                    zArr2 = zArr;
                                    Y(linearSystem, zE0);
                                    for (i6 = 0; i6 < size2; i6++) {
                                        ((ConstraintWidget) this.w0.get(i6)).Y(linearSystem, zE0);
                                    }
                                    z6 = false;
                                }
                                if (z3) {
                                    i7 = size2;
                                } else {
                                    i7 = size2;
                                }
                                iMax = Math.max(this.f0, v());
                                z7 = z6;
                                if (iMax > v()) {
                                    W(iMax);
                                    this.W[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                                    z7 = true;
                                    z4 = true;
                                }
                                iMax2 = Math.max(this.g0, p());
                                if (iMax2 > p()) {
                                    R(iMax2);
                                    r6 = 1;
                                    this.W[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                                    r16 = 1;
                                    z4 = true;
                                } else {
                                    r6 = 1;
                                }
                                if (z4) {
                                    r16 = z7;
                                    z4 = z4;
                                    i8 = 8;
                                    r17 = r16;
                                } else {
                                    r16 = z7;
                                    dimensionBehaviour3 = this.W[0];
                                    dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                                    if (dimensionBehaviour3 == dimensionBehaviour4) {
                                        r16 = r16;
                                        if (v() > i2) {
                                            this.K0 = r6;
                                            this.W[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                                            W(i2);
                                            ?? r19 = r6;
                                            z4 = r19 == true ? 1 : 0;
                                            r16 = r19;
                                        }
                                    }
                                    r16 = r16;
                                    r16 = r16;
                                    if (this.W[r6] == dimensionBehaviour4) {
                                        r16 = z7;
                                        z4 = z4;
                                        i8 = 8;
                                        r17 = r16;
                                    } else {
                                        r16 = z7;
                                        z4 = z4;
                                        i8 = 8;
                                        r17 = r16;
                                    }
                                }
                                if (i5 > i8) {
                                    r17 = 0;
                                }
                                i4 = i5;
                                constraintAnchor3 = constraintAnchor2;
                                size2 = i7;
                                r14 = r17;
                            }
                        }
                        weakReference2 = this.O0;
                        if (weakReference2 != null && weakReference2.get() != null) {
                            linearSystem.f(linearSystem.k(this.O), linearSystem.k((ConstraintAnchor) this.O0.get()), 0, 5);
                            this.O0 = null;
                        }
                        weakReference3 = this.N0;
                        if (weakReference3 != null || weakReference3.get() == null) {
                            weakReference4 = this.P0;
                            if (weakReference4 == null && weakReference4.get() != null) {
                                try {
                                    linearSystem.f(linearSystem.k(this.N), linearSystem.k((ConstraintAnchor) this.P0.get()), 0, 5);
                                    try {
                                        this.P0 = null;
                                    } catch (Exception e3) {
                                        e = e3;
                                        r18 = 1;
                                        e.printStackTrace();
                                        System.out.println("EXCEPTION : " + e);
                                        r15 = r18;
                                    }
                                } catch (Exception e4) {
                                    e = e4;
                                    r18 = 1;
                                    e.printStackTrace();
                                    System.out.println("EXCEPTION : " + e);
                                    r15 = r18;
                                    zArr = Optimizer.f11507a;
                                    if (r15 != 0) {
                                        zArr[2] = false;
                                        zE1 = e0(64);
                                        Y(linearSystem, zE1);
                                        size = this.w0.size();
                                        i9 = 0;
                                        z8 = false;
                                        while (i9 < size) {
                                            boolean[] zArr4 = zArr;
                                            constraintWidget = (ConstraintWidget) this.w0.get(i9);
                                            constraintWidget.Y(linearSystem, zE1);
                                            int i41 = i9;
                                            boolean z17 = zE1;
                                            if (constraintWidget.f11493i == -1) {
                                                z8 = true;
                                            } else {
                                                z8 = true;
                                            }
                                            i9 = i41 + 1;
                                            zArr = zArr4;
                                            zE1 = z17;
                                            z8 = z8;
                                        }
                                        zArr2 = zArr;
                                        z6 = z8;
                                    } else {
                                        zArr2 = zArr;
                                        Y(linearSystem, zE0);
                                        while (i6 < size2) {
                                            ((ConstraintWidget) this.w0.get(i6)).Y(linearSystem, zE0);
                                        }
                                        z6 = false;
                                    }
                                    if (z3) {
                                        i7 = size2;
                                    } else {
                                        i7 = size2;
                                    }
                                    iMax = Math.max(this.f0, v());
                                    z7 = z6;
                                    if (iMax > v()) {
                                        W(iMax);
                                        this.W[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                                        z7 = true;
                                        z4 = true;
                                    }
                                    iMax2 = Math.max(this.g0, p());
                                    if (iMax2 > p()) {
                                        R(iMax2);
                                        r6 = 1;
                                        this.W[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                                        r16 = 1;
                                        z4 = true;
                                    } else {
                                        r6 = 1;
                                    }
                                    if (z4) {
                                        r16 = z7;
                                        dimensionBehaviour3 = this.W[0];
                                        dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                                        if (dimensionBehaviour3 == dimensionBehaviour4) {
                                            r16 = r16;
                                            if (v() > i2) {
                                                this.K0 = r6;
                                                this.W[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                                                W(i2);
                                                ?? r110 = r6;
                                                z4 = r110 == true ? 1 : 0;
                                                r16 = r110;
                                            }
                                        }
                                        r16 = r16;
                                        r16 = r16;
                                        if (this.W[r6] == dimensionBehaviour4) {
                                            r16 = z7;
                                            z4 = z4;
                                            i8 = 8;
                                            r17 = r16;
                                        } else {
                                            r16 = z7;
                                            z4 = z4;
                                            i8 = 8;
                                            r17 = r16;
                                        }
                                    } else {
                                        r16 = z7;
                                        z4 = z4;
                                        i8 = 8;
                                        r17 = r16;
                                    }
                                    if (i5 > i8) {
                                        r17 = 0;
                                    }
                                    i4 = i5;
                                    constraintAnchor3 = constraintAnchor2;
                                    size2 = i7;
                                    r14 = r17;
                                }
                            }
                            linearSystem.p();
                            r15 = 1;
                        } else {
                            ConstraintAnchor constraintAnchor5 = constraintAnchor;
                            try {
                                constraintAnchor = constraintAnchor5;
                                linearSystem.f(linearSystem.k((ConstraintAnchor) this.N0.get()), linearSystem.k(constraintAnchor5), 0, 5);
                                this.N0 = null;
                                weakReference4 = this.P0;
                                if (weakReference4 == null) {
                                }
                                linearSystem.p();
                                r15 = 1;
                            } catch (Exception e5) {
                                e = e5;
                                constraintAnchor = constraintAnchor5;
                                r18 = 1;
                                e.printStackTrace();
                                System.out.println("EXCEPTION : " + e);
                                r15 = r18;
                                zArr = Optimizer.f11507a;
                                if (r15 != 0) {
                                    zArr[2] = false;
                                    zE1 = e0(64);
                                    Y(linearSystem, zE1);
                                    size = this.w0.size();
                                    i9 = 0;
                                    z8 = false;
                                    while (i9 < size) {
                                        boolean[] zArr5 = zArr;
                                        constraintWidget = (ConstraintWidget) this.w0.get(i9);
                                        constraintWidget.Y(linearSystem, zE1);
                                        int i42 = i9;
                                        boolean z18 = zE1;
                                        if (constraintWidget.f11493i == -1) {
                                            z8 = true;
                                        } else {
                                            z8 = true;
                                        }
                                        i9 = i42 + 1;
                                        zArr = zArr5;
                                        zE1 = z18;
                                        z8 = z8;
                                    }
                                    zArr2 = zArr;
                                    z6 = z8;
                                } else {
                                    zArr2 = zArr;
                                    Y(linearSystem, zE0);
                                    while (i6 < size2) {
                                        ((ConstraintWidget) this.w0.get(i6)).Y(linearSystem, zE0);
                                    }
                                    z6 = false;
                                }
                                if (z3) {
                                    i7 = size2;
                                } else {
                                    i7 = size2;
                                }
                                iMax = Math.max(this.f0, v());
                                z7 = z6;
                                if (iMax > v()) {
                                    W(iMax);
                                    this.W[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                                    z7 = true;
                                    z4 = true;
                                }
                                iMax2 = Math.max(this.g0, p());
                                if (iMax2 > p()) {
                                    R(iMax2);
                                    r6 = 1;
                                    this.W[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                                    r16 = 1;
                                    z4 = true;
                                } else {
                                    r6 = 1;
                                }
                                if (z4) {
                                    r16 = z7;
                                    dimensionBehaviour3 = this.W[0];
                                    dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                                    if (dimensionBehaviour3 == dimensionBehaviour4) {
                                        r16 = r16;
                                        if (v() > i2) {
                                            this.K0 = r6;
                                            this.W[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                                            W(i2);
                                            ?? r111 = r6;
                                            z4 = r111 == true ? 1 : 0;
                                            r16 = r111;
                                        }
                                    }
                                    r16 = r16;
                                    r16 = r16;
                                    if (this.W[r6] == dimensionBehaviour4) {
                                        r16 = z7;
                                        z4 = z4;
                                        i8 = 8;
                                        r17 = r16;
                                    } else {
                                        r16 = z7;
                                        z4 = z4;
                                        i8 = 8;
                                        r17 = r16;
                                    }
                                } else {
                                    r16 = z7;
                                    z4 = z4;
                                    i8 = 8;
                                    r17 = r16;
                                }
                                if (i5 > i8) {
                                    r17 = 0;
                                }
                                i4 = i5;
                                constraintAnchor3 = constraintAnchor2;
                                size2 = i7;
                                r14 = r17;
                            }
                        }
                    } catch (Exception e6) {
                        e = e6;
                        constraintAnchor2 = constraintAnchor3;
                    }
                } catch (Exception e7) {
                    e = e7;
                    constraintAnchor2 = constraintAnchor3;
                    r18 = r14;
                }
                zArr = Optimizer.f11507a;
                if (r15 != 0) {
                    zArr[2] = false;
                    zE1 = e0(64);
                    Y(linearSystem, zE1);
                    size = this.w0.size();
                    i9 = 0;
                    z8 = false;
                    while (i9 < size) {
                        boolean[] zArr6 = zArr;
                        constraintWidget = (ConstraintWidget) this.w0.get(i9);
                        constraintWidget.Y(linearSystem, zE1);
                        int i43 = i9;
                        boolean z19 = zE1;
                        if (constraintWidget.f11493i == -1 || constraintWidget.f11494j != -1) {
                            z8 = true;
                        }
                        i9 = i43 + 1;
                        zArr = zArr6;
                        zE1 = z19;
                        z8 = z8;
                    }
                    zArr2 = zArr;
                    z6 = z8;
                } else {
                    zArr2 = zArr;
                    Y(linearSystem, zE0);
                    while (i6 < size2) {
                        ((ConstraintWidget) this.w0.get(i6)).Y(linearSystem, zE0);
                    }
                    z6 = false;
                }
                if (z3 || i5 >= 8 || !zArr2[2]) {
                    i7 = size2;
                } else {
                    int i44 = 0;
                    int iMax5 = 0;
                    int iMax6 = 0;
                    while (i44 < size2) {
                        ConstraintWidget constraintWidget14 = (ConstraintWidget) this.w0.get(i44);
                        iMax6 = Math.max(iMax6, constraintWidget14.v() + constraintWidget14.c0);
                        iMax5 = Math.max(iMax5, constraintWidget14.p() + constraintWidget14.d0);
                        i44++;
                        size2 = size2;
                    }
                    i7 = size2;
                    int iMax7 = Math.max(this.f0, iMax6);
                    int iMax8 = Math.max(this.g0, iMax5);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour18 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    z6 = z6;
                    if (dimensionBehaviour7 == dimensionBehaviour18 && v() < iMax7) {
                        z6 = z6;
                        W(iMax7);
                        this.W[0] = dimensionBehaviour18;
                        z6 = true;
                        z4 = true;
                    }
                    if (dimensionBehaviour6 == dimensionBehaviour18 && p() < iMax8) {
                        R(iMax8);
                        this.W[1] = dimensionBehaviour18;
                        z6 = true;
                        z4 = true;
                    }
                }
                iMax = Math.max(this.f0, v());
                z7 = z6;
                if (iMax > v()) {
                    W(iMax);
                    this.W[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                    z7 = true;
                    z4 = true;
                }
                iMax2 = Math.max(this.g0, p());
                if (iMax2 > p()) {
                    R(iMax2);
                    r6 = 1;
                    this.W[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                    r16 = 1;
                    z4 = true;
                } else {
                    r6 = 1;
                }
                if (z4) {
                    r16 = z7;
                    dimensionBehaviour3 = this.W[0];
                    dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour3 == dimensionBehaviour4 && i2 > 0) {
                        r16 = r16;
                        if (v() > i2) {
                            this.K0 = r6;
                            this.W[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                            W(i2);
                            ?? r112 = r6;
                            z4 = r112 == true ? 1 : 0;
                            r16 = r112;
                        }
                    }
                    r16 = r16;
                    r16 = r16;
                    if (this.W[r6] == dimensionBehaviour4 || iMax4 <= 0 || p() <= iMax4) {
                        r16 = z7;
                        z4 = z4;
                        i8 = 8;
                        r17 = r16;
                    } else {
                        this.L0 = r6;
                        this.W[r6] = ConstraintWidget.DimensionBehaviour.FIXED;
                        R(iMax4);
                        i8 = 8;
                        z4 = true;
                        r17 = 1;
                    }
                } else {
                    r16 = z7;
                    z4 = z4;
                    i8 = 8;
                    r17 = r16;
                }
                if (i5 > i8) {
                    r17 = 0;
                }
                i4 = i5;
                constraintAnchor3 = constraintAnchor2;
                size2 = i7;
                r14 = r17;
            }
            z5 = z4 ? 1 : 0;
            this.w0 = arrayList26;
            if (z5) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr9 = this.W;
                dimensionBehaviourArr9[0] = dimensionBehaviour7;
                dimensionBehaviourArr9[1] = dimensionBehaviour6;
            }
            K(linearSystem.m);
        }
        constraintAnchor = constraintAnchor4;
        i2 = iMax3;
        z = false;
        if (e0(64)) {
            z2 = true;
        } else {
            z2 = true;
        }
        linearSystem.getClass();
        linearSystem.f11302h = false;
        if (this.J0 == 0) {
            c2 = 1;
        } else {
            c2 = 1;
        }
        ArrayList arrayList27 = this.w0;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr10 = this.W;
        dimensionBehaviour = dimensionBehaviourArr10[0];
        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour != dimensionBehaviour2) {
            z3 = true;
        } else {
            z3 = true;
        }
        this.F0 = 0;
        this.G0 = 0;
        while (i3 < size2) {
            constraintWidget2 = (ConstraintWidget) this.w0.get(i3);
            if (constraintWidget2 instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget2).Z();
            }
        }
        zE0 = e0(64);
        z4 = z;
        i4 = 0;
        r14 = 1;
        while (r14 != 0) {
            i5 = i4 + 1;
            linearSystem.t();
            this.F0 = 0;
            this.G0 = 0;
            l(linearSystem);
            while (i10 < size2) {
                ((ConstraintWidget) this.w0.get(i10)).l(linearSystem);
            }
            b0(linearSystem);
            weakReference = this.M0;
            if (weakReference != null) {
                constraintAnchor2 = constraintAnchor3;
                weakReference2 = this.O0;
                if (weakReference2 != null) {
                    linearSystem.f(linearSystem.k(this.O), linearSystem.k((ConstraintAnchor) this.O0.get()), 0, 5);
                    this.O0 = null;
                }
                weakReference3 = this.N0;
                if (weakReference3 != null) {
                    weakReference4 = this.P0;
                    if (weakReference4 == null) {
                    }
                    linearSystem.p();
                    r15 = 1;
                } else {
                    weakReference4 = this.P0;
                    if (weakReference4 == null) {
                    }
                    linearSystem.p();
                    r15 = 1;
                }
            } else {
                constraintAnchor2 = constraintAnchor3;
                weakReference2 = this.O0;
                if (weakReference2 != null) {
                    linearSystem.f(linearSystem.k(this.O), linearSystem.k((ConstraintAnchor) this.O0.get()), 0, 5);
                    this.O0 = null;
                }
                weakReference3 = this.N0;
                if (weakReference3 != null) {
                    weakReference4 = this.P0;
                    if (weakReference4 == null) {
                    }
                    linearSystem.p();
                    r15 = 1;
                } else {
                    weakReference4 = this.P0;
                    if (weakReference4 == null) {
                    }
                    linearSystem.p();
                    r15 = 1;
                }
            }
            zArr = Optimizer.f11507a;
            if (r15 != 0) {
                zArr[2] = false;
                zE1 = e0(64);
                Y(linearSystem, zE1);
                size = this.w0.size();
                i9 = 0;
                z8 = false;
                while (i9 < size) {
                    boolean[] zArr7 = zArr;
                    constraintWidget = (ConstraintWidget) this.w0.get(i9);
                    constraintWidget.Y(linearSystem, zE1);
                    int i45 = i9;
                    boolean z110 = zE1;
                    if (constraintWidget.f11493i == -1) {
                        z8 = true;
                    } else {
                        z8 = true;
                    }
                    i9 = i45 + 1;
                    zArr = zArr7;
                    zE1 = z110;
                    z8 = z8;
                }
                zArr2 = zArr;
                z6 = z8;
            } else {
                zArr2 = zArr;
                Y(linearSystem, zE0);
                while (i6 < size2) {
                    ((ConstraintWidget) this.w0.get(i6)).Y(linearSystem, zE0);
                }
                z6 = false;
            }
            if (z3) {
                i7 = size2;
            } else {
                i7 = size2;
            }
            iMax = Math.max(this.f0, v());
            z7 = z6;
            if (iMax > v()) {
                W(iMax);
                this.W[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                z7 = true;
                z4 = true;
            }
            iMax2 = Math.max(this.g0, p());
            if (iMax2 > p()) {
                R(iMax2);
                r6 = 1;
                this.W[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                r16 = 1;
                z4 = true;
            } else {
                r6 = 1;
            }
            if (z4) {
                r16 = z7;
                dimensionBehaviour3 = this.W[0];
                dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour3 == dimensionBehaviour4) {
                    r16 = r16;
                    if (v() > i2) {
                        this.K0 = r6;
                        this.W[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                        W(i2);
                        ?? r113 = r6;
                        z4 = r113 == true ? 1 : 0;
                        r16 = r113;
                    }
                }
                r16 = r16;
                r16 = r16;
                if (this.W[r6] == dimensionBehaviour4) {
                    r16 = z7;
                    z4 = z4;
                    i8 = 8;
                    r17 = r16;
                } else {
                    r16 = z7;
                    z4 = z4;
                    i8 = 8;
                    r17 = r16;
                }
            } else {
                r16 = z7;
                z4 = z4;
                i8 = 8;
                r17 = r16;
            }
            if (i5 > i8) {
                r17 = 0;
            }
            i4 = i5;
            constraintAnchor3 = constraintAnchor2;
            size2 = i7;
            r14 = r17;
        }
        z5 = z4 ? 1 : 0;
        this.w0 = arrayList27;
        if (z5) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr11 = this.W;
            dimensionBehaviourArr11[0] = dimensionBehaviour7;
            dimensionBehaviourArr11[1] = dimensionBehaviour6;
        }
        K(linearSystem.m);
    }

    public final void a0(ConstraintWidget constraintWidget, int i2) {
        if (i2 == 0) {
            int i3 = this.F0 + 1;
            ChainHead[] chainHeadArr = this.I0;
            if (i3 >= chainHeadArr.length) {
                this.I0 = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
            }
            this.I0[this.F0] = new ChainHead(constraintWidget, 0, this.B0);
            this.F0++;
            return;
        }
        if (i2 == 1) {
            int i4 = this.G0 + 1;
            ChainHead[] chainHeadArr2 = this.H0;
            if (i4 >= chainHeadArr2.length) {
                this.H0 = (ChainHead[]) Arrays.copyOf(chainHeadArr2, chainHeadArr2.length * 2);
            }
            this.H0[this.G0] = new ChainHead(constraintWidget, 1, this.B0);
            this.G0++;
        }
    }

    public final void b0(LinearSystem linearSystem) {
        ConstraintWidgetContainer constraintWidgetContainer;
        LinearSystem linearSystem2;
        boolean zE0 = e0(64);
        f(linearSystem, zE0);
        int size = this.w0.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.w0.get(i2);
            boolean[] zArr = constraintWidget.V;
            zArr[0] = false;
            zArr[1] = false;
            if (constraintWidget instanceof Barrier) {
                z = true;
            }
        }
        if (z) {
            for (int i3 = 0; i3 < size; i3++) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) this.w0.get(i3);
                if (constraintWidget2 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget2;
                    for (int i4 = 0; i4 < barrier.x0; i4++) {
                        ConstraintWidget constraintWidget3 = barrier.w0[i4];
                        if (barrier.z0 || constraintWidget3.g()) {
                            int i5 = barrier.y0;
                            if (i5 == 0 || i5 == 1) {
                                constraintWidget3.V[0] = true;
                            } else if (i5 == 2 || i5 == 3) {
                                constraintWidget3.V[1] = true;
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = this.Q0;
        hashSet.clear();
        for (int i6 = 0; i6 < size; i6++) {
            ConstraintWidget constraintWidget4 = (ConstraintWidget) this.w0.get(i6);
            constraintWidget4.getClass();
            boolean z2 = constraintWidget4 instanceof VirtualLayout;
            if (z2 || (constraintWidget4 instanceof Guideline)) {
                if (z2) {
                    hashSet.add(constraintWidget4);
                } else {
                    constraintWidget4.f(linearSystem, zE0);
                }
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                VirtualLayout virtualLayout = (VirtualLayout) ((ConstraintWidget) it.next());
                for (int i7 = 0; i7 < virtualLayout.x0; i7++) {
                    if (hashSet.contains(virtualLayout.w0[i7])) {
                        virtualLayout.f(linearSystem, zE0);
                        hashSet.remove(virtualLayout);
                        break;
                    }
                }
            }
            if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((ConstraintWidget) it2.next()).f(linearSystem, zE0);
                }
                hashSet.clear();
            }
        }
        if (LinearSystem.q) {
            HashSet<ConstraintWidget> hashSet2 = new HashSet();
            for (int i8 = 0; i8 < size; i8++) {
                ConstraintWidget constraintWidget5 = (ConstraintWidget) this.w0.get(i8);
                constraintWidget5.getClass();
                if (!(constraintWidget5 instanceof VirtualLayout) && !(constraintWidget5 instanceof Guideline)) {
                    hashSet2.add(constraintWidget5);
                }
            }
            constraintWidgetContainer = this;
            linearSystem2 = linearSystem;
            constraintWidgetContainer.e(this, linearSystem2, hashSet2, this.W[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? 0 : 1, false);
            for (ConstraintWidget constraintWidget6 : hashSet2) {
                Optimizer.a(constraintWidgetContainer, linearSystem2, constraintWidget6);
                constraintWidget6.f(linearSystem2, zE0);
            }
        } else {
            constraintWidgetContainer = this;
            linearSystem2 = linearSystem;
            for (int i9 = 0; i9 < size; i9++) {
                ConstraintWidget constraintWidget7 = (ConstraintWidget) constraintWidgetContainer.w0.get(i9);
                if (constraintWidget7 instanceof ConstraintWidgetContainer) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget7.W;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget7.S(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget7.U(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    constraintWidget7.f(linearSystem2, zE0);
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget7.S(dimensionBehaviour);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget7.U(dimensionBehaviour2);
                    }
                } else {
                    Optimizer.a(constraintWidgetContainer, linearSystem2, constraintWidget7);
                    if (!(constraintWidget7 instanceof VirtualLayout) && !(constraintWidget7 instanceof Guideline)) {
                        constraintWidget7.f(linearSystem2, zE0);
                    }
                }
            }
        }
        if (constraintWidgetContainer.F0 > 0) {
            Chain.a(constraintWidgetContainer, linearSystem2, null, 0);
        }
        if (constraintWidgetContainer.G0 > 0) {
            Chain.a(constraintWidgetContainer, linearSystem2, null, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:154:0x025e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v9, types: [androidx.constraintlayout.core.widgets.analyzer.DependencyGraph] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r8v44, types: [androidx.constraintlayout.core.widgets.analyzer.DependencyNode] */
    /* JADX WARN: Type inference failed for: r8v46, types: [androidx.constraintlayout.core.widgets.analyzer.DependencyNode] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void c0(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        char c2;
        char c3;
        ?? r1;
        int i9;
        int i10;
        int i11;
        boolean zF;
        int i12;
        int i13;
        ArrayList arrayList;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z;
        int i19;
        boolean z2;
        HorizontalWidgetRun horizontalWidgetRun;
        VerticalWidgetRun verticalWidgetRun;
        ?? r12;
        ?? r2;
        int i20;
        this.D0 = i7;
        this.E0 = i8;
        BasicMeasure basicMeasure = this.x0;
        ConstraintWidgetContainer constraintWidgetContainer = basicMeasure.f11510c;
        ArrayList arrayList2 = basicMeasure.f11508a;
        BasicMeasure.Measurer measurer = this.A0;
        int size = this.w0.size();
        int iV = v();
        int iP = p();
        boolean zB = Optimizer.b(i2, 128);
        boolean z3 = zB || Optimizer.b(i2, 64);
        if (z3) {
            int i21 = 0;
            while (true) {
                if (i21 < size) {
                    ConstraintWidget constraintWidget = (ConstraintWidget) this.w0.get(i21);
                    c2 = 0;
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.W;
                    c3 = 1;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                    boolean z4 = z3;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    boolean z5 = (dimensionBehaviour == dimensionBehaviour2) && (dimensionBehaviourArr[1] == dimensionBehaviour2) && constraintWidget.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    if ((constraintWidget.C() && z5) || ((constraintWidget.D() && z5) || (constraintWidget instanceof VirtualLayout) || constraintWidget.C() || constraintWidget.D())) {
                        r1 = 0;
                    } else {
                        i21++;
                        z3 = z4;
                    }
                } else {
                    c2 = 0;
                    c3 = 1;
                    r1 = z3;
                }
            }
        } else {
            c2 = 0;
            c3 = 1;
            r1 = z3;
        }
        int i22 = r1 & (((i3 == 1073741824 && i5 == 1073741824) || zB) ? c3 : c2);
        if (i22 != 0) {
            int iMin = Math.min(this.E[c2], i4);
            int iMin2 = Math.min(this.E[c3], i6);
            ?? r15 = this.y0;
            if (i3 != 1073741824 || v() == iMin) {
                r12 = c3;
            } else {
                W(iMin);
                ?? r13 = c3;
                r15.f11521b = r13;
                r12 = r13;
            }
            int i23 = 1073741824;
            if (i5 == 1073741824) {
                if (p() != iMin2) {
                    R(iMin2);
                    r15.f11521b = r12;
                }
                i23 = 1073741824;
            }
            if (i3 == i23 && i5 == i23) {
                i9 = i22;
                i10 = size;
                zF = r15.e(zB);
                i11 = 2;
                i20 = 1073741824;
            } else {
                ConstraintWidgetContainer constraintWidgetContainer2 = r15.f11520a;
                if (r15.f11521b) {
                    Iterator it = constraintWidgetContainer2.w0.iterator();
                    int i24 = i22;
                    while (it.hasNext()) {
                        ConstraintWidget constraintWidget2 = (ConstraintWidget) it.next();
                        constraintWidget2.m();
                        int i25 = i24;
                        ?? r3 = c2;
                        constraintWidget2.f11487a = r3;
                        int i26 = size;
                        HorizontalWidgetRun horizontalWidgetRun2 = constraintWidget2.d;
                        horizontalWidgetRun2.f11550e.f11533j = r3;
                        horizontalWidgetRun2.g = r3;
                        horizontalWidgetRun2.n();
                        VerticalWidgetRun verticalWidgetRun2 = constraintWidget2.f11490e;
                        verticalWidgetRun2.f11550e.f11533j = r3;
                        verticalWidgetRun2.g = r3;
                        verticalWidgetRun2.m();
                        it = it;
                        i24 = i25;
                        size = i26;
                    }
                    i9 = i24;
                    i10 = size;
                    ?? r4 = c2;
                    constraintWidgetContainer2.m();
                    constraintWidgetContainer2.f11487a = r4;
                    HorizontalWidgetRun horizontalWidgetRun3 = constraintWidgetContainer2.d;
                    horizontalWidgetRun3.f11550e.f11533j = r4;
                    horizontalWidgetRun3.g = r4;
                    horizontalWidgetRun3.n();
                    VerticalWidgetRun verticalWidgetRun3 = constraintWidgetContainer2.f11490e;
                    verticalWidgetRun3.f11550e.f11533j = r4;
                    verticalWidgetRun3.g = r4;
                    verticalWidgetRun3.m();
                    r15.c();
                    r2 = r4;
                } else {
                    i9 = i22;
                    i10 = size;
                    r2 = c2;
                }
                r15.b(r15.d);
                constraintWidgetContainer2.c0 = r2;
                constraintWidgetContainer2.d0 = r2;
                constraintWidgetContainer2.d.f11552h.d(r2);
                constraintWidgetContainer2.f11490e.f11552h.d(r2);
                i20 = 1073741824;
                if (i3 == 1073741824) {
                    zF = r15.f(r2, zB);
                    i11 = 1;
                } else {
                    i11 = 0;
                    zF = true;
                }
                if (i5 == 1073741824) {
                    zF &= r15.f(1, zB);
                    i11++;
                }
            }
            if (zF) {
                X(i3 == i20, i5 == i20);
            }
        } else {
            i9 = i22;
            i10 = size;
            i11 = 0;
            zF = false;
        }
        if (zF && i11 == 2) {
            return;
        }
        int i27 = this.J0;
        if (i10 > 0) {
            int size2 = this.w0.size();
            boolean zE0 = e0(64);
            BasicMeasure.Measurer measurer2 = this.A0;
            int i28 = 0;
            while (i28 < size2) {
                ConstraintWidget constraintWidget3 = (ConstraintWidget) this.w0.get(i28);
                if ((constraintWidget3 instanceof Guideline) || (constraintWidget3 instanceof Barrier) || constraintWidget3.I || (zE0 && (horizontalWidgetRun = constraintWidget3.d) != null && (verticalWidgetRun = constraintWidget3.f11490e) != null && horizontalWidgetRun.f11550e.f11533j && verticalWidgetRun.f11550e.f11533j)) {
                    i18 = size2;
                    z = zE0;
                } else {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourO = constraintWidget3.o(0);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourO2 = constraintWidget3.o(1);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    i18 = size2;
                    if (dimensionBehaviourO == dimensionBehaviour3) {
                        z = zE0;
                        i19 = 1;
                        if (constraintWidget3.t != 1 && dimensionBehaviourO2 == dimensionBehaviour3 && constraintWidget3.u != 1) {
                            z2 = true;
                        }
                        if (!z2 && e0(i19) && !(constraintWidget3 instanceof VirtualLayout)) {
                            if (dimensionBehaviourO == dimensionBehaviour3 && constraintWidget3.t == 0 && dimensionBehaviourO2 != dimensionBehaviour3 && !constraintWidget3.C()) {
                                z2 = true;
                            }
                            if (dimensionBehaviourO2 == dimensionBehaviour3 && constraintWidget3.u == 0 && dimensionBehaviourO != dimensionBehaviour3 && !constraintWidget3.C()) {
                                z2 = true;
                            }
                            if ((dimensionBehaviourO != dimensionBehaviour3 || dimensionBehaviourO2 == dimensionBehaviour3) && constraintWidget3.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            }
                        }
                        if (z2) {
                            basicMeasure.a(0, constraintWidget3, measurer2);
                        }
                        i28++;
                        size2 = i18;
                        zE0 = z;
                    } else {
                        z = zE0;
                        i19 = 1;
                    }
                    z2 = false;
                    if (!z2) {
                        if (dimensionBehaviourO == dimensionBehaviour3) {
                            z2 = true;
                        }
                        if (dimensionBehaviourO2 == dimensionBehaviour3) {
                            z2 = true;
                        }
                        z2 = dimensionBehaviourO != dimensionBehaviour3 ? true : true;
                    }
                    if (z2) {
                        basicMeasure.a(0, constraintWidget3, measurer2);
                    }
                    i28++;
                    size2 = i18;
                    zE0 = z;
                }
                i28++;
                size2 = i18;
                zE0 = z;
            }
            i12 = 0;
            measurer2.a();
        } else {
            i12 = 0;
        }
        basicMeasure.c(this);
        int size3 = arrayList2.size();
        if (i10 > 0) {
            basicMeasure.b(this, i12, iV, iP);
        }
        if (size3 > 0) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.W;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dimensionBehaviourArr2[i12];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            int i29 = dimensionBehaviour4 == dimensionBehaviour5 ? 1 : i12;
            int i30 = dimensionBehaviourArr2[1] == dimensionBehaviour5 ? 1 : i12;
            int iMax = Math.max(v(), constraintWidgetContainer.f0);
            int iMax2 = Math.max(p(), constraintWidgetContainer.g0);
            int iMax3 = iMax;
            int i31 = i12;
            int i32 = i31;
            while (i31 < size3) {
                ConstraintWidget constraintWidget4 = (ConstraintWidget) arrayList2.get(i31);
                if (constraintWidget4 instanceof VirtualLayout) {
                    int iV2 = constraintWidget4.v();
                    i16 = i30;
                    int iP2 = constraintWidget4.p();
                    int i33 = i32 | (basicMeasure.a(1, constraintWidget4, measurer) ? 1 : 0);
                    int iV3 = constraintWidget4.v();
                    int iP3 = constraintWidget4.p();
                    if (iV3 != iV2) {
                        constraintWidget4.W(iV3);
                        if (i29 != 0 && constraintWidget4.w() + constraintWidget4.Y > iMax3) {
                            iMax3 = Math.max(iMax3, constraintWidget4.n(ConstraintAnchor.Type.RIGHT).e() + constraintWidget4.w() + constraintWidget4.Y);
                        }
                        i17 = 1;
                    } else {
                        i17 = i33;
                    }
                    if (iP3 != iP2) {
                        constraintWidget4.R(iP3);
                        if (i16 != 0 && constraintWidget4.x() + constraintWidget4.Z > iMax2) {
                            iMax2 = Math.max(iMax2, constraintWidget4.n(ConstraintAnchor.Type.BOTTOM).e() + constraintWidget4.x() + constraintWidget4.Z);
                        }
                        i17 = 1;
                    }
                    i32 = (((VirtualLayout) constraintWidget4).E0 ? 1 : 0) | i17;
                } else {
                    i16 = i30;
                }
                i31++;
                i30 = i16;
            }
            int i34 = i30;
            int i35 = 0;
            while (i35 < 2) {
                int i36 = i32;
                int i37 = 0;
                while (i37 < size3) {
                    ConstraintWidget constraintWidget5 = (ConstraintWidget) arrayList2.get(i37);
                    if ((!(constraintWidget5 instanceof Helper) || (constraintWidget5 instanceof VirtualLayout)) && !(constraintWidget5 instanceof Guideline)) {
                        i13 = size3;
                        if (constraintWidget5.k0 != 8 && ((i9 == 0 || !constraintWidget5.d.f11550e.f11533j || !constraintWidget5.f11490e.f11550e.f11533j) && !(constraintWidget5 instanceof VirtualLayout))) {
                            int iV4 = constraintWidget5.v();
                            int iP4 = constraintWidget5.p();
                            arrayList = arrayList2;
                            int i38 = constraintWidget5.e0;
                            i14 = i37;
                            int i39 = (basicMeasure.a(i35 == 1 ? 2 : 1, constraintWidget5, measurer) ? 1 : 0) | i36;
                            int iV5 = constraintWidget5.v();
                            i15 = i35;
                            int iP5 = constraintWidget5.p();
                            if (iV5 != iV4) {
                                constraintWidget5.W(iV5);
                                if (i29 != 0 && constraintWidget5.w() + constraintWidget5.Y > iMax3) {
                                    iMax3 = Math.max(iMax3, constraintWidget5.n(ConstraintAnchor.Type.RIGHT).e() + constraintWidget5.w() + constraintWidget5.Y);
                                }
                                i39 = 1;
                            }
                            if (iP5 != iP4) {
                                constraintWidget5.R(iP5);
                                if (i34 != 0 && constraintWidget5.x() + constraintWidget5.Z > iMax2) {
                                    iMax2 = Math.max(iMax2, constraintWidget5.n(ConstraintAnchor.Type.BOTTOM).e() + constraintWidget5.x() + constraintWidget5.Z);
                                }
                                i39 = 1;
                            }
                            i36 = (!constraintWidget5.G || i38 == constraintWidget5.e0) ? i39 : 1;
                        }
                        i37 = i14 + 1;
                        size3 = i13;
                        i35 = i15;
                        arrayList2 = arrayList;
                    } else {
                        i13 = size3;
                    }
                    i15 = i35;
                    arrayList = arrayList2;
                    i14 = i37;
                    i37 = i14 + 1;
                    size3 = i13;
                    i35 = i15;
                    arrayList2 = arrayList;
                }
                int i40 = size3;
                int i41 = i35;
                ArrayList arrayList3 = arrayList2;
                if (i36 == 0) {
                    break;
                }
                i35 = i41 + 1;
                basicMeasure.b(this, i35, iV, iP);
                size3 = i40;
                arrayList2 = arrayList3;
                i32 = 0;
            }
        }
        this.J0 = i27;
        LinearSystem.q = e0(512);
    }

    public final boolean e0(int i2) {
        return (this.J0 & i2) == i2;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void s(StringBuilder sb) {
        sb.append(this.l + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.Y);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("  actualHeight:" + this.Z);
        sb.append("\n");
        Iterator it = this.w0.iterator();
        while (it.hasNext()) {
            ((ConstraintWidget) it.next()).s(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }

    public ConstraintWidgetContainer(int i2, int i3, int i4, int i5) {
        super(i2, i3, i4, i5);
        this.x0 = new BasicMeasure(this);
        this.y0 = new DependencyGraph(this);
        this.A0 = null;
        this.B0 = false;
        this.C0 = new LinearSystem();
        this.F0 = 0;
        this.G0 = 0;
        this.H0 = new ChainHead[4];
        this.I0 = new ChainHead[4];
        this.J0 = 257;
        this.K0 = false;
        this.L0 = false;
        this.M0 = null;
        this.N0 = null;
        this.O0 = null;
        this.P0 = null;
        this.Q0 = new HashSet();
        this.R0 = new BasicMeasure.Measure();
    }

    public ConstraintWidgetContainer(int i2, int i3) {
        super(i2, i3);
        this.x0 = new BasicMeasure(this);
        this.y0 = new DependencyGraph(this);
        this.A0 = null;
        this.B0 = false;
        this.C0 = new LinearSystem();
        this.F0 = 0;
        this.G0 = 0;
        this.H0 = new ChainHead[4];
        this.I0 = new ChainHead[4];
        this.J0 = 257;
        this.K0 = false;
        this.L0 = false;
        this.M0 = null;
        this.N0 = null;
        this.O0 = null;
        this.P0 = null;
        this.Q0 = new HashSet();
        this.R0 = new BasicMeasure.Measure();
    }

    public ConstraintWidgetContainer() {
        this.x0 = new BasicMeasure(this);
        this.y0 = new DependencyGraph(this);
        this.A0 = null;
        this.B0 = false;
        this.C0 = new LinearSystem();
        this.F0 = 0;
        this.G0 = 0;
        this.H0 = new ChainHead[4];
        this.I0 = new ChainHead[4];
        this.J0 = 257;
        this.K0 = false;
        this.L0 = false;
        this.M0 = null;
        this.N0 = null;
        this.O0 = null;
        this.P0 = null;
        this.Q0 = new HashSet();
        this.R0 = new BasicMeasure.Measure();
    }
}
