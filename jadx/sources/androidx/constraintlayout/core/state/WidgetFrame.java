package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class WidgetFrame {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConstraintWidget f11454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11456c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11458f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11459h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11460i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f11461j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f11462k;
    public float l;
    public float m;
    public float n;
    public float o;
    public float p;
    public int q;
    public final HashMap r;

    public WidgetFrame(WidgetFrame widgetFrame) {
        this.f11454a = null;
        this.f11455b = 0;
        this.f11456c = 0;
        this.d = 0;
        this.f11457e = 0;
        this.f11458f = Float.NaN;
        this.g = Float.NaN;
        this.f11459h = Float.NaN;
        this.f11460i = Float.NaN;
        this.f11461j = Float.NaN;
        this.f11462k = Float.NaN;
        this.l = Float.NaN;
        this.m = Float.NaN;
        this.n = Float.NaN;
        this.o = Float.NaN;
        this.p = Float.NaN;
        this.q = 0;
        this.r = new HashMap();
        this.f11454a = widgetFrame.f11454a;
        this.f11455b = widgetFrame.f11455b;
        this.f11456c = widgetFrame.f11456c;
        this.d = widgetFrame.d;
        this.f11457e = widgetFrame.f11457e;
        c(widgetFrame);
    }

    public static void a(float f2, String str, StringBuilder sb) {
        if (Float.isNaN(f2)) {
            return;
        }
        sb.append(str);
        sb.append(": ");
        sb.append(f2);
        sb.append(",\n");
    }

    public static void b(int i2, String str, StringBuilder sb) {
        sb.append(str);
        sb.append(": ");
        sb.append(i2);
        sb.append(",\n");
    }

    public final void c(WidgetFrame widgetFrame) {
        if (widgetFrame == null) {
            return;
        }
        this.f11458f = widgetFrame.f11458f;
        this.g = widgetFrame.g;
        this.f11459h = widgetFrame.f11459h;
        this.f11460i = widgetFrame.f11460i;
        this.f11461j = widgetFrame.f11461j;
        this.f11462k = widgetFrame.f11462k;
        this.l = widgetFrame.l;
        this.m = widgetFrame.m;
        this.n = widgetFrame.n;
        this.o = widgetFrame.o;
        this.p = widgetFrame.p;
        this.q = widgetFrame.q;
        HashMap map = this.r;
        map.clear();
        for (CustomVariable customVariable : widgetFrame.r.values()) {
            map.put(customVariable.f11321a, new CustomVariable(customVariable));
        }
    }

    public WidgetFrame(ConstraintWidget constraintWidget) {
        this.f11454a = null;
        this.f11455b = 0;
        this.f11456c = 0;
        this.d = 0;
        this.f11457e = 0;
        this.f11458f = Float.NaN;
        this.g = Float.NaN;
        this.f11459h = Float.NaN;
        this.f11460i = Float.NaN;
        this.f11461j = Float.NaN;
        this.f11462k = Float.NaN;
        this.l = Float.NaN;
        this.m = Float.NaN;
        this.n = Float.NaN;
        this.o = Float.NaN;
        this.p = Float.NaN;
        this.q = 0;
        this.r = new HashMap();
        this.f11454a = constraintWidget;
    }

    public WidgetFrame() {
        this.f11454a = null;
        this.f11455b = 0;
        this.f11456c = 0;
        this.d = 0;
        this.f11457e = 0;
        this.f11458f = Float.NaN;
        this.g = Float.NaN;
        this.f11459h = Float.NaN;
        this.f11460i = Float.NaN;
        this.f11461j = Float.NaN;
        this.f11462k = Float.NaN;
        this.l = Float.NaN;
        this.m = Float.NaN;
        this.n = Float.NaN;
        this.o = Float.NaN;
        this.p = Float.NaN;
        this.q = 0;
        this.r = new HashMap();
    }
}
