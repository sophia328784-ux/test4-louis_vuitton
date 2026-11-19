package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.Cache;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class WidgetContainer extends ConstraintWidget {
    public ArrayList w0;

    public WidgetContainer() {
        this.w0 = new ArrayList();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void H() {
        this.w0.clear();
        super.H();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void K(Cache cache) {
        super.K(cache);
        int size = this.w0.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((ConstraintWidget) this.w0.get(i2)).K(cache);
        }
    }

    public void Z() {
        ArrayList arrayList = this.w0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.w0.get(i2);
            if (constraintWidget instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget).Z();
            }
        }
    }

    public final void a(ConstraintWidget constraintWidget) {
        this.w0.add(constraintWidget);
        ConstraintWidget constraintWidget2 = constraintWidget.X;
        if (constraintWidget2 != null) {
            ((WidgetContainer) constraintWidget2).w0.remove(constraintWidget);
            constraintWidget.H();
        }
        constraintWidget.X = this;
    }

    public WidgetContainer(int i2, int i3, int i4, int i5) {
        super(i2, i3, i4, i5);
        this.w0 = new ArrayList();
    }

    public WidgetContainer(int i2, int i3) {
        super(i2, i3);
        this.w0 = new ArrayList();
    }
}
