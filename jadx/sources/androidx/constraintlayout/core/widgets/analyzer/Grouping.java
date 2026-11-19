package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Grouping {
    public static WidgetGroup a(ConstraintWidget constraintWidget, int i2, ArrayList arrayList, WidgetGroup widgetGroup) {
        int i3;
        int i4 = i2 == 0 ? constraintWidget.u0 : constraintWidget.v0;
        if (i4 != -1 && (widgetGroup == null || i4 != widgetGroup.f11544b)) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                WidgetGroup widgetGroup2 = (WidgetGroup) arrayList.get(i5);
                if (widgetGroup2.f11544b == i4) {
                    if (widgetGroup != null) {
                        widgetGroup.c(i2, widgetGroup2);
                        arrayList.remove(widgetGroup);
                    }
                    widgetGroup = widgetGroup2;
                    break;
                }
            }
        } else if (i4 != -1) {
            return widgetGroup;
        }
        if (widgetGroup == null) {
            if (constraintWidget instanceof HelperWidget) {
                HelperWidget helperWidget = (HelperWidget) constraintWidget;
                int i6 = 0;
                while (true) {
                    if (i6 >= helperWidget.x0) {
                        i3 = -1;
                        break;
                    }
                    ConstraintWidget constraintWidget2 = helperWidget.w0[i6];
                    if ((i2 == 0 && (i3 = constraintWidget2.u0) != -1) || (i2 == 1 && (i3 = constraintWidget2.v0) != -1)) {
                        break;
                    }
                    i6++;
                }
                if (i3 != -1) {
                    for (int i7 = 0; i7 < arrayList.size(); i7++) {
                        WidgetGroup widgetGroup3 = (WidgetGroup) arrayList.get(i7);
                        if (widgetGroup3.f11544b == i3) {
                            widgetGroup = widgetGroup3;
                            break;
                        }
                    }
                }
            }
            if (widgetGroup == null) {
                widgetGroup = new WidgetGroup(i2);
            }
            arrayList.add(widgetGroup);
        }
        ArrayList arrayList2 = widgetGroup.f11543a;
        if (arrayList2.contains(constraintWidget)) {
            return widgetGroup;
        }
        arrayList2.add(constraintWidget);
        if (constraintWidget instanceof Guideline) {
            Guideline guideline = (Guideline) constraintWidget;
            guideline.z0.c(guideline.A0 == 0 ? 1 : 0, widgetGroup, arrayList);
        }
        int i8 = widgetGroup.f11544b;
        if (i2 == 0) {
            constraintWidget.u0 = i8;
            constraintWidget.L.c(i2, widgetGroup, arrayList);
            constraintWidget.N.c(i2, widgetGroup, arrayList);
        } else {
            constraintWidget.v0 = i8;
            constraintWidget.M.c(i2, widgetGroup, arrayList);
            constraintWidget.P.c(i2, widgetGroup, arrayList);
            constraintWidget.O.c(i2, widgetGroup, arrayList);
        }
        constraintWidget.S.c(i2, widgetGroup, arrayList);
        return widgetGroup;
    }

    public static boolean b(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, ConstraintWidget.DimensionBehaviour dimensionBehaviour3, ConstraintWidget.DimensionBehaviour dimensionBehaviour4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.FIXED;
        return (dimensionBehaviour3 == dimensionBehaviour7 || dimensionBehaviour3 == (dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour != dimensionBehaviour6)) || (dimensionBehaviour4 == dimensionBehaviour7 || dimensionBehaviour4 == (dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour2 != dimensionBehaviour5));
    }
}
