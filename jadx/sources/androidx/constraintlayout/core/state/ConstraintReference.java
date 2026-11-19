package androidx.constraintlayout.core.state;

import androidx.compose.ui.layout.Measurable;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.state.helpers.Facade;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintReference implements Reference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f11417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final State f11418b;
    public float b0;
    public float c0;
    public Dimension e0;
    public Dimension f0;
    public Measurable g0;
    public ConstraintWidget h0;
    public final HashMap i0;
    public HashMap j0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Facade f11419c = null;
    public int d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11420e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11421f = -1.0f;
    public float g = -1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11422h = 0.5f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11423i = 0.5f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11424j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11425k = 0;
    public int l = 0;
    public int m = 0;
    public int n = 0;
    public int o = 0;
    public int p = 0;
    public int q = 0;
    public int r = 0;
    public int s = 0;
    public int t = 0;
    public int u = 0;
    public int v = 0;
    public int w = 0;
    public float x = Float.NaN;
    public float y = Float.NaN;
    public float z = Float.NaN;
    public float A = Float.NaN;
    public float B = Float.NaN;
    public float C = Float.NaN;
    public float D = Float.NaN;
    public float E = Float.NaN;
    public float F = Float.NaN;
    public float G = Float.NaN;
    public float H = Float.NaN;
    public int I = 0;
    public Object J = null;
    public Object K = null;
    public Object L = null;
    public Object M = null;
    public Object N = null;
    public Object O = null;
    public Object P = null;
    public Object Q = null;
    public Object R = null;
    public Object S = null;
    public ConstraintReference T = null;
    public Object U = null;
    public Object V = null;
    public ConstraintReference W = null;
    public Object X = null;
    public Object Y = null;
    public Object Z = null;
    public Object a0 = null;
    public State.Constraint d0 = null;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.state.ConstraintReference$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11426a;

        static {
            int[] iArr = new int[State.Constraint.values().length];
            f11426a = iArr;
            try {
                iArr[State.Constraint.LEFT_TO_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11426a[State.Constraint.LEFT_TO_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11426a[State.Constraint.RIGHT_TO_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11426a[State.Constraint.RIGHT_TO_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11426a[State.Constraint.START_TO_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11426a[State.Constraint.START_TO_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f11426a[State.Constraint.END_TO_START.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f11426a[State.Constraint.END_TO_END.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f11426a[State.Constraint.TOP_TO_TOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f11426a[State.Constraint.TOP_TO_BOTTOM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f11426a[State.Constraint.TOP_TO_BASELINE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f11426a[State.Constraint.BOTTOM_TO_TOP.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f11426a[State.Constraint.BOTTOM_TO_BOTTOM.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f11426a[State.Constraint.BOTTOM_TO_BASELINE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f11426a[State.Constraint.BASELINE_TO_BOTTOM.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f11426a[State.Constraint.BASELINE_TO_TOP.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f11426a[State.Constraint.BASELINE_TO_BASELINE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f11426a[State.Constraint.CIRCULAR_CONSTRAINT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f11426a[State.Constraint.CENTER_HORIZONTALLY.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f11426a[State.Constraint.CENTER_VERTICALLY.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
        }
    }

    public interface ConstraintReferenceFactory {
    }

    public ConstraintReference(State state) {
        String str = Dimension.f11437h;
        Dimension dimension = new Dimension(str);
        String str2 = Dimension.f11438i;
        dimension.f11445f = str2;
        this.e0 = dimension;
        Dimension dimension2 = new Dimension(str);
        dimension2.f11445f = str2;
        this.f0 = dimension2;
        this.i0 = new HashMap();
        this.j0 = new HashMap();
        this.f11418b = state;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public final void a(ConstraintWidget constraintWidget) {
        if (constraintWidget == null) {
            return;
        }
        this.h0 = constraintWidget;
        constraintWidget.j0 = this.g0;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public void apply() {
        if (this.h0 == null) {
            return;
        }
        Facade facade = this.f11419c;
        if (facade != null) {
            facade.apply();
        }
        this.e0.a(this.h0, 0);
        this.f0.a(this.h0, 1);
        this.J = j(this.J);
        this.K = j(this.K);
        this.L = j(this.L);
        this.M = j(this.M);
        this.N = j(this.N);
        this.O = j(this.O);
        this.P = j(this.P);
        this.Q = j(this.Q);
        this.R = j(this.R);
        this.S = j(this.S);
        this.U = j(this.U);
        this.V = j(this.V);
        this.X = j(this.X);
        this.Y = j(this.Y);
        this.Z = j(this.Z);
        d(this.h0, this.J, State.Constraint.LEFT_TO_LEFT);
        d(this.h0, this.K, State.Constraint.LEFT_TO_RIGHT);
        d(this.h0, this.L, State.Constraint.RIGHT_TO_LEFT);
        d(this.h0, this.M, State.Constraint.RIGHT_TO_RIGHT);
        d(this.h0, this.N, State.Constraint.START_TO_START);
        d(this.h0, this.O, State.Constraint.START_TO_END);
        d(this.h0, this.P, State.Constraint.END_TO_START);
        d(this.h0, this.Q, State.Constraint.END_TO_END);
        d(this.h0, this.R, State.Constraint.TOP_TO_TOP);
        d(this.h0, this.S, State.Constraint.TOP_TO_BOTTOM);
        d(this.h0, this.T, State.Constraint.TOP_TO_BASELINE);
        d(this.h0, this.U, State.Constraint.BOTTOM_TO_TOP);
        d(this.h0, this.V, State.Constraint.BOTTOM_TO_BOTTOM);
        d(this.h0, this.W, State.Constraint.BOTTOM_TO_BASELINE);
        d(this.h0, this.X, State.Constraint.BASELINE_TO_BASELINE);
        d(this.h0, this.Y, State.Constraint.BASELINE_TO_TOP);
        d(this.h0, this.Z, State.Constraint.BASELINE_TO_BOTTOM);
        d(this.h0, this.a0, State.Constraint.CIRCULAR_CONSTRAINT);
        int i2 = this.d;
        if (i2 != 0) {
            this.h0.n0 = i2;
        }
        int i3 = this.f11420e;
        if (i3 != 0) {
            this.h0.o0 = i3;
        }
        float f2 = this.f11421f;
        if (f2 != -1.0f) {
            this.h0.p0[0] = f2;
        }
        float f3 = this.g;
        if (f3 != -1.0f) {
            this.h0.p0[1] = f3;
        }
        ConstraintWidget constraintWidget = this.h0;
        constraintWidget.h0 = this.f11422h;
        constraintWidget.i0 = this.f11423i;
        WidgetFrame widgetFrame = constraintWidget.f11495k;
        widgetFrame.f11458f = this.x;
        widgetFrame.g = this.y;
        widgetFrame.f11459h = this.z;
        widgetFrame.f11460i = this.A;
        widgetFrame.f11461j = this.B;
        widgetFrame.f11462k = this.C;
        widgetFrame.l = this.D;
        widgetFrame.m = this.E;
        widgetFrame.n = this.G;
        widgetFrame.o = this.H;
        widgetFrame.p = this.F;
        int i4 = this.I;
        widgetFrame.q = i4;
        constraintWidget.k0 = i4;
        HashMap map = this.i0;
        if (map != null) {
            for (String str : map.keySet()) {
                Integer num = (Integer) map.get(str);
                WidgetFrame widgetFrame2 = this.h0.f11495k;
                int iIntValue = num.intValue();
                HashMap map2 = widgetFrame2.r;
                if (map2.containsKey(str)) {
                    ((CustomVariable) map2.get(str)).f11323c = iIntValue;
                } else {
                    map2.put(str, new CustomVariable(str, 902, iIntValue));
                }
            }
        }
        HashMap map3 = this.j0;
        if (map3 != null) {
            for (String str2 : map3.keySet()) {
                float fFloatValue = ((Float) this.j0.get(str2)).floatValue();
                HashMap map4 = this.h0.f11495k.r;
                if (map4.containsKey(str2)) {
                    ((CustomVariable) map4.get(str2)).d = fFloatValue;
                } else {
                    map4.put(str2, new CustomVariable(str2, 901, fFloatValue));
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public ConstraintWidget b() {
        if (this.h0 == null) {
            ConstraintWidget constraintWidget = new ConstraintWidget(this.e0.d, this.f0.d);
            this.h0 = constraintWidget;
            constraintWidget.j0 = this.g0;
        }
        return this.h0;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public final Facade c() {
        return this.f11419c;
    }

    public final void d(ConstraintWidget constraintWidget, Object obj, State.Constraint constraint) {
        ConstraintWidget constraintWidgetB = obj instanceof Reference ? ((Reference) obj).b() : null;
        if (constraintWidgetB == null) {
            return;
        }
        int[] iArr = AnonymousClass1.f11426a;
        int i2 = iArr[constraint.ordinal()];
        switch (iArr[constraint.ordinal()]) {
            case 1:
                ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
                constraintWidget.n(type).b(constraintWidgetB.n(type), this.f11424j, this.p, false);
                break;
            case 2:
                constraintWidget.n(ConstraintAnchor.Type.LEFT).b(constraintWidgetB.n(ConstraintAnchor.Type.RIGHT), this.f11424j, this.p, false);
                break;
            case 3:
                constraintWidget.n(ConstraintAnchor.Type.RIGHT).b(constraintWidgetB.n(ConstraintAnchor.Type.LEFT), this.f11425k, this.q, false);
                break;
            case 4:
                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.n(type2).b(constraintWidgetB.n(type2), this.f11425k, this.q, false);
                break;
            case 5:
                ConstraintAnchor.Type type3 = ConstraintAnchor.Type.LEFT;
                constraintWidget.n(type3).b(constraintWidgetB.n(type3), this.l, this.r, false);
                break;
            case 6:
                constraintWidget.n(ConstraintAnchor.Type.LEFT).b(constraintWidgetB.n(ConstraintAnchor.Type.RIGHT), this.l, this.r, false);
                break;
            case 7:
                constraintWidget.n(ConstraintAnchor.Type.RIGHT).b(constraintWidgetB.n(ConstraintAnchor.Type.LEFT), this.m, this.s, false);
                break;
            case 8:
                ConstraintAnchor.Type type4 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.n(type4).b(constraintWidgetB.n(type4), this.m, this.s, false);
                break;
            case 9:
                ConstraintAnchor.Type type5 = ConstraintAnchor.Type.TOP;
                constraintWidget.n(type5).b(constraintWidgetB.n(type5), this.n, this.t, false);
                break;
            case 10:
                constraintWidget.n(ConstraintAnchor.Type.TOP).b(constraintWidgetB.n(ConstraintAnchor.Type.BOTTOM), this.n, this.t, false);
                break;
            case 11:
                constraintWidget.A(ConstraintAnchor.Type.TOP, constraintWidgetB, ConstraintAnchor.Type.BASELINE, this.n, this.t);
                break;
            case 12:
                constraintWidget.n(ConstraintAnchor.Type.BOTTOM).b(constraintWidgetB.n(ConstraintAnchor.Type.TOP), this.o, this.u, false);
                break;
            case 13:
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.BOTTOM;
                constraintWidget.n(type6).b(constraintWidgetB.n(type6), this.o, this.u, false);
                break;
            case 14:
                constraintWidget.A(ConstraintAnchor.Type.BOTTOM, constraintWidgetB, ConstraintAnchor.Type.BASELINE, this.o, this.u);
                break;
            case 15:
                constraintWidget.A(ConstraintAnchor.Type.BASELINE, constraintWidgetB, ConstraintAnchor.Type.BOTTOM, this.v, this.w);
                break;
            case 16:
                constraintWidget.A(ConstraintAnchor.Type.BASELINE, constraintWidgetB, ConstraintAnchor.Type.TOP, this.v, this.w);
                break;
            case 17:
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.BASELINE;
                constraintWidget.A(type7, constraintWidgetB, type7, this.v, this.w);
                break;
            case 18:
                float f2 = this.b0;
                int i3 = (int) this.c0;
                ConstraintAnchor.Type type8 = ConstraintAnchor.Type.CENTER;
                constraintWidget.A(type8, constraintWidgetB, type8, i3, 0);
                constraintWidget.F = f2;
                break;
        }
    }

    public final void e(Object obj) {
        this.d0 = State.Constraint.BOTTOM_TO_BOTTOM;
        this.V = obj;
    }

    public final void f() {
        State.Constraint constraint = this.d0;
        if (constraint == null) {
            this.J = null;
            this.K = null;
            this.f11424j = 0;
            this.L = null;
            this.M = null;
            this.f11425k = 0;
            this.N = null;
            this.O = null;
            this.l = 0;
            this.P = null;
            this.Q = null;
            this.m = 0;
            this.R = null;
            this.S = null;
            this.n = 0;
            this.U = null;
            this.V = null;
            this.o = 0;
            this.X = null;
            this.a0 = null;
            this.f11422h = 0.5f;
            this.f11423i = 0.5f;
            this.p = 0;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = 0;
            return;
        }
        switch (AnonymousClass1.f11426a[constraint.ordinal()]) {
            case 1:
            case 2:
                this.J = null;
                this.K = null;
                this.f11424j = 0;
                this.p = 0;
                break;
            case 3:
            case 4:
                this.L = null;
                this.M = null;
                this.f11425k = 0;
                this.q = 0;
                break;
            case 5:
            case 6:
                this.N = null;
                this.O = null;
                this.l = 0;
                this.r = 0;
                break;
            case 7:
            case 8:
                this.P = null;
                this.Q = null;
                this.m = 0;
                this.s = 0;
                break;
            case 9:
            case 10:
            case 11:
                this.R = null;
                this.S = null;
                this.T = null;
                this.n = 0;
                this.t = 0;
                break;
            case 12:
            case 13:
            case 14:
                this.U = null;
                this.V = null;
                this.W = null;
                this.o = 0;
                this.u = 0;
                break;
            case 17:
                this.X = null;
                break;
            case 18:
                this.a0 = null;
                break;
        }
    }

    public final void g() {
        if (this.N != null) {
            this.d0 = State.Constraint.START_TO_START;
        } else {
            this.d0 = State.Constraint.START_TO_END;
        }
        f();
        if (this.P != null) {
            this.d0 = State.Constraint.END_TO_START;
        } else {
            this.d0 = State.Constraint.END_TO_END;
        }
        f();
        if (this.J != null) {
            this.d0 = State.Constraint.LEFT_TO_LEFT;
        } else {
            this.d0 = State.Constraint.LEFT_TO_RIGHT;
        }
        f();
        if (this.L != null) {
            this.d0 = State.Constraint.RIGHT_TO_LEFT;
        } else {
            this.d0 = State.Constraint.RIGHT_TO_RIGHT;
        }
        f();
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public final Object getKey() {
        return this.f11417a;
    }

    public final void h() {
        if (this.R != null) {
            this.d0 = State.Constraint.TOP_TO_TOP;
        } else {
            this.d0 = State.Constraint.TOP_TO_BOTTOM;
        }
        f();
        this.d0 = State.Constraint.BASELINE_TO_BASELINE;
        f();
        if (this.U != null) {
            this.d0 = State.Constraint.BOTTOM_TO_TOP;
        } else {
            this.d0 = State.Constraint.BOTTOM_TO_BOTTOM;
        }
        f();
    }

    public final void i(Object obj) {
        this.d0 = State.Constraint.END_TO_END;
        this.Q = obj;
    }

    public final Object j(Object obj) {
        if (obj == null) {
            return null;
        }
        return !(obj instanceof ConstraintReference) ? (Reference) this.f11418b.f11448c.get(obj) : obj;
    }

    public ConstraintReference k(int i2) {
        State.Constraint constraint = this.d0;
        if (constraint == null) {
            this.f11424j = i2;
            this.f11425k = i2;
            this.l = i2;
            this.m = i2;
            this.n = i2;
            this.o = i2;
            return this;
        }
        switch (AnonymousClass1.f11426a[constraint.ordinal()]) {
            case 1:
            case 2:
                this.f11424j = i2;
                break;
            case 3:
            case 4:
                this.f11425k = i2;
                break;
            case 5:
            case 6:
                this.l = i2;
                break;
            case 7:
            case 8:
                this.m = i2;
                break;
            case 9:
            case 10:
            case 11:
                this.n = i2;
                break;
            case 12:
            case 13:
            case 14:
                this.o = i2;
                break;
            case 15:
            case 16:
            case 17:
                this.v = i2;
                break;
            case 18:
                this.c0 = i2;
                break;
        }
        return this;
    }

    public ConstraintReference l(Float f2) {
        return k(this.f11418b.c(f2));
    }

    public final void m(int i2) {
        State.Constraint constraint = this.d0;
        if (constraint == null) {
            this.p = i2;
            this.q = i2;
            this.r = i2;
            this.s = i2;
            this.t = i2;
            this.u = i2;
            return;
        }
        switch (AnonymousClass1.f11426a[constraint.ordinal()]) {
            case 1:
            case 2:
                this.p = i2;
                break;
            case 3:
            case 4:
                this.q = i2;
                break;
            case 5:
            case 6:
                this.r = i2;
                break;
            case 7:
            case 8:
                this.s = i2;
                break;
            case 9:
            case 10:
            case 11:
                this.t = i2;
                break;
            case 12:
            case 13:
            case 14:
                this.u = i2;
                break;
            case 15:
            case 16:
            case 17:
                this.w = i2;
                break;
        }
    }

    public final void n(Float f2) {
        m(this.f11418b.c(f2));
    }

    public final void o(Object obj) {
        this.d0 = State.Constraint.START_TO_START;
        this.N = obj;
    }

    public final void p(Object obj) {
        this.d0 = State.Constraint.TOP_TO_TOP;
        this.R = obj;
    }
}
