package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.analyzer.Grouping;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class HelperWidget extends ConstraintWidget implements Helper {
    public ConstraintWidget[] w0 = new ConstraintWidget[4];
    public int x0 = 0;

    public final void Z(int i2, WidgetGroup widgetGroup, ArrayList arrayList) {
        for (int i3 = 0; i3 < this.x0; i3++) {
            ConstraintWidget constraintWidget = this.w0[i3];
            ArrayList arrayList2 = widgetGroup.f11543a;
            if (!arrayList2.contains(constraintWidget)) {
                arrayList2.add(constraintWidget);
            }
        }
        for (int i4 = 0; i4 < this.x0; i4++) {
            Grouping.a(this.w0[i4], i2, arrayList, widgetGroup);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.Helper
    public final void a(ConstraintWidget constraintWidget) {
        if (constraintWidget == this || constraintWidget == null) {
            return;
        }
        int i2 = this.x0 + 1;
        ConstraintWidget[] constraintWidgetArr = this.w0;
        if (i2 > constraintWidgetArr.length) {
            this.w0 = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
        }
        ConstraintWidget[] constraintWidgetArr2 = this.w0;
        int i3 = this.x0;
        constraintWidgetArr2[i3] = constraintWidget;
        this.x0 = i3 + 1;
    }

    @Override // androidx.constraintlayout.core.widgets.Helper
    public final void b() {
        this.x0 = 0;
        Arrays.fill(this.w0, (Object) null);
    }

    @Override // androidx.constraintlayout.core.widgets.Helper
    public void c() {
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void k(ConstraintWidget constraintWidget, HashMap map) {
        super.k(constraintWidget, map);
        HelperWidget helperWidget = (HelperWidget) constraintWidget;
        this.x0 = 0;
        int i2 = helperWidget.x0;
        for (int i3 = 0; i3 < i2; i3++) {
            a((ConstraintWidget) map.get(helperWidget.w0[i3]));
        }
    }
}
