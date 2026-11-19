package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import defpackage.a;
import defpackage.n00;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class WidgetGroup {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f11542f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11545c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f11543a = new ArrayList();
    public ArrayList d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11546e = -1;

    public static class MeasureResult {
    }

    public WidgetGroup(int i2) {
        int i3 = f11542f;
        f11542f = i3 + 1;
        this.f11544b = i3;
        this.f11545c = i2;
    }

    public final void a(ArrayList arrayList) {
        int size = this.f11543a.size();
        if (this.f11546e != -1 && size > 0) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                WidgetGroup widgetGroup = (WidgetGroup) arrayList.get(i2);
                if (this.f11546e == widgetGroup.f11544b) {
                    c(this.f11545c, widgetGroup);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int b(LinearSystem linearSystem, int i2) {
        int iN;
        int iN2;
        ArrayList arrayList = this.f11543a;
        if (arrayList.size() == 0) {
            return 0;
        }
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) ((ConstraintWidget) arrayList.get(0)).X;
        linearSystem.t();
        constraintWidgetContainer.f(linearSystem, false);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ((ConstraintWidget) arrayList.get(i3)).f(linearSystem, false);
        }
        if (i2 == 0 && constraintWidgetContainer.F0 > 0) {
            Chain.a(constraintWidgetContainer, linearSystem, arrayList, 0);
        }
        if (i2 == 1 && constraintWidgetContainer.G0 > 0) {
            Chain.a(constraintWidgetContainer, linearSystem, arrayList, 1);
        }
        try {
            linearSystem.p();
        } catch (Exception e2) {
            System.err.println(e2.toString() + "\n" + Arrays.toString(e2.getStackTrace()).replace("[", "   at ").replace(",", "\n   at").replace("]", ""));
        }
        this.d = new ArrayList();
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) arrayList.get(i4);
            MeasureResult measureResult = new MeasureResult();
            new WeakReference(constraintWidget);
            LinearSystem.n(constraintWidget.L);
            LinearSystem.n(constraintWidget.M);
            LinearSystem.n(constraintWidget.N);
            LinearSystem.n(constraintWidget.O);
            LinearSystem.n(constraintWidget.P);
            this.d.add(measureResult);
        }
        if (i2 == 0) {
            iN = LinearSystem.n(constraintWidgetContainer.L);
            iN2 = LinearSystem.n(constraintWidgetContainer.N);
            linearSystem.t();
        } else {
            iN = LinearSystem.n(constraintWidgetContainer.M);
            iN2 = LinearSystem.n(constraintWidgetContainer.O);
            linearSystem.t();
        }
        return iN2 - iN;
    }

    public final void c(int i2, WidgetGroup widgetGroup) {
        int i3 = widgetGroup.f11544b;
        for (ConstraintWidget constraintWidget : this.f11543a) {
            ArrayList arrayList = widgetGroup.f11543a;
            if (!arrayList.contains(constraintWidget)) {
                arrayList.add(constraintWidget);
            }
            if (i2 == 0) {
                constraintWidget.u0 = i3;
            } else {
                constraintWidget.v0 = i3;
            }
        }
        this.f11546e = i3;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        int i2 = this.f11545c;
        if (i2 == 0) {
            str = "Horizontal";
        } else if (i2 == 1) {
            str = "Vertical";
        } else {
            str = i2 == 2 ? "Both" : "Unknown";
        }
        sb.append(str);
        sb.append(" [");
        String strI = a.i(this.f11544b, "] <", sb);
        for (ConstraintWidget constraintWidget : this.f11543a) {
            StringBuilder sbU = n00.u(strI, " ");
            sbU.append(constraintWidget.m0);
            strI = sbU.toString();
        }
        return strI.concat(" >");
    }
}
