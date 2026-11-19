package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.Cache;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import defpackage.a;
import defpackage.cj;
import defpackage.md;
import defpackage.n00;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidget {
    public int A;
    public float B;
    public int C;
    public float D;
    public int[] E;
    public float F;
    public boolean G;
    public boolean H;
    public boolean I;
    public int J;
    public int K;
    public final ConstraintAnchor L;
    public final ConstraintAnchor M;
    public final ConstraintAnchor N;
    public final ConstraintAnchor O;
    public final ConstraintAnchor P;
    public final ConstraintAnchor Q;
    public final ConstraintAnchor R;
    public final ConstraintAnchor S;
    public final ConstraintAnchor[] T;
    public final ArrayList U;
    public final boolean[] V;
    public DimensionBehaviour[] W;
    public ConstraintWidget X;
    public int Y;
    public int Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f11487a;
    public float a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ChainRun f11488b;
    public int b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ChainRun f11489c;
    public int c0;
    public HorizontalWidgetRun d;
    public int d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public VerticalWidgetRun f11490e;
    public int e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean[] f11491f;
    public int f0;
    public boolean g;
    public int g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f11492h;
    public float h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11493i;
    public float i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11494j;
    public Object j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final WidgetFrame f11495k;
    public int k0;
    public String l;
    public boolean l0;
    public boolean m;
    public String m0;
    public boolean n;
    public int n0;
    public boolean o;
    public int o0;
    public boolean p;
    public final float[] p0;
    public int q;
    public final ConstraintWidget[] q0;
    public int r;
    public final ConstraintWidget[] r0;
    public int s;
    public ConstraintWidget s0;
    public int t;
    public ConstraintWidget t0;
    public int u;
    public int u0;
    public final int[] v;
    public int v0;
    public int w;
    public int x;
    public float y;
    public int z;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.ConstraintWidget$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11496a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f11496a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11496a[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11496a[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11496a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11496a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11496a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f11496a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f11496a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f11496a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class DimensionBehaviour {
        private static final /* synthetic */ DimensionBehaviour[] $VALUES;
        public static final DimensionBehaviour FIXED;
        public static final DimensionBehaviour MATCH_CONSTRAINT;
        public static final DimensionBehaviour MATCH_PARENT;
        public static final DimensionBehaviour WRAP_CONTENT;

        static {
            DimensionBehaviour dimensionBehaviour = new DimensionBehaviour("FIXED", 0);
            FIXED = dimensionBehaviour;
            DimensionBehaviour dimensionBehaviour2 = new DimensionBehaviour("WRAP_CONTENT", 1);
            WRAP_CONTENT = dimensionBehaviour2;
            DimensionBehaviour dimensionBehaviour3 = new DimensionBehaviour("MATCH_CONSTRAINT", 2);
            MATCH_CONSTRAINT = dimensionBehaviour3;
            DimensionBehaviour dimensionBehaviour4 = new DimensionBehaviour("MATCH_PARENT", 3);
            MATCH_PARENT = dimensionBehaviour4;
            $VALUES = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour2, dimensionBehaviour3, dimensionBehaviour4};
        }

        public static DimensionBehaviour valueOf(String str) {
            return (DimensionBehaviour) Enum.valueOf(DimensionBehaviour.class, str);
        }

        public static DimensionBehaviour[] values() {
            return (DimensionBehaviour[]) $VALUES.clone();
        }
    }

    public ConstraintWidget(String str) {
        this.f11487a = false;
        this.d = null;
        this.f11490e = null;
        this.f11491f = new boolean[]{true, true};
        this.g = true;
        this.f11492h = true;
        this.f11493i = -1;
        this.f11494j = -1;
        this.f11495k = new WidgetFrame(this);
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = -1;
        this.r = -1;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = new int[2];
        this.w = 0;
        this.x = 0;
        this.y = 1.0f;
        this.z = 0;
        this.A = 0;
        this.B = 1.0f;
        this.C = -1;
        this.D = 1.0f;
        this.E = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.F = Float.NaN;
        this.G = false;
        this.I = false;
        this.J = 0;
        this.K = 0;
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.L = constraintAnchor;
        ConstraintAnchor constraintAnchor2 = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.M = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.N = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.O = constraintAnchor4;
        ConstraintAnchor constraintAnchor5 = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.P = constraintAnchor5;
        this.Q = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.R = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor6 = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.S = constraintAnchor6;
        this.T = new ConstraintAnchor[]{constraintAnchor, constraintAnchor3, constraintAnchor2, constraintAnchor4, constraintAnchor5, constraintAnchor6};
        this.U = new ArrayList();
        this.V = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.W = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.X = null;
        this.Y = 0;
        this.Z = 0;
        this.a0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.b0 = -1;
        this.c0 = 0;
        this.d0 = 0;
        this.e0 = 0;
        this.h0 = 0.5f;
        this.i0 = 0.5f;
        this.k0 = 0;
        this.l0 = false;
        this.m0 = null;
        this.n0 = 0;
        this.o0 = 0;
        this.p0 = new float[]{-1.0f, -1.0f};
        this.q0 = new ConstraintWidget[]{null, null};
        this.r0 = new ConstraintWidget[]{null, null};
        this.s0 = null;
        this.t0 = null;
        this.u0 = -1;
        this.v0 = -1;
        d();
        this.m0 = str;
    }

    public static void L(int i2, int i3, String str, StringBuilder sb) {
        if (i2 == i3) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i2);
        sb.append(",\n");
    }

    public static void M(StringBuilder sb, String str, float f2, float f3) {
        if (f2 == f3) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f2);
        sb.append(",\n");
    }

    public static void t(StringBuilder sb, String str, int i2, int i3, int i4, int i5, int i6, float f2, DimensionBehaviour dimensionBehaviour) {
        sb.append(str);
        sb.append(" :  {\n");
        String string = dimensionBehaviour.toString();
        if (!DimensionBehaviour.FIXED.toString().equals(string)) {
            cj.C(sb, "      behavior", " :   ", string, ",\n");
        }
        L(i2, 0, "      size", sb);
        L(i3, 0, "      min", sb);
        L(i4, Integer.MAX_VALUE, "      max", sb);
        L(i5, 0, "      matchMin", sb);
        L(i6, 0, "      matchDef", sb);
        M(sb, "      matchPercent", f2, 1.0f);
        sb.append("    },\n");
    }

    public static void u(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.f11484f == null) {
            return;
        }
        a.B(sb, "    ", str, " : [ '");
        sb.append(constraintAnchor.f11484f);
        sb.append("'");
        if (constraintAnchor.f11485h != Integer.MIN_VALUE || constraintAnchor.g != 0) {
            sb.append(",");
            sb.append(constraintAnchor.g);
            if (constraintAnchor.f11485h != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(constraintAnchor.f11485h);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    public final void A(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i2, int i3) {
        n(type).b(constraintWidget.n(type2), i2, i3, true);
    }

    public final boolean B(int i2) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i3 = i2 * 2;
        ConstraintAnchor[] constraintAnchorArr = this.T;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i3];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f11484f;
        return (constraintAnchor4 == null || constraintAnchor4.f11484f == constraintAnchor3 || (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i3 + 1]).f11484f) == null || constraintAnchor2.f11484f != constraintAnchor) ? false : true;
    }

    public final boolean C() {
        ConstraintAnchor constraintAnchor = this.L;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f11484f;
        if (constraintAnchor2 != null && constraintAnchor2.f11484f == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.N;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f11484f;
        return constraintAnchor4 != null && constraintAnchor4.f11484f == constraintAnchor3;
    }

    public final boolean D() {
        ConstraintAnchor constraintAnchor = this.M;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f11484f;
        if (constraintAnchor2 != null && constraintAnchor2.f11484f == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.O;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f11484f;
        return constraintAnchor4 != null && constraintAnchor4.f11484f == constraintAnchor3;
    }

    public final boolean E() {
        return this.g && this.k0 != 8;
    }

    public boolean F() {
        if (this.m) {
            return true;
        }
        return this.L.f11482c && this.N.f11482c;
    }

    public boolean G() {
        if (this.n) {
            return true;
        }
        return this.M.f11482c && this.O.f11482c;
    }

    public void H() {
        this.L.j();
        this.M.j();
        this.N.j();
        this.O.j();
        this.P.j();
        this.Q.j();
        this.R.j();
        this.S.j();
        this.X = null;
        this.F = Float.NaN;
        this.Y = 0;
        this.Z = 0;
        this.a0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.b0 = -1;
        this.c0 = 0;
        this.d0 = 0;
        this.e0 = 0;
        this.f0 = 0;
        this.g0 = 0;
        this.h0 = 0.5f;
        this.i0 = 0.5f;
        DimensionBehaviour[] dimensionBehaviourArr = this.W;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.j0 = null;
        this.k0 = 0;
        this.n0 = 0;
        this.o0 = 0;
        float[] fArr = this.p0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.q = -1;
        this.r = -1;
        int[] iArr = this.E;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.t = 0;
        this.u = 0;
        this.y = 1.0f;
        this.B = 1.0f;
        this.x = Integer.MAX_VALUE;
        this.A = Integer.MAX_VALUE;
        this.w = 0;
        this.z = 0;
        this.C = -1;
        this.D = 1.0f;
        boolean[] zArr = this.f11491f;
        zArr[0] = true;
        zArr[1] = true;
        this.I = false;
        boolean[] zArr2 = this.V;
        zArr2[0] = false;
        zArr2[1] = false;
        this.g = true;
        int[] iArr2 = this.v;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.f11493i = -1;
        this.f11494j = -1;
    }

    public final void I() {
        ConstraintWidget constraintWidget = this.X;
        if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
            ((ConstraintWidgetContainer) constraintWidget).getClass();
        }
        ArrayList arrayList = this.U;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((ConstraintAnchor) arrayList.get(i2)).j();
        }
    }

    public final void J() {
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        ArrayList arrayList = this.U;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) arrayList.get(i2);
            constraintAnchor.f11482c = false;
            constraintAnchor.f11481b = 0;
        }
    }

    public void K(Cache cache) {
        this.L.k();
        this.M.k();
        this.N.k();
        this.O.k();
        this.P.k();
        this.S.k();
        this.Q.k();
        this.R.k();
    }

    public final void N(int i2) {
        this.e0 = i2;
        this.G = i2 > 0;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[PHI: r0
      0x0086: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:46:0x0086, B:36:0x007f, B:24:0x0051, B:26:0x0057, B:28:0x0063, B:30:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0086 -> B:40:0x0087). Please report as a decompilation issue!!! */
    public final void O(String str) {
        float fAbs;
        int i2 = 0;
        if (str == null || str.length() == 0) {
            this.a0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            return;
        }
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i3 = 0;
        int i4 = -1;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (!strSubstring.equalsIgnoreCase("W")) {
                i3 = strSubstring.equalsIgnoreCase("H") ? 1 : -1;
            }
            i4 = i3;
            i3 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        try {
            if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                String strSubstring2 = str.substring(i3);
                if (strSubstring2.length() > 0) {
                    fAbs = Float.parseFloat(strSubstring2);
                } else {
                    fAbs = i2;
                }
            } else {
                String strSubstring3 = str.substring(i3, iIndexOf2);
                String strSubstring4 = str.substring(iIndexOf2 + 1);
                if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                    fAbs = i2;
                } else {
                    float f2 = Float.parseFloat(strSubstring3);
                    float f3 = Float.parseFloat(strSubstring4);
                    if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        fAbs = i2;
                    } else {
                        fAbs = i4 == 1 ? Math.abs(f3 / f2) : Math.abs(f2 / f3);
                    }
                }
            }
        } catch (NumberFormatException unused) {
        }
        i2 = (fAbs > i2 ? 1 : (fAbs == i2 ? 0 : -1));
        if (i2 > 0) {
            this.a0 = fAbs;
            this.b0 = i4;
        }
    }

    public final void P(int i2, int i3) {
        if (this.m) {
            return;
        }
        this.L.l(i2);
        this.N.l(i3);
        this.c0 = i2;
        this.Y = i3 - i2;
        this.m = true;
    }

    public final void Q(int i2, int i3) {
        if (this.n) {
            return;
        }
        this.M.l(i2);
        this.O.l(i3);
        this.d0 = i2;
        this.Z = i3 - i2;
        if (this.G) {
            this.P.l(i2 + this.e0);
        }
        this.n = true;
    }

    public final void R(int i2) {
        this.Z = i2;
        int i3 = this.g0;
        if (i2 < i3) {
            this.Z = i3;
        }
    }

    public final void S(DimensionBehaviour dimensionBehaviour) {
        this.W[0] = dimensionBehaviour;
    }

    public final void T(int i2, int i3, int i4, float f2) {
        this.t = i2;
        this.w = i3;
        if (i4 == Integer.MAX_VALUE) {
            i4 = 0;
        }
        this.x = i4;
        this.y = f2;
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 >= 1.0f || i2 != 0) {
            return;
        }
        this.t = 2;
    }

    public final void U(DimensionBehaviour dimensionBehaviour) {
        this.W[1] = dimensionBehaviour;
    }

    public final void V(int i2, int i3, int i4, float f2) {
        this.u = i2;
        this.z = i3;
        if (i4 == Integer.MAX_VALUE) {
            i4 = 0;
        }
        this.A = i4;
        this.B = f2;
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 >= 1.0f || i2 != 0) {
            return;
        }
        this.u = 2;
    }

    public final void W(int i2) {
        this.Y = i2;
        int i3 = this.f0;
        if (i2 < i3) {
            this.Y = i3;
        }
    }

    public void X(boolean z, boolean z2) {
        int i2;
        int i3;
        HorizontalWidgetRun horizontalWidgetRun = this.d;
        boolean z3 = z & horizontalWidgetRun.g;
        VerticalWidgetRun verticalWidgetRun = this.f11490e;
        boolean z4 = z2 & verticalWidgetRun.g;
        int i4 = horizontalWidgetRun.f11552h.g;
        int i5 = verticalWidgetRun.f11552h.g;
        int i6 = horizontalWidgetRun.f11553i.g;
        int i7 = verticalWidgetRun.f11553i.g;
        int i8 = i7 - i5;
        if (i6 - i4 < 0 || i8 < 0 || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE || i7 == Integer.MIN_VALUE || i7 == Integer.MAX_VALUE) {
            i6 = 0;
            i7 = 0;
            i4 = 0;
            i5 = 0;
        }
        int i9 = i6 - i4;
        int i10 = i7 - i5;
        if (z3) {
            this.c0 = i4;
        }
        if (z4) {
            this.d0 = i5;
        }
        if (this.k0 == 8) {
            this.Y = 0;
            this.Z = 0;
            return;
        }
        if (z3) {
            if (this.W[0] == DimensionBehaviour.FIXED && i9 < (i3 = this.Y)) {
                i9 = i3;
            }
            this.Y = i9;
            int i11 = this.f0;
            if (i9 < i11) {
                this.Y = i11;
            }
        }
        if (z4) {
            if (this.W[1] == DimensionBehaviour.FIXED && i10 < (i2 = this.Z)) {
                i10 = i2;
            }
            this.Z = i10;
            int i12 = this.g0;
            if (i10 < i12) {
                this.Z = i12;
            }
        }
    }

    public void Y(LinearSystem linearSystem, boolean z) {
        int i2;
        int i3;
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        linearSystem.getClass();
        int iN = LinearSystem.n(this.L);
        int iN2 = LinearSystem.n(this.M);
        int iN3 = LinearSystem.n(this.N);
        int iN4 = LinearSystem.n(this.O);
        if (z && (horizontalWidgetRun = this.d) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun.f11552h;
            if (dependencyNode.f11533j) {
                DependencyNode dependencyNode2 = horizontalWidgetRun.f11553i;
                if (dependencyNode2.f11533j) {
                    iN = dependencyNode.g;
                    iN3 = dependencyNode2.g;
                }
            }
        }
        if (z && (verticalWidgetRun = this.f11490e) != null) {
            DependencyNode dependencyNode3 = verticalWidgetRun.f11552h;
            if (dependencyNode3.f11533j) {
                DependencyNode dependencyNode4 = verticalWidgetRun.f11553i;
                if (dependencyNode4.f11533j) {
                    iN2 = dependencyNode3.g;
                    iN4 = dependencyNode4.g;
                }
            }
        }
        int i4 = iN4 - iN2;
        if (iN3 - iN < 0 || i4 < 0 || iN == Integer.MIN_VALUE || iN == Integer.MAX_VALUE || iN2 == Integer.MIN_VALUE || iN2 == Integer.MAX_VALUE || iN3 == Integer.MIN_VALUE || iN3 == Integer.MAX_VALUE || iN4 == Integer.MIN_VALUE || iN4 == Integer.MAX_VALUE) {
            iN = 0;
            iN2 = 0;
            iN3 = 0;
            iN4 = 0;
        }
        int i5 = iN3 - iN;
        int i6 = iN4 - iN2;
        this.c0 = iN;
        this.d0 = iN2;
        if (this.k0 == 8) {
            this.Y = 0;
            this.Z = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.W;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i5 < (i3 = this.Y)) {
            i5 = i3;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i6 < (i2 = this.Z)) {
            i6 = i2;
        }
        this.Y = i5;
        this.Z = i6;
        int i7 = this.g0;
        if (i6 < i7) {
            this.Z = i7;
        }
        int i8 = this.f0;
        if (i5 < i8) {
            this.Y = i8;
        }
        int i9 = this.x;
        if (i9 > 0 && dimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.Y = Math.min(this.Y, i9);
        }
        int i10 = this.A;
        if (i10 > 0 && this.W[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.Z = Math.min(this.Z, i10);
        }
        int i11 = this.Y;
        if (i5 != i11) {
            this.f11493i = i11;
        }
        int i12 = this.Z;
        if (i6 != i12) {
            this.f11494j = i12;
        }
    }

    public final void d() {
        ConstraintAnchor constraintAnchor = this.L;
        ArrayList arrayList = this.U;
        arrayList.add(constraintAnchor);
        arrayList.add(this.M);
        arrayList.add(this.N);
        arrayList.add(this.O);
        arrayList.add(this.Q);
        arrayList.add(this.R);
        arrayList.add(this.S);
        arrayList.add(this.P);
    }

    public final void e(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet hashSet, int i2, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            Optimizer.a(constraintWidgetContainer, linearSystem, this);
            hashSet.remove(this);
            f(linearSystem, constraintWidgetContainer.e0(64));
        }
        if (i2 == 0) {
            HashSet hashSet2 = this.L.f11480a;
            if (hashSet2 != null) {
                Iterator it = hashSet2.iterator();
                while (it.hasNext()) {
                    ((ConstraintAnchor) it.next()).d.e(constraintWidgetContainer, linearSystem, hashSet, i2, true);
                }
            }
            HashSet hashSet3 = this.N.f11480a;
            if (hashSet3 != null) {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    ((ConstraintAnchor) it2.next()).d.e(constraintWidgetContainer, linearSystem, hashSet, i2, true);
                }
                return;
            }
            return;
        }
        HashSet hashSet4 = this.M.f11480a;
        if (hashSet4 != null) {
            Iterator it3 = hashSet4.iterator();
            while (it3.hasNext()) {
                ((ConstraintAnchor) it3.next()).d.e(constraintWidgetContainer, linearSystem, hashSet, i2, true);
            }
        }
        HashSet hashSet5 = this.O.f11480a;
        if (hashSet5 != null) {
            Iterator it4 = hashSet5.iterator();
            while (it4.hasNext()) {
                ((ConstraintAnchor) it4.next()).d.e(constraintWidgetContainer, linearSystem, hashSet, i2, true);
            }
        }
        HashSet hashSet6 = this.P.f11480a;
        if (hashSet6 != null) {
            Iterator it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                ((ConstraintAnchor) it5.next()).d.e(constraintWidgetContainer, linearSystem, hashSet, i2, true);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:135:0x0238  */
    /* JADX WARN: Code duplicated, block: B:139:0x0240  */
    /* JADX WARN: Code duplicated, block: B:142:0x0249  */
    /* JADX WARN: Code duplicated, block: B:144:0x024f  */
    /* JADX WARN: Code duplicated, block: B:145:0x025a  */
    /* JADX WARN: Code duplicated, block: B:148:0x0266  */
    /* JADX WARN: Code duplicated, block: B:149:0x026f  */
    /* JADX WARN: Code duplicated, block: B:159:0x0295  */
    /* JADX WARN: Code duplicated, block: B:171:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:175:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:178:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:179:0x02da  */
    /* JADX WARN: Code duplicated, block: B:182:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:184:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:187:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:189:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:192:0x031c  */
    /* JADX WARN: Code duplicated, block: B:194:0x0324  */
    /* JADX WARN: Code duplicated, block: B:197:0x032a  */
    /* JADX WARN: Code duplicated, block: B:201:0x0332  */
    /* JADX WARN: Code duplicated, block: B:264:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:266:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:275:0x0402  */
    /* JADX WARN: Code duplicated, block: B:279:0x040b  */
    /* JADX WARN: Code duplicated, block: B:282:0x0418  */
    /* JADX WARN: Code duplicated, block: B:285:0x0422  */
    /* JADX WARN: Code duplicated, block: B:289:0x0436  */
    /* JADX WARN: Code duplicated, block: B:291:0x043b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:293:0x043f  */
    /* JADX WARN: Code duplicated, block: B:296:0x0443  */
    /* JADX WARN: Code duplicated, block: B:300:0x044d  */
    /* JADX WARN: Code duplicated, block: B:303:0x0459  */
    /* JADX WARN: Code duplicated, block: B:306:0x045f  */
    /* JADX WARN: Code duplicated, block: B:308:0x0462  */
    /* JADX WARN: Code duplicated, block: B:311:0x047c  */
    /* JADX WARN: Code duplicated, block: B:330:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:346:0x0566  */
    /* JADX WARN: Code duplicated, block: B:362:0x05b7  */
    /* JADX WARN: Code duplicated, block: B:365:0x05c7  */
    /* JADX WARN: Code duplicated, block: B:367:0x05ca  */
    /* JADX WARN: Code duplicated, block: B:404:0x068d  */
    /* JADX WARN: Code duplicated, block: B:406:0x0693  */
    /* JADX WARN: Code duplicated, block: B:408:0x069c  */
    /* JADX WARN: Code duplicated, block: B:409:0x06c3  */
    /* JADX WARN: Code duplicated, block: B:412:0x06ef  */
    /* JADX WARN: Code duplicated, block: B:41:0x0099  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:70:0x0106  */
    /* JADX WARN: Code duplicated, block: B:72:0x011d  */
    /* JADX WARN: Code duplicated, block: B:75:0x0123  */
    /* JADX WARN: Code duplicated, block: B:78:0x0135  */
    /* JADX WARN: Code duplicated, block: B:82:0x0145  */
    /* JADX WARN: Code duplicated, block: B:99:0x0193  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r14v23 */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v33 */
    /* JADX WARN: Type inference failed for: r17v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r20v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r27v4 */
    /* JADX WARN: Type inference failed for: r27v5 */
    /* JADX WARN: Type inference failed for: r27v6 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v15, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r4v21, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v22, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r58v0, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v12 */
    public void f(LinearSystem linearSystem, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        HashSet hashSet;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        WeakReference weakReference;
        boolean[] zArr;
        ConstraintAnchor constraintAnchor;
        boolean[] zArr2;
        ?? r14;
        boolean z6;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        DimensionBehaviour dimensionBehaviour;
        DimensionBehaviour dimensionBehaviour2;
        boolean z7;
        DimensionBehaviour dimensionBehaviour3;
        boolean z8;
        int i14;
        float f2;
        int i15;
        int i16;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        int i17;
        int i18;
        boolean z9;
        int i19;
        boolean z10;
        DimensionBehaviour dimensionBehaviour4;
        DimensionBehaviour dimensionBehaviour5;
        boolean z11;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        DimensionBehaviour dimensionBehaviour6;
        ?? r19;
        ?? r3;
        ConstraintAnchor constraintAnchor3;
        ?? r4;
        int i20;
        SolverVariable solverVariable5;
        SolverVariable solverVariable6;
        SolverVariable solverVariable7;
        int i21;
        int i22;
        char c2;
        int i23;
        SolverVariable solverVariable8;
        int i24;
        float f3;
        ?? r27;
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        int i25;
        int i26;
        int i27;
        ?? C;
        boolean zD;
        HorizontalWidgetRun horizontalWidgetRun2;
        VerticalWidgetRun verticalWidgetRun2;
        boolean z12;
        LinearSystem linearSystem2 = linearSystem;
        ConstraintAnchor constraintAnchor4 = this.L;
        SolverVariable solverVariableK = linearSystem2.k(constraintAnchor4);
        ConstraintAnchor constraintAnchor5 = this.N;
        SolverVariable solverVariableK2 = linearSystem2.k(constraintAnchor5);
        ConstraintAnchor constraintAnchor6 = this.M;
        SolverVariable solverVariableK3 = linearSystem2.k(constraintAnchor6);
        ConstraintAnchor constraintAnchor7 = this.O;
        SolverVariable solverVariableK4 = linearSystem2.k(constraintAnchor7);
        ConstraintAnchor constraintAnchor8 = this.P;
        SolverVariable solverVariableK5 = linearSystem2.k(constraintAnchor8);
        ConstraintWidget constraintWidget3 = this.X;
        if (constraintWidget3 != null) {
            DimensionBehaviour[] dimensionBehaviourArr = constraintWidget3.W;
            i3 = 0;
            DimensionBehaviour dimensionBehaviour7 = dimensionBehaviourArr[0];
            DimensionBehaviour dimensionBehaviour8 = DimensionBehaviour.WRAP_CONTENT;
            i4 = dimensionBehaviour7 == dimensionBehaviour8 ? 1 : 0;
            i5 = dimensionBehaviourArr[1] == dimensionBehaviour8 ? 1 : 0;
            int i28 = this.s;
            if (i28 != 1) {
                i2 = 1;
                if (i28 == 2) {
                    i4 = 0;
                } else if (i28 == 3) {
                }
            } else {
                i2 = 1;
                i5 = 0;
            }
            i6 = this.k0;
            boolean[] zArr3 = this.V;
            i7 = i5;
            if (i6 != 8 && !this.l0) {
                ArrayList arrayList = this.U;
                int size = arrayList.size();
                i8 = i4;
                int i29 = i3;
                while (true) {
                    if (i29 >= size) {
                        if (zArr3[i3] || zArr3[i2]) {
                            break;
                            break;
                        }
                        return;
                    }
                    int i30 = size;
                    HashSet hashSet2 = ((ConstraintAnchor) arrayList.get(i29)).f11480a;
                    if (hashSet2 != null && hashSet2.size() > 0) {
                        break;
                    }
                    i29++;
                    size = i30;
                }
            } else {
                i8 = i4;
            }
            z2 = this.m;
            if (z2 || this.n) {
                z3 = this.f11492h;
                if (z2) {
                    linearSystem2.d(solverVariableK, this.c0);
                    linearSystem2.d(solverVariableK2, this.c0 + this.Y);
                    if (i8 != 0 || (constraintWidget2 = this.X) == null) {
                        z4 = z3;
                    } else if (z3) {
                        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget2;
                        WeakReference weakReference2 = constraintWidgetContainer.N0;
                        if (weakReference2 == null || weakReference2.get() == null) {
                            z4 = z3;
                        } else {
                            z4 = z3;
                            if (constraintAnchor4.d() > ((ConstraintAnchor) constraintWidgetContainer.N0.get()).d()) {
                            }
                            weakReference = constraintWidgetContainer.P0;
                            if (weakReference != null || weakReference.get() == null || constraintAnchor5.d() > ((ConstraintAnchor) constraintWidgetContainer.P0.get()).d()) {
                                constraintWidgetContainer.P0 = new WeakReference(constraintAnchor5);
                            }
                        }
                        constraintWidgetContainer.N0 = new WeakReference(constraintAnchor4);
                        weakReference = constraintWidgetContainer.P0;
                        if (weakReference != null) {
                            constraintWidgetContainer.P0 = new WeakReference(constraintAnchor5);
                        } else {
                            constraintWidgetContainer.P0 = new WeakReference(constraintAnchor5);
                        }
                    } else {
                        z4 = z3;
                        linearSystem2.f(linearSystem2.k(constraintWidget2.N), solverVariableK2, i3, 5);
                    }
                } else {
                    z4 = z3;
                }
                if (this.n) {
                    linearSystem2.d(solverVariableK3, this.d0);
                    linearSystem2.d(solverVariableK4, this.d0 + this.Z);
                    hashSet = constraintAnchor8.f11480a;
                    if (hashSet != null && hashSet.size() > 0) {
                        linearSystem2.d(solverVariableK5, this.d0 + this.e0);
                    }
                    if (i7 != 0 || (constraintWidget = this.X) == null) {
                        z5 = false;
                    } else if (z4) {
                        ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) constraintWidget;
                        WeakReference weakReference3 = constraintWidgetContainer2.M0;
                        if (weakReference3 == null || weakReference3.get() == null || constraintAnchor6.d() > ((ConstraintAnchor) constraintWidgetContainer2.M0.get()).d()) {
                            constraintWidgetContainer2.M0 = new WeakReference(constraintAnchor6);
                        }
                        WeakReference weakReference4 = constraintWidgetContainer2.O0;
                        if (weakReference4 == null || weakReference4.get() == null || constraintAnchor7.d() > ((ConstraintAnchor) constraintWidgetContainer2.O0.get()).d()) {
                            constraintWidgetContainer2.O0 = new WeakReference(constraintAnchor7);
                        }
                        z5 = false;
                    } else {
                        z5 = false;
                        linearSystem2.f(linearSystem2.k(constraintWidget.O), solverVariableK4, 0, 5);
                    }
                } else {
                    z5 = false;
                }
                if (this.m && this.n) {
                    this.m = z5;
                    this.n = z5;
                    return;
                }
            }
            zArr = this.f11491f;
            if (z || (horizontalWidgetRun2 = this.d) == null || (verticalWidgetRun2 = this.f11490e) == null) {
                constraintAnchor = constraintAnchor8;
                zArr2 = zArr;
            } else {
                constraintAnchor = constraintAnchor8;
                DependencyNode dependencyNode = horizontalWidgetRun2.f11552h;
                zArr2 = zArr;
                if (dependencyNode.f11533j && horizontalWidgetRun2.f11553i.f11533j && verticalWidgetRun2.f11552h.f11533j && verticalWidgetRun2.f11553i.f11533j) {
                    linearSystem2.d(solverVariableK, dependencyNode.g);
                    linearSystem2.d(solverVariableK2, this.d.f11553i.g);
                    linearSystem2.d(solverVariableK3, this.f11490e.f11552h.g);
                    linearSystem2.d(solverVariableK4, this.f11490e.f11553i.g);
                    linearSystem2.d(solverVariableK5, this.f11490e.f11540k.g);
                    if (this.X == null) {
                        z12 = false;
                    } else {
                        if (i8 != 0 && zArr2[0] && !C()) {
                            linearSystem2.f(linearSystem2.k(this.X.N), solverVariableK2, 0, 8);
                        }
                        if (i7 == 0 || !zArr2[i2] || D()) {
                            z12 = false;
                        } else {
                            z12 = false;
                            linearSystem2.f(linearSystem2.k(this.X.O), solverVariableK4, 0, 8);
                        }
                    }
                    this.m = z12;
                    this.n = z12;
                    return;
                }
            }
            if (this.X != null) {
                if (B(0)) {
                    ((ConstraintWidgetContainer) this.X).a0(this, 0);
                    int i31 = i2;
                    i27 = i31 == true ? 1 : 0;
                    C = i31;
                } else {
                    i27 = i2;
                    C = C();
                }
                if (B(i27)) {
                    ((ConstraintWidgetContainer) this.X).a0(this, i27);
                    zD = true;
                } else {
                    zD = D();
                }
                if (C != 0 && i8 != 0 && this.k0 != 8 && constraintAnchor4.f11484f == null && constraintAnchor5.f11484f == null) {
                    linearSystem2.f(linearSystem2.k(this.X.N), solverVariableK2, 0, 1);
                }
                if (!zD && i7 != 0 && this.k0 != 8 && constraintAnchor6.f11484f == null && constraintAnchor7.f11484f == null && constraintAnchor == null) {
                    linearSystem2.f(linearSystem2.k(this.X.O), solverVariableK4, 0, 1);
                }
                r14 = C;
                z6 = zD;
            } else {
                constraintAnchor4 = constraintAnchor4;
                r14 = 0;
                z6 = false;
            }
            i9 = this.Y;
            i10 = this.f0;
            if (i9 >= i10) {
                i10 = i9;
            }
            i11 = this.Z;
            i12 = this.g0;
            if (i11 < i12) {
                i13 = i12;
            } else {
                i13 = i11;
            }
            DimensionBehaviour[] dimensionBehaviourArr2 = this.W;
            dimensionBehaviour = dimensionBehaviourArr2[0];
            dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour != dimensionBehaviour2) {
                z7 = true;
            } else {
                z7 = false;
            }
            dimensionBehaviour3 = dimensionBehaviourArr2[1];
            if (dimensionBehaviour3 != dimensionBehaviour2) {
                z8 = true;
            } else {
                z8 = false;
            }
            i14 = this.b0;
            this.C = i14;
            f2 = this.a0;
            this.D = f2;
            i15 = this.t;
            i16 = this.u;
            if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                solverVariable = solverVariableK4;
                if (this.k0 != 8) {
                    if (dimensionBehaviour == dimensionBehaviour2 || i15 != 0) {
                        i17 = i15;
                    } else {
                        i17 = 3;
                    }
                    if (dimensionBehaviour3 == dimensionBehaviour2 || i16 != 0) {
                        i26 = i16;
                    } else {
                        i26 = 3;
                    }
                    if (dimensionBehaviour != dimensionBehaviour2 && dimensionBehaviour3 == dimensionBehaviour2) {
                        solverVariable2 = solverVariableK5;
                        if (i17 == 3 && i26 == 3) {
                            if (i14 == -1) {
                                if (z7 && !z8) {
                                    this.C = 0;
                                } else if (!z7 && z8) {
                                    this.C = 1;
                                    if (i14 == -1) {
                                        this.D = 1.0f / f2;
                                    }
                                }
                            }
                            if (this.C == 0 && (!constraintAnchor6.h() || !constraintAnchor7.h())) {
                                this.C = 1;
                            } else if (this.C == 1 && (!constraintAnchor4.h() || !constraintAnchor5.h())) {
                                this.C = 0;
                            }
                            if (this.C == -1 && (!constraintAnchor6.h() || !constraintAnchor7.h() || !constraintAnchor4.h() || !constraintAnchor5.h())) {
                                if (constraintAnchor6.h() && constraintAnchor7.h()) {
                                    this.C = 0;
                                } else if (constraintAnchor4.h() && constraintAnchor5.h()) {
                                    this.D = 1.0f / this.D;
                                    this.C = 1;
                                }
                            }
                            if (this.C == -1) {
                                int i32 = this.w;
                                if (i32 > 0 && this.z == 0) {
                                    this.C = 0;
                                } else if (i32 == 0 && this.z > 0) {
                                    this.D = 1.0f / this.D;
                                    this.C = 1;
                                }
                            }
                        }
                        i18 = i26;
                        z9 = true;
                        int[] iArr = this.v;
                        iArr[0] = i17;
                        iArr[1] = i18;
                        if (z9) {
                            int i33 = this.C;
                            i19 = -1;
                            boolean z13 = i33 != 0 || i33 == -1;
                            if (z9 || !((i25 = this.C) == 1 || i25 == i19)) {
                                z10 = false;
                            } else {
                                z10 = true;
                            }
                            dimensionBehaviour4 = this.W[0];
                            dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                            if (dimensionBehaviour4 == dimensionBehaviour5 || !(this instanceof ConstraintWidgetContainer)) {
                                z11 = false;
                            } else {
                                z11 = true;
                            }
                            if (z11) {
                                i10 = 0;
                            }
                            constraintAnchor2 = this.S;
                            boolean z14 = !constraintAnchor2.h();
                            boolean z15 = zArr3[0];
                            boolean z16 = zArr3[1];
                            if (this.q != 2 || this.m) {
                                solverVariable3 = solverVariableK;
                                solverVariable4 = solverVariableK2;
                                dimensionBehaviour6 = dimensionBehaviour5;
                                r19 = r14;
                                r3 = i8;
                                constraintAnchor3 = constraintAnchor;
                                r4 = i7;
                                i20 = i17;
                            } else {
                                if (z && (horizontalWidgetRun = this.d) != null) {
                                    DependencyNode dependencyNode2 = horizontalWidgetRun.f11552h;
                                    if (dependencyNode2.f11533j && horizontalWidgetRun.f11553i.f11533j) {
                                        if (z) {
                                            linearSystem2.d(solverVariableK, dependencyNode2.g);
                                            linearSystem2.d(solverVariableK2, this.d.f11553i.g);
                                            if (this.X != null && i8 != 0 && zArr2[0] && !C()) {
                                                linearSystem2.f(linearSystem2.k(this.X.N), solverVariableK2, 0, 8);
                                            }
                                        }
                                        solverVariable3 = solverVariableK;
                                        solverVariable4 = solverVariableK2;
                                        dimensionBehaviour6 = dimensionBehaviour5;
                                        r19 = r14;
                                        r3 = i8;
                                        constraintAnchor3 = constraintAnchor;
                                        r4 = i7;
                                        i20 = i17;
                                    }
                                }
                                ConstraintWidget constraintWidget4 = this.X;
                                SolverVariable solverVariableK6 = constraintWidget4 != null ? linearSystem2.k(constraintWidget4.N) : null;
                                ConstraintWidget constraintWidget5 = this.X;
                                SolverVariable solverVariableK7 = constraintWidget5 != null ? linearSystem2.k(constraintWidget5.L) : null;
                                boolean z17 = zArr2[0];
                                DimensionBehaviour[] dimensionBehaviourArr3 = this.W;
                                ?? r5 = i8;
                                i20 = i17;
                                DimensionBehaviour dimensionBehaviour9 = dimensionBehaviourArr3[0];
                                SolverVariable solverVariable9 = solverVariableK7;
                                int i34 = i10;
                                int i35 = this.c0;
                                ?? r110 = r14;
                                int i36 = this.f0;
                                int i37 = this.E[0];
                                float f4 = this.h0;
                                boolean z18 = dimensionBehaviourArr3[1] == dimensionBehaviour2;
                                solverVariable4 = solverVariableK2;
                                ?? r6 = i7;
                                solverVariable3 = solverVariableK;
                                constraintAnchor3 = constraintAnchor;
                                dimensionBehaviour6 = dimensionBehaviour5;
                                linearSystem2 = linearSystem;
                                h(linearSystem2, true, r5, r6, z17, solverVariable9, solverVariableK6, dimensionBehaviour9, z11, this.L, this.N, i35, i34, i36, i37, f4, z13, z18, r110, z6, z15, i20, i18, this.w, this.x, this.y, z14);
                                r3 = r5;
                                r4 = r6;
                                r19 = r110;
                            }
                            if (z || (verticalWidgetRun = this.f11490e) == null) {
                                solverVariable5 = r33;
                                solverVariable6 = solverVariable;
                                solverVariable7 = solverVariable2;
                                i21 = 0;
                                i22 = 8;
                                c2 = 1;
                                i23 = 1;
                            } else {
                                DependencyNode dependencyNode3 = verticalWidgetRun.f11552h;
                                if (dependencyNode3.f11533j && verticalWidgetRun.f11553i.f11533j) {
                                    int i38 = dependencyNode3.g;
                                    solverVariable5 = solverVariableK3;
                                    linearSystem2.d(solverVariable5, i38);
                                    solverVariable6 = solverVariable;
                                    linearSystem2.d(solverVariable6, this.f11490e.f11553i.g);
                                    solverVariable7 = solverVariable2;
                                    linearSystem2.d(solverVariable7, this.f11490e.f11540k.g);
                                    ConstraintWidget constraintWidget6 = this.X;
                                    if (constraintWidget6 == null || z6 || r4 == 0) {
                                        i21 = 0;
                                        i22 = 8;
                                        c2 = 1;
                                    } else {
                                        c2 = 1;
                                        if (zArr2[1]) {
                                            i21 = 0;
                                            i22 = 8;
                                            linearSystem2.f(linearSystem2.k(constraintWidget6.O), solverVariable6, 0, 8);
                                        } else {
                                            i21 = 0;
                                            i22 = 8;
                                        }
                                    }
                                    i23 = i21;
                                } else {
                                    solverVariable5 = r33;
                                    solverVariable6 = solverVariable;
                                    solverVariable7 = solverVariable2;
                                    i21 = 0;
                                    i22 = 8;
                                    c2 = 1;
                                    i23 = 1;
                                }
                            }
                            if (this.r == 2) {
                                i23 = i21;
                            }
                            if (i23 != 0 || this.n) {
                                solverVariable8 = solverVariable5;
                            } else {
                                ?? r9 = (this.W[c2] == dimensionBehaviour6 && (this instanceof ConstraintWidgetContainer)) ? c2 : i21;
                                int i39 = r9 != 0 ? i21 : i13;
                                ConstraintWidget constraintWidget7 = this.X;
                                SolverVariable solverVariableK8 = constraintWidget7 != null ? linearSystem2.k(constraintWidget7.O) : null;
                                ConstraintWidget constraintWidget8 = this.X;
                                SolverVariable solverVariableK9 = constraintWidget8 != null ? linearSystem2.k(constraintWidget8.M) : null;
                                int i40 = this.e0;
                                if (i40 > 0 || this.k0 == i22) {
                                    r27 = z14;
                                    ConstraintAnchor constraintAnchor9 = constraintAnchor3;
                                    if (constraintAnchor9.f11484f != null) {
                                        linearSystem2.e(solverVariable7, solverVariable5, i40, i22);
                                        linearSystem2.e(solverVariable7, linearSystem2.k(constraintAnchor9.f11484f), constraintAnchor9.e(), i22);
                                        if (r4 != 0) {
                                            linearSystem2.f(solverVariableK8, linearSystem2.k(constraintAnchor7), i21, 5);
                                        }
                                        r27 = i21;
                                    } else if (this.k0 == i22) {
                                        linearSystem2.e(solverVariable7, solverVariable5, constraintAnchor9.e(), i22);
                                        r27 = z14;
                                    } else {
                                        linearSystem2.e(solverVariable7, solverVariable5, i40, i22);
                                        r27 = z14;
                                    }
                                }
                                r27 = z14;
                                boolean z19 = zArr2[c2];
                                DimensionBehaviour[] dimensionBehaviourArr4 = this.W;
                                int i41 = i21;
                                char c3 = c2;
                                solverVariable8 = solverVariable5;
                                linearSystem2 = linearSystem;
                                h(linearSystem2, false, r4, r3, z19, solverVariableK9, solverVariableK8, dimensionBehaviourArr4[c2], r9, this.M, this.O, this.d0, i39, this.g0, this.E[c3], this.i0, z10, dimensionBehaviourArr4[i41] == dimensionBehaviour2 ? c3 : i41, z6, r19, z16, i18, i20, this.z, this.A, this.B, r27);
                            }
                            if (z9) {
                                i24 = this.C;
                                f3 = this.D;
                                if (i24 == 1) {
                                    ArrayRow arrayRowL = linearSystem2.l();
                                    arrayRowL.d.g(solverVariable6, -1.0f);
                                    arrayRowL.d.g(solverVariable8, 1.0f);
                                    arrayRowL.d.g(solverVariable4, f3);
                                    arrayRowL.d.g(solverVariable3, -f3);
                                    linearSystem2.c(arrayRowL);
                                } else {
                                    ArrayRow arrayRowL2 = linearSystem2.l();
                                    arrayRowL2.d.g(solverVariable4, -1.0f);
                                    arrayRowL2.d.g(solverVariable3, 1.0f);
                                    arrayRowL2.d.g(solverVariable6, f3);
                                    arrayRowL2.d.g(solverVariable8, -f3);
                                    linearSystem2.c(arrayRowL2);
                                }
                            }
                            if (constraintAnchor2.h()) {
                                ConstraintWidget constraintWidget9 = constraintAnchor2.f11484f.d;
                                float radians = (float) Math.toRadians(this.F + 90.0f);
                                int iE = constraintAnchor2.e();
                                ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
                                SolverVariable solverVariableK10 = linearSystem2.k(n(type));
                                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
                                SolverVariable solverVariableK11 = linearSystem2.k(n(type2));
                                ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
                                SolverVariable solverVariableK12 = linearSystem2.k(n(type3));
                                ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
                                SolverVariable solverVariableK13 = linearSystem2.k(n(type4));
                                SolverVariable solverVariableK14 = linearSystem2.k(constraintWidget9.n(type));
                                SolverVariable solverVariableK15 = linearSystem2.k(constraintWidget9.n(type2));
                                SolverVariable solverVariableK16 = linearSystem2.k(constraintWidget9.n(type3));
                                SolverVariable solverVariableK17 = linearSystem2.k(constraintWidget9.n(type4));
                                ArrayRow arrayRowL3 = linearSystem2.l();
                                double d = radians;
                                double dSin = Math.sin(d);
                                double d2 = iE;
                                arrayRowL3.d.g(solverVariableK15, 0.5f);
                                arrayRowL3.d.g(solverVariableK17, 0.5f);
                                arrayRowL3.d.g(solverVariableK11, -0.5f);
                                arrayRowL3.d.g(solverVariableK13, -0.5f);
                                arrayRowL3.f11291b = -((float) (dSin * d2));
                                linearSystem2.c(arrayRowL3);
                                ArrayRow arrayRowL4 = linearSystem2.l();
                                float fCos = (float) (Math.cos(d) * d2);
                                arrayRowL4.d.g(solverVariableK14, 0.5f);
                                arrayRowL4.d.g(solverVariableK16, 0.5f);
                                arrayRowL4.d.g(solverVariableK10, -0.5f);
                                arrayRowL4.d.g(solverVariableK12, -0.5f);
                                arrayRowL4.f11291b = -fCos;
                                linearSystem2.c(arrayRowL4);
                            }
                            this.m = false;
                            this.n = false;
                        }
                        i19 = -1;
                        if (z9) {
                            z10 = false;
                        } else {
                            z10 = false;
                        }
                        dimensionBehaviour4 = this.W[0];
                        dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                        if (dimensionBehaviour4 == dimensionBehaviour5) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                        if (z11) {
                            i10 = 0;
                        }
                        constraintAnchor2 = this.S;
                        boolean z110 = !constraintAnchor2.h();
                        boolean z111 = zArr3[0];
                        boolean z112 = zArr3[1];
                        if (this.q != 2) {
                            solverVariable3 = solverVariableK;
                            solverVariable4 = solverVariableK2;
                            dimensionBehaviour6 = dimensionBehaviour5;
                            r19 = r14;
                            r3 = i8;
                            constraintAnchor3 = constraintAnchor;
                            r4 = i7;
                            i20 = i17;
                        } else {
                            solverVariable3 = solverVariableK;
                            solverVariable4 = solverVariableK2;
                            dimensionBehaviour6 = dimensionBehaviour5;
                            r19 = r14;
                            r3 = i8;
                            constraintAnchor3 = constraintAnchor;
                            r4 = i7;
                            i20 = i17;
                        }
                        if (z) {
                            solverVariable5 = r33;
                            solverVariable6 = solverVariable;
                            solverVariable7 = solverVariable2;
                            i21 = 0;
                            i22 = 8;
                            c2 = 1;
                            i23 = 1;
                        } else {
                            solverVariable5 = r33;
                            solverVariable6 = solverVariable;
                            solverVariable7 = solverVariable2;
                            i21 = 0;
                            i22 = 8;
                            c2 = 1;
                            i23 = 1;
                        }
                        if (this.r == 2) {
                            i23 = i21;
                        }
                        if (i23 != 0) {
                            solverVariable8 = solverVariable5;
                        } else {
                            solverVariable8 = solverVariable5;
                        }
                        if (z9) {
                            i24 = this.C;
                            f3 = this.D;
                            if (i24 == 1) {
                                ArrayRow arrayRowL5 = linearSystem2.l();
                                arrayRowL5.d.g(solverVariable6, -1.0f);
                                arrayRowL5.d.g(solverVariable8, 1.0f);
                                arrayRowL5.d.g(solverVariable4, f3);
                                arrayRowL5.d.g(solverVariable3, -f3);
                                linearSystem2.c(arrayRowL5);
                            } else {
                                ArrayRow arrayRowL6 = linearSystem2.l();
                                arrayRowL6.d.g(solverVariable4, -1.0f);
                                arrayRowL6.d.g(solverVariable3, 1.0f);
                                arrayRowL6.d.g(solverVariable6, f3);
                                arrayRowL6.d.g(solverVariable8, -f3);
                                linearSystem2.c(arrayRowL6);
                            }
                        }
                        if (constraintAnchor2.h()) {
                            ConstraintWidget constraintWidget10 = constraintAnchor2.f11484f.d;
                            float radians2 = (float) Math.toRadians(this.F + 90.0f);
                            int iE2 = constraintAnchor2.e();
                            ConstraintAnchor.Type type5 = ConstraintAnchor.Type.LEFT;
                            SolverVariable solverVariableK18 = linearSystem2.k(n(type5));
                            ConstraintAnchor.Type type6 = ConstraintAnchor.Type.TOP;
                            SolverVariable solverVariableK19 = linearSystem2.k(n(type6));
                            ConstraintAnchor.Type type7 = ConstraintAnchor.Type.RIGHT;
                            SolverVariable solverVariableK110 = linearSystem2.k(n(type7));
                            ConstraintAnchor.Type type8 = ConstraintAnchor.Type.BOTTOM;
                            SolverVariable solverVariableK111 = linearSystem2.k(n(type8));
                            SolverVariable solverVariableK112 = linearSystem2.k(constraintWidget10.n(type5));
                            SolverVariable solverVariableK113 = linearSystem2.k(constraintWidget10.n(type6));
                            SolverVariable solverVariableK114 = linearSystem2.k(constraintWidget10.n(type7));
                            SolverVariable solverVariableK115 = linearSystem2.k(constraintWidget10.n(type8));
                            ArrayRow arrayRowL7 = linearSystem2.l();
                            double d3 = radians2;
                            double dSin2 = Math.sin(d3);
                            double d4 = iE2;
                            arrayRowL7.d.g(solverVariableK113, 0.5f);
                            arrayRowL7.d.g(solverVariableK115, 0.5f);
                            arrayRowL7.d.g(solverVariableK19, -0.5f);
                            arrayRowL7.d.g(solverVariableK111, -0.5f);
                            arrayRowL7.f11291b = -((float) (dSin2 * d4));
                            linearSystem2.c(arrayRowL7);
                            ArrayRow arrayRowL8 = linearSystem2.l();
                            float fCos2 = (float) (Math.cos(d3) * d4);
                            arrayRowL8.d.g(solverVariableK112, 0.5f);
                            arrayRowL8.d.g(solverVariableK114, 0.5f);
                            arrayRowL8.d.g(solverVariableK18, -0.5f);
                            arrayRowL8.d.g(solverVariableK110, -0.5f);
                            arrayRowL8.f11291b = -fCos2;
                            linearSystem2.c(arrayRowL8);
                        }
                        this.m = false;
                        this.n = false;
                    }
                    solverVariable2 = solverVariableK5;
                    if (dimensionBehaviour != dimensionBehaviour2 && i17 == 3) {
                        this.C = 0;
                        i10 = (int) (i11 * f2);
                        i18 = i26;
                        if (dimensionBehaviour3 != dimensionBehaviour2) {
                            i17 = 4;
                        } else {
                            z9 = true;
                        }
                        int[] iArr2 = this.v;
                        iArr2[0] = i17;
                        iArr2[1] = i18;
                        if (z9) {
                            int i310 = this.C;
                            i19 = -1;
                            if (i310 != 0) {
                            }
                            if (z9) {
                                z10 = false;
                            } else {
                                z10 = false;
                            }
                            dimensionBehaviour4 = this.W[0];
                            dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                            if (dimensionBehaviour4 == dimensionBehaviour5) {
                                z11 = false;
                            } else {
                                z11 = false;
                            }
                            if (z11) {
                                i10 = 0;
                            }
                            constraintAnchor2 = this.S;
                            boolean z113 = !constraintAnchor2.h();
                            boolean z114 = zArr3[0];
                            boolean z115 = zArr3[1];
                            if (this.q != 2) {
                                solverVariable3 = solverVariableK;
                                solverVariable4 = solverVariableK2;
                                dimensionBehaviour6 = dimensionBehaviour5;
                                r19 = r14;
                                r3 = i8;
                                constraintAnchor3 = constraintAnchor;
                                r4 = i7;
                                i20 = i17;
                            } else {
                                solverVariable3 = solverVariableK;
                                solverVariable4 = solverVariableK2;
                                dimensionBehaviour6 = dimensionBehaviour5;
                                r19 = r14;
                                r3 = i8;
                                constraintAnchor3 = constraintAnchor;
                                r4 = i7;
                                i20 = i17;
                            }
                            if (z) {
                                solverVariable5 = r33;
                                solverVariable6 = solverVariable;
                                solverVariable7 = solverVariable2;
                                i21 = 0;
                                i22 = 8;
                                c2 = 1;
                                i23 = 1;
                            } else {
                                solverVariable5 = r33;
                                solverVariable6 = solverVariable;
                                solverVariable7 = solverVariable2;
                                i21 = 0;
                                i22 = 8;
                                c2 = 1;
                                i23 = 1;
                            }
                            if (this.r == 2) {
                                i23 = i21;
                            }
                            if (i23 != 0) {
                                solverVariable8 = solverVariable5;
                            } else {
                                solverVariable8 = solverVariable5;
                            }
                            if (z9) {
                                i24 = this.C;
                                f3 = this.D;
                                if (i24 == 1) {
                                    ArrayRow arrayRowL9 = linearSystem2.l();
                                    arrayRowL9.d.g(solverVariable6, -1.0f);
                                    arrayRowL9.d.g(solverVariable8, 1.0f);
                                    arrayRowL9.d.g(solverVariable4, f3);
                                    arrayRowL9.d.g(solverVariable3, -f3);
                                    linearSystem2.c(arrayRowL9);
                                } else {
                                    ArrayRow arrayRowL10 = linearSystem2.l();
                                    arrayRowL10.d.g(solverVariable4, -1.0f);
                                    arrayRowL10.d.g(solverVariable3, 1.0f);
                                    arrayRowL10.d.g(solverVariable6, f3);
                                    arrayRowL10.d.g(solverVariable8, -f3);
                                    linearSystem2.c(arrayRowL10);
                                }
                            }
                            if (constraintAnchor2.h()) {
                                ConstraintWidget constraintWidget11 = constraintAnchor2.f11484f.d;
                                float radians3 = (float) Math.toRadians(this.F + 90.0f);
                                int iE3 = constraintAnchor2.e();
                                ConstraintAnchor.Type type9 = ConstraintAnchor.Type.LEFT;
                                SolverVariable solverVariableK116 = linearSystem2.k(n(type9));
                                ConstraintAnchor.Type type10 = ConstraintAnchor.Type.TOP;
                                SolverVariable solverVariableK117 = linearSystem2.k(n(type10));
                                ConstraintAnchor.Type type11 = ConstraintAnchor.Type.RIGHT;
                                SolverVariable solverVariableK118 = linearSystem2.k(n(type11));
                                ConstraintAnchor.Type type12 = ConstraintAnchor.Type.BOTTOM;
                                SolverVariable solverVariableK119 = linearSystem2.k(n(type12));
                                SolverVariable solverVariableK1110 = linearSystem2.k(constraintWidget11.n(type9));
                                SolverVariable solverVariableK1111 = linearSystem2.k(constraintWidget11.n(type10));
                                SolverVariable solverVariableK1112 = linearSystem2.k(constraintWidget11.n(type11));
                                SolverVariable solverVariableK1113 = linearSystem2.k(constraintWidget11.n(type12));
                                ArrayRow arrayRowL11 = linearSystem2.l();
                                double d5 = radians3;
                                double dSin3 = Math.sin(d5);
                                double d6 = iE3;
                                arrayRowL11.d.g(solverVariableK1111, 0.5f);
                                arrayRowL11.d.g(solverVariableK1113, 0.5f);
                                arrayRowL11.d.g(solverVariableK117, -0.5f);
                                arrayRowL11.d.g(solverVariableK119, -0.5f);
                                arrayRowL11.f11291b = -((float) (dSin3 * d6));
                                linearSystem2.c(arrayRowL11);
                                ArrayRow arrayRowL12 = linearSystem2.l();
                                float fCos3 = (float) (Math.cos(d5) * d6);
                                arrayRowL12.d.g(solverVariableK1110, 0.5f);
                                arrayRowL12.d.g(solverVariableK1112, 0.5f);
                                arrayRowL12.d.g(solverVariableK116, -0.5f);
                                arrayRowL12.d.g(solverVariableK118, -0.5f);
                                arrayRowL12.f11291b = -fCos3;
                                linearSystem2.c(arrayRowL12);
                            }
                            this.m = false;
                            this.n = false;
                        }
                        i19 = -1;
                        if (z9) {
                            z10 = false;
                        } else {
                            z10 = false;
                        }
                        dimensionBehaviour4 = this.W[0];
                        dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                        if (dimensionBehaviour4 == dimensionBehaviour5) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                        if (z11) {
                            i10 = 0;
                        }
                        constraintAnchor2 = this.S;
                        boolean z116 = !constraintAnchor2.h();
                        boolean z117 = zArr3[0];
                        boolean z118 = zArr3[1];
                        if (this.q != 2) {
                            solverVariable3 = solverVariableK;
                            solverVariable4 = solverVariableK2;
                            dimensionBehaviour6 = dimensionBehaviour5;
                            r19 = r14;
                            r3 = i8;
                            constraintAnchor3 = constraintAnchor;
                            r4 = i7;
                            i20 = i17;
                        } else {
                            solverVariable3 = solverVariableK;
                            solverVariable4 = solverVariableK2;
                            dimensionBehaviour6 = dimensionBehaviour5;
                            r19 = r14;
                            r3 = i8;
                            constraintAnchor3 = constraintAnchor;
                            r4 = i7;
                            i20 = i17;
                        }
                        if (z) {
                            solverVariable5 = r33;
                            solverVariable6 = solverVariable;
                            solverVariable7 = solverVariable2;
                            i21 = 0;
                            i22 = 8;
                            c2 = 1;
                            i23 = 1;
                        } else {
                            solverVariable5 = r33;
                            solverVariable6 = solverVariable;
                            solverVariable7 = solverVariable2;
                            i21 = 0;
                            i22 = 8;
                            c2 = 1;
                            i23 = 1;
                        }
                        if (this.r == 2) {
                            i23 = i21;
                        }
                        if (i23 != 0) {
                            solverVariable8 = solverVariable5;
                        } else {
                            solverVariable8 = solverVariable5;
                        }
                        if (z9) {
                            i24 = this.C;
                            f3 = this.D;
                            if (i24 == 1) {
                                ArrayRow arrayRowL13 = linearSystem2.l();
                                arrayRowL13.d.g(solverVariable6, -1.0f);
                                arrayRowL13.d.g(solverVariable8, 1.0f);
                                arrayRowL13.d.g(solverVariable4, f3);
                                arrayRowL13.d.g(solverVariable3, -f3);
                                linearSystem2.c(arrayRowL13);
                            } else {
                                ArrayRow arrayRowL14 = linearSystem2.l();
                                arrayRowL14.d.g(solverVariable4, -1.0f);
                                arrayRowL14.d.g(solverVariable3, 1.0f);
                                arrayRowL14.d.g(solverVariable6, f3);
                                arrayRowL14.d.g(solverVariable8, -f3);
                                linearSystem2.c(arrayRowL14);
                            }
                        }
                        if (constraintAnchor2.h()) {
                            ConstraintWidget constraintWidget12 = constraintAnchor2.f11484f.d;
                            float radians4 = (float) Math.toRadians(this.F + 90.0f);
                            int iE4 = constraintAnchor2.e();
                            ConstraintAnchor.Type type13 = ConstraintAnchor.Type.LEFT;
                            SolverVariable solverVariableK1114 = linearSystem2.k(n(type13));
                            ConstraintAnchor.Type type14 = ConstraintAnchor.Type.TOP;
                            SolverVariable solverVariableK1115 = linearSystem2.k(n(type14));
                            ConstraintAnchor.Type type15 = ConstraintAnchor.Type.RIGHT;
                            SolverVariable solverVariableK1116 = linearSystem2.k(n(type15));
                            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.BOTTOM;
                            SolverVariable solverVariableK1117 = linearSystem2.k(n(type16));
                            SolverVariable solverVariableK1118 = linearSystem2.k(constraintWidget12.n(type13));
                            SolverVariable solverVariableK1119 = linearSystem2.k(constraintWidget12.n(type14));
                            SolverVariable solverVariableK11110 = linearSystem2.k(constraintWidget12.n(type15));
                            SolverVariable solverVariableK11111 = linearSystem2.k(constraintWidget12.n(type16));
                            ArrayRow arrayRowL15 = linearSystem2.l();
                            double d7 = radians4;
                            double dSin4 = Math.sin(d7);
                            double d8 = iE4;
                            arrayRowL15.d.g(solverVariableK1119, 0.5f);
                            arrayRowL15.d.g(solverVariableK11111, 0.5f);
                            arrayRowL15.d.g(solverVariableK1115, -0.5f);
                            arrayRowL15.d.g(solverVariableK1117, -0.5f);
                            arrayRowL15.f11291b = -((float) (dSin4 * d8));
                            linearSystem2.c(arrayRowL15);
                            ArrayRow arrayRowL16 = linearSystem2.l();
                            float fCos4 = (float) (Math.cos(d7) * d8);
                            arrayRowL16.d.g(solverVariableK1118, 0.5f);
                            arrayRowL16.d.g(solverVariableK11110, 0.5f);
                            arrayRowL16.d.g(solverVariableK1114, -0.5f);
                            arrayRowL16.d.g(solverVariableK1116, -0.5f);
                            arrayRowL16.f11291b = -fCos4;
                            linearSystem2.c(arrayRowL16);
                        }
                        this.m = false;
                        this.n = false;
                    }
                    if (dimensionBehaviour3 == dimensionBehaviour2 && i26 == 3) {
                        this.C = 1;
                        if (i14 == -1) {
                            this.D = 1.0f / f2;
                        }
                        i13 = (int) (this.D * i9);
                        if (dimensionBehaviour != dimensionBehaviour2) {
                            i18 = 4;
                            z9 = false;
                            int[] iArr3 = this.v;
                            iArr3[0] = i17;
                            iArr3[1] = i18;
                            if (z9) {
                                int i311 = this.C;
                                i19 = -1;
                                if (i311 != 0) {
                                }
                                if (z9) {
                                    z10 = false;
                                } else {
                                    z10 = false;
                                }
                                dimensionBehaviour4 = this.W[0];
                                dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                                if (dimensionBehaviour4 == dimensionBehaviour5) {
                                    z11 = false;
                                } else {
                                    z11 = false;
                                }
                                if (z11) {
                                    i10 = 0;
                                }
                                constraintAnchor2 = this.S;
                                boolean z119 = !constraintAnchor2.h();
                                boolean z1110 = zArr3[0];
                                boolean z1111 = zArr3[1];
                                if (this.q != 2) {
                                    solverVariable3 = solverVariableK;
                                    solverVariable4 = solverVariableK2;
                                    dimensionBehaviour6 = dimensionBehaviour5;
                                    r19 = r14;
                                    r3 = i8;
                                    constraintAnchor3 = constraintAnchor;
                                    r4 = i7;
                                    i20 = i17;
                                } else {
                                    solverVariable3 = solverVariableK;
                                    solverVariable4 = solverVariableK2;
                                    dimensionBehaviour6 = dimensionBehaviour5;
                                    r19 = r14;
                                    r3 = i8;
                                    constraintAnchor3 = constraintAnchor;
                                    r4 = i7;
                                    i20 = i17;
                                }
                                if (z) {
                                    solverVariable5 = r33;
                                    solverVariable6 = solverVariable;
                                    solverVariable7 = solverVariable2;
                                    i21 = 0;
                                    i22 = 8;
                                    c2 = 1;
                                    i23 = 1;
                                } else {
                                    solverVariable5 = r33;
                                    solverVariable6 = solverVariable;
                                    solverVariable7 = solverVariable2;
                                    i21 = 0;
                                    i22 = 8;
                                    c2 = 1;
                                    i23 = 1;
                                }
                                if (this.r == 2) {
                                    i23 = i21;
                                }
                                if (i23 != 0) {
                                    solverVariable8 = solverVariable5;
                                } else {
                                    solverVariable8 = solverVariable5;
                                }
                                if (z9) {
                                    i24 = this.C;
                                    f3 = this.D;
                                    if (i24 == 1) {
                                        ArrayRow arrayRowL17 = linearSystem2.l();
                                        arrayRowL17.d.g(solverVariable6, -1.0f);
                                        arrayRowL17.d.g(solverVariable8, 1.0f);
                                        arrayRowL17.d.g(solverVariable4, f3);
                                        arrayRowL17.d.g(solverVariable3, -f3);
                                        linearSystem2.c(arrayRowL17);
                                    } else {
                                        ArrayRow arrayRowL18 = linearSystem2.l();
                                        arrayRowL18.d.g(solverVariable4, -1.0f);
                                        arrayRowL18.d.g(solverVariable3, 1.0f);
                                        arrayRowL18.d.g(solverVariable6, f3);
                                        arrayRowL18.d.g(solverVariable8, -f3);
                                        linearSystem2.c(arrayRowL18);
                                    }
                                }
                                if (constraintAnchor2.h()) {
                                    ConstraintWidget constraintWidget13 = constraintAnchor2.f11484f.d;
                                    float radians5 = (float) Math.toRadians(this.F + 90.0f);
                                    int iE5 = constraintAnchor2.e();
                                    ConstraintAnchor.Type type17 = ConstraintAnchor.Type.LEFT;
                                    SolverVariable solverVariableK11112 = linearSystem2.k(n(type17));
                                    ConstraintAnchor.Type type18 = ConstraintAnchor.Type.TOP;
                                    SolverVariable solverVariableK11113 = linearSystem2.k(n(type18));
                                    ConstraintAnchor.Type type19 = ConstraintAnchor.Type.RIGHT;
                                    SolverVariable solverVariableK11114 = linearSystem2.k(n(type19));
                                    ConstraintAnchor.Type type110 = ConstraintAnchor.Type.BOTTOM;
                                    SolverVariable solverVariableK11115 = linearSystem2.k(n(type110));
                                    SolverVariable solverVariableK11116 = linearSystem2.k(constraintWidget13.n(type17));
                                    SolverVariable solverVariableK11117 = linearSystem2.k(constraintWidget13.n(type18));
                                    SolverVariable solverVariableK11118 = linearSystem2.k(constraintWidget13.n(type19));
                                    SolverVariable solverVariableK11119 = linearSystem2.k(constraintWidget13.n(type110));
                                    ArrayRow arrayRowL19 = linearSystem2.l();
                                    double d9 = radians5;
                                    double dSin5 = Math.sin(d9);
                                    double d10 = iE5;
                                    arrayRowL19.d.g(solverVariableK11117, 0.5f);
                                    arrayRowL19.d.g(solverVariableK11119, 0.5f);
                                    arrayRowL19.d.g(solverVariableK11113, -0.5f);
                                    arrayRowL19.d.g(solverVariableK11115, -0.5f);
                                    arrayRowL19.f11291b = -((float) (dSin5 * d10));
                                    linearSystem2.c(arrayRowL19);
                                    ArrayRow arrayRowL110 = linearSystem2.l();
                                    float fCos5 = (float) (Math.cos(d9) * d10);
                                    arrayRowL110.d.g(solverVariableK11116, 0.5f);
                                    arrayRowL110.d.g(solverVariableK11118, 0.5f);
                                    arrayRowL110.d.g(solverVariableK11112, -0.5f);
                                    arrayRowL110.d.g(solverVariableK11114, -0.5f);
                                    arrayRowL110.f11291b = -fCos5;
                                    linearSystem2.c(arrayRowL110);
                                }
                                this.m = false;
                                this.n = false;
                            }
                            i19 = -1;
                            if (z9) {
                                z10 = false;
                            } else {
                                z10 = false;
                            }
                            dimensionBehaviour4 = this.W[0];
                            dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                            if (dimensionBehaviour4 == dimensionBehaviour5) {
                                z11 = false;
                            } else {
                                z11 = false;
                            }
                            if (z11) {
                                i10 = 0;
                            }
                            constraintAnchor2 = this.S;
                            boolean z1112 = !constraintAnchor2.h();
                            boolean z1113 = zArr3[0];
                            boolean z1114 = zArr3[1];
                            if (this.q != 2) {
                                solverVariable3 = solverVariableK;
                                solverVariable4 = solverVariableK2;
                                dimensionBehaviour6 = dimensionBehaviour5;
                                r19 = r14;
                                r3 = i8;
                                constraintAnchor3 = constraintAnchor;
                                r4 = i7;
                                i20 = i17;
                            } else {
                                solverVariable3 = solverVariableK;
                                solverVariable4 = solverVariableK2;
                                dimensionBehaviour6 = dimensionBehaviour5;
                                r19 = r14;
                                r3 = i8;
                                constraintAnchor3 = constraintAnchor;
                                r4 = i7;
                                i20 = i17;
                            }
                            if (z) {
                                solverVariable5 = r33;
                                solverVariable6 = solverVariable;
                                solverVariable7 = solverVariable2;
                                i21 = 0;
                                i22 = 8;
                                c2 = 1;
                                i23 = 1;
                            } else {
                                solverVariable5 = r33;
                                solverVariable6 = solverVariable;
                                solverVariable7 = solverVariable2;
                                i21 = 0;
                                i22 = 8;
                                c2 = 1;
                                i23 = 1;
                            }
                            if (this.r == 2) {
                                i23 = i21;
                            }
                            if (i23 != 0) {
                                solverVariable8 = solverVariable5;
                            } else {
                                solverVariable8 = solverVariable5;
                            }
                            if (z9) {
                                i24 = this.C;
                                f3 = this.D;
                                if (i24 == 1) {
                                    ArrayRow arrayRowL111 = linearSystem2.l();
                                    arrayRowL111.d.g(solverVariable6, -1.0f);
                                    arrayRowL111.d.g(solverVariable8, 1.0f);
                                    arrayRowL111.d.g(solverVariable4, f3);
                                    arrayRowL111.d.g(solverVariable3, -f3);
                                    linearSystem2.c(arrayRowL111);
                                } else {
                                    ArrayRow arrayRowL112 = linearSystem2.l();
                                    arrayRowL112.d.g(solverVariable4, -1.0f);
                                    arrayRowL112.d.g(solverVariable3, 1.0f);
                                    arrayRowL112.d.g(solverVariable6, f3);
                                    arrayRowL112.d.g(solverVariable8, -f3);
                                    linearSystem2.c(arrayRowL112);
                                }
                            }
                            if (constraintAnchor2.h()) {
                                ConstraintWidget constraintWidget14 = constraintAnchor2.f11484f.d;
                                float radians6 = (float) Math.toRadians(this.F + 90.0f);
                                int iE6 = constraintAnchor2.e();
                                ConstraintAnchor.Type type111 = ConstraintAnchor.Type.LEFT;
                                SolverVariable solverVariableK111110 = linearSystem2.k(n(type111));
                                ConstraintAnchor.Type type112 = ConstraintAnchor.Type.TOP;
                                SolverVariable solverVariableK111111 = linearSystem2.k(n(type112));
                                ConstraintAnchor.Type type113 = ConstraintAnchor.Type.RIGHT;
                                SolverVariable solverVariableK111112 = linearSystem2.k(n(type113));
                                ConstraintAnchor.Type type114 = ConstraintAnchor.Type.BOTTOM;
                                SolverVariable solverVariableK111113 = linearSystem2.k(n(type114));
                                SolverVariable solverVariableK111114 = linearSystem2.k(constraintWidget14.n(type111));
                                SolverVariable solverVariableK111115 = linearSystem2.k(constraintWidget14.n(type112));
                                SolverVariable solverVariableK111116 = linearSystem2.k(constraintWidget14.n(type113));
                                SolverVariable solverVariableK111117 = linearSystem2.k(constraintWidget14.n(type114));
                                ArrayRow arrayRowL113 = linearSystem2.l();
                                double d11 = radians6;
                                double dSin6 = Math.sin(d11);
                                double d12 = iE6;
                                arrayRowL113.d.g(solverVariableK111115, 0.5f);
                                arrayRowL113.d.g(solverVariableK111117, 0.5f);
                                arrayRowL113.d.g(solverVariableK111111, -0.5f);
                                arrayRowL113.d.g(solverVariableK111113, -0.5f);
                                arrayRowL113.f11291b = -((float) (dSin6 * d12));
                                linearSystem2.c(arrayRowL113);
                                ArrayRow arrayRowL114 = linearSystem2.l();
                                float fCos6 = (float) (Math.cos(d11) * d12);
                                arrayRowL114.d.g(solverVariableK111114, 0.5f);
                                arrayRowL114.d.g(solverVariableK111116, 0.5f);
                                arrayRowL114.d.g(solverVariableK111110, -0.5f);
                                arrayRowL114.d.g(solverVariableK111112, -0.5f);
                                arrayRowL114.f11291b = -fCos6;
                                linearSystem2.c(arrayRowL114);
                            }
                            this.m = false;
                            this.n = false;
                        }
                    }
                    i18 = i26;
                    z9 = true;
                    int[] iArr4 = this.v;
                    iArr4[0] = i17;
                    iArr4[1] = i18;
                    if (z9) {
                        int i312 = this.C;
                        i19 = -1;
                        if (i312 != 0) {
                        }
                        if (z9) {
                            z10 = false;
                        } else {
                            z10 = false;
                        }
                        dimensionBehaviour4 = this.W[0];
                        dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                        if (dimensionBehaviour4 == dimensionBehaviour5) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                        if (z11) {
                            i10 = 0;
                        }
                        constraintAnchor2 = this.S;
                        boolean z1115 = !constraintAnchor2.h();
                        boolean z1116 = zArr3[0];
                        boolean z1117 = zArr3[1];
                        if (this.q != 2) {
                            solverVariable3 = solverVariableK;
                            solverVariable4 = solverVariableK2;
                            dimensionBehaviour6 = dimensionBehaviour5;
                            r19 = r14;
                            r3 = i8;
                            constraintAnchor3 = constraintAnchor;
                            r4 = i7;
                            i20 = i17;
                        } else {
                            solverVariable3 = solverVariableK;
                            solverVariable4 = solverVariableK2;
                            dimensionBehaviour6 = dimensionBehaviour5;
                            r19 = r14;
                            r3 = i8;
                            constraintAnchor3 = constraintAnchor;
                            r4 = i7;
                            i20 = i17;
                        }
                        if (z) {
                            solverVariable5 = r33;
                            solverVariable6 = solverVariable;
                            solverVariable7 = solverVariable2;
                            i21 = 0;
                            i22 = 8;
                            c2 = 1;
                            i23 = 1;
                        } else {
                            solverVariable5 = r33;
                            solverVariable6 = solverVariable;
                            solverVariable7 = solverVariable2;
                            i21 = 0;
                            i22 = 8;
                            c2 = 1;
                            i23 = 1;
                        }
                        if (this.r == 2) {
                            i23 = i21;
                        }
                        if (i23 != 0) {
                            solverVariable8 = solverVariable5;
                        } else {
                            solverVariable8 = solverVariable5;
                        }
                        if (z9) {
                            i24 = this.C;
                            f3 = this.D;
                            if (i24 == 1) {
                                ArrayRow arrayRowL115 = linearSystem2.l();
                                arrayRowL115.d.g(solverVariable6, -1.0f);
                                arrayRowL115.d.g(solverVariable8, 1.0f);
                                arrayRowL115.d.g(solverVariable4, f3);
                                arrayRowL115.d.g(solverVariable3, -f3);
                                linearSystem2.c(arrayRowL115);
                            } else {
                                ArrayRow arrayRowL116 = linearSystem2.l();
                                arrayRowL116.d.g(solverVariable4, -1.0f);
                                arrayRowL116.d.g(solverVariable3, 1.0f);
                                arrayRowL116.d.g(solverVariable6, f3);
                                arrayRowL116.d.g(solverVariable8, -f3);
                                linearSystem2.c(arrayRowL116);
                            }
                        }
                        if (constraintAnchor2.h()) {
                            ConstraintWidget constraintWidget15 = constraintAnchor2.f11484f.d;
                            float radians7 = (float) Math.toRadians(this.F + 90.0f);
                            int iE7 = constraintAnchor2.e();
                            ConstraintAnchor.Type type115 = ConstraintAnchor.Type.LEFT;
                            SolverVariable solverVariableK111118 = linearSystem2.k(n(type115));
                            ConstraintAnchor.Type type116 = ConstraintAnchor.Type.TOP;
                            SolverVariable solverVariableK111119 = linearSystem2.k(n(type116));
                            ConstraintAnchor.Type type117 = ConstraintAnchor.Type.RIGHT;
                            SolverVariable solverVariableK1111110 = linearSystem2.k(n(type117));
                            ConstraintAnchor.Type type118 = ConstraintAnchor.Type.BOTTOM;
                            SolverVariable solverVariableK1111111 = linearSystem2.k(n(type118));
                            SolverVariable solverVariableK1111112 = linearSystem2.k(constraintWidget15.n(type115));
                            SolverVariable solverVariableK1111113 = linearSystem2.k(constraintWidget15.n(type116));
                            SolverVariable solverVariableK1111114 = linearSystem2.k(constraintWidget15.n(type117));
                            SolverVariable solverVariableK1111115 = linearSystem2.k(constraintWidget15.n(type118));
                            ArrayRow arrayRowL117 = linearSystem2.l();
                            double d13 = radians7;
                            double dSin7 = Math.sin(d13);
                            double d14 = iE7;
                            arrayRowL117.d.g(solverVariableK1111113, 0.5f);
                            arrayRowL117.d.g(solverVariableK1111115, 0.5f);
                            arrayRowL117.d.g(solverVariableK111119, -0.5f);
                            arrayRowL117.d.g(solverVariableK1111111, -0.5f);
                            arrayRowL117.f11291b = -((float) (dSin7 * d14));
                            linearSystem2.c(arrayRowL117);
                            ArrayRow arrayRowL118 = linearSystem2.l();
                            float fCos7 = (float) (Math.cos(d13) * d14);
                            arrayRowL118.d.g(solverVariableK1111112, 0.5f);
                            arrayRowL118.d.g(solverVariableK1111114, 0.5f);
                            arrayRowL118.d.g(solverVariableK111118, -0.5f);
                            arrayRowL118.d.g(solverVariableK1111110, -0.5f);
                            arrayRowL118.f11291b = -fCos7;
                            linearSystem2.c(arrayRowL118);
                        }
                        this.m = false;
                        this.n = false;
                    }
                    i19 = -1;
                    if (z9) {
                        z10 = false;
                    } else {
                        z10 = false;
                    }
                    dimensionBehaviour4 = this.W[0];
                    dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour4 == dimensionBehaviour5) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        i10 = 0;
                    }
                    constraintAnchor2 = this.S;
                    boolean z1118 = !constraintAnchor2.h();
                    boolean z1119 = zArr3[0];
                    boolean z11110 = zArr3[1];
                    if (this.q != 2) {
                        solverVariable3 = solverVariableK;
                        solverVariable4 = solverVariableK2;
                        dimensionBehaviour6 = dimensionBehaviour5;
                        r19 = r14;
                        r3 = i8;
                        constraintAnchor3 = constraintAnchor;
                        r4 = i7;
                        i20 = i17;
                    } else {
                        solverVariable3 = solverVariableK;
                        solverVariable4 = solverVariableK2;
                        dimensionBehaviour6 = dimensionBehaviour5;
                        r19 = r14;
                        r3 = i8;
                        constraintAnchor3 = constraintAnchor;
                        r4 = i7;
                        i20 = i17;
                    }
                    if (z) {
                        solverVariable5 = r33;
                        solverVariable6 = solverVariable;
                        solverVariable7 = solverVariable2;
                        i21 = 0;
                        i22 = 8;
                        c2 = 1;
                        i23 = 1;
                    } else {
                        solverVariable5 = r33;
                        solverVariable6 = solverVariable;
                        solverVariable7 = solverVariable2;
                        i21 = 0;
                        i22 = 8;
                        c2 = 1;
                        i23 = 1;
                    }
                    if (this.r == 2) {
                        i23 = i21;
                    }
                    if (i23 != 0) {
                        solverVariable8 = solverVariable5;
                    } else {
                        solverVariable8 = solverVariable5;
                    }
                    if (z9) {
                        i24 = this.C;
                        f3 = this.D;
                        if (i24 == 1) {
                            ArrayRow arrayRowL119 = linearSystem2.l();
                            arrayRowL119.d.g(solverVariable6, -1.0f);
                            arrayRowL119.d.g(solverVariable8, 1.0f);
                            arrayRowL119.d.g(solverVariable4, f3);
                            arrayRowL119.d.g(solverVariable3, -f3);
                            linearSystem2.c(arrayRowL119);
                        } else {
                            ArrayRow arrayRowL1110 = linearSystem2.l();
                            arrayRowL1110.d.g(solverVariable4, -1.0f);
                            arrayRowL1110.d.g(solverVariable3, 1.0f);
                            arrayRowL1110.d.g(solverVariable6, f3);
                            arrayRowL1110.d.g(solverVariable8, -f3);
                            linearSystem2.c(arrayRowL1110);
                        }
                    }
                    if (constraintAnchor2.h()) {
                        ConstraintWidget constraintWidget16 = constraintAnchor2.f11484f.d;
                        float radians8 = (float) Math.toRadians(this.F + 90.0f);
                        int iE8 = constraintAnchor2.e();
                        ConstraintAnchor.Type type119 = ConstraintAnchor.Type.LEFT;
                        SolverVariable solverVariableK1111116 = linearSystem2.k(n(type119));
                        ConstraintAnchor.Type type1110 = ConstraintAnchor.Type.TOP;
                        SolverVariable solverVariableK1111117 = linearSystem2.k(n(type1110));
                        ConstraintAnchor.Type type1111 = ConstraintAnchor.Type.RIGHT;
                        SolverVariable solverVariableK1111118 = linearSystem2.k(n(type1111));
                        ConstraintAnchor.Type type1112 = ConstraintAnchor.Type.BOTTOM;
                        SolverVariable solverVariableK1111119 = linearSystem2.k(n(type1112));
                        SolverVariable solverVariableK11111110 = linearSystem2.k(constraintWidget16.n(type119));
                        SolverVariable solverVariableK11111111 = linearSystem2.k(constraintWidget16.n(type1110));
                        SolverVariable solverVariableK11111112 = linearSystem2.k(constraintWidget16.n(type1111));
                        SolverVariable solverVariableK11111113 = linearSystem2.k(constraintWidget16.n(type1112));
                        ArrayRow arrayRowL1111 = linearSystem2.l();
                        double d15 = radians8;
                        double dSin8 = Math.sin(d15);
                        double d16 = iE8;
                        arrayRowL1111.d.g(solverVariableK11111111, 0.5f);
                        arrayRowL1111.d.g(solverVariableK11111113, 0.5f);
                        arrayRowL1111.d.g(solverVariableK1111117, -0.5f);
                        arrayRowL1111.d.g(solverVariableK1111119, -0.5f);
                        arrayRowL1111.f11291b = -((float) (dSin8 * d16));
                        linearSystem2.c(arrayRowL1111);
                        ArrayRow arrayRowL1112 = linearSystem2.l();
                        float fCos8 = (float) (Math.cos(d15) * d16);
                        arrayRowL1112.d.g(solverVariableK11111110, 0.5f);
                        arrayRowL1112.d.g(solverVariableK11111112, 0.5f);
                        arrayRowL1112.d.g(solverVariableK1111116, -0.5f);
                        arrayRowL1112.d.g(solverVariableK1111118, -0.5f);
                        arrayRowL1112.f11291b = -fCos8;
                        linearSystem2.c(arrayRowL1112);
                    }
                    this.m = false;
                    this.n = false;
                }
                z9 = false;
                int[] iArr5 = this.v;
                iArr5[0] = i17;
                iArr5[1] = i18;
                if (z9) {
                    int i313 = this.C;
                    i19 = -1;
                    if (i313 != 0) {
                    }
                    if (z9) {
                        z10 = false;
                    } else {
                        z10 = false;
                    }
                    dimensionBehaviour4 = this.W[0];
                    dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour4 == dimensionBehaviour5) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        i10 = 0;
                    }
                    constraintAnchor2 = this.S;
                    boolean z11111 = !constraintAnchor2.h();
                    boolean z11112 = zArr3[0];
                    boolean z11113 = zArr3[1];
                    if (this.q != 2) {
                        solverVariable3 = solverVariableK;
                        solverVariable4 = solverVariableK2;
                        dimensionBehaviour6 = dimensionBehaviour5;
                        r19 = r14;
                        r3 = i8;
                        constraintAnchor3 = constraintAnchor;
                        r4 = i7;
                        i20 = i17;
                    } else {
                        solverVariable3 = solverVariableK;
                        solverVariable4 = solverVariableK2;
                        dimensionBehaviour6 = dimensionBehaviour5;
                        r19 = r14;
                        r3 = i8;
                        constraintAnchor3 = constraintAnchor;
                        r4 = i7;
                        i20 = i17;
                    }
                    if (z) {
                        solverVariable5 = r33;
                        solverVariable6 = solverVariable;
                        solverVariable7 = solverVariable2;
                        i21 = 0;
                        i22 = 8;
                        c2 = 1;
                        i23 = 1;
                    } else {
                        solverVariable5 = r33;
                        solverVariable6 = solverVariable;
                        solverVariable7 = solverVariable2;
                        i21 = 0;
                        i22 = 8;
                        c2 = 1;
                        i23 = 1;
                    }
                    if (this.r == 2) {
                        i23 = i21;
                    }
                    if (i23 != 0) {
                        solverVariable8 = solverVariable5;
                    } else {
                        solverVariable8 = solverVariable5;
                    }
                    if (z9) {
                        i24 = this.C;
                        f3 = this.D;
                        if (i24 == 1) {
                            ArrayRow arrayRowL1113 = linearSystem2.l();
                            arrayRowL1113.d.g(solverVariable6, -1.0f);
                            arrayRowL1113.d.g(solverVariable8, 1.0f);
                            arrayRowL1113.d.g(solverVariable4, f3);
                            arrayRowL1113.d.g(solverVariable3, -f3);
                            linearSystem2.c(arrayRowL1113);
                        } else {
                            ArrayRow arrayRowL1114 = linearSystem2.l();
                            arrayRowL1114.d.g(solverVariable4, -1.0f);
                            arrayRowL1114.d.g(solverVariable3, 1.0f);
                            arrayRowL1114.d.g(solverVariable6, f3);
                            arrayRowL1114.d.g(solverVariable8, -f3);
                            linearSystem2.c(arrayRowL1114);
                        }
                    }
                    if (constraintAnchor2.h()) {
                        ConstraintWidget constraintWidget17 = constraintAnchor2.f11484f.d;
                        float radians9 = (float) Math.toRadians(this.F + 90.0f);
                        int iE9 = constraintAnchor2.e();
                        ConstraintAnchor.Type type1113 = ConstraintAnchor.Type.LEFT;
                        SolverVariable solverVariableK11111114 = linearSystem2.k(n(type1113));
                        ConstraintAnchor.Type type1114 = ConstraintAnchor.Type.TOP;
                        SolverVariable solverVariableK11111115 = linearSystem2.k(n(type1114));
                        ConstraintAnchor.Type type1115 = ConstraintAnchor.Type.RIGHT;
                        SolverVariable solverVariableK11111116 = linearSystem2.k(n(type1115));
                        ConstraintAnchor.Type type1116 = ConstraintAnchor.Type.BOTTOM;
                        SolverVariable solverVariableK11111117 = linearSystem2.k(n(type1116));
                        SolverVariable solverVariableK11111118 = linearSystem2.k(constraintWidget17.n(type1113));
                        SolverVariable solverVariableK11111119 = linearSystem2.k(constraintWidget17.n(type1114));
                        SolverVariable solverVariableK111111110 = linearSystem2.k(constraintWidget17.n(type1115));
                        SolverVariable solverVariableK111111111 = linearSystem2.k(constraintWidget17.n(type1116));
                        ArrayRow arrayRowL1115 = linearSystem2.l();
                        double d17 = radians9;
                        double dSin9 = Math.sin(d17);
                        double d18 = iE9;
                        arrayRowL1115.d.g(solverVariableK11111119, 0.5f);
                        arrayRowL1115.d.g(solverVariableK111111111, 0.5f);
                        arrayRowL1115.d.g(solverVariableK11111115, -0.5f);
                        arrayRowL1115.d.g(solverVariableK11111117, -0.5f);
                        arrayRowL1115.f11291b = -((float) (dSin9 * d18));
                        linearSystem2.c(arrayRowL1115);
                        ArrayRow arrayRowL1116 = linearSystem2.l();
                        float fCos9 = (float) (Math.cos(d17) * d18);
                        arrayRowL1116.d.g(solverVariableK11111118, 0.5f);
                        arrayRowL1116.d.g(solverVariableK111111110, 0.5f);
                        arrayRowL1116.d.g(solverVariableK11111114, -0.5f);
                        arrayRowL1116.d.g(solverVariableK11111116, -0.5f);
                        arrayRowL1116.f11291b = -fCos9;
                        linearSystem2.c(arrayRowL1116);
                    }
                    this.m = false;
                    this.n = false;
                }
                i19 = -1;
                if (z9) {
                    z10 = false;
                } else {
                    z10 = false;
                }
                dimensionBehaviour4 = this.W[0];
                dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour4 == dimensionBehaviour5) {
                    z11 = false;
                } else {
                    z11 = false;
                }
                if (z11) {
                    i10 = 0;
                }
                constraintAnchor2 = this.S;
                boolean z11114 = !constraintAnchor2.h();
                boolean z11115 = zArr3[0];
                boolean z11116 = zArr3[1];
                if (this.q != 2) {
                    solverVariable3 = solverVariableK;
                    solverVariable4 = solverVariableK2;
                    dimensionBehaviour6 = dimensionBehaviour5;
                    r19 = r14;
                    r3 = i8;
                    constraintAnchor3 = constraintAnchor;
                    r4 = i7;
                    i20 = i17;
                } else {
                    solverVariable3 = solverVariableK;
                    solverVariable4 = solverVariableK2;
                    dimensionBehaviour6 = dimensionBehaviour5;
                    r19 = r14;
                    r3 = i8;
                    constraintAnchor3 = constraintAnchor;
                    r4 = i7;
                    i20 = i17;
                }
                if (z) {
                    solverVariable5 = r33;
                    solverVariable6 = solverVariable;
                    solverVariable7 = solverVariable2;
                    i21 = 0;
                    i22 = 8;
                    c2 = 1;
                    i23 = 1;
                } else {
                    solverVariable5 = r33;
                    solverVariable6 = solverVariable;
                    solverVariable7 = solverVariable2;
                    i21 = 0;
                    i22 = 8;
                    c2 = 1;
                    i23 = 1;
                }
                if (this.r == 2) {
                    i23 = i21;
                }
                if (i23 != 0) {
                    solverVariable8 = solverVariable5;
                } else {
                    solverVariable8 = solverVariable5;
                }
                if (z9) {
                    i24 = this.C;
                    f3 = this.D;
                    if (i24 == 1) {
                        ArrayRow arrayRowL1117 = linearSystem2.l();
                        arrayRowL1117.d.g(solverVariable6, -1.0f);
                        arrayRowL1117.d.g(solverVariable8, 1.0f);
                        arrayRowL1117.d.g(solverVariable4, f3);
                        arrayRowL1117.d.g(solverVariable3, -f3);
                        linearSystem2.c(arrayRowL1117);
                    } else {
                        ArrayRow arrayRowL1118 = linearSystem2.l();
                        arrayRowL1118.d.g(solverVariable4, -1.0f);
                        arrayRowL1118.d.g(solverVariable3, 1.0f);
                        arrayRowL1118.d.g(solverVariable6, f3);
                        arrayRowL1118.d.g(solverVariable8, -f3);
                        linearSystem2.c(arrayRowL1118);
                    }
                }
                if (constraintAnchor2.h()) {
                    ConstraintWidget constraintWidget18 = constraintAnchor2.f11484f.d;
                    float radians10 = (float) Math.toRadians(this.F + 90.0f);
                    int iE10 = constraintAnchor2.e();
                    ConstraintAnchor.Type type1117 = ConstraintAnchor.Type.LEFT;
                    SolverVariable solverVariableK111111112 = linearSystem2.k(n(type1117));
                    ConstraintAnchor.Type type1118 = ConstraintAnchor.Type.TOP;
                    SolverVariable solverVariableK111111113 = linearSystem2.k(n(type1118));
                    ConstraintAnchor.Type type1119 = ConstraintAnchor.Type.RIGHT;
                    SolverVariable solverVariableK111111114 = linearSystem2.k(n(type1119));
                    ConstraintAnchor.Type type11110 = ConstraintAnchor.Type.BOTTOM;
                    SolverVariable solverVariableK111111115 = linearSystem2.k(n(type11110));
                    SolverVariable solverVariableK111111116 = linearSystem2.k(constraintWidget18.n(type1117));
                    SolverVariable solverVariableK111111117 = linearSystem2.k(constraintWidget18.n(type1118));
                    SolverVariable solverVariableK111111118 = linearSystem2.k(constraintWidget18.n(type1119));
                    SolverVariable solverVariableK111111119 = linearSystem2.k(constraintWidget18.n(type11110));
                    ArrayRow arrayRowL1119 = linearSystem2.l();
                    double d19 = radians10;
                    double dSin10 = Math.sin(d19);
                    double d110 = iE10;
                    arrayRowL1119.d.g(solverVariableK111111117, 0.5f);
                    arrayRowL1119.d.g(solverVariableK111111119, 0.5f);
                    arrayRowL1119.d.g(solverVariableK111111113, -0.5f);
                    arrayRowL1119.d.g(solverVariableK111111115, -0.5f);
                    arrayRowL1119.f11291b = -((float) (dSin10 * d110));
                    linearSystem2.c(arrayRowL1119);
                    ArrayRow arrayRowL11110 = linearSystem2.l();
                    float fCos10 = (float) (Math.cos(d19) * d110);
                    arrayRowL11110.d.g(solverVariableK111111116, 0.5f);
                    arrayRowL11110.d.g(solverVariableK111111118, 0.5f);
                    arrayRowL11110.d.g(solverVariableK111111112, -0.5f);
                    arrayRowL11110.d.g(solverVariableK111111114, -0.5f);
                    arrayRowL11110.f11291b = -fCos10;
                    linearSystem2.c(arrayRowL11110);
                }
                this.m = false;
                this.n = false;
            }
            solverVariable = solverVariableK4;
            solverVariable2 = solverVariableK5;
            i17 = i15;
            i18 = i16;
            z9 = false;
            int[] iArr6 = this.v;
            iArr6[0] = i17;
            iArr6[1] = i18;
            if (z9) {
                int i314 = this.C;
                i19 = -1;
                if (i314 != 0) {
                }
                if (z9) {
                    z10 = false;
                } else {
                    z10 = false;
                }
                dimensionBehaviour4 = this.W[0];
                dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour4 == dimensionBehaviour5) {
                    z11 = false;
                } else {
                    z11 = false;
                }
                if (z11) {
                    i10 = 0;
                }
                constraintAnchor2 = this.S;
                boolean z11117 = !constraintAnchor2.h();
                boolean z11118 = zArr3[0];
                boolean z11119 = zArr3[1];
                if (this.q != 2) {
                    solverVariable3 = solverVariableK;
                    solverVariable4 = solverVariableK2;
                    dimensionBehaviour6 = dimensionBehaviour5;
                    r19 = r14;
                    r3 = i8;
                    constraintAnchor3 = constraintAnchor;
                    r4 = i7;
                    i20 = i17;
                } else {
                    solverVariable3 = solverVariableK;
                    solverVariable4 = solverVariableK2;
                    dimensionBehaviour6 = dimensionBehaviour5;
                    r19 = r14;
                    r3 = i8;
                    constraintAnchor3 = constraintAnchor;
                    r4 = i7;
                    i20 = i17;
                }
                if (z) {
                    solverVariable5 = r33;
                    solverVariable6 = solverVariable;
                    solverVariable7 = solverVariable2;
                    i21 = 0;
                    i22 = 8;
                    c2 = 1;
                    i23 = 1;
                } else {
                    solverVariable5 = r33;
                    solverVariable6 = solverVariable;
                    solverVariable7 = solverVariable2;
                    i21 = 0;
                    i22 = 8;
                    c2 = 1;
                    i23 = 1;
                }
                if (this.r == 2) {
                    i23 = i21;
                }
                if (i23 != 0) {
                    solverVariable8 = solverVariable5;
                } else {
                    solverVariable8 = solverVariable5;
                }
                if (z9) {
                    i24 = this.C;
                    f3 = this.D;
                    if (i24 == 1) {
                        ArrayRow arrayRowL11111 = linearSystem2.l();
                        arrayRowL11111.d.g(solverVariable6, -1.0f);
                        arrayRowL11111.d.g(solverVariable8, 1.0f);
                        arrayRowL11111.d.g(solverVariable4, f3);
                        arrayRowL11111.d.g(solverVariable3, -f3);
                        linearSystem2.c(arrayRowL11111);
                    } else {
                        ArrayRow arrayRowL11112 = linearSystem2.l();
                        arrayRowL11112.d.g(solverVariable4, -1.0f);
                        arrayRowL11112.d.g(solverVariable3, 1.0f);
                        arrayRowL11112.d.g(solverVariable6, f3);
                        arrayRowL11112.d.g(solverVariable8, -f3);
                        linearSystem2.c(arrayRowL11112);
                    }
                }
                if (constraintAnchor2.h()) {
                    ConstraintWidget constraintWidget19 = constraintAnchor2.f11484f.d;
                    float radians11 = (float) Math.toRadians(this.F + 90.0f);
                    int iE11 = constraintAnchor2.e();
                    ConstraintAnchor.Type type11111 = ConstraintAnchor.Type.LEFT;
                    SolverVariable solverVariableK1111111110 = linearSystem2.k(n(type11111));
                    ConstraintAnchor.Type type11112 = ConstraintAnchor.Type.TOP;
                    SolverVariable solverVariableK1111111111 = linearSystem2.k(n(type11112));
                    ConstraintAnchor.Type type11113 = ConstraintAnchor.Type.RIGHT;
                    SolverVariable solverVariableK1111111112 = linearSystem2.k(n(type11113));
                    ConstraintAnchor.Type type11114 = ConstraintAnchor.Type.BOTTOM;
                    SolverVariable solverVariableK1111111113 = linearSystem2.k(n(type11114));
                    SolverVariable solverVariableK1111111114 = linearSystem2.k(constraintWidget19.n(type11111));
                    SolverVariable solverVariableK1111111115 = linearSystem2.k(constraintWidget19.n(type11112));
                    SolverVariable solverVariableK1111111116 = linearSystem2.k(constraintWidget19.n(type11113));
                    SolverVariable solverVariableK1111111117 = linearSystem2.k(constraintWidget19.n(type11114));
                    ArrayRow arrayRowL11113 = linearSystem2.l();
                    double d111 = radians11;
                    double dSin11 = Math.sin(d111);
                    double d112 = iE11;
                    arrayRowL11113.d.g(solverVariableK1111111115, 0.5f);
                    arrayRowL11113.d.g(solverVariableK1111111117, 0.5f);
                    arrayRowL11113.d.g(solverVariableK1111111111, -0.5f);
                    arrayRowL11113.d.g(solverVariableK1111111113, -0.5f);
                    arrayRowL11113.f11291b = -((float) (dSin11 * d112));
                    linearSystem2.c(arrayRowL11113);
                    ArrayRow arrayRowL11114 = linearSystem2.l();
                    float fCos11 = (float) (Math.cos(d111) * d112);
                    arrayRowL11114.d.g(solverVariableK1111111114, 0.5f);
                    arrayRowL11114.d.g(solverVariableK1111111116, 0.5f);
                    arrayRowL11114.d.g(solverVariableK1111111110, -0.5f);
                    arrayRowL11114.d.g(solverVariableK1111111112, -0.5f);
                    arrayRowL11114.f11291b = -fCos11;
                    linearSystem2.c(arrayRowL11114);
                }
                this.m = false;
                this.n = false;
            }
            i19 = -1;
            if (z9) {
                z10 = false;
            } else {
                z10 = false;
            }
            dimensionBehaviour4 = this.W[0];
            dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour4 == dimensionBehaviour5) {
                z11 = false;
            } else {
                z11 = false;
            }
            if (z11) {
                i10 = 0;
            }
            constraintAnchor2 = this.S;
            boolean z111110 = !constraintAnchor2.h();
            boolean z111111 = zArr3[0];
            boolean z111112 = zArr3[1];
            if (this.q != 2) {
                solverVariable3 = solverVariableK;
                solverVariable4 = solverVariableK2;
                dimensionBehaviour6 = dimensionBehaviour5;
                r19 = r14;
                r3 = i8;
                constraintAnchor3 = constraintAnchor;
                r4 = i7;
                i20 = i17;
            } else {
                solverVariable3 = solverVariableK;
                solverVariable4 = solverVariableK2;
                dimensionBehaviour6 = dimensionBehaviour5;
                r19 = r14;
                r3 = i8;
                constraintAnchor3 = constraintAnchor;
                r4 = i7;
                i20 = i17;
            }
            if (z) {
                solverVariable5 = r33;
                solverVariable6 = solverVariable;
                solverVariable7 = solverVariable2;
                i21 = 0;
                i22 = 8;
                c2 = 1;
                i23 = 1;
            } else {
                solverVariable5 = r33;
                solverVariable6 = solverVariable;
                solverVariable7 = solverVariable2;
                i21 = 0;
                i22 = 8;
                c2 = 1;
                i23 = 1;
            }
            if (this.r == 2) {
                i23 = i21;
            }
            if (i23 != 0) {
                solverVariable8 = solverVariable5;
            } else {
                solverVariable8 = solverVariable5;
            }
            if (z9) {
                i24 = this.C;
                f3 = this.D;
                if (i24 == 1) {
                    ArrayRow arrayRowL11115 = linearSystem2.l();
                    arrayRowL11115.d.g(solverVariable6, -1.0f);
                    arrayRowL11115.d.g(solverVariable8, 1.0f);
                    arrayRowL11115.d.g(solverVariable4, f3);
                    arrayRowL11115.d.g(solverVariable3, -f3);
                    linearSystem2.c(arrayRowL11115);
                } else {
                    ArrayRow arrayRowL11116 = linearSystem2.l();
                    arrayRowL11116.d.g(solverVariable4, -1.0f);
                    arrayRowL11116.d.g(solverVariable3, 1.0f);
                    arrayRowL11116.d.g(solverVariable6, f3);
                    arrayRowL11116.d.g(solverVariable8, -f3);
                    linearSystem2.c(arrayRowL11116);
                }
            }
            if (constraintAnchor2.h()) {
                ConstraintWidget constraintWidget110 = constraintAnchor2.f11484f.d;
                float radians12 = (float) Math.toRadians(this.F + 90.0f);
                int iE12 = constraintAnchor2.e();
                ConstraintAnchor.Type type11115 = ConstraintAnchor.Type.LEFT;
                SolverVariable solverVariableK1111111118 = linearSystem2.k(n(type11115));
                ConstraintAnchor.Type type11116 = ConstraintAnchor.Type.TOP;
                SolverVariable solverVariableK1111111119 = linearSystem2.k(n(type11116));
                ConstraintAnchor.Type type11117 = ConstraintAnchor.Type.RIGHT;
                SolverVariable solverVariableK11111111110 = linearSystem2.k(n(type11117));
                ConstraintAnchor.Type type11118 = ConstraintAnchor.Type.BOTTOM;
                SolverVariable solverVariableK11111111111 = linearSystem2.k(n(type11118));
                SolverVariable solverVariableK11111111112 = linearSystem2.k(constraintWidget110.n(type11115));
                SolverVariable solverVariableK11111111113 = linearSystem2.k(constraintWidget110.n(type11116));
                SolverVariable solverVariableK11111111114 = linearSystem2.k(constraintWidget110.n(type11117));
                SolverVariable solverVariableK11111111115 = linearSystem2.k(constraintWidget110.n(type11118));
                ArrayRow arrayRowL11117 = linearSystem2.l();
                double d113 = radians12;
                double dSin12 = Math.sin(d113);
                double d114 = iE12;
                arrayRowL11117.d.g(solverVariableK11111111113, 0.5f);
                arrayRowL11117.d.g(solverVariableK11111111115, 0.5f);
                arrayRowL11117.d.g(solverVariableK1111111119, -0.5f);
                arrayRowL11117.d.g(solverVariableK11111111111, -0.5f);
                arrayRowL11117.f11291b = -((float) (dSin12 * d114));
                linearSystem2.c(arrayRowL11117);
                ArrayRow arrayRowL11118 = linearSystem2.l();
                float fCos12 = (float) (Math.cos(d113) * d114);
                arrayRowL11118.d.g(solverVariableK11111111112, 0.5f);
                arrayRowL11118.d.g(solverVariableK11111111114, 0.5f);
                arrayRowL11118.d.g(solverVariableK1111111118, -0.5f);
                arrayRowL11118.d.g(solverVariableK11111111110, -0.5f);
                arrayRowL11118.f11291b = -fCos12;
                linearSystem2.c(arrayRowL11118);
            }
            this.m = false;
            this.n = false;
        }
        i2 = 1;
        i3 = 0;
        i5 = i3;
        i4 = i5;
        i6 = this.k0;
        boolean[] zArr4 = this.V;
        i7 = i5;
        if (i6 != 8) {
            i8 = i4;
        } else {
            i8 = i4;
        }
        z2 = this.m;
        if (z2) {
            z3 = this.f11492h;
            if (z2) {
                linearSystem2.d(solverVariableK, this.c0);
                linearSystem2.d(solverVariableK2, this.c0 + this.Y);
                if (i8 != 0) {
                    z4 = z3;
                } else {
                    z4 = z3;
                }
            } else {
                z4 = z3;
            }
            if (this.n) {
                linearSystem2.d(solverVariableK3, this.d0);
                linearSystem2.d(solverVariableK4, this.d0 + this.Z);
                hashSet = constraintAnchor8.f11480a;
                if (hashSet != null) {
                    linearSystem2.d(solverVariableK5, this.d0 + this.e0);
                }
                if (i7 != 0) {
                    z5 = false;
                } else {
                    z5 = false;
                }
            } else {
                z5 = false;
            }
            if (this.m) {
                this.m = z5;
                this.n = z5;
                return;
            }
        } else {
            z3 = this.f11492h;
            if (z2) {
                linearSystem2.d(solverVariableK, this.c0);
                linearSystem2.d(solverVariableK2, this.c0 + this.Y);
                if (i8 != 0) {
                    z4 = z3;
                } else {
                    z4 = z3;
                }
            } else {
                z4 = z3;
            }
            if (this.n) {
                linearSystem2.d(solverVariableK3, this.d0);
                linearSystem2.d(solverVariableK4, this.d0 + this.Z);
                hashSet = constraintAnchor8.f11480a;
                if (hashSet != null) {
                    linearSystem2.d(solverVariableK5, this.d0 + this.e0);
                }
                if (i7 != 0) {
                    z5 = false;
                } else {
                    z5 = false;
                }
            } else {
                z5 = false;
            }
            if (this.m) {
                this.m = z5;
                this.n = z5;
                return;
            }
        }
        zArr = this.f11491f;
        if (z) {
            constraintAnchor = constraintAnchor8;
            zArr2 = zArr;
        } else {
            constraintAnchor = constraintAnchor8;
            zArr2 = zArr;
        }
        if (this.X != null) {
            if (B(0)) {
                ((ConstraintWidgetContainer) this.X).a0(this, 0);
                int i315 = i2;
                i27 = i315 == true ? 1 : 0;
                C = i315;
            } else {
                i27 = i2;
                C = C();
            }
            if (B(i27)) {
                ((ConstraintWidgetContainer) this.X).a0(this, i27);
                zD = true;
            } else {
                zD = D();
            }
            if (C != 0) {
            }
            if (!zD) {
                linearSystem2.f(linearSystem2.k(this.X.O), solverVariableK4, 0, 1);
            }
            r14 = C;
            z6 = zD;
        } else {
            constraintAnchor4 = constraintAnchor4;
            r14 = 0;
            z6 = false;
        }
        i9 = this.Y;
        i10 = this.f0;
        if (i9 >= i10) {
            i10 = i9;
        }
        i11 = this.Z;
        i12 = this.g0;
        if (i11 < i12) {
            i13 = i12;
        } else {
            i13 = i11;
        }
        DimensionBehaviour[] dimensionBehaviourArr5 = this.W;
        dimensionBehaviour = dimensionBehaviourArr5[0];
        dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        if (dimensionBehaviour != dimensionBehaviour2) {
            z7 = true;
        } else {
            z7 = false;
        }
        dimensionBehaviour3 = dimensionBehaviourArr5[1];
        if (dimensionBehaviour3 != dimensionBehaviour2) {
            z8 = true;
        } else {
            z8 = false;
        }
        i14 = this.b0;
        this.C = i14;
        f2 = this.a0;
        this.D = f2;
        i15 = this.t;
        i16 = this.u;
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            solverVariable = solverVariableK4;
            if (this.k0 != 8) {
                if (dimensionBehaviour == dimensionBehaviour2) {
                    i17 = i15;
                } else {
                    i17 = i15;
                }
                if (dimensionBehaviour3 == dimensionBehaviour2) {
                    i26 = i16;
                } else {
                    i26 = i16;
                }
                if (dimensionBehaviour != dimensionBehaviour2) {
                    solverVariable2 = solverVariableK5;
                    if (dimensionBehaviour != dimensionBehaviour2) {
                    }
                    if (dimensionBehaviour3 == dimensionBehaviour2) {
                        this.C = 1;
                        if (i14 == -1) {
                            this.D = 1.0f / f2;
                        }
                        i13 = (int) (this.D * i9);
                        if (dimensionBehaviour != dimensionBehaviour2) {
                            i18 = 4;
                            z9 = false;
                            int[] iArr7 = this.v;
                            iArr7[0] = i17;
                            iArr7[1] = i18;
                            if (z9) {
                                int i316 = this.C;
                                i19 = -1;
                                if (i316 != 0) {
                                }
                                if (z9) {
                                    z10 = false;
                                } else {
                                    z10 = false;
                                }
                                dimensionBehaviour4 = this.W[0];
                                dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                                if (dimensionBehaviour4 == dimensionBehaviour5) {
                                    z11 = false;
                                } else {
                                    z11 = false;
                                }
                                if (z11) {
                                    i10 = 0;
                                }
                                constraintAnchor2 = this.S;
                                boolean z111113 = !constraintAnchor2.h();
                                boolean z111114 = zArr4[0];
                                boolean z111115 = zArr4[1];
                                if (this.q != 2) {
                                    solverVariable3 = solverVariableK;
                                    solverVariable4 = solverVariableK2;
                                    dimensionBehaviour6 = dimensionBehaviour5;
                                    r19 = r14;
                                    r3 = i8;
                                    constraintAnchor3 = constraintAnchor;
                                    r4 = i7;
                                    i20 = i17;
                                } else {
                                    solverVariable3 = solverVariableK;
                                    solverVariable4 = solverVariableK2;
                                    dimensionBehaviour6 = dimensionBehaviour5;
                                    r19 = r14;
                                    r3 = i8;
                                    constraintAnchor3 = constraintAnchor;
                                    r4 = i7;
                                    i20 = i17;
                                }
                                if (z) {
                                    solverVariable5 = r33;
                                    solverVariable6 = solverVariable;
                                    solverVariable7 = solverVariable2;
                                    i21 = 0;
                                    i22 = 8;
                                    c2 = 1;
                                    i23 = 1;
                                } else {
                                    solverVariable5 = r33;
                                    solverVariable6 = solverVariable;
                                    solverVariable7 = solverVariable2;
                                    i21 = 0;
                                    i22 = 8;
                                    c2 = 1;
                                    i23 = 1;
                                }
                                if (this.r == 2) {
                                    i23 = i21;
                                }
                                if (i23 != 0) {
                                    solverVariable8 = solverVariable5;
                                } else {
                                    solverVariable8 = solverVariable5;
                                }
                                if (z9) {
                                    i24 = this.C;
                                    f3 = this.D;
                                    if (i24 == 1) {
                                        ArrayRow arrayRowL11119 = linearSystem2.l();
                                        arrayRowL11119.d.g(solverVariable6, -1.0f);
                                        arrayRowL11119.d.g(solverVariable8, 1.0f);
                                        arrayRowL11119.d.g(solverVariable4, f3);
                                        arrayRowL11119.d.g(solverVariable3, -f3);
                                        linearSystem2.c(arrayRowL11119);
                                    } else {
                                        ArrayRow arrayRowL111110 = linearSystem2.l();
                                        arrayRowL111110.d.g(solverVariable4, -1.0f);
                                        arrayRowL111110.d.g(solverVariable3, 1.0f);
                                        arrayRowL111110.d.g(solverVariable6, f3);
                                        arrayRowL111110.d.g(solverVariable8, -f3);
                                        linearSystem2.c(arrayRowL111110);
                                    }
                                }
                                if (constraintAnchor2.h()) {
                                    ConstraintWidget constraintWidget111 = constraintAnchor2.f11484f.d;
                                    float radians13 = (float) Math.toRadians(this.F + 90.0f);
                                    int iE13 = constraintAnchor2.e();
                                    ConstraintAnchor.Type type11119 = ConstraintAnchor.Type.LEFT;
                                    SolverVariable solverVariableK11111111116 = linearSystem2.k(n(type11119));
                                    ConstraintAnchor.Type type111110 = ConstraintAnchor.Type.TOP;
                                    SolverVariable solverVariableK11111111117 = linearSystem2.k(n(type111110));
                                    ConstraintAnchor.Type type111111 = ConstraintAnchor.Type.RIGHT;
                                    SolverVariable solverVariableK11111111118 = linearSystem2.k(n(type111111));
                                    ConstraintAnchor.Type type111112 = ConstraintAnchor.Type.BOTTOM;
                                    SolverVariable solverVariableK11111111119 = linearSystem2.k(n(type111112));
                                    SolverVariable solverVariableK111111111110 = linearSystem2.k(constraintWidget111.n(type11119));
                                    SolverVariable solverVariableK111111111111 = linearSystem2.k(constraintWidget111.n(type111110));
                                    SolverVariable solverVariableK111111111112 = linearSystem2.k(constraintWidget111.n(type111111));
                                    SolverVariable solverVariableK111111111113 = linearSystem2.k(constraintWidget111.n(type111112));
                                    ArrayRow arrayRowL111111 = linearSystem2.l();
                                    double d115 = radians13;
                                    double dSin13 = Math.sin(d115);
                                    double d116 = iE13;
                                    arrayRowL111111.d.g(solverVariableK111111111111, 0.5f);
                                    arrayRowL111111.d.g(solverVariableK111111111113, 0.5f);
                                    arrayRowL111111.d.g(solverVariableK11111111117, -0.5f);
                                    arrayRowL111111.d.g(solverVariableK11111111119, -0.5f);
                                    arrayRowL111111.f11291b = -((float) (dSin13 * d116));
                                    linearSystem2.c(arrayRowL111111);
                                    ArrayRow arrayRowL111112 = linearSystem2.l();
                                    float fCos13 = (float) (Math.cos(d115) * d116);
                                    arrayRowL111112.d.g(solverVariableK111111111110, 0.5f);
                                    arrayRowL111112.d.g(solverVariableK111111111112, 0.5f);
                                    arrayRowL111112.d.g(solverVariableK11111111116, -0.5f);
                                    arrayRowL111112.d.g(solverVariableK11111111118, -0.5f);
                                    arrayRowL111112.f11291b = -fCos13;
                                    linearSystem2.c(arrayRowL111112);
                                }
                                this.m = false;
                                this.n = false;
                            }
                            i19 = -1;
                            if (z9) {
                                z10 = false;
                            } else {
                                z10 = false;
                            }
                            dimensionBehaviour4 = this.W[0];
                            dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                            if (dimensionBehaviour4 == dimensionBehaviour5) {
                                z11 = false;
                            } else {
                                z11 = false;
                            }
                            if (z11) {
                                i10 = 0;
                            }
                            constraintAnchor2 = this.S;
                            boolean z111116 = !constraintAnchor2.h();
                            boolean z111117 = zArr4[0];
                            boolean z111118 = zArr4[1];
                            if (this.q != 2) {
                                solverVariable3 = solverVariableK;
                                solverVariable4 = solverVariableK2;
                                dimensionBehaviour6 = dimensionBehaviour5;
                                r19 = r14;
                                r3 = i8;
                                constraintAnchor3 = constraintAnchor;
                                r4 = i7;
                                i20 = i17;
                            } else {
                                solverVariable3 = solverVariableK;
                                solverVariable4 = solverVariableK2;
                                dimensionBehaviour6 = dimensionBehaviour5;
                                r19 = r14;
                                r3 = i8;
                                constraintAnchor3 = constraintAnchor;
                                r4 = i7;
                                i20 = i17;
                            }
                            if (z) {
                                solverVariable5 = r33;
                                solverVariable6 = solverVariable;
                                solverVariable7 = solverVariable2;
                                i21 = 0;
                                i22 = 8;
                                c2 = 1;
                                i23 = 1;
                            } else {
                                solverVariable5 = r33;
                                solverVariable6 = solverVariable;
                                solverVariable7 = solverVariable2;
                                i21 = 0;
                                i22 = 8;
                                c2 = 1;
                                i23 = 1;
                            }
                            if (this.r == 2) {
                                i23 = i21;
                            }
                            if (i23 != 0) {
                                solverVariable8 = solverVariable5;
                            } else {
                                solverVariable8 = solverVariable5;
                            }
                            if (z9) {
                                i24 = this.C;
                                f3 = this.D;
                                if (i24 == 1) {
                                    ArrayRow arrayRowL111113 = linearSystem2.l();
                                    arrayRowL111113.d.g(solverVariable6, -1.0f);
                                    arrayRowL111113.d.g(solverVariable8, 1.0f);
                                    arrayRowL111113.d.g(solverVariable4, f3);
                                    arrayRowL111113.d.g(solverVariable3, -f3);
                                    linearSystem2.c(arrayRowL111113);
                                } else {
                                    ArrayRow arrayRowL111114 = linearSystem2.l();
                                    arrayRowL111114.d.g(solverVariable4, -1.0f);
                                    arrayRowL111114.d.g(solverVariable3, 1.0f);
                                    arrayRowL111114.d.g(solverVariable6, f3);
                                    arrayRowL111114.d.g(solverVariable8, -f3);
                                    linearSystem2.c(arrayRowL111114);
                                }
                            }
                            if (constraintAnchor2.h()) {
                                ConstraintWidget constraintWidget112 = constraintAnchor2.f11484f.d;
                                float radians14 = (float) Math.toRadians(this.F + 90.0f);
                                int iE14 = constraintAnchor2.e();
                                ConstraintAnchor.Type type111113 = ConstraintAnchor.Type.LEFT;
                                SolverVariable solverVariableK111111111114 = linearSystem2.k(n(type111113));
                                ConstraintAnchor.Type type111114 = ConstraintAnchor.Type.TOP;
                                SolverVariable solverVariableK111111111115 = linearSystem2.k(n(type111114));
                                ConstraintAnchor.Type type111115 = ConstraintAnchor.Type.RIGHT;
                                SolverVariable solverVariableK111111111116 = linearSystem2.k(n(type111115));
                                ConstraintAnchor.Type type111116 = ConstraintAnchor.Type.BOTTOM;
                                SolverVariable solverVariableK111111111117 = linearSystem2.k(n(type111116));
                                SolverVariable solverVariableK111111111118 = linearSystem2.k(constraintWidget112.n(type111113));
                                SolverVariable solverVariableK111111111119 = linearSystem2.k(constraintWidget112.n(type111114));
                                SolverVariable solverVariableK1111111111110 = linearSystem2.k(constraintWidget112.n(type111115));
                                SolverVariable solverVariableK1111111111111 = linearSystem2.k(constraintWidget112.n(type111116));
                                ArrayRow arrayRowL111115 = linearSystem2.l();
                                double d117 = radians14;
                                double dSin14 = Math.sin(d117);
                                double d118 = iE14;
                                arrayRowL111115.d.g(solverVariableK111111111119, 0.5f);
                                arrayRowL111115.d.g(solverVariableK1111111111111, 0.5f);
                                arrayRowL111115.d.g(solverVariableK111111111115, -0.5f);
                                arrayRowL111115.d.g(solverVariableK111111111117, -0.5f);
                                arrayRowL111115.f11291b = -((float) (dSin14 * d118));
                                linearSystem2.c(arrayRowL111115);
                                ArrayRow arrayRowL111116 = linearSystem2.l();
                                float fCos14 = (float) (Math.cos(d117) * d118);
                                arrayRowL111116.d.g(solverVariableK111111111118, 0.5f);
                                arrayRowL111116.d.g(solverVariableK1111111111110, 0.5f);
                                arrayRowL111116.d.g(solverVariableK111111111114, -0.5f);
                                arrayRowL111116.d.g(solverVariableK111111111116, -0.5f);
                                arrayRowL111116.f11291b = -fCos14;
                                linearSystem2.c(arrayRowL111116);
                            }
                            this.m = false;
                            this.n = false;
                        }
                    }
                } else {
                    solverVariable2 = solverVariableK5;
                    if (dimensionBehaviour != dimensionBehaviour2) {
                    }
                    if (dimensionBehaviour3 == dimensionBehaviour2) {
                        this.C = 1;
                        if (i14 == -1) {
                            this.D = 1.0f / f2;
                        }
                        i13 = (int) (this.D * i9);
                        if (dimensionBehaviour != dimensionBehaviour2) {
                            i18 = 4;
                            z9 = false;
                            int[] iArr8 = this.v;
                            iArr8[0] = i17;
                            iArr8[1] = i18;
                            if (z9) {
                                int i317 = this.C;
                                i19 = -1;
                                if (i317 != 0) {
                                }
                                if (z9) {
                                    z10 = false;
                                } else {
                                    z10 = false;
                                }
                                dimensionBehaviour4 = this.W[0];
                                dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                                if (dimensionBehaviour4 == dimensionBehaviour5) {
                                    z11 = false;
                                } else {
                                    z11 = false;
                                }
                                if (z11) {
                                    i10 = 0;
                                }
                                constraintAnchor2 = this.S;
                                boolean z111119 = !constraintAnchor2.h();
                                boolean z1111110 = zArr4[0];
                                boolean z1111111 = zArr4[1];
                                if (this.q != 2) {
                                    solverVariable3 = solverVariableK;
                                    solverVariable4 = solverVariableK2;
                                    dimensionBehaviour6 = dimensionBehaviour5;
                                    r19 = r14;
                                    r3 = i8;
                                    constraintAnchor3 = constraintAnchor;
                                    r4 = i7;
                                    i20 = i17;
                                } else {
                                    solverVariable3 = solverVariableK;
                                    solverVariable4 = solverVariableK2;
                                    dimensionBehaviour6 = dimensionBehaviour5;
                                    r19 = r14;
                                    r3 = i8;
                                    constraintAnchor3 = constraintAnchor;
                                    r4 = i7;
                                    i20 = i17;
                                }
                                if (z) {
                                    solverVariable5 = r33;
                                    solverVariable6 = solverVariable;
                                    solverVariable7 = solverVariable2;
                                    i21 = 0;
                                    i22 = 8;
                                    c2 = 1;
                                    i23 = 1;
                                } else {
                                    solverVariable5 = r33;
                                    solverVariable6 = solverVariable;
                                    solverVariable7 = solverVariable2;
                                    i21 = 0;
                                    i22 = 8;
                                    c2 = 1;
                                    i23 = 1;
                                }
                                if (this.r == 2) {
                                    i23 = i21;
                                }
                                if (i23 != 0) {
                                    solverVariable8 = solverVariable5;
                                } else {
                                    solverVariable8 = solverVariable5;
                                }
                                if (z9) {
                                    i24 = this.C;
                                    f3 = this.D;
                                    if (i24 == 1) {
                                        ArrayRow arrayRowL111117 = linearSystem2.l();
                                        arrayRowL111117.d.g(solverVariable6, -1.0f);
                                        arrayRowL111117.d.g(solverVariable8, 1.0f);
                                        arrayRowL111117.d.g(solverVariable4, f3);
                                        arrayRowL111117.d.g(solverVariable3, -f3);
                                        linearSystem2.c(arrayRowL111117);
                                    } else {
                                        ArrayRow arrayRowL111118 = linearSystem2.l();
                                        arrayRowL111118.d.g(solverVariable4, -1.0f);
                                        arrayRowL111118.d.g(solverVariable3, 1.0f);
                                        arrayRowL111118.d.g(solverVariable6, f3);
                                        arrayRowL111118.d.g(solverVariable8, -f3);
                                        linearSystem2.c(arrayRowL111118);
                                    }
                                }
                                if (constraintAnchor2.h()) {
                                    ConstraintWidget constraintWidget113 = constraintAnchor2.f11484f.d;
                                    float radians15 = (float) Math.toRadians(this.F + 90.0f);
                                    int iE15 = constraintAnchor2.e();
                                    ConstraintAnchor.Type type111117 = ConstraintAnchor.Type.LEFT;
                                    SolverVariable solverVariableK1111111111112 = linearSystem2.k(n(type111117));
                                    ConstraintAnchor.Type type111118 = ConstraintAnchor.Type.TOP;
                                    SolverVariable solverVariableK1111111111113 = linearSystem2.k(n(type111118));
                                    ConstraintAnchor.Type type111119 = ConstraintAnchor.Type.RIGHT;
                                    SolverVariable solverVariableK1111111111114 = linearSystem2.k(n(type111119));
                                    ConstraintAnchor.Type type1111110 = ConstraintAnchor.Type.BOTTOM;
                                    SolverVariable solverVariableK1111111111115 = linearSystem2.k(n(type1111110));
                                    SolverVariable solverVariableK1111111111116 = linearSystem2.k(constraintWidget113.n(type111117));
                                    SolverVariable solverVariableK1111111111117 = linearSystem2.k(constraintWidget113.n(type111118));
                                    SolverVariable solverVariableK1111111111118 = linearSystem2.k(constraintWidget113.n(type111119));
                                    SolverVariable solverVariableK1111111111119 = linearSystem2.k(constraintWidget113.n(type1111110));
                                    ArrayRow arrayRowL111119 = linearSystem2.l();
                                    double d119 = radians15;
                                    double dSin15 = Math.sin(d119);
                                    double d1110 = iE15;
                                    arrayRowL111119.d.g(solverVariableK1111111111117, 0.5f);
                                    arrayRowL111119.d.g(solverVariableK1111111111119, 0.5f);
                                    arrayRowL111119.d.g(solverVariableK1111111111113, -0.5f);
                                    arrayRowL111119.d.g(solverVariableK1111111111115, -0.5f);
                                    arrayRowL111119.f11291b = -((float) (dSin15 * d1110));
                                    linearSystem2.c(arrayRowL111119);
                                    ArrayRow arrayRowL1111110 = linearSystem2.l();
                                    float fCos15 = (float) (Math.cos(d119) * d1110);
                                    arrayRowL1111110.d.g(solverVariableK1111111111116, 0.5f);
                                    arrayRowL1111110.d.g(solverVariableK1111111111118, 0.5f);
                                    arrayRowL1111110.d.g(solverVariableK1111111111112, -0.5f);
                                    arrayRowL1111110.d.g(solverVariableK1111111111114, -0.5f);
                                    arrayRowL1111110.f11291b = -fCos15;
                                    linearSystem2.c(arrayRowL1111110);
                                }
                                this.m = false;
                                this.n = false;
                            }
                            i19 = -1;
                            if (z9) {
                                z10 = false;
                            } else {
                                z10 = false;
                            }
                            dimensionBehaviour4 = this.W[0];
                            dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                            if (dimensionBehaviour4 == dimensionBehaviour5) {
                                z11 = false;
                            } else {
                                z11 = false;
                            }
                            if (z11) {
                                i10 = 0;
                            }
                            constraintAnchor2 = this.S;
                            boolean z1111112 = !constraintAnchor2.h();
                            boolean z1111113 = zArr4[0];
                            boolean z1111114 = zArr4[1];
                            if (this.q != 2) {
                                solverVariable3 = solverVariableK;
                                solverVariable4 = solverVariableK2;
                                dimensionBehaviour6 = dimensionBehaviour5;
                                r19 = r14;
                                r3 = i8;
                                constraintAnchor3 = constraintAnchor;
                                r4 = i7;
                                i20 = i17;
                            } else {
                                solverVariable3 = solverVariableK;
                                solverVariable4 = solverVariableK2;
                                dimensionBehaviour6 = dimensionBehaviour5;
                                r19 = r14;
                                r3 = i8;
                                constraintAnchor3 = constraintAnchor;
                                r4 = i7;
                                i20 = i17;
                            }
                            if (z) {
                                solverVariable5 = r33;
                                solverVariable6 = solverVariable;
                                solverVariable7 = solverVariable2;
                                i21 = 0;
                                i22 = 8;
                                c2 = 1;
                                i23 = 1;
                            } else {
                                solverVariable5 = r33;
                                solverVariable6 = solverVariable;
                                solverVariable7 = solverVariable2;
                                i21 = 0;
                                i22 = 8;
                                c2 = 1;
                                i23 = 1;
                            }
                            if (this.r == 2) {
                                i23 = i21;
                            }
                            if (i23 != 0) {
                                solverVariable8 = solverVariable5;
                            } else {
                                solverVariable8 = solverVariable5;
                            }
                            if (z9) {
                                i24 = this.C;
                                f3 = this.D;
                                if (i24 == 1) {
                                    ArrayRow arrayRowL1111111 = linearSystem2.l();
                                    arrayRowL1111111.d.g(solverVariable6, -1.0f);
                                    arrayRowL1111111.d.g(solverVariable8, 1.0f);
                                    arrayRowL1111111.d.g(solverVariable4, f3);
                                    arrayRowL1111111.d.g(solverVariable3, -f3);
                                    linearSystem2.c(arrayRowL1111111);
                                } else {
                                    ArrayRow arrayRowL1111112 = linearSystem2.l();
                                    arrayRowL1111112.d.g(solverVariable4, -1.0f);
                                    arrayRowL1111112.d.g(solverVariable3, 1.0f);
                                    arrayRowL1111112.d.g(solverVariable6, f3);
                                    arrayRowL1111112.d.g(solverVariable8, -f3);
                                    linearSystem2.c(arrayRowL1111112);
                                }
                            }
                            if (constraintAnchor2.h()) {
                                ConstraintWidget constraintWidget114 = constraintAnchor2.f11484f.d;
                                float radians16 = (float) Math.toRadians(this.F + 90.0f);
                                int iE16 = constraintAnchor2.e();
                                ConstraintAnchor.Type type1111111 = ConstraintAnchor.Type.LEFT;
                                SolverVariable solverVariableK11111111111110 = linearSystem2.k(n(type1111111));
                                ConstraintAnchor.Type type1111112 = ConstraintAnchor.Type.TOP;
                                SolverVariable solverVariableK11111111111111 = linearSystem2.k(n(type1111112));
                                ConstraintAnchor.Type type1111113 = ConstraintAnchor.Type.RIGHT;
                                SolverVariable solverVariableK11111111111112 = linearSystem2.k(n(type1111113));
                                ConstraintAnchor.Type type1111114 = ConstraintAnchor.Type.BOTTOM;
                                SolverVariable solverVariableK11111111111113 = linearSystem2.k(n(type1111114));
                                SolverVariable solverVariableK11111111111114 = linearSystem2.k(constraintWidget114.n(type1111111));
                                SolverVariable solverVariableK11111111111115 = linearSystem2.k(constraintWidget114.n(type1111112));
                                SolverVariable solverVariableK11111111111116 = linearSystem2.k(constraintWidget114.n(type1111113));
                                SolverVariable solverVariableK11111111111117 = linearSystem2.k(constraintWidget114.n(type1111114));
                                ArrayRow arrayRowL1111113 = linearSystem2.l();
                                double d1111 = radians16;
                                double dSin16 = Math.sin(d1111);
                                double d1112 = iE16;
                                arrayRowL1111113.d.g(solverVariableK11111111111115, 0.5f);
                                arrayRowL1111113.d.g(solverVariableK11111111111117, 0.5f);
                                arrayRowL1111113.d.g(solverVariableK11111111111111, -0.5f);
                                arrayRowL1111113.d.g(solverVariableK11111111111113, -0.5f);
                                arrayRowL1111113.f11291b = -((float) (dSin16 * d1112));
                                linearSystem2.c(arrayRowL1111113);
                                ArrayRow arrayRowL1111114 = linearSystem2.l();
                                float fCos16 = (float) (Math.cos(d1111) * d1112);
                                arrayRowL1111114.d.g(solverVariableK11111111111114, 0.5f);
                                arrayRowL1111114.d.g(solverVariableK11111111111116, 0.5f);
                                arrayRowL1111114.d.g(solverVariableK11111111111110, -0.5f);
                                arrayRowL1111114.d.g(solverVariableK11111111111112, -0.5f);
                                arrayRowL1111114.f11291b = -fCos16;
                                linearSystem2.c(arrayRowL1111114);
                            }
                            this.m = false;
                            this.n = false;
                        }
                    }
                }
                i18 = i26;
                z9 = true;
                int[] iArr9 = this.v;
                iArr9[0] = i17;
                iArr9[1] = i18;
                if (z9) {
                    int i318 = this.C;
                    i19 = -1;
                    if (i318 != 0) {
                    }
                    if (z9) {
                        z10 = false;
                    } else {
                        z10 = false;
                    }
                    dimensionBehaviour4 = this.W[0];
                    dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour4 == dimensionBehaviour5) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        i10 = 0;
                    }
                    constraintAnchor2 = this.S;
                    boolean z1111115 = !constraintAnchor2.h();
                    boolean z1111116 = zArr4[0];
                    boolean z1111117 = zArr4[1];
                    if (this.q != 2) {
                        solverVariable3 = solverVariableK;
                        solverVariable4 = solverVariableK2;
                        dimensionBehaviour6 = dimensionBehaviour5;
                        r19 = r14;
                        r3 = i8;
                        constraintAnchor3 = constraintAnchor;
                        r4 = i7;
                        i20 = i17;
                    } else {
                        solverVariable3 = solverVariableK;
                        solverVariable4 = solverVariableK2;
                        dimensionBehaviour6 = dimensionBehaviour5;
                        r19 = r14;
                        r3 = i8;
                        constraintAnchor3 = constraintAnchor;
                        r4 = i7;
                        i20 = i17;
                    }
                    if (z) {
                        solverVariable5 = r33;
                        solverVariable6 = solverVariable;
                        solverVariable7 = solverVariable2;
                        i21 = 0;
                        i22 = 8;
                        c2 = 1;
                        i23 = 1;
                    } else {
                        solverVariable5 = r33;
                        solverVariable6 = solverVariable;
                        solverVariable7 = solverVariable2;
                        i21 = 0;
                        i22 = 8;
                        c2 = 1;
                        i23 = 1;
                    }
                    if (this.r == 2) {
                        i23 = i21;
                    }
                    if (i23 != 0) {
                        solverVariable8 = solverVariable5;
                    } else {
                        solverVariable8 = solverVariable5;
                    }
                    if (z9) {
                        i24 = this.C;
                        f3 = this.D;
                        if (i24 == 1) {
                            ArrayRow arrayRowL1111115 = linearSystem2.l();
                            arrayRowL1111115.d.g(solverVariable6, -1.0f);
                            arrayRowL1111115.d.g(solverVariable8, 1.0f);
                            arrayRowL1111115.d.g(solverVariable4, f3);
                            arrayRowL1111115.d.g(solverVariable3, -f3);
                            linearSystem2.c(arrayRowL1111115);
                        } else {
                            ArrayRow arrayRowL1111116 = linearSystem2.l();
                            arrayRowL1111116.d.g(solverVariable4, -1.0f);
                            arrayRowL1111116.d.g(solverVariable3, 1.0f);
                            arrayRowL1111116.d.g(solverVariable6, f3);
                            arrayRowL1111116.d.g(solverVariable8, -f3);
                            linearSystem2.c(arrayRowL1111116);
                        }
                    }
                    if (constraintAnchor2.h()) {
                        ConstraintWidget constraintWidget115 = constraintAnchor2.f11484f.d;
                        float radians17 = (float) Math.toRadians(this.F + 90.0f);
                        int iE17 = constraintAnchor2.e();
                        ConstraintAnchor.Type type1111115 = ConstraintAnchor.Type.LEFT;
                        SolverVariable solverVariableK11111111111118 = linearSystem2.k(n(type1111115));
                        ConstraintAnchor.Type type1111116 = ConstraintAnchor.Type.TOP;
                        SolverVariable solverVariableK11111111111119 = linearSystem2.k(n(type1111116));
                        ConstraintAnchor.Type type1111117 = ConstraintAnchor.Type.RIGHT;
                        SolverVariable solverVariableK111111111111110 = linearSystem2.k(n(type1111117));
                        ConstraintAnchor.Type type1111118 = ConstraintAnchor.Type.BOTTOM;
                        SolverVariable solverVariableK111111111111111 = linearSystem2.k(n(type1111118));
                        SolverVariable solverVariableK111111111111112 = linearSystem2.k(constraintWidget115.n(type1111115));
                        SolverVariable solverVariableK111111111111113 = linearSystem2.k(constraintWidget115.n(type1111116));
                        SolverVariable solverVariableK111111111111114 = linearSystem2.k(constraintWidget115.n(type1111117));
                        SolverVariable solverVariableK111111111111115 = linearSystem2.k(constraintWidget115.n(type1111118));
                        ArrayRow arrayRowL1111117 = linearSystem2.l();
                        double d1113 = radians17;
                        double dSin17 = Math.sin(d1113);
                        double d1114 = iE17;
                        arrayRowL1111117.d.g(solverVariableK111111111111113, 0.5f);
                        arrayRowL1111117.d.g(solverVariableK111111111111115, 0.5f);
                        arrayRowL1111117.d.g(solverVariableK11111111111119, -0.5f);
                        arrayRowL1111117.d.g(solverVariableK111111111111111, -0.5f);
                        arrayRowL1111117.f11291b = -((float) (dSin17 * d1114));
                        linearSystem2.c(arrayRowL1111117);
                        ArrayRow arrayRowL1111118 = linearSystem2.l();
                        float fCos17 = (float) (Math.cos(d1113) * d1114);
                        arrayRowL1111118.d.g(solverVariableK111111111111112, 0.5f);
                        arrayRowL1111118.d.g(solverVariableK111111111111114, 0.5f);
                        arrayRowL1111118.d.g(solverVariableK11111111111118, -0.5f);
                        arrayRowL1111118.d.g(solverVariableK111111111111110, -0.5f);
                        arrayRowL1111118.f11291b = -fCos17;
                        linearSystem2.c(arrayRowL1111118);
                    }
                    this.m = false;
                    this.n = false;
                }
                i19 = -1;
                if (z9) {
                    z10 = false;
                } else {
                    z10 = false;
                }
                dimensionBehaviour4 = this.W[0];
                dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour4 == dimensionBehaviour5) {
                    z11 = false;
                } else {
                    z11 = false;
                }
                if (z11) {
                    i10 = 0;
                }
                constraintAnchor2 = this.S;
                boolean z1111118 = !constraintAnchor2.h();
                boolean z1111119 = zArr4[0];
                boolean z11111110 = zArr4[1];
                if (this.q != 2) {
                    solverVariable3 = solverVariableK;
                    solverVariable4 = solverVariableK2;
                    dimensionBehaviour6 = dimensionBehaviour5;
                    r19 = r14;
                    r3 = i8;
                    constraintAnchor3 = constraintAnchor;
                    r4 = i7;
                    i20 = i17;
                } else {
                    solverVariable3 = solverVariableK;
                    solverVariable4 = solverVariableK2;
                    dimensionBehaviour6 = dimensionBehaviour5;
                    r19 = r14;
                    r3 = i8;
                    constraintAnchor3 = constraintAnchor;
                    r4 = i7;
                    i20 = i17;
                }
                if (z) {
                    solverVariable5 = r33;
                    solverVariable6 = solverVariable;
                    solverVariable7 = solverVariable2;
                    i21 = 0;
                    i22 = 8;
                    c2 = 1;
                    i23 = 1;
                } else {
                    solverVariable5 = r33;
                    solverVariable6 = solverVariable;
                    solverVariable7 = solverVariable2;
                    i21 = 0;
                    i22 = 8;
                    c2 = 1;
                    i23 = 1;
                }
                if (this.r == 2) {
                    i23 = i21;
                }
                if (i23 != 0) {
                    solverVariable8 = solverVariable5;
                } else {
                    solverVariable8 = solverVariable5;
                }
                if (z9) {
                    i24 = this.C;
                    f3 = this.D;
                    if (i24 == 1) {
                        ArrayRow arrayRowL1111119 = linearSystem2.l();
                        arrayRowL1111119.d.g(solverVariable6, -1.0f);
                        arrayRowL1111119.d.g(solverVariable8, 1.0f);
                        arrayRowL1111119.d.g(solverVariable4, f3);
                        arrayRowL1111119.d.g(solverVariable3, -f3);
                        linearSystem2.c(arrayRowL1111119);
                    } else {
                        ArrayRow arrayRowL11111110 = linearSystem2.l();
                        arrayRowL11111110.d.g(solverVariable4, -1.0f);
                        arrayRowL11111110.d.g(solverVariable3, 1.0f);
                        arrayRowL11111110.d.g(solverVariable6, f3);
                        arrayRowL11111110.d.g(solverVariable8, -f3);
                        linearSystem2.c(arrayRowL11111110);
                    }
                }
                if (constraintAnchor2.h()) {
                    ConstraintWidget constraintWidget116 = constraintAnchor2.f11484f.d;
                    float radians18 = (float) Math.toRadians(this.F + 90.0f);
                    int iE18 = constraintAnchor2.e();
                    ConstraintAnchor.Type type1111119 = ConstraintAnchor.Type.LEFT;
                    SolverVariable solverVariableK111111111111116 = linearSystem2.k(n(type1111119));
                    ConstraintAnchor.Type type11111110 = ConstraintAnchor.Type.TOP;
                    SolverVariable solverVariableK111111111111117 = linearSystem2.k(n(type11111110));
                    ConstraintAnchor.Type type11111111 = ConstraintAnchor.Type.RIGHT;
                    SolverVariable solverVariableK111111111111118 = linearSystem2.k(n(type11111111));
                    ConstraintAnchor.Type type11111112 = ConstraintAnchor.Type.BOTTOM;
                    SolverVariable solverVariableK111111111111119 = linearSystem2.k(n(type11111112));
                    SolverVariable solverVariableK1111111111111110 = linearSystem2.k(constraintWidget116.n(type1111119));
                    SolverVariable solverVariableK1111111111111111 = linearSystem2.k(constraintWidget116.n(type11111110));
                    SolverVariable solverVariableK1111111111111112 = linearSystem2.k(constraintWidget116.n(type11111111));
                    SolverVariable solverVariableK1111111111111113 = linearSystem2.k(constraintWidget116.n(type11111112));
                    ArrayRow arrayRowL11111111 = linearSystem2.l();
                    double d1115 = radians18;
                    double dSin18 = Math.sin(d1115);
                    double d1116 = iE18;
                    arrayRowL11111111.d.g(solverVariableK1111111111111111, 0.5f);
                    arrayRowL11111111.d.g(solverVariableK1111111111111113, 0.5f);
                    arrayRowL11111111.d.g(solverVariableK111111111111117, -0.5f);
                    arrayRowL11111111.d.g(solverVariableK111111111111119, -0.5f);
                    arrayRowL11111111.f11291b = -((float) (dSin18 * d1116));
                    linearSystem2.c(arrayRowL11111111);
                    ArrayRow arrayRowL11111112 = linearSystem2.l();
                    float fCos18 = (float) (Math.cos(d1115) * d1116);
                    arrayRowL11111112.d.g(solverVariableK1111111111111110, 0.5f);
                    arrayRowL11111112.d.g(solverVariableK1111111111111112, 0.5f);
                    arrayRowL11111112.d.g(solverVariableK111111111111116, -0.5f);
                    arrayRowL11111112.d.g(solverVariableK111111111111118, -0.5f);
                    arrayRowL11111112.f11291b = -fCos18;
                    linearSystem2.c(arrayRowL11111112);
                }
                this.m = false;
                this.n = false;
            }
            z9 = false;
            int[] iArr10 = this.v;
            iArr10[0] = i17;
            iArr10[1] = i18;
            if (z9) {
                int i319 = this.C;
                i19 = -1;
                if (i319 != 0) {
                }
                if (z9) {
                    z10 = false;
                } else {
                    z10 = false;
                }
                dimensionBehaviour4 = this.W[0];
                dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour4 == dimensionBehaviour5) {
                    z11 = false;
                } else {
                    z11 = false;
                }
                if (z11) {
                    i10 = 0;
                }
                constraintAnchor2 = this.S;
                boolean z11111111 = !constraintAnchor2.h();
                boolean z11111112 = zArr4[0];
                boolean z11111113 = zArr4[1];
                if (this.q != 2) {
                    solverVariable3 = solverVariableK;
                    solverVariable4 = solverVariableK2;
                    dimensionBehaviour6 = dimensionBehaviour5;
                    r19 = r14;
                    r3 = i8;
                    constraintAnchor3 = constraintAnchor;
                    r4 = i7;
                    i20 = i17;
                } else {
                    solverVariable3 = solverVariableK;
                    solverVariable4 = solverVariableK2;
                    dimensionBehaviour6 = dimensionBehaviour5;
                    r19 = r14;
                    r3 = i8;
                    constraintAnchor3 = constraintAnchor;
                    r4 = i7;
                    i20 = i17;
                }
                if (z) {
                    solverVariable5 = r33;
                    solverVariable6 = solverVariable;
                    solverVariable7 = solverVariable2;
                    i21 = 0;
                    i22 = 8;
                    c2 = 1;
                    i23 = 1;
                } else {
                    solverVariable5 = r33;
                    solverVariable6 = solverVariable;
                    solverVariable7 = solverVariable2;
                    i21 = 0;
                    i22 = 8;
                    c2 = 1;
                    i23 = 1;
                }
                if (this.r == 2) {
                    i23 = i21;
                }
                if (i23 != 0) {
                    solverVariable8 = solverVariable5;
                } else {
                    solverVariable8 = solverVariable5;
                }
                if (z9) {
                    i24 = this.C;
                    f3 = this.D;
                    if (i24 == 1) {
                        ArrayRow arrayRowL11111113 = linearSystem2.l();
                        arrayRowL11111113.d.g(solverVariable6, -1.0f);
                        arrayRowL11111113.d.g(solverVariable8, 1.0f);
                        arrayRowL11111113.d.g(solverVariable4, f3);
                        arrayRowL11111113.d.g(solverVariable3, -f3);
                        linearSystem2.c(arrayRowL11111113);
                    } else {
                        ArrayRow arrayRowL11111114 = linearSystem2.l();
                        arrayRowL11111114.d.g(solverVariable4, -1.0f);
                        arrayRowL11111114.d.g(solverVariable3, 1.0f);
                        arrayRowL11111114.d.g(solverVariable6, f3);
                        arrayRowL11111114.d.g(solverVariable8, -f3);
                        linearSystem2.c(arrayRowL11111114);
                    }
                }
                if (constraintAnchor2.h()) {
                    ConstraintWidget constraintWidget117 = constraintAnchor2.f11484f.d;
                    float radians19 = (float) Math.toRadians(this.F + 90.0f);
                    int iE19 = constraintAnchor2.e();
                    ConstraintAnchor.Type type11111113 = ConstraintAnchor.Type.LEFT;
                    SolverVariable solverVariableK1111111111111114 = linearSystem2.k(n(type11111113));
                    ConstraintAnchor.Type type11111114 = ConstraintAnchor.Type.TOP;
                    SolverVariable solverVariableK1111111111111115 = linearSystem2.k(n(type11111114));
                    ConstraintAnchor.Type type11111115 = ConstraintAnchor.Type.RIGHT;
                    SolverVariable solverVariableK1111111111111116 = linearSystem2.k(n(type11111115));
                    ConstraintAnchor.Type type11111116 = ConstraintAnchor.Type.BOTTOM;
                    SolverVariable solverVariableK1111111111111117 = linearSystem2.k(n(type11111116));
                    SolverVariable solverVariableK1111111111111118 = linearSystem2.k(constraintWidget117.n(type11111113));
                    SolverVariable solverVariableK1111111111111119 = linearSystem2.k(constraintWidget117.n(type11111114));
                    SolverVariable solverVariableK11111111111111110 = linearSystem2.k(constraintWidget117.n(type11111115));
                    SolverVariable solverVariableK11111111111111111 = linearSystem2.k(constraintWidget117.n(type11111116));
                    ArrayRow arrayRowL11111115 = linearSystem2.l();
                    double d1117 = radians19;
                    double dSin19 = Math.sin(d1117);
                    double d1118 = iE19;
                    arrayRowL11111115.d.g(solverVariableK1111111111111119, 0.5f);
                    arrayRowL11111115.d.g(solverVariableK11111111111111111, 0.5f);
                    arrayRowL11111115.d.g(solverVariableK1111111111111115, -0.5f);
                    arrayRowL11111115.d.g(solverVariableK1111111111111117, -0.5f);
                    arrayRowL11111115.f11291b = -((float) (dSin19 * d1118));
                    linearSystem2.c(arrayRowL11111115);
                    ArrayRow arrayRowL11111116 = linearSystem2.l();
                    float fCos19 = (float) (Math.cos(d1117) * d1118);
                    arrayRowL11111116.d.g(solverVariableK1111111111111118, 0.5f);
                    arrayRowL11111116.d.g(solverVariableK11111111111111110, 0.5f);
                    arrayRowL11111116.d.g(solverVariableK1111111111111114, -0.5f);
                    arrayRowL11111116.d.g(solverVariableK1111111111111116, -0.5f);
                    arrayRowL11111116.f11291b = -fCos19;
                    linearSystem2.c(arrayRowL11111116);
                }
                this.m = false;
                this.n = false;
            }
            i19 = -1;
            if (z9) {
                z10 = false;
            } else {
                z10 = false;
            }
            dimensionBehaviour4 = this.W[0];
            dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour4 == dimensionBehaviour5) {
                z11 = false;
            } else {
                z11 = false;
            }
            if (z11) {
                i10 = 0;
            }
            constraintAnchor2 = this.S;
            boolean z11111114 = !constraintAnchor2.h();
            boolean z11111115 = zArr4[0];
            boolean z11111116 = zArr4[1];
            if (this.q != 2) {
                solverVariable3 = solverVariableK;
                solverVariable4 = solverVariableK2;
                dimensionBehaviour6 = dimensionBehaviour5;
                r19 = r14;
                r3 = i8;
                constraintAnchor3 = constraintAnchor;
                r4 = i7;
                i20 = i17;
            } else {
                solverVariable3 = solverVariableK;
                solverVariable4 = solverVariableK2;
                dimensionBehaviour6 = dimensionBehaviour5;
                r19 = r14;
                r3 = i8;
                constraintAnchor3 = constraintAnchor;
                r4 = i7;
                i20 = i17;
            }
            if (z) {
                solverVariable5 = r33;
                solverVariable6 = solverVariable;
                solverVariable7 = solverVariable2;
                i21 = 0;
                i22 = 8;
                c2 = 1;
                i23 = 1;
            } else {
                solverVariable5 = r33;
                solverVariable6 = solverVariable;
                solverVariable7 = solverVariable2;
                i21 = 0;
                i22 = 8;
                c2 = 1;
                i23 = 1;
            }
            if (this.r == 2) {
                i23 = i21;
            }
            if (i23 != 0) {
                solverVariable8 = solverVariable5;
            } else {
                solverVariable8 = solverVariable5;
            }
            if (z9) {
                i24 = this.C;
                f3 = this.D;
                if (i24 == 1) {
                    ArrayRow arrayRowL11111117 = linearSystem2.l();
                    arrayRowL11111117.d.g(solverVariable6, -1.0f);
                    arrayRowL11111117.d.g(solverVariable8, 1.0f);
                    arrayRowL11111117.d.g(solverVariable4, f3);
                    arrayRowL11111117.d.g(solverVariable3, -f3);
                    linearSystem2.c(arrayRowL11111117);
                } else {
                    ArrayRow arrayRowL11111118 = linearSystem2.l();
                    arrayRowL11111118.d.g(solverVariable4, -1.0f);
                    arrayRowL11111118.d.g(solverVariable3, 1.0f);
                    arrayRowL11111118.d.g(solverVariable6, f3);
                    arrayRowL11111118.d.g(solverVariable8, -f3);
                    linearSystem2.c(arrayRowL11111118);
                }
            }
            if (constraintAnchor2.h()) {
                ConstraintWidget constraintWidget118 = constraintAnchor2.f11484f.d;
                float radians110 = (float) Math.toRadians(this.F + 90.0f);
                int iE110 = constraintAnchor2.e();
                ConstraintAnchor.Type type11111117 = ConstraintAnchor.Type.LEFT;
                SolverVariable solverVariableK11111111111111112 = linearSystem2.k(n(type11111117));
                ConstraintAnchor.Type type11111118 = ConstraintAnchor.Type.TOP;
                SolverVariable solverVariableK11111111111111113 = linearSystem2.k(n(type11111118));
                ConstraintAnchor.Type type11111119 = ConstraintAnchor.Type.RIGHT;
                SolverVariable solverVariableK11111111111111114 = linearSystem2.k(n(type11111119));
                ConstraintAnchor.Type type111111110 = ConstraintAnchor.Type.BOTTOM;
                SolverVariable solverVariableK11111111111111115 = linearSystem2.k(n(type111111110));
                SolverVariable solverVariableK11111111111111116 = linearSystem2.k(constraintWidget118.n(type11111117));
                SolverVariable solverVariableK11111111111111117 = linearSystem2.k(constraintWidget118.n(type11111118));
                SolverVariable solverVariableK11111111111111118 = linearSystem2.k(constraintWidget118.n(type11111119));
                SolverVariable solverVariableK11111111111111119 = linearSystem2.k(constraintWidget118.n(type111111110));
                ArrayRow arrayRowL11111119 = linearSystem2.l();
                double d1119 = radians110;
                double dSin110 = Math.sin(d1119);
                double d11110 = iE110;
                arrayRowL11111119.d.g(solverVariableK11111111111111117, 0.5f);
                arrayRowL11111119.d.g(solverVariableK11111111111111119, 0.5f);
                arrayRowL11111119.d.g(solverVariableK11111111111111113, -0.5f);
                arrayRowL11111119.d.g(solverVariableK11111111111111115, -0.5f);
                arrayRowL11111119.f11291b = -((float) (dSin110 * d11110));
                linearSystem2.c(arrayRowL11111119);
                ArrayRow arrayRowL111111110 = linearSystem2.l();
                float fCos110 = (float) (Math.cos(d1119) * d11110);
                arrayRowL111111110.d.g(solverVariableK11111111111111116, 0.5f);
                arrayRowL111111110.d.g(solverVariableK11111111111111118, 0.5f);
                arrayRowL111111110.d.g(solverVariableK11111111111111112, -0.5f);
                arrayRowL111111110.d.g(solverVariableK11111111111111114, -0.5f);
                arrayRowL111111110.f11291b = -fCos110;
                linearSystem2.c(arrayRowL111111110);
            }
            this.m = false;
            this.n = false;
        }
        solverVariable = solverVariableK4;
        solverVariable2 = solverVariableK5;
        i17 = i15;
        i18 = i16;
        z9 = false;
        int[] iArr11 = this.v;
        iArr11[0] = i17;
        iArr11[1] = i18;
        if (z9) {
            int i3110 = this.C;
            i19 = -1;
            if (i3110 != 0) {
            }
            if (z9) {
                z10 = false;
            } else {
                z10 = false;
            }
            dimensionBehaviour4 = this.W[0];
            dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour4 == dimensionBehaviour5) {
                z11 = false;
            } else {
                z11 = false;
            }
            if (z11) {
                i10 = 0;
            }
            constraintAnchor2 = this.S;
            boolean z11111117 = !constraintAnchor2.h();
            boolean z11111118 = zArr4[0];
            boolean z11111119 = zArr4[1];
            if (this.q != 2) {
                solverVariable3 = solverVariableK;
                solverVariable4 = solverVariableK2;
                dimensionBehaviour6 = dimensionBehaviour5;
                r19 = r14;
                r3 = i8;
                constraintAnchor3 = constraintAnchor;
                r4 = i7;
                i20 = i17;
            } else {
                solverVariable3 = solverVariableK;
                solverVariable4 = solverVariableK2;
                dimensionBehaviour6 = dimensionBehaviour5;
                r19 = r14;
                r3 = i8;
                constraintAnchor3 = constraintAnchor;
                r4 = i7;
                i20 = i17;
            }
            if (z) {
                solverVariable5 = r33;
                solverVariable6 = solverVariable;
                solverVariable7 = solverVariable2;
                i21 = 0;
                i22 = 8;
                c2 = 1;
                i23 = 1;
            } else {
                solverVariable5 = r33;
                solverVariable6 = solverVariable;
                solverVariable7 = solverVariable2;
                i21 = 0;
                i22 = 8;
                c2 = 1;
                i23 = 1;
            }
            if (this.r == 2) {
                i23 = i21;
            }
            if (i23 != 0) {
                solverVariable8 = solverVariable5;
            } else {
                solverVariable8 = solverVariable5;
            }
            if (z9) {
                i24 = this.C;
                f3 = this.D;
                if (i24 == 1) {
                    ArrayRow arrayRowL111111111 = linearSystem2.l();
                    arrayRowL111111111.d.g(solverVariable6, -1.0f);
                    arrayRowL111111111.d.g(solverVariable8, 1.0f);
                    arrayRowL111111111.d.g(solverVariable4, f3);
                    arrayRowL111111111.d.g(solverVariable3, -f3);
                    linearSystem2.c(arrayRowL111111111);
                } else {
                    ArrayRow arrayRowL111111112 = linearSystem2.l();
                    arrayRowL111111112.d.g(solverVariable4, -1.0f);
                    arrayRowL111111112.d.g(solverVariable3, 1.0f);
                    arrayRowL111111112.d.g(solverVariable6, f3);
                    arrayRowL111111112.d.g(solverVariable8, -f3);
                    linearSystem2.c(arrayRowL111111112);
                }
            }
            if (constraintAnchor2.h()) {
                ConstraintWidget constraintWidget119 = constraintAnchor2.f11484f.d;
                float radians111 = (float) Math.toRadians(this.F + 90.0f);
                int iE111 = constraintAnchor2.e();
                ConstraintAnchor.Type type111111111 = ConstraintAnchor.Type.LEFT;
                SolverVariable solverVariableK111111111111111110 = linearSystem2.k(n(type111111111));
                ConstraintAnchor.Type type111111112 = ConstraintAnchor.Type.TOP;
                SolverVariable solverVariableK111111111111111111 = linearSystem2.k(n(type111111112));
                ConstraintAnchor.Type type111111113 = ConstraintAnchor.Type.RIGHT;
                SolverVariable solverVariableK111111111111111112 = linearSystem2.k(n(type111111113));
                ConstraintAnchor.Type type111111114 = ConstraintAnchor.Type.BOTTOM;
                SolverVariable solverVariableK111111111111111113 = linearSystem2.k(n(type111111114));
                SolverVariable solverVariableK111111111111111114 = linearSystem2.k(constraintWidget119.n(type111111111));
                SolverVariable solverVariableK111111111111111115 = linearSystem2.k(constraintWidget119.n(type111111112));
                SolverVariable solverVariableK111111111111111116 = linearSystem2.k(constraintWidget119.n(type111111113));
                SolverVariable solverVariableK111111111111111117 = linearSystem2.k(constraintWidget119.n(type111111114));
                ArrayRow arrayRowL111111113 = linearSystem2.l();
                double d11111 = radians111;
                double dSin111 = Math.sin(d11111);
                double d11112 = iE111;
                arrayRowL111111113.d.g(solverVariableK111111111111111115, 0.5f);
                arrayRowL111111113.d.g(solverVariableK111111111111111117, 0.5f);
                arrayRowL111111113.d.g(solverVariableK111111111111111111, -0.5f);
                arrayRowL111111113.d.g(solverVariableK111111111111111113, -0.5f);
                arrayRowL111111113.f11291b = -((float) (dSin111 * d11112));
                linearSystem2.c(arrayRowL111111113);
                ArrayRow arrayRowL111111114 = linearSystem2.l();
                float fCos111 = (float) (Math.cos(d11111) * d11112);
                arrayRowL111111114.d.g(solverVariableK111111111111111114, 0.5f);
                arrayRowL111111114.d.g(solverVariableK111111111111111116, 0.5f);
                arrayRowL111111114.d.g(solverVariableK111111111111111110, -0.5f);
                arrayRowL111111114.d.g(solverVariableK111111111111111112, -0.5f);
                arrayRowL111111114.f11291b = -fCos111;
                linearSystem2.c(arrayRowL111111114);
            }
            this.m = false;
            this.n = false;
        }
        i19 = -1;
        if (z9) {
            z10 = false;
        } else {
            z10 = false;
        }
        dimensionBehaviour4 = this.W[0];
        dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour4 == dimensionBehaviour5) {
            z11 = false;
        } else {
            z11 = false;
        }
        if (z11) {
            i10 = 0;
        }
        constraintAnchor2 = this.S;
        boolean z111111110 = !constraintAnchor2.h();
        boolean z111111111 = zArr4[0];
        boolean z111111112 = zArr4[1];
        if (this.q != 2) {
            solverVariable3 = solverVariableK;
            solverVariable4 = solverVariableK2;
            dimensionBehaviour6 = dimensionBehaviour5;
            r19 = r14;
            r3 = i8;
            constraintAnchor3 = constraintAnchor;
            r4 = i7;
            i20 = i17;
        } else {
            solverVariable3 = solverVariableK;
            solverVariable4 = solverVariableK2;
            dimensionBehaviour6 = dimensionBehaviour5;
            r19 = r14;
            r3 = i8;
            constraintAnchor3 = constraintAnchor;
            r4 = i7;
            i20 = i17;
        }
        if (z) {
            solverVariable5 = r33;
            solverVariable6 = solverVariable;
            solverVariable7 = solverVariable2;
            i21 = 0;
            i22 = 8;
            c2 = 1;
            i23 = 1;
        } else {
            solverVariable5 = r33;
            solverVariable6 = solverVariable;
            solverVariable7 = solverVariable2;
            i21 = 0;
            i22 = 8;
            c2 = 1;
            i23 = 1;
        }
        if (this.r == 2) {
            i23 = i21;
        }
        if (i23 != 0) {
            solverVariable8 = solverVariable5;
        } else {
            solverVariable8 = solverVariable5;
        }
        if (z9) {
            i24 = this.C;
            f3 = this.D;
            if (i24 == 1) {
                ArrayRow arrayRowL111111115 = linearSystem2.l();
                arrayRowL111111115.d.g(solverVariable6, -1.0f);
                arrayRowL111111115.d.g(solverVariable8, 1.0f);
                arrayRowL111111115.d.g(solverVariable4, f3);
                arrayRowL111111115.d.g(solverVariable3, -f3);
                linearSystem2.c(arrayRowL111111115);
            } else {
                ArrayRow arrayRowL111111116 = linearSystem2.l();
                arrayRowL111111116.d.g(solverVariable4, -1.0f);
                arrayRowL111111116.d.g(solverVariable3, 1.0f);
                arrayRowL111111116.d.g(solverVariable6, f3);
                arrayRowL111111116.d.g(solverVariable8, -f3);
                linearSystem2.c(arrayRowL111111116);
            }
        }
        if (constraintAnchor2.h()) {
            ConstraintWidget constraintWidget1110 = constraintAnchor2.f11484f.d;
            float radians112 = (float) Math.toRadians(this.F + 90.0f);
            int iE112 = constraintAnchor2.e();
            ConstraintAnchor.Type type111111115 = ConstraintAnchor.Type.LEFT;
            SolverVariable solverVariableK111111111111111118 = linearSystem2.k(n(type111111115));
            ConstraintAnchor.Type type111111116 = ConstraintAnchor.Type.TOP;
            SolverVariable solverVariableK111111111111111119 = linearSystem2.k(n(type111111116));
            ConstraintAnchor.Type type111111117 = ConstraintAnchor.Type.RIGHT;
            SolverVariable solverVariableK1111111111111111110 = linearSystem2.k(n(type111111117));
            ConstraintAnchor.Type type111111118 = ConstraintAnchor.Type.BOTTOM;
            SolverVariable solverVariableK1111111111111111111 = linearSystem2.k(n(type111111118));
            SolverVariable solverVariableK1111111111111111112 = linearSystem2.k(constraintWidget1110.n(type111111115));
            SolverVariable solverVariableK1111111111111111113 = linearSystem2.k(constraintWidget1110.n(type111111116));
            SolverVariable solverVariableK1111111111111111114 = linearSystem2.k(constraintWidget1110.n(type111111117));
            SolverVariable solverVariableK1111111111111111115 = linearSystem2.k(constraintWidget1110.n(type111111118));
            ArrayRow arrayRowL111111117 = linearSystem2.l();
            double d11113 = radians112;
            double dSin112 = Math.sin(d11113);
            double d11114 = iE112;
            arrayRowL111111117.d.g(solverVariableK1111111111111111113, 0.5f);
            arrayRowL111111117.d.g(solverVariableK1111111111111111115, 0.5f);
            arrayRowL111111117.d.g(solverVariableK111111111111111119, -0.5f);
            arrayRowL111111117.d.g(solverVariableK1111111111111111111, -0.5f);
            arrayRowL111111117.f11291b = -((float) (dSin112 * d11114));
            linearSystem2.c(arrayRowL111111117);
            ArrayRow arrayRowL111111118 = linearSystem2.l();
            float fCos112 = (float) (Math.cos(d11113) * d11114);
            arrayRowL111111118.d.g(solverVariableK1111111111111111112, 0.5f);
            arrayRowL111111118.d.g(solverVariableK1111111111111111114, 0.5f);
            arrayRowL111111118.d.g(solverVariableK111111111111111118, -0.5f);
            arrayRowL111111118.d.g(solverVariableK1111111111111111110, -0.5f);
            arrayRowL111111118.f11291b = -fCos112;
            linearSystem2.c(arrayRowL111111118);
        }
        this.m = false;
        this.n = false;
    }

    public boolean g() {
        return this.k0 != 8;
    }

    /* JADX WARN: Code duplicated, block: B:221:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:223:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:230:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:232:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:241:0x041c  */
    /* JADX WARN: Code duplicated, block: B:258:0x044f  */
    /* JADX WARN: Code duplicated, block: B:260:0x0455  */
    /* JADX WARN: Code duplicated, block: B:271:0x046a  */
    /* JADX WARN: Code duplicated, block: B:276:0x0474  */
    /* JADX WARN: Code duplicated, block: B:278:0x0478  */
    /* JADX WARN: Code duplicated, block: B:279:0x047a  */
    /* JADX WARN: Code duplicated, block: B:282:0x0482  */
    /* JADX WARN: Code duplicated, block: B:288:0x0490 A[PHI: r0
      0x0490: PHI (r0v16 int) = (r0v15 int), (r0v20 int), (r0v20 int), (r0v20 int) binds: [B:281:0x0480, B:283:0x0486, B:284:0x0488, B:286:0x048c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:291:0x04a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:292:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:293:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:295:0x04ac  */
    /* JADX WARN: Code duplicated, block: B:304:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:338:0x0520  */
    public final void h(LinearSystem linearSystem, boolean z, boolean z2, boolean z3, boolean z4, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z5, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i2, int i3, int i4, int i5, float f2, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i6, int i7, int i8, int i9, float f3, boolean z11) {
        int iMin;
        int i10;
        int i11;
        boolean z12;
        SolverVariable solverVariableK;
        SolverVariable solverVariableK2;
        ConstraintAnchor constraintAnchor3;
        SolverVariable solverVariable3;
        int i12;
        int i13;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        ConstraintWidget constraintWidget;
        boolean z17;
        int iMin2;
        boolean z18;
        int i14;
        int iE;
        int i15;
        int i16;
        HashSet hashSet;
        boolean z19;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        boolean z20;
        boolean z21;
        int i23;
        linearSystem = linearSystem;
        int i24 = i8;
        int i25 = i9;
        SolverVariable solverVariableK3 = linearSystem.k(constraintAnchor);
        SolverVariable solverVariableK4 = linearSystem.k(constraintAnchor2);
        SolverVariable solverVariableK5 = linearSystem.k(constraintAnchor.f11484f);
        SolverVariable solverVariableK6 = linearSystem.k(constraintAnchor2.f11484f);
        boolean zH = constraintAnchor.h();
        boolean zH2 = constraintAnchor2.h();
        boolean zH3 = this.S.h();
        int i26 = zH2 ? (zH ? 1 : 0) + 1 : zH ? 1 : 0;
        if (zH3) {
            i26++;
        }
        int i27 = i26;
        int i28 = z6 ? 3 : i6;
        int iOrdinal = dimensionBehaviour.ordinal();
        boolean z22 = (iOrdinal == 0 || iOrdinal == 1 || iOrdinal != 2 || i28 == 4) ? false : true;
        int i29 = this.f11493i;
        if (i29 != -1 && z) {
            this.f11493i = -1;
            i3 = i29;
            z22 = false;
        }
        int i30 = this.f11494j;
        if (i30 == -1 || z) {
            i30 = i3;
        } else {
            this.f11494j = -1;
            z22 = false;
        }
        int i31 = i30;
        if (this.k0 == 8) {
            z22 = false;
            iMin = 0;
        } else {
            iMin = i31;
        }
        if (z11) {
            if (!zH && !zH2 && !zH3) {
                linearSystem.d(solverVariableK3, i2);
            } else if (zH && !zH2) {
                i10 = 8;
                linearSystem.e(solverVariableK3, solverVariableK5, constraintAnchor.e(), 8);
            }
            i10 = 8;
        } else {
            i10 = 8;
        }
        if (z22 != 0) {
            if (i27 == 2 || z6 || !(i28 == 1 || i28 == 0)) {
                if (i24 == -2) {
                    i24 = iMin;
                }
                if (i25 == -2) {
                    i25 = iMin;
                }
                if (iMin > 0 && i28 != 1) {
                    iMin = 0;
                }
                if (i24 > 0) {
                    linearSystem.f(solverVariableK4, solverVariableK3, i24, 8);
                    iMin = Math.max(iMin, i24);
                }
                if (i25 > 0) {
                    if (!z2 || i28 != 1) {
                        linearSystem.g(solverVariableK4, solverVariableK3, i25, 8);
                    }
                    iMin = Math.min(iMin, i25);
                }
                if (i28 == 1) {
                    if (z2) {
                        linearSystem.e(solverVariableK4, solverVariableK3, iMin, 8);
                    } else if (z8) {
                        linearSystem.e(solverVariableK4, solverVariableK3, iMin, 5);
                        linearSystem.g(solverVariableK4, solverVariableK3, iMin, 8);
                    } else {
                        linearSystem.e(solverVariableK4, solverVariableK3, iMin, 5);
                        linearSystem.g(solverVariableK4, solverVariableK3, iMin, 8);
                    }
                } else if (i28 == 2) {
                    ConstraintAnchor.Type type = constraintAnchor.f11483e;
                    ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
                    if (type == type2 || type == ConstraintAnchor.Type.BOTTOM) {
                        solverVariableK = linearSystem.k(this.X.n(type2));
                        solverVariableK2 = linearSystem.k(this.X.n(ConstraintAnchor.Type.BOTTOM));
                    } else {
                        solverVariableK = linearSystem.k(this.X.n(ConstraintAnchor.Type.LEFT));
                        solverVariableK2 = linearSystem.k(this.X.n(ConstraintAnchor.Type.RIGHT));
                    }
                    ArrayRow arrayRowL = linearSystem.l();
                    int i32 = i24;
                    arrayRowL.d.g(solverVariableK4, -1.0f);
                    arrayRowL.d.g(solverVariableK3, 1.0f);
                    arrayRowL.d.g(solverVariableK2, f3);
                    arrayRowL.d.g(solverVariableK, -f3);
                    linearSystem.c(arrayRowL);
                    if (z2) {
                        z22 = false;
                    }
                    z12 = z4;
                    i11 = i32;
                } else {
                    i11 = i24;
                    z12 = true;
                }
            } else {
                int iMax = Math.max(i24, iMin);
                if (i25 > 0) {
                    iMax = Math.min(i25, iMax);
                }
                linearSystem.e(solverVariableK4, solverVariableK3, iMax, 8);
                z12 = z4;
                i11 = i24;
                z22 = false;
            }
            if (z11 || z8) {
                boolean z23 = z12;
                if (i27 >= 2 && z2 && z23) {
                    linearSystem.f(solverVariableK3, solverVariable, 0, 8);
                    ConstraintAnchor constraintAnchor4 = this.P;
                    boolean z24 = z || constraintAnchor4.f11484f == null;
                    if (!z && (constraintAnchor3 = constraintAnchor4.f11484f) != null) {
                        ConstraintWidget constraintWidget2 = constraintAnchor3.d;
                        if (constraintWidget2.a0 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            DimensionBehaviour[] dimensionBehaviourArr = constraintWidget2.W;
                            DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
                            DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
                            if (dimensionBehaviour2 == dimensionBehaviour3 && dimensionBehaviourArr[1] == dimensionBehaviour3) {
                                z24 = true;
                            } else {
                                z24 = false;
                            }
                        } else {
                            z24 = false;
                        }
                    }
                    if (z24) {
                        linearSystem.f(solverVariable2, solverVariableK4, 0, 8);
                        return;
                    }
                    return;
                }
                return;
            }
            if (zH || zH2 || zH3) {
                if (zH && !zH2) {
                    constraintAnchor2 = constraintAnchor2;
                    solverVariableK4 = solverVariableK4;
                    z12 = z12;
                    solverVariable3 = solverVariableK6;
                    z17 = z2;
                    i23 = (z2 && (constraintAnchor.f11484f.d instanceof Barrier)) ? 8 : 5;
                } else if (zH || !zH2) {
                    solverVariable3 = solverVariableK6;
                    if (zH && zH2) {
                        ConstraintWidget constraintWidget3 = constraintAnchor.f11484f.d;
                        ConstraintWidget constraintWidget4 = constraintAnchor2.f11484f.d;
                        z12 = z12;
                        ConstraintWidget constraintWidget5 = this.X;
                        int i33 = 6;
                        if (z22) {
                            if (i28 == 0) {
                                if (i25 != 0 || i11 != 0) {
                                    i21 = 5;
                                    i22 = 5;
                                    z20 = true;
                                    z21 = false;
                                    z14 = true;
                                } else if (solverVariableK5.f11317h && solverVariable3.f11317h) {
                                    linearSystem.e(solverVariableK3, solverVariableK5, constraintAnchor.e(), 8);
                                    linearSystem.e(solverVariableK4, solverVariable3, -constraintAnchor2.e(), 8);
                                    return;
                                } else {
                                    i21 = 8;
                                    i22 = 8;
                                    z20 = false;
                                    z21 = true;
                                    z14 = false;
                                }
                                if ((constraintWidget3 instanceof Barrier) || (constraintWidget4 instanceof Barrier)) {
                                    i12 = i21;
                                    solverVariableK5 = solverVariableK5;
                                    linearSystem = linearSystem;
                                    i28 = i28;
                                    solverVariableK3 = solverVariableK3;
                                    solverVariableK4 = solverVariableK4;
                                    i33 = 6;
                                    z15 = z21;
                                    solverVariable2 = solverVariable2;
                                    z13 = z20;
                                    i13 = 4;
                                } else {
                                    i12 = i21;
                                    solverVariableK5 = solverVariableK5;
                                    linearSystem = linearSystem;
                                    solverVariableK3 = solverVariableK3;
                                    solverVariableK4 = solverVariableK4;
                                    i33 = 6;
                                    z15 = z21;
                                    z13 = z20;
                                    i13 = i22;
                                    i28 = i28;
                                    solverVariable2 = solverVariable2;
                                }
                            } else {
                                if (i28 == 2) {
                                    if ((constraintWidget3 instanceof Barrier) || (constraintWidget4 instanceof Barrier)) {
                                        i12 = 5;
                                    } else {
                                        linearSystem = linearSystem;
                                        i28 = i28;
                                        solverVariableK3 = solverVariableK3;
                                        solverVariableK4 = solverVariableK4;
                                        solverVariableK5 = solverVariableK5;
                                        i33 = 6;
                                        i12 = 5;
                                        i13 = 5;
                                    }
                                    z13 = true;
                                    z14 = true;
                                    z15 = false;
                                    solverVariable2 = solverVariable2;
                                } else if (i28 == 1) {
                                    i12 = 8;
                                } else if (i28 == 3) {
                                    i28 = i28;
                                    if (this.C == -1) {
                                        if (z9) {
                                            linearSystem = linearSystem;
                                            solverVariable2 = solverVariable2;
                                            solverVariableK3 = solverVariableK3;
                                            solverVariableK4 = solverVariableK4;
                                            solverVariableK5 = solverVariableK5;
                                            i33 = z2 ? 5 : 4;
                                        } else {
                                            linearSystem = linearSystem;
                                            solverVariable2 = solverVariable2;
                                            solverVariableK3 = solverVariableK3;
                                            solverVariableK4 = solverVariableK4;
                                            solverVariableK5 = solverVariableK5;
                                            i33 = 8;
                                        }
                                        i12 = 8;
                                    } else {
                                        if (z6) {
                                            if (i7 == 2 || i7 == 1) {
                                                i19 = 5;
                                                i20 = 4;
                                            } else {
                                                i19 = 8;
                                                i20 = 5;
                                            }
                                            i13 = i20;
                                            z13 = true;
                                            z14 = true;
                                            z15 = true;
                                        } else {
                                            if (i25 > 0) {
                                                linearSystem = linearSystem;
                                                solverVariable2 = solverVariable2;
                                                solverVariableK3 = solverVariableK3;
                                                solverVariableK4 = solverVariableK4;
                                                solverVariableK5 = solverVariableK5;
                                                i33 = 6;
                                                i12 = 5;
                                            } else if (i25 != 0 || i11 != 0) {
                                                linearSystem = linearSystem;
                                                solverVariable2 = solverVariable2;
                                                solverVariableK3 = solverVariableK3;
                                                solverVariableK4 = solverVariableK4;
                                                solverVariableK5 = solverVariableK5;
                                                i33 = 6;
                                                i12 = 5;
                                                i13 = 4;
                                            } else if (z9) {
                                                i19 = (constraintWidget3 == constraintWidget5 || constraintWidget4 == constraintWidget5) ? 5 : 4;
                                                i13 = 4;
                                                z13 = true;
                                                z14 = true;
                                                z15 = true;
                                            } else {
                                                linearSystem = linearSystem;
                                                solverVariable2 = solverVariable2;
                                                solverVariableK3 = solverVariableK3;
                                                solverVariableK4 = solverVariableK4;
                                                solverVariableK5 = solverVariableK5;
                                                i33 = 6;
                                                i12 = 5;
                                                i13 = 8;
                                            }
                                            z13 = true;
                                            z14 = true;
                                            z15 = true;
                                        }
                                        i12 = i19;
                                        linearSystem = linearSystem;
                                    }
                                    i13 = 5;
                                    z13 = true;
                                    z14 = true;
                                    z15 = true;
                                } else {
                                    i12 = 5;
                                    i13 = 4;
                                    z13 = false;
                                    z14 = false;
                                }
                                i13 = 4;
                                z13 = true;
                                z14 = true;
                                z15 = false;
                                solverVariable2 = solverVariable2;
                            }
                            if (z14 || solverVariableK5 != solverVariable3 || constraintWidget3 == constraintWidget5) {
                                z16 = true;
                            } else {
                                z14 = false;
                                z16 = false;
                            }
                            if (z13) {
                                if (z22 && !z7 && !z9 && solverVariableK5 == solverVariable && solverVariable3 == solverVariable2) {
                                    i18 = 8;
                                    z17 = false;
                                    i17 = 8;
                                    z19 = false;
                                } else {
                                    z17 = z2;
                                    z19 = z16;
                                    i17 = i12;
                                    i18 = i33;
                                }
                                SolverVariable solverVariable4 = solverVariableK5;
                                constraintWidget = constraintWidget4;
                                linearSystem.b(solverVariableK3, solverVariable4, constraintAnchor.e(), f2, solverVariable3, solverVariableK4, constraintAnchor2.e(), i18);
                                solverVariableK5 = solverVariable4;
                                i12 = i17;
                                z16 = z19;
                            } else {
                                constraintWidget = constraintWidget4;
                                z17 = z2;
                            }
                            if (this.k0 != 8 && ((hashSet = constraintAnchor2.f11480a) == null || hashSet.size() <= 0)) {
                                return;
                            }
                            if (z14) {
                                if (z17 && solverVariableK5 != solverVariable3 && !z22 && ((constraintWidget3 instanceof Barrier) || (constraintWidget instanceof Barrier))) {
                                    i12 = 6;
                                }
                                linearSystem.f(solverVariableK3, solverVariableK5, constraintAnchor.e(), i12);
                                linearSystem.g(solverVariableK4, solverVariable3, -constraintAnchor2.e(), i12);
                            }
                            if (z17 || !z10 || (constraintWidget3 instanceof Barrier) || (constraintWidget instanceof Barrier) || constraintWidget == constraintWidget5) {
                                iMin2 = i13;
                                z18 = z16;
                            } else {
                                iMin2 = 6;
                                i12 = 6;
                                z18 = true;
                            }
                            if (z18) {
                                if (z15 && (!z9 || z3)) {
                                    if (constraintWidget3 != constraintWidget5 && constraintWidget != constraintWidget5) {
                                        i33 = iMin2;
                                    }
                                    if ((constraintWidget3 instanceof Guideline) || (constraintWidget instanceof Guideline)) {
                                        i33 = 5;
                                    }
                                    if ((constraintWidget3 instanceof Barrier) || (constraintWidget instanceof Barrier)) {
                                        i33 = 5;
                                    }
                                    if (z9) {
                                        i16 = 5;
                                    } else {
                                        i16 = i33;
                                    }
                                    iMin2 = Math.max(i16, iMin2);
                                }
                                if (z17) {
                                    iMin2 = Math.min(i12, iMin2);
                                    if (z6 || z9 || !(constraintWidget3 == constraintWidget5 || constraintWidget == constraintWidget5)) {
                                        i15 = iMin2;
                                    } else {
                                        i15 = 4;
                                    }
                                } else {
                                    i15 = iMin2;
                                }
                                linearSystem.e(solverVariableK3, solverVariableK5, constraintAnchor.e(), i15);
                                linearSystem.e(solverVariableK4, solverVariable3, -constraintAnchor2.e(), i15);
                            }
                            if (z17) {
                                if (solverVariable == solverVariableK5) {
                                    iE = constraintAnchor.e();
                                } else {
                                    iE = 0;
                                }
                                if (solverVariableK5 != solverVariable) {
                                    linearSystem.f(solverVariableK3, solverVariable, iE, 5);
                                }
                            }
                            if (z17 || !z22 || i4 != 0 || i11 != 0) {
                                i14 = 5;
                            } else if (z22 && i28 == 3) {
                                linearSystem.f(solverVariableK4, solverVariableK3, 0, 8);
                                i14 = 5;
                            } else {
                                i14 = 5;
                                linearSystem.f(solverVariableK4, solverVariableK3, 0, 5);
                            }
                        } else {
                            if (solverVariableK5.f11317h && solverVariable3.f11317h) {
                                linearSystem.b(solverVariableK3, solverVariableK5, constraintAnchor.e(), f2, solverVariable3, solverVariableK4, constraintAnchor2.e(), 8);
                                if (z2 && z12) {
                                    int iE2 = constraintAnchor2.f11484f != null ? constraintAnchor2.e() : 0;
                                    if (solverVariable3 != solverVariable2) {
                                        linearSystem.f(solverVariable2, solverVariableK4, iE2, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            i12 = 5;
                            i13 = 4;
                            z13 = true;
                            z14 = true;
                        }
                        z15 = false;
                        if (z14) {
                            z16 = true;
                        } else {
                            z16 = true;
                        }
                        if (z13) {
                            if (z22) {
                                z17 = z2;
                                z19 = z16;
                                i17 = i12;
                                i18 = i33;
                            } else {
                                z17 = z2;
                                z19 = z16;
                                i17 = i12;
                                i18 = i33;
                            }
                            SolverVariable solverVariable5 = solverVariableK5;
                            constraintWidget = constraintWidget4;
                            linearSystem.b(solverVariableK3, solverVariable5, constraintAnchor.e(), f2, solverVariable3, solverVariableK4, constraintAnchor2.e(), i18);
                            solverVariableK5 = solverVariable5;
                            i12 = i17;
                            z16 = z19;
                        } else {
                            constraintWidget = constraintWidget4;
                            z17 = z2;
                        }
                        if (this.k0 != 8) {
                        }
                        if (z14) {
                            if (z17) {
                                i12 = 6;
                            }
                            linearSystem.f(solverVariableK3, solverVariableK5, constraintAnchor.e(), i12);
                            linearSystem.g(solverVariableK4, solverVariable3, -constraintAnchor2.e(), i12);
                        }
                        if (z17) {
                            iMin2 = i13;
                            z18 = z16;
                        } else {
                            iMin2 = i13;
                            z18 = z16;
                        }
                        if (z18) {
                            if (z15) {
                                if (constraintWidget3 != constraintWidget5) {
                                    i33 = iMin2;
                                }
                                if (constraintWidget3 instanceof Guideline) {
                                    i33 = 5;
                                } else {
                                    i33 = 5;
                                }
                                if (constraintWidget3 instanceof Barrier) {
                                    i33 = 5;
                                } else {
                                    i33 = 5;
                                }
                                if (z9) {
                                    i16 = 5;
                                } else {
                                    i16 = i33;
                                }
                                iMin2 = Math.max(i16, iMin2);
                            }
                            if (z17) {
                                iMin2 = Math.min(i12, iMin2);
                                if (z6) {
                                    i15 = iMin2;
                                } else {
                                    i15 = iMin2;
                                }
                            } else {
                                i15 = iMin2;
                            }
                            linearSystem.e(solverVariableK3, solverVariableK5, constraintAnchor.e(), i15);
                            linearSystem.e(solverVariableK4, solverVariable3, -constraintAnchor2.e(), i15);
                        }
                        if (z17) {
                            if (solverVariable == solverVariableK5) {
                                iE = constraintAnchor.e();
                            } else {
                                iE = 0;
                            }
                            if (solverVariableK5 != solverVariable) {
                                linearSystem.f(solverVariableK3, solverVariable, iE, 5);
                            }
                        }
                        if (z17) {
                            i14 = 5;
                        } else {
                            i14 = 5;
                        }
                    }
                    i23 = i14;
                } else {
                    solverVariable3 = solverVariableK6;
                    linearSystem.e(solverVariableK4, solverVariable3, -constraintAnchor2.e(), 8);
                    if (z2) {
                        linearSystem.f(solverVariableK3, solverVariable, 0, 5);
                        constraintAnchor2 = constraintAnchor2;
                        i14 = 5;
                        solverVariableK4 = solverVariableK4;
                        z12 = z12;
                    }
                    z17 = z2;
                    i23 = i14;
                }
                if (z17 || !z12) {
                    return;
                }
                int iE3 = constraintAnchor2.f11484f != null ? constraintAnchor2.e() : 0;
                if (solverVariable3 != solverVariable2) {
                    linearSystem.f(solverVariable2, solverVariableK4, iE3, i23);
                    return;
                }
                return;
            }
            solverVariable3 = solverVariableK6;
            i14 = 5;
            z17 = z2;
            i23 = i14;
            if (z17) {
                return;
            } else {
                return;
            }
        }
        if (z5) {
            linearSystem.e(solverVariableK4, solverVariableK3, 0, 3);
            if (i4 > 0) {
                linearSystem.f(solverVariableK4, solverVariableK3, i4, i10);
            }
            if (i5 < Integer.MAX_VALUE) {
                linearSystem.g(solverVariableK4, solverVariableK3, i5, i10);
            }
        } else {
            linearSystem.e(solverVariableK4, solverVariableK3, iMin, i10);
        }
        z12 = z4;
        i11 = i24;
        if (z11) {
        }
        boolean z25 = z12;
        if (i27 >= 2) {
        }
    }

    public final void i(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i2) {
        ConstraintAnchor.Type type3;
        ConstraintAnchor.Type type4;
        boolean z;
        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.CENTER;
        if (type == type5) {
            if (type2 != type5) {
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.LEFT;
                if (type2 == type6 || type2 == ConstraintAnchor.Type.RIGHT) {
                    i(type6, constraintWidget, type2, 0);
                    i(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0);
                    n(type5).a(constraintWidget.n(type2), 0);
                    return;
                }
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.TOP;
                if (type2 == type7 || type2 == ConstraintAnchor.Type.BOTTOM) {
                    i(type7, constraintWidget, type2, 0);
                    i(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0);
                    n(type5).a(constraintWidget.n(type2), 0);
                    return;
                }
                return;
            }
            ConstraintAnchor.Type type8 = ConstraintAnchor.Type.LEFT;
            ConstraintAnchor constraintAnchorN = n(type8);
            ConstraintAnchor.Type type9 = ConstraintAnchor.Type.RIGHT;
            ConstraintAnchor constraintAnchorN2 = n(type9);
            ConstraintAnchor.Type type10 = ConstraintAnchor.Type.TOP;
            ConstraintAnchor constraintAnchorN3 = n(type10);
            ConstraintAnchor.Type type11 = ConstraintAnchor.Type.BOTTOM;
            ConstraintAnchor constraintAnchorN4 = n(type11);
            boolean z2 = true;
            if ((constraintAnchorN == null || !constraintAnchorN.h()) && (constraintAnchorN2 == null || !constraintAnchorN2.h())) {
                i(type8, constraintWidget, type8, 0);
                i(type9, constraintWidget, type9, 0);
                z = true;
            } else {
                z = false;
            }
            if ((constraintAnchorN3 == null || !constraintAnchorN3.h()) && (constraintAnchorN4 == null || !constraintAnchorN4.h())) {
                i(type10, constraintWidget, type10, 0);
                i(type11, constraintWidget, type11, 0);
            } else {
                z2 = false;
            }
            if (z && z2) {
                n(type5).a(constraintWidget.n(type5), 0);
                return;
            }
            if (z) {
                ConstraintAnchor.Type type12 = ConstraintAnchor.Type.CENTER_X;
                n(type12).a(constraintWidget.n(type12), 0);
                return;
            } else {
                if (z2) {
                    ConstraintAnchor.Type type13 = ConstraintAnchor.Type.CENTER_Y;
                    n(type13).a(constraintWidget.n(type13), 0);
                    return;
                }
                return;
            }
        }
        ConstraintAnchor.Type type14 = ConstraintAnchor.Type.CENTER_X;
        if (type == type14 && (type2 == (type4 = ConstraintAnchor.Type.LEFT) || type2 == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor constraintAnchorN5 = n(type4);
            ConstraintAnchor constraintAnchorN6 = constraintWidget.n(type2);
            ConstraintAnchor constraintAnchorN7 = n(ConstraintAnchor.Type.RIGHT);
            constraintAnchorN5.a(constraintAnchorN6, 0);
            constraintAnchorN7.a(constraintAnchorN6, 0);
            n(type14).a(constraintAnchorN6, 0);
            return;
        }
        ConstraintAnchor.Type type15 = ConstraintAnchor.Type.CENTER_Y;
        if (type == type15 && (type2 == (type3 = ConstraintAnchor.Type.TOP) || type2 == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor constraintAnchorN8 = constraintWidget.n(type2);
            n(type3).a(constraintAnchorN8, 0);
            n(ConstraintAnchor.Type.BOTTOM).a(constraintAnchorN8, 0);
            n(type15).a(constraintAnchorN8, 0);
            return;
        }
        if (type == type14 && type2 == type14) {
            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.LEFT;
            n(type16).a(constraintWidget.n(type16), 0);
            ConstraintAnchor.Type type17 = ConstraintAnchor.Type.RIGHT;
            n(type17).a(constraintWidget.n(type17), 0);
            n(type14).a(constraintWidget.n(type2), 0);
            return;
        }
        if (type == type15 && type2 == type15) {
            ConstraintAnchor.Type type18 = ConstraintAnchor.Type.TOP;
            n(type18).a(constraintWidget.n(type18), 0);
            ConstraintAnchor.Type type19 = ConstraintAnchor.Type.BOTTOM;
            n(type19).a(constraintWidget.n(type19), 0);
            n(type15).a(constraintWidget.n(type2), 0);
            return;
        }
        ConstraintAnchor constraintAnchorN9 = n(type);
        ConstraintAnchor constraintAnchorN10 = constraintWidget.n(type2);
        if (constraintAnchorN9.i(constraintAnchorN10)) {
            ConstraintAnchor.Type type20 = ConstraintAnchor.Type.BASELINE;
            if (type == type20) {
                ConstraintAnchor constraintAnchorN11 = n(ConstraintAnchor.Type.TOP);
                ConstraintAnchor constraintAnchorN12 = n(ConstraintAnchor.Type.BOTTOM);
                if (constraintAnchorN11 != null) {
                    constraintAnchorN11.j();
                }
                if (constraintAnchorN12 != null) {
                    constraintAnchorN12.j();
                }
            } else if (type == ConstraintAnchor.Type.TOP || type == ConstraintAnchor.Type.BOTTOM) {
                ConstraintAnchor constraintAnchorN13 = n(type20);
                if (constraintAnchorN13 != null) {
                    constraintAnchorN13.j();
                }
                ConstraintAnchor constraintAnchorN14 = n(type5);
                if (constraintAnchorN14.f11484f != constraintAnchorN10) {
                    constraintAnchorN14.j();
                }
                ConstraintAnchor constraintAnchorF = n(type).f();
                ConstraintAnchor constraintAnchorN15 = n(type15);
                if (constraintAnchorN15.h()) {
                    constraintAnchorF.j();
                    constraintAnchorN15.j();
                }
            } else if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                ConstraintAnchor constraintAnchorN16 = n(type5);
                if (constraintAnchorN16.f11484f != constraintAnchorN10) {
                    constraintAnchorN16.j();
                }
                ConstraintAnchor constraintAnchorF2 = n(type).f();
                ConstraintAnchor constraintAnchorN17 = n(type14);
                if (constraintAnchorN17.h()) {
                    constraintAnchorF2.j();
                    constraintAnchorN17.j();
                }
            }
            constraintAnchorN9.a(constraintAnchorN10, i2);
        }
    }

    public final void j(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i2) {
        if (constraintAnchor.d == this) {
            i(constraintAnchor.f11483e, constraintAnchor2.d, constraintAnchor2.f11483e, i2);
        }
    }

    public void k(ConstraintWidget constraintWidget, HashMap map) {
        this.q = constraintWidget.q;
        this.r = constraintWidget.r;
        this.t = constraintWidget.t;
        this.u = constraintWidget.u;
        int[] iArr = constraintWidget.v;
        int i2 = iArr[0];
        int[] iArr2 = this.v;
        iArr2[0] = i2;
        iArr2[1] = iArr[1];
        this.w = constraintWidget.w;
        this.x = constraintWidget.x;
        this.z = constraintWidget.z;
        this.A = constraintWidget.A;
        this.B = constraintWidget.B;
        this.C = constraintWidget.C;
        this.D = constraintWidget.D;
        int[] iArr3 = constraintWidget.E;
        this.E = Arrays.copyOf(iArr3, iArr3.length);
        this.F = constraintWidget.F;
        this.G = constraintWidget.G;
        this.H = constraintWidget.H;
        this.L.j();
        this.M.j();
        this.N.j();
        this.O.j();
        this.P.j();
        this.Q.j();
        this.R.j();
        this.S.j();
        this.W = (DimensionBehaviour[]) Arrays.copyOf(this.W, 2);
        this.X = this.X == null ? null : (ConstraintWidget) map.get(constraintWidget.X);
        this.Y = constraintWidget.Y;
        this.Z = constraintWidget.Z;
        this.a0 = constraintWidget.a0;
        this.b0 = constraintWidget.b0;
        this.c0 = constraintWidget.c0;
        this.d0 = constraintWidget.d0;
        this.e0 = constraintWidget.e0;
        this.f0 = constraintWidget.f0;
        this.g0 = constraintWidget.g0;
        this.h0 = constraintWidget.h0;
        this.i0 = constraintWidget.i0;
        this.j0 = constraintWidget.j0;
        this.k0 = constraintWidget.k0;
        this.l0 = constraintWidget.l0;
        this.m0 = constraintWidget.m0;
        this.n0 = constraintWidget.n0;
        this.o0 = constraintWidget.o0;
        float[] fArr = constraintWidget.p0;
        float f2 = fArr[0];
        float[] fArr2 = this.p0;
        fArr2[0] = f2;
        fArr2[1] = fArr[1];
        ConstraintWidget[] constraintWidgetArr = constraintWidget.q0;
        ConstraintWidget constraintWidget2 = constraintWidgetArr[0];
        ConstraintWidget[] constraintWidgetArr2 = this.q0;
        constraintWidgetArr2[0] = constraintWidget2;
        constraintWidgetArr2[1] = constraintWidgetArr[1];
        ConstraintWidget[] constraintWidgetArr3 = constraintWidget.r0;
        ConstraintWidget constraintWidget3 = constraintWidgetArr3[0];
        ConstraintWidget[] constraintWidgetArr4 = this.r0;
        constraintWidgetArr4[0] = constraintWidget3;
        constraintWidgetArr4[1] = constraintWidgetArr3[1];
        ConstraintWidget constraintWidget4 = constraintWidget.s0;
        this.s0 = constraintWidget4 == null ? null : (ConstraintWidget) map.get(constraintWidget4);
        ConstraintWidget constraintWidget5 = constraintWidget.t0;
        this.t0 = constraintWidget5 != null ? (ConstraintWidget) map.get(constraintWidget5) : null;
    }

    public final void l(LinearSystem linearSystem) {
        linearSystem.k(this.L);
        linearSystem.k(this.M);
        linearSystem.k(this.N);
        linearSystem.k(this.O);
        if (this.e0 > 0) {
            linearSystem.k(this.P);
        }
    }

    public final void m() {
        if (this.d == null) {
            this.d = new HorizontalWidgetRun(this);
        }
        if (this.f11490e == null) {
            this.f11490e = new VerticalWidgetRun(this);
        }
    }

    public ConstraintAnchor n(ConstraintAnchor.Type type) {
        switch (AnonymousClass1.f11496a[type.ordinal()]) {
            case 1:
                return this.L;
            case 2:
                return this.M;
            case 3:
                return this.N;
            case 4:
                return this.O;
            case 5:
                return this.P;
            case 6:
                return this.S;
            case 7:
                return this.Q;
            case 8:
                return this.R;
            default:
                md.h(type.name());
            case 9:
                return null;
        }
    }

    public final DimensionBehaviour o(int i2) {
        if (i2 == 0) {
            return this.W[0];
        }
        if (i2 == 1) {
            return this.W[1];
        }
        return null;
    }

    public final int p() {
        if (this.k0 == 8) {
            return 0;
        }
        return this.Z;
    }

    public final ConstraintWidget q(int i2) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i2 != 0) {
            if (i2 == 1 && (constraintAnchor2 = (constraintAnchor = this.O).f11484f) != null && constraintAnchor2.f11484f == constraintAnchor) {
                return constraintAnchor2.d;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.N;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f11484f;
        if (constraintAnchor4 == null || constraintAnchor4.f11484f != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.d;
    }

    public final ConstraintWidget r(int i2) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i2 != 0) {
            if (i2 == 1 && (constraintAnchor2 = (constraintAnchor = this.M).f11484f) != null && constraintAnchor2.f11484f == constraintAnchor) {
                return constraintAnchor2.d;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.L;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f11484f;
        if (constraintAnchor4 == null || constraintAnchor4.f11484f != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.d;
    }

    public void s(StringBuilder sb) {
        sb.append("  " + this.l + ":{\n");
        StringBuilder sb2 = new StringBuilder("    actualWidth:");
        sb2.append(this.Y);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.Z);
        sb.append("\n");
        sb.append("    actualLeft:" + this.c0);
        sb.append("\n");
        sb.append("    actualTop:" + this.d0);
        sb.append("\n");
        u(sb, "left", this.L);
        u(sb, "top", this.M);
        u(sb, "right", this.N);
        u(sb, "bottom", this.O);
        u(sb, "baseline", this.P);
        u(sb, "centerX", this.Q);
        u(sb, "centerY", this.R);
        int i2 = this.Y;
        int i3 = this.f0;
        int i4 = this.E[0];
        int i5 = this.w;
        int i6 = this.t;
        float f2 = this.y;
        DimensionBehaviour dimensionBehaviour = this.W[0];
        float[] fArr = this.p0;
        float f3 = fArr[0];
        t(sb, "    width", i2, i3, i4, i5, i6, f2, dimensionBehaviour);
        int i7 = this.Z;
        int i8 = this.g0;
        int i9 = this.E[1];
        int i10 = this.z;
        int i11 = this.u;
        float f4 = this.B;
        DimensionBehaviour dimensionBehaviour2 = this.W[1];
        float f5 = fArr[1];
        t(sb, "    height", i7, i8, i9, i10, i11, f4, dimensionBehaviour2);
        float f6 = this.a0;
        int i12 = this.b0;
        if (f6 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            sb.append("    dimensionRatio");
            sb.append(" :  [");
            sb.append(f6);
            sb.append(",");
            sb.append(i12);
            sb.append("");
            sb.append("],\n");
        }
        M(sb, "    horizontalBias", this.h0, 0.5f);
        M(sb, "    verticalBias", this.i0, 0.5f);
        L(this.n0, 0, "    horizontalChainStyle", sb);
        L(this.o0, 0, "    verticalChainStyle", sb);
        sb.append("  }");
    }

    public String toString() {
        String strR = "";
        StringBuilder sbT = n00.t("");
        if (this.m0 != null) {
            strR = n00.r(this.m0, " ", new StringBuilder("id: "));
        }
        sbT.append(strR);
        sbT.append("(");
        sbT.append(this.c0);
        sbT.append(", ");
        sbT.append(this.d0);
        sbT.append(") - (");
        sbT.append(this.Y);
        sbT.append(" x ");
        return a.i(this.Z, ")", sbT);
    }

    public final int v() {
        if (this.k0 == 8) {
            return 0;
        }
        return this.Y;
    }

    public final int w() {
        ConstraintWidget constraintWidget = this.X;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.c0 : ((ConstraintWidgetContainer) constraintWidget).D0 + this.c0;
    }

    public final int x() {
        ConstraintWidget constraintWidget = this.X;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.d0 : ((ConstraintWidgetContainer) constraintWidget).E0 + this.d0;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x003a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x003b A[RETURN] */
    public final boolean y(int i2) {
        if (i2 == 0) {
            if ((this.L.f11484f != null ? 1 : 0) + (this.N.f11484f != null ? 1 : 0) < 2) {
                return true;
            }
            return false;
        }
        if ((this.M.f11484f != null ? 1 : 0) + (this.O.f11484f != null ? 1 : 0) + (this.P.f11484f != null ? 1 : 0) < 2) {
            return true;
        }
        return false;
    }

    public final boolean z(int i2, int i3) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (i2 == 0) {
            ConstraintAnchor constraintAnchor5 = this.L;
            ConstraintAnchor constraintAnchor6 = constraintAnchor5.f11484f;
            if (constraintAnchor6 == null || !constraintAnchor6.f11482c || (constraintAnchor4 = (constraintAnchor3 = this.N).f11484f) == null || !constraintAnchor4.f11482c) {
                return false;
            }
            return (constraintAnchor4.d() - constraintAnchor3.e()) - (constraintAnchor5.e() + constraintAnchor5.f11484f.d()) >= i3;
        }
        ConstraintAnchor constraintAnchor7 = this.M;
        ConstraintAnchor constraintAnchor8 = constraintAnchor7.f11484f;
        if (constraintAnchor8 == null || !constraintAnchor8.f11482c || (constraintAnchor2 = (constraintAnchor = this.O).f11484f) == null || !constraintAnchor2.f11482c) {
            return false;
        }
        return (constraintAnchor2.d() - constraintAnchor.e()) - (constraintAnchor7.e() + constraintAnchor7.f11484f.d()) >= i3;
    }

    public ConstraintWidget() {
        this.f11487a = false;
        this.d = null;
        this.f11490e = null;
        this.f11491f = new boolean[]{true, true};
        this.g = true;
        this.f11492h = true;
        this.f11493i = -1;
        this.f11494j = -1;
        this.f11495k = new WidgetFrame(this);
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = -1;
        this.r = -1;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = new int[2];
        this.w = 0;
        this.x = 0;
        this.y = 1.0f;
        this.z = 0;
        this.A = 0;
        this.B = 1.0f;
        this.C = -1;
        this.D = 1.0f;
        this.E = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.F = Float.NaN;
        this.G = false;
        this.I = false;
        this.J = 0;
        this.K = 0;
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.L = constraintAnchor;
        ConstraintAnchor constraintAnchor2 = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.M = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.N = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.O = constraintAnchor4;
        ConstraintAnchor constraintAnchor5 = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.P = constraintAnchor5;
        this.Q = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.R = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor6 = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.S = constraintAnchor6;
        this.T = new ConstraintAnchor[]{constraintAnchor, constraintAnchor3, constraintAnchor2, constraintAnchor4, constraintAnchor5, constraintAnchor6};
        this.U = new ArrayList();
        this.V = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.W = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.X = null;
        this.Y = 0;
        this.Z = 0;
        this.a0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.b0 = -1;
        this.c0 = 0;
        this.d0 = 0;
        this.e0 = 0;
        this.h0 = 0.5f;
        this.i0 = 0.5f;
        this.k0 = 0;
        this.l0 = false;
        this.m0 = null;
        this.n0 = 0;
        this.o0 = 0;
        this.p0 = new float[]{-1.0f, -1.0f};
        this.q0 = new ConstraintWidget[]{null, null};
        this.r0 = new ConstraintWidget[]{null, null};
        this.s0 = null;
        this.t0 = null;
        this.u0 = -1;
        this.v0 = -1;
        d();
    }

    public ConstraintWidget(int i2, int i3, int i4, int i5) {
        this.f11487a = false;
        this.d = null;
        this.f11490e = null;
        this.f11491f = new boolean[]{true, true};
        this.g = true;
        this.f11492h = true;
        this.f11493i = -1;
        this.f11494j = -1;
        this.f11495k = new WidgetFrame(this);
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = -1;
        this.r = -1;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = new int[2];
        this.w = 0;
        this.x = 0;
        this.y = 1.0f;
        this.z = 0;
        this.A = 0;
        this.B = 1.0f;
        this.C = -1;
        this.D = 1.0f;
        this.E = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.F = Float.NaN;
        this.G = false;
        this.I = false;
        this.J = 0;
        this.K = 0;
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.L = constraintAnchor;
        ConstraintAnchor constraintAnchor2 = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.M = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.N = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.O = constraintAnchor4;
        ConstraintAnchor constraintAnchor5 = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.P = constraintAnchor5;
        this.Q = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.R = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor6 = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.S = constraintAnchor6;
        this.T = new ConstraintAnchor[]{constraintAnchor, constraintAnchor3, constraintAnchor2, constraintAnchor4, constraintAnchor5, constraintAnchor6};
        this.U = new ArrayList();
        this.V = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.W = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.X = null;
        this.a0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.b0 = -1;
        this.e0 = 0;
        this.h0 = 0.5f;
        this.i0 = 0.5f;
        this.k0 = 0;
        this.l0 = false;
        this.m0 = null;
        this.n0 = 0;
        this.o0 = 0;
        this.p0 = new float[]{-1.0f, -1.0f};
        this.q0 = new ConstraintWidget[]{null, null};
        this.r0 = new ConstraintWidget[]{null, null};
        this.s0 = null;
        this.t0 = null;
        this.u0 = -1;
        this.v0 = -1;
        this.c0 = i2;
        this.d0 = i3;
        this.Y = i4;
        this.Z = i5;
        d();
    }

    public ConstraintWidget(String str, int i2, int i3, int i4, int i5) {
        this(i2, i3, i4, i5);
        this.m0 = str;
    }

    public ConstraintWidget(int i2, int i3) {
        this(0, 0, i2, i3);
    }

    public ConstraintWidget(String str, int i2, int i3) {
        this(i2, i3);
        this.m0 = str;
    }
}
