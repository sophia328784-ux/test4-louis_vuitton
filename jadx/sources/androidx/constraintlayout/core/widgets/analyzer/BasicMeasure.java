package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class BasicMeasure {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f11508a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Measure f11509b = new Measure();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintWidgetContainer f11510c;

    public static class Measure {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ConstraintWidget.DimensionBehaviour f11511a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ConstraintWidget.DimensionBehaviour f11512b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11513c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11514e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f11515f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f11516h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f11517i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f11518j;
    }

    public interface Measurer {
        void a();

        void b(ConstraintWidget constraintWidget, Measure measure);
    }

    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.f11510c = constraintWidgetContainer;
    }

    public final boolean a(int i2, ConstraintWidget constraintWidget, Measurer measurer) {
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.W;
        int[] iArr = constraintWidget.v;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        Measure measure = this.f11509b;
        measure.f11511a = dimensionBehaviour;
        measure.f11512b = dimensionBehaviourArr[1];
        measure.f11513c = constraintWidget.v();
        measure.d = constraintWidget.p();
        measure.f11517i = false;
        measure.f11518j = i2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = measure.f11511a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z = dimensionBehaviour2 == dimensionBehaviour3;
        boolean z2 = measure.f11512b == dimensionBehaviour3;
        boolean z3 = z && constraintWidget.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        boolean z4 = z2 && constraintWidget.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (z3 && iArr[0] == 4) {
            measure.f11511a = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z4 && iArr[1] == 4) {
            measure.f11512b = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        measurer.b(constraintWidget, measure);
        constraintWidget.W(measure.f11514e);
        constraintWidget.R(measure.f11515f);
        constraintWidget.G = measure.f11516h;
        constraintWidget.N(measure.g);
        measure.f11518j = 0;
        return measure.f11517i;
    }

    public final void b(ConstraintWidgetContainer constraintWidgetContainer, int i2, int i3, int i4) {
        int i5 = constraintWidgetContainer.f0;
        int i6 = constraintWidgetContainer.g0;
        constraintWidgetContainer.f0 = 0;
        constraintWidgetContainer.g0 = 0;
        constraintWidgetContainer.W(i3);
        constraintWidgetContainer.R(i4);
        if (i5 < 0) {
            constraintWidgetContainer.f0 = 0;
        } else {
            constraintWidgetContainer.f0 = i5;
        }
        if (i6 < 0) {
            constraintWidgetContainer.g0 = 0;
        } else {
            constraintWidgetContainer.g0 = i6;
        }
        ConstraintWidgetContainer constraintWidgetContainer2 = this.f11510c;
        constraintWidgetContainer2.z0 = i2;
        constraintWidgetContainer2.Z();
    }

    public final void c(ConstraintWidgetContainer constraintWidgetContainer) {
        ArrayList arrayList = this.f11508a;
        arrayList.clear();
        int size = constraintWidgetContainer.w0.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) constraintWidgetContainer.w0.get(i2);
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.W;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour == dimensionBehaviour2 || dimensionBehaviourArr[1] == dimensionBehaviour2) {
                arrayList.add(constraintWidget);
            }
        }
        constraintWidgetContainer.y0.f11521b = true;
    }
}
