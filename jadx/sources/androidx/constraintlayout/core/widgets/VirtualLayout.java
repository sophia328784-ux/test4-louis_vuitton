package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;

/* JADX INFO: loaded from: classes.dex */
public class VirtualLayout extends HelperWidget {
    public int y0 = 0;
    public int z0 = 0;
    public int A0 = 0;
    public int B0 = 0;
    public int C0 = 0;
    public int D0 = 0;
    public boolean E0 = false;
    public int F0 = 0;
    public int G0 = 0;
    public final BasicMeasure.Measure H0 = new BasicMeasure.Measure();
    public BasicMeasure.Measurer I0 = null;

    public void a0(int i2, int i3, int i4, int i5) {
    }

    public final void b0(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i2, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i3) {
        BasicMeasure.Measurer measurer;
        ConstraintWidget constraintWidget2;
        while (true) {
            measurer = this.I0;
            if (measurer != null || (constraintWidget2 = this.X) == null) {
                break;
            } else {
                this.I0 = ((ConstraintWidgetContainer) constraintWidget2).A0;
            }
        }
        BasicMeasure.Measure measure = this.H0;
        measure.f11511a = dimensionBehaviour;
        measure.f11512b = dimensionBehaviour2;
        measure.f11513c = i2;
        measure.d = i3;
        measurer.b(constraintWidget, measure);
        constraintWidget.W(measure.f11514e);
        constraintWidget.R(measure.f11515f);
        constraintWidget.G = measure.f11516h;
        constraintWidget.N(measure.g);
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.Helper
    public final void c() {
        for (int i2 = 0; i2 < this.x0; i2++) {
            ConstraintWidget constraintWidget = this.w0[i2];
            if (constraintWidget != null) {
                constraintWidget.I = true;
            }
        }
    }
}
