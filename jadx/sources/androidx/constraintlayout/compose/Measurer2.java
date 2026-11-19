package androidx.constraintlayout.compose;

import androidx.collection.IntIntPair;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.Reference;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.state.helpers.GuidelineReference;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import defpackage.n00;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/constraintlayout/compose/Measurer2;", "Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;", "Landroidx/constraintlayout/compose/DesignInfoProvider;", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Landroidx/compose/ui/unit/Density;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class Measurer2 implements BasicMeasure.Measurer, DesignInfoProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConstraintWidgetContainer f11268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Map f11269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f11270c;
    public final LinkedHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final State f11271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f11272f;
    public final int[] g;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11273a;

        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            try {
                iArr[ConstraintWidget.DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConstraintWidget.DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ConstraintWidget.DimensionBehaviour.MATCH_PARENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f11273a = iArr;
        }
    }

    public Measurer2(Density density) {
        ConstraintWidgetContainer constraintWidgetContainer = new ConstraintWidgetContainer(0, 0);
        constraintWidgetContainer.A0 = this;
        constraintWidgetContainer.y0.f11524f = this;
        this.f11268a = constraintWidgetContainer;
        this.f11269b = new LinkedHashMap();
        this.f11270c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.f11271e = new State(density);
        this.f11272f = new int[2];
        this.g = new int[2];
    }

    public static void d(ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i2, int i3, int i4, boolean z, boolean z2, int i5, int[] iArr) {
        int i6 = WhenMappings.f11273a[dimensionBehaviour.ordinal()];
        if (i6 == 1) {
            iArr[0] = i2;
            iArr[1] = i2;
            return;
        }
        if (i6 == 2) {
            iArr[0] = 0;
            iArr[1] = i5;
            return;
        }
        if (i6 == 3) {
            boolean z3 = z2 || ((i4 == 1 || i4 == 2) && (i4 == 2 || i3 != 1 || z));
            iArr[0] = z3 ? i2 : 0;
            if (!z3) {
                i2 = i5;
            }
            iArr[1] = i2;
            return;
        }
        if (i6 == 4) {
            iArr[0] = i5;
            iArr[1] = i5;
        } else {
            throw new IllegalStateException((dimensionBehaviour + " is not supported").toString());
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measurer
    public final void a() {
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00af  */
    /* JADX WARN: Code duplicated, block: B:32:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:43:0x0102  */
    /* JADX WARN: Code duplicated, block: B:44:0x0105  */
    /* JADX WARN: Code duplicated, block: B:47:0x0113  */
    /* JADX WARN: Code duplicated, block: B:48:0x0121  */
    /* JADX WARN: Code duplicated, block: B:50:0x0124  */
    /* JADX WARN: Code duplicated, block: B:51:0x0132  */
    /* JADX WARN: Code duplicated, block: B:53:0x0135  */
    /* JADX WARN: Code duplicated, block: B:76:0x019a  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measurer
    public final void b(ConstraintWidget constraintWidget, BasicMeasure.Measure measure) {
        int i2;
        int i3;
        Integer numValueOf;
        int i4;
        Integer numValueOf2;
        Integer num;
        int iIntValue;
        int i5;
        int i6;
        Integer numValueOf3;
        int i7;
        Integer numValueOf4;
        Integer num2;
        int iIntValue2;
        boolean z;
        boolean z2;
        int iW;
        char c2;
        Object obj;
        String str = constraintWidget.l;
        LinkedHashMap linkedHashMap = this.f11270c;
        Integer[] numArr = (Integer[]) linkedHashMap.get(str);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.f11511a;
        int i8 = measure.f11513c;
        int i9 = constraintWidget.t;
        int i10 = measure.f11518j;
        boolean z3 = true;
        if ((numArr != null ? numArr[1].intValue() : 0) != constraintWidget.p()) {
            z3 = false;
        }
        boolean zF = constraintWidget.F();
        State state = this.f11271e;
        d(dimensionBehaviour, i8, i9, i10, z3, zF, Constraints.h(state.l), this.f11272f);
        d(measure.f11512b, measure.d, constraintWidget.u, measure.f11518j, (numArr != null ? numArr[0].intValue() : 0) == constraintWidget.v(), constraintWidget.G(), Constraints.g(state.l), this.g);
        int[] iArr = this.f11272f;
        int i11 = iArr[0];
        int i12 = iArr[1];
        int[] iArr2 = this.g;
        long jA = ConstraintsKt.a(i11, i12, iArr2[0], iArr2[1]);
        int i13 = measure.f11518j;
        if (i13 == 1 || i13 == 2) {
            long jC = c(constraintWidget, jA);
            constraintWidget.g = false;
            i2 = (int) (jC >> 32);
            Integer numValueOf5 = Integer.valueOf(i2);
            i3 = constraintWidget.w;
            numValueOf = Integer.valueOf(i3);
            if (i3 <= 0) {
                numValueOf = null;
            }
            i4 = constraintWidget.x;
            numValueOf2 = Integer.valueOf(i4);
            if (i4 > 0) {
                num = numValueOf2;
            } else {
                num = null;
            }
            iIntValue = ((Number) RangesKt.g(numValueOf5, numValueOf, num)).intValue();
            i5 = (int) (jC & BodyPartID.bodyIdMax);
            Integer numValueOf6 = Integer.valueOf(i5);
            i6 = constraintWidget.z;
            numValueOf3 = Integer.valueOf(i6);
            if (i6 <= 0) {
                numValueOf3 = null;
            }
            i7 = constraintWidget.A;
            numValueOf4 = Integer.valueOf(i7);
            if (i7 > 0) {
                num2 = numValueOf4;
            } else {
                num2 = null;
            }
            iIntValue2 = ((Number) RangesKt.g(numValueOf6, numValueOf3, num2)).intValue();
            if (iIntValue != i2) {
                jA = ConstraintsKt.a(iIntValue, iIntValue, Constraints.i(jA), Constraints.g(jA));
                z = true;
            } else {
                z = false;
            }
            if (iIntValue2 != i5) {
                jA = ConstraintsKt.a(Constraints.j(jA), Constraints.h(jA), iIntValue2, iIntValue2);
                z2 = true;
            } else {
                z2 = z;
            }
            if (z2) {
                c(constraintWidget, jA);
                constraintWidget.g = false;
            }
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = measure.f11511a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour2 != dimensionBehaviour3 || constraintWidget.t != 0 || measure.f11512b != dimensionBehaviour3 || constraintWidget.u != 0) {
                long jC2 = c(constraintWidget, jA);
                constraintWidget.g = false;
                i2 = (int) (jC2 >> 32);
                Integer numValueOf7 = Integer.valueOf(i2);
                i3 = constraintWidget.w;
                numValueOf = Integer.valueOf(i3);
                if (i3 <= 0) {
                    numValueOf = null;
                }
                i4 = constraintWidget.x;
                numValueOf2 = Integer.valueOf(i4);
                if (i4 > 0) {
                    num = numValueOf2;
                } else {
                    num = null;
                }
                iIntValue = ((Number) RangesKt.g(numValueOf7, numValueOf, num)).intValue();
                i5 = (int) (jC2 & BodyPartID.bodyIdMax);
                Integer numValueOf8 = Integer.valueOf(i5);
                i6 = constraintWidget.z;
                numValueOf3 = Integer.valueOf(i6);
                if (i6 <= 0) {
                    numValueOf3 = null;
                }
                i7 = constraintWidget.A;
                numValueOf4 = Integer.valueOf(i7);
                if (i7 > 0) {
                    num2 = numValueOf4;
                } else {
                    num2 = null;
                }
                iIntValue2 = ((Number) RangesKt.g(numValueOf8, numValueOf3, num2)).intValue();
                if (iIntValue != i2) {
                    jA = ConstraintsKt.a(iIntValue, iIntValue, Constraints.i(jA), Constraints.g(jA));
                    z = true;
                } else {
                    z = false;
                }
                if (iIntValue2 != i5) {
                    jA = ConstraintsKt.a(Constraints.j(jA), Constraints.h(jA), iIntValue2, iIntValue2);
                    z2 = true;
                } else {
                    z2 = z;
                }
                if (z2) {
                    c(constraintWidget, jA);
                    constraintWidget.g = false;
                }
            }
        }
        Placeable placeable = (Placeable) this.f11269b.get(constraintWidget.j0);
        measure.f11514e = placeable != null ? placeable.f9548b : constraintWidget.v();
        measure.f11515f = placeable != null ? placeable.f9549c : constraintWidget.p();
        if (placeable != null) {
            ArrayList arrayList = state.f11452i;
            if (state.f11453j) {
                arrayList.clear();
                Iterator it = state.f11451h.iterator();
                while (it.hasNext()) {
                    ConstraintWidget constraintWidgetB = ((Reference) state.f11448c.get(it.next())).b();
                    if (constraintWidgetB != null) {
                        arrayList.add(constraintWidgetB);
                    }
                }
                state.f11453j = false;
            }
            if (arrayList.contains(constraintWidget)) {
                iW = placeable.W(AlignmentLineKt.f9416a);
            } else {
                iW = Integer.MIN_VALUE;
            }
        } else {
            iW = Integer.MIN_VALUE;
        }
        measure.f11516h = iW != Integer.MIN_VALUE;
        measure.g = iW;
        Object obj2 = linkedHashMap.get(str);
        if (obj2 == null) {
            c2 = 0;
            Integer[] numArr2 = {0, 0, Integer.MIN_VALUE};
            linkedHashMap.put(str, numArr2);
            obj = numArr2;
        } else {
            c2 = 0;
            obj = obj2;
        }
        Integer[] numArr3 = (Integer[]) obj;
        numArr3[c2] = Integer.valueOf(measure.f11514e);
        numArr3[1] = Integer.valueOf(measure.f11515f);
        numArr3[2] = Integer.valueOf(measure.g);
        measure.f11517i = (measure.f11514e == measure.f11513c && measure.f11515f == measure.d) ? c2 : 1;
    }

    public final long c(ConstraintWidget constraintWidget, long j2) {
        int i2;
        Object obj = constraintWidget.j0;
        int i3 = 0;
        if (!(constraintWidget instanceof VirtualLayout)) {
            if (!(obj instanceof Measurable)) {
                return IntIntPair.a(0, 0);
            }
            Placeable placeableT = ((Measurable) obj).T(j2);
            this.f11269b.put(obj, placeableT);
            return IntIntPair.a(placeableT.f9548b, placeableT.f9549c);
        }
        if (Constraints.f(j2)) {
            i2 = 1073741824;
        } else {
            i2 = Constraints.d(j2) ? Integer.MIN_VALUE : 0;
        }
        if (Constraints.e(j2)) {
            i3 = 1073741824;
        } else if (Constraints.c(j2)) {
            i3 = Integer.MIN_VALUE;
        }
        VirtualLayout virtualLayout = (VirtualLayout) constraintWidget;
        virtualLayout.a0(i2, Constraints.h(j2), i3, Constraints.g(j2));
        return IntIntPair.a(virtualLayout.F0, virtualLayout.G0);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0075  */
    public final void e(Placeable.PlacementScope placementScope, List list, Map map) {
        ConstraintWidget constraintWidget;
        Placeable placeable;
        Placeable.PlacementScope placementScope2;
        this.f11269b = map;
        LinkedHashMap linkedHashMap = this.d;
        boolean zIsEmpty = linkedHashMap.isEmpty();
        ConstraintWidgetContainer constraintWidgetContainer = this.f11268a;
        if (zIsEmpty) {
            ArrayList arrayList = constraintWidgetContainer.w0;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) arrayList.get(i2);
                Object obj = constraintWidget2.j0;
                if (obj instanceof Measurable) {
                    WidgetFrame widgetFrame = constraintWidget2.f11495k;
                    ConstraintWidget constraintWidget3 = widgetFrame.f11454a;
                    if (constraintWidget3 != null) {
                        widgetFrame.f11455b = constraintWidget3.w();
                        widgetFrame.f11456c = constraintWidget3.x();
                        widgetFrame.d = constraintWidget3.w() + constraintWidget3.Y;
                        widgetFrame.f11457e = constraintWidget3.x() + constraintWidget3.Z;
                        widgetFrame.c(constraintWidget3.f11495k);
                    }
                    linkedHashMap.put(MeasurerKt.a((Measurable) obj), new WidgetFrame(widgetFrame));
                }
            }
        }
        int size2 = list.size();
        int i3 = 0;
        while (i3 < size2) {
            Measurable measurable = (Measurable) list.get(i3);
            final WidgetFrame widgetFrame2 = (WidgetFrame) linkedHashMap.get(MeasurerKt.a(measurable));
            if (widgetFrame2 == null || (placeable = (Placeable) this.f11269b.get(measurable)) == null) {
                placementScope2 = placementScope;
            } else {
                IntOffset.f11012b.getClass();
                if (widgetFrame2.q == 8) {
                    placementScope2 = placementScope;
                } else if (Float.isNaN(widgetFrame2.f11459h) && Float.isNaN(widgetFrame2.f11460i) && Float.isNaN(widgetFrame2.f11461j) && Float.isNaN(widgetFrame2.f11462k) && Float.isNaN(widgetFrame2.l) && Float.isNaN(widgetFrame2.m) && Float.isNaN(widgetFrame2.n) && Float.isNaN(widgetFrame2.o) && Float.isNaN(widgetFrame2.p)) {
                    Placeable.PlacementScope.u(placementScope, placeable, (((long) widgetFrame2.f11456c) & BodyPartID.bodyIdMax) | (((long) widgetFrame2.f11455b) << 32));
                    placementScope2 = placementScope;
                } else {
                    placementScope2 = placementScope;
                    placementScope2.E(placeable, widgetFrame2.f11455b, widgetFrame2.f11456c, Float.isNaN(widgetFrame2.m) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : widgetFrame2.m, new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.constraintlayout.compose.ConstraintLayoutKt$placeWithFrameTransform$layerBlock$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj2;
                            WidgetFrame widgetFrame3 = widgetFrame2;
                            if (!Float.isNaN(widgetFrame3.f11458f) || !Float.isNaN(widgetFrame3.g)) {
                                graphicsLayerScope.C0(TransformOriginKt.a(Float.isNaN(widgetFrame3.f11458f) ? 0.5f : widgetFrame3.f11458f, Float.isNaN(widgetFrame3.g) ? 0.5f : widgetFrame3.g));
                            }
                            if (!Float.isNaN(widgetFrame3.f11459h)) {
                                graphicsLayerScope.r(widgetFrame3.f11459h);
                            }
                            if (!Float.isNaN(widgetFrame3.f11460i)) {
                                graphicsLayerScope.s(widgetFrame3.f11460i);
                            }
                            if (!Float.isNaN(widgetFrame3.f11461j)) {
                                graphicsLayerScope.v(widgetFrame3.f11461j);
                            }
                            if (!Float.isNaN(widgetFrame3.f11462k)) {
                                graphicsLayerScope.D(widgetFrame3.f11462k);
                            }
                            if (!Float.isNaN(widgetFrame3.l)) {
                                graphicsLayerScope.g(widgetFrame3.l);
                            }
                            if (!Float.isNaN(widgetFrame3.m)) {
                                graphicsLayerScope.t(widgetFrame3.m);
                            }
                            if (!Float.isNaN(widgetFrame3.n) || !Float.isNaN(widgetFrame3.o)) {
                                graphicsLayerScope.m(Float.isNaN(widgetFrame3.n) ? 1.0f : widgetFrame3.n);
                                graphicsLayerScope.x(Float.isNaN(widgetFrame3.o) ? 1.0f : widgetFrame3.o);
                            }
                            if (!Float.isNaN(widgetFrame3.p)) {
                                graphicsLayerScope.d(widgetFrame3.p);
                            }
                            return Unit.f71739a;
                        }
                    });
                }
            }
            i3++;
            placementScope = placementScope2;
        }
        if (LayoutInfoFlags.BOUNDS == null) {
            StringBuilder sbT = n00.t("{   root: {interpolated: { left:  0,  top:  0,");
            sbT.append("  right:   " + constraintWidgetContainer.v() + " ,");
            sbT.append("  bottom:  " + constraintWidgetContainer.p() + " ,");
            sbT.append(" } }");
            for (ConstraintWidget constraintWidget4 : constraintWidgetContainer.w0) {
                Object obj2 = constraintWidget4.j0;
                if (obj2 instanceof Measurable) {
                    WidgetFrame widgetFrame3 = null;
                    if (constraintWidget4.l == null) {
                        Measurable measurable2 = (Measurable) obj2;
                        Object objA = LayoutIdKt.a(measurable2);
                        if (objA == null) {
                            objA = ConstraintLayoutTagKt.a(measurable2);
                        }
                        constraintWidget4.l = objA != null ? objA.toString() : null;
                    }
                    WidgetFrame widgetFrame4 = (WidgetFrame) linkedHashMap.get(MeasurerKt.a((Measurable) obj2));
                    if (widgetFrame4 != null && (constraintWidget = widgetFrame4.f11454a) != null) {
                        widgetFrame3 = constraintWidget.f11495k;
                    }
                    if (widgetFrame3 != null) {
                        sbT.append(" " + constraintWidget4.l + ": {");
                        sbT.append(" interpolated : ");
                        HashMap map2 = widgetFrame3.r;
                        sbT.append("{\n");
                        WidgetFrame.b(widgetFrame3.f11455b, "left", sbT);
                        WidgetFrame.b(widgetFrame3.f11456c, "top", sbT);
                        WidgetFrame.b(widgetFrame3.d, "right", sbT);
                        WidgetFrame.b(widgetFrame3.f11457e, "bottom", sbT);
                        WidgetFrame.a(widgetFrame3.f11458f, "pivotX", sbT);
                        WidgetFrame.a(widgetFrame3.g, "pivotY", sbT);
                        WidgetFrame.a(widgetFrame3.f11459h, "rotationX", sbT);
                        WidgetFrame.a(widgetFrame3.f11460i, "rotationY", sbT);
                        WidgetFrame.a(widgetFrame3.f11461j, "rotationZ", sbT);
                        WidgetFrame.a(widgetFrame3.f11462k, "translationX", sbT);
                        WidgetFrame.a(widgetFrame3.l, "translationY", sbT);
                        WidgetFrame.a(widgetFrame3.m, "translationZ", sbT);
                        WidgetFrame.a(widgetFrame3.n, "scaleX", sbT);
                        WidgetFrame.a(widgetFrame3.o, "scaleY", sbT);
                        WidgetFrame.a(widgetFrame3.p, "alpha", sbT);
                        WidgetFrame.b(widgetFrame3.q, "visibility", sbT);
                        WidgetFrame.a(Float.NaN, "interpolatedPos", sbT);
                        ConstraintWidget constraintWidget5 = widgetFrame3.f11454a;
                        if (constraintWidget5 != null) {
                            for (ConstraintAnchor.Type type : ConstraintAnchor.Type.values()) {
                                ConstraintAnchor constraintAnchorN = constraintWidget5.n(type);
                                if (constraintAnchorN != null && constraintAnchorN.f11484f != null) {
                                    sbT.append("Anchor");
                                    sbT.append(type.name());
                                    sbT.append(": ['");
                                    String str = constraintAnchorN.f11484f.d.l;
                                    if (str == null) {
                                        str = "#PARENT";
                                    }
                                    sbT.append(str);
                                    sbT.append("', '");
                                    sbT.append(constraintAnchorN.f11484f.f11483e.name());
                                    sbT.append("', '");
                                    sbT.append(constraintAnchorN.g);
                                    sbT.append("'],\n");
                                }
                            }
                        }
                        WidgetFrame.a(Float.NaN, "phone_orientation", sbT);
                        WidgetFrame.a(Float.NaN, "phone_orientation", sbT);
                        if (map2.size() != 0) {
                            sbT.append("custom : {\n");
                            for (String str2 : map2.keySet()) {
                                CustomVariable customVariable = (CustomVariable) map2.get(str2);
                                sbT.append(str2);
                                sbT.append(": ");
                                switch (customVariable.f11322b) {
                                    case 900:
                                        sbT.append(customVariable.f11323c);
                                        sbT.append(",\n");
                                        break;
                                    case 901:
                                    case 905:
                                        sbT.append(customVariable.d);
                                        sbT.append(",\n");
                                        break;
                                    case 902:
                                        sbT.append("'");
                                        sbT.append(CustomVariable.a(customVariable.f11323c));
                                        sbT.append("',\n");
                                        break;
                                    case 903:
                                        sbT.append("'");
                                        sbT.append(customVariable.f11324e);
                                        sbT.append("',\n");
                                        break;
                                    case 904:
                                        sbT.append("'");
                                        sbT.append(customVariable.f11325f);
                                        sbT.append("',\n");
                                        break;
                                }
                            }
                            sbT.append("}\n");
                        }
                        sbT.append("}\n");
                        sbT.append("}, ");
                    }
                } else if (constraintWidget4 instanceof Guideline) {
                    sbT.append(" " + constraintWidget4.l + ": {");
                    Guideline guideline = (Guideline) constraintWidget4;
                    if (guideline.A0 == 0) {
                        sbT.append(" type: 'hGuideline', ");
                    } else {
                        sbT.append(" type: 'vGuideline', ");
                    }
                    sbT.append(" interpolated: ");
                    sbT.append(" { left: " + guideline.w() + ", top: " + guideline.x() + ", right: " + (guideline.v() + guideline.w()) + ", bottom: " + (guideline.p() + guideline.x()) + " }");
                    sbT.append("}, ");
                }
            }
            sbT.append(" }");
        }
    }

    public final long f(long j2, LayoutDirection layoutDirection, ConstraintSet constraintSet, List list, LinkedHashMap linkedHashMap, int i2) {
        androidx.constraintlayout.core.state.Dimension dimension;
        androidx.constraintlayout.core.state.Dimension dimension2;
        HelperReference helperReference;
        HelperWidget helperWidgetS;
        HelperWidget helperWidgetS2;
        this.f11269b = linkedHashMap;
        if (list.isEmpty()) {
            return IntSizeKt.a(Constraints.j(j2), Constraints.i(j2));
        }
        boolean zF = Constraints.f(j2);
        String str = androidx.constraintlayout.core.state.Dimension.f11438i;
        if (zF) {
            dimension = androidx.constraintlayout.core.state.Dimension.b(Constraints.h(j2));
        } else {
            dimension = new androidx.constraintlayout.core.state.Dimension(str);
            int iJ = Constraints.j(j2);
            if (iJ >= 0) {
                dimension.f11441a = iJ;
            }
        }
        State state = this.f11271e;
        ConstraintReference constraintReference = state.f11450f;
        HashMap map = state.d;
        HashMap map2 = state.f11448c;
        ConstraintReference constraintReference2 = state.f11450f;
        constraintReference.e0 = dimension;
        if (Constraints.e(j2)) {
            dimension2 = androidx.constraintlayout.core.state.Dimension.b(Constraints.g(j2));
        } else {
            dimension2 = new androidx.constraintlayout.core.state.Dimension(str);
            int i3 = Constraints.i(j2);
            if (i3 >= 0) {
                dimension2.f11441a = i3;
            }
        }
        constraintReference2.f0 = dimension2;
        androidx.constraintlayout.core.state.Dimension dimension3 = constraintReference2.e0;
        ConstraintWidgetContainer constraintWidgetContainer = this.f11268a;
        dimension3.a(constraintWidgetContainer, 0);
        constraintReference2.f0.a(constraintWidgetContainer, 1);
        state.l = j2;
        state.f11447b = !(layoutDirection == LayoutDirection.Rtl);
        this.f11269b.clear();
        this.f11270c.clear();
        this.d.clear();
        if (constraintSet.b(list)) {
            Iterator it = map2.keySet().iterator();
            while (it.hasNext()) {
                ((Reference) map2.get(it.next())).b().H();
            }
            map2.clear();
            map2.put(0, constraintReference2);
            map.clear();
            state.f11449e.clear();
            state.f11451h.clear();
            state.f11453j = true;
            constraintSet.a(state, list);
            ConstraintLayoutKt.a(state, list);
            constraintWidgetContainer.w0.clear();
            constraintReference2.e0.a(constraintWidgetContainer, 0);
            constraintReference2.f0.a(constraintWidgetContainer, 1);
            for (Object obj : map.keySet()) {
                HelperWidget helperWidgetS3 = ((HelperReference) map.get(obj)).s();
                if (helperWidgetS3 != null) {
                    Reference referenceB = (Reference) map2.get(obj);
                    if (referenceB == null) {
                        referenceB = state.b(obj);
                    }
                    referenceB.a(helperWidgetS3);
                }
            }
            for (Object obj2 : map2.keySet()) {
                Reference reference = (Reference) map2.get(obj2);
                if (reference != constraintReference2 && (reference.c() instanceof HelperReference) && (helperWidgetS2 = ((HelperReference) reference.c()).s()) != null) {
                    Reference referenceB2 = (Reference) map2.get(obj2);
                    if (referenceB2 == null) {
                        referenceB2 = state.b(obj2);
                    }
                    referenceB2.a(helperWidgetS2);
                }
            }
            Iterator it2 = map2.keySet().iterator();
            while (it2.hasNext()) {
                Reference reference2 = (Reference) map2.get(it2.next());
                if (reference2 != constraintReference2) {
                    ConstraintWidget constraintWidgetB = reference2.b();
                    constraintWidgetB.m0 = reference2.getKey().toString();
                    constraintWidgetB.X = null;
                    if (reference2.c() instanceof GuidelineReference) {
                        reference2.apply();
                    }
                    constraintWidgetContainer.a(constraintWidgetB);
                } else {
                    reference2.a(constraintWidgetContainer);
                }
            }
            Iterator it3 = map.keySet().iterator();
            while (it3.hasNext()) {
                HelperReference helperReference2 = (HelperReference) map.get(it3.next());
                if (helperReference2.s() != null) {
                    Iterator it4 = helperReference2.m0.iterator();
                    while (it4.hasNext()) {
                        helperReference2.s().a(((Reference) map2.get(it4.next())).b());
                    }
                    helperReference2.apply();
                } else {
                    helperReference2.apply();
                }
            }
            Iterator it5 = map2.keySet().iterator();
            while (it5.hasNext()) {
                Reference reference3 = (Reference) map2.get(it5.next());
                if (reference3 != constraintReference2 && (reference3.c() instanceof HelperReference) && (helperWidgetS = (helperReference = (HelperReference) reference3.c()).s()) != null) {
                    for (Object obj3 : helperReference.m0) {
                        Reference reference4 = (Reference) map2.get(obj3);
                        if (reference4 != null) {
                            helperWidgetS.a(reference4.b());
                        } else if (obj3 instanceof Reference) {
                            helperWidgetS.a(((Reference) obj3).b());
                        } else {
                            System.out.println("couldn't find reference for " + obj3);
                        }
                    }
                    reference3.apply();
                }
            }
            for (Object obj4 : map2.keySet()) {
                Reference reference5 = (Reference) map2.get(obj4);
                reference5.apply();
                ConstraintWidget constraintWidgetB2 = reference5.b();
                if (constraintWidgetB2 != null && obj4 != null) {
                    constraintWidgetB2.l = obj4.toString();
                }
            }
        } else {
            ConstraintLayoutKt.a(state, list);
        }
        constraintWidgetContainer.W(Constraints.h(j2));
        constraintWidgetContainer.R(Constraints.g(j2));
        constraintWidgetContainer.x0.c(constraintWidgetContainer);
        constraintWidgetContainer.J0 = i2;
        LinearSystem.q = constraintWidgetContainer.e0(512);
        constraintWidgetContainer.c0(constraintWidgetContainer.J0, 0, 0, 0, 0, 0, 0);
        return IntSizeKt.a(constraintWidgetContainer.v(), constraintWidgetContainer.p());
    }
}
