package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.MotionLayout;
import com.batch.android.s.b;
import defpackage.az;
import defpackage.v7;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.eac.EACTags;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintSet {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f11760h = {0, 4, 8};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final SparseIntArray f11761i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final SparseIntArray f11762j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f11763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f11764b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String[] f11765c = new String[0];
    public int d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f11766e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f11767f = true;
    public final HashMap g = new HashMap();

    public static class Constraint {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f11768a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f11769b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PropertySet f11770c = new PropertySet();
        public final Motion d = new Motion();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Layout f11771e = new Layout();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Transform f11772f = new Transform();
        public HashMap g = new HashMap();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Delta f11773h;

        public static class Delta {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int[] f11774a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int[] f11775b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f11776c;
            public int[] d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public float[] f11777e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f11778f;
            public int[] g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public String[] f11779h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f11780i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int[] f11781j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public boolean[] f11782k;
            public int l;

            public final void a(float f2, int i2) {
                int i3 = this.f11778f;
                int[] iArr = this.d;
                if (i3 >= iArr.length) {
                    this.d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.f11777e;
                    this.f11777e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.d;
                int i4 = this.f11778f;
                iArr2[i4] = i2;
                float[] fArr2 = this.f11777e;
                this.f11778f = i4 + 1;
                fArr2[i4] = f2;
            }

            public final void b(int i2, int i3) {
                int i4 = this.f11776c;
                int[] iArr = this.f11774a;
                if (i4 >= iArr.length) {
                    this.f11774a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.f11775b;
                    this.f11775b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f11774a;
                int i5 = this.f11776c;
                iArr3[i5] = i2;
                int[] iArr4 = this.f11775b;
                this.f11776c = i5 + 1;
                iArr4[i5] = i3;
            }

            public final void c(int i2, String str) {
                int i3 = this.f11780i;
                int[] iArr = this.g;
                if (i3 >= iArr.length) {
                    this.g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.f11779h;
                    this.f11779h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.g;
                int i4 = this.f11780i;
                iArr2[i4] = i2;
                String[] strArr2 = this.f11779h;
                this.f11780i = i4 + 1;
                strArr2[i4] = str;
            }

            public final void d(int i2, boolean z) {
                int i3 = this.l;
                int[] iArr = this.f11781j;
                if (i3 >= iArr.length) {
                    this.f11781j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.f11782k;
                    this.f11782k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.f11781j;
                int i4 = this.l;
                iArr2[i4] = i2;
                boolean[] zArr2 = this.f11782k;
                this.l = i4 + 1;
                zArr2[i4] = z;
            }

            public final void e(Constraint constraint) {
                for (int i2 = 0; i2 < this.f11776c; i2++) {
                    int i3 = this.f11774a[i2];
                    int i4 = this.f11775b[i2];
                    int[] iArr = ConstraintSet.f11760h;
                    if (i3 == 6) {
                        constraint.f11771e.D = i4;
                    } else if (i3 == 7) {
                        constraint.f11771e.E = i4;
                    } else if (i3 == 8) {
                        constraint.f11771e.K = i4;
                    } else if (i3 == 27) {
                        constraint.f11771e.F = i4;
                    } else if (i3 == 28) {
                        constraint.f11771e.H = i4;
                    } else if (i3 == 41) {
                        constraint.f11771e.W = i4;
                    } else if (i3 == 42) {
                        constraint.f11771e.X = i4;
                    } else if (i3 == 61) {
                        constraint.f11771e.A = i4;
                    } else if (i3 == 62) {
                        constraint.f11771e.B = i4;
                    } else if (i3 == 72) {
                        constraint.f11771e.g0 = i4;
                    } else if (i3 == 73) {
                        constraint.f11771e.h0 = i4;
                    } else if (i3 == 88) {
                        constraint.d.l = i4;
                    } else if (i3 == 89) {
                        constraint.d.m = i4;
                    } else if (i3 == 2) {
                        constraint.f11771e.J = i4;
                    } else if (i3 == 31) {
                        constraint.f11771e.L = i4;
                    } else if (i3 == 34) {
                        constraint.f11771e.I = i4;
                    } else if (i3 == 38) {
                        constraint.f11768a = i4;
                    } else if (i3 == 64) {
                        constraint.d.f11793b = i4;
                    } else if (i3 == 66) {
                        constraint.d.f11796f = i4;
                    } else if (i3 == 76) {
                        constraint.d.f11795e = i4;
                    } else if (i3 == 78) {
                        constraint.f11770c.f11803c = i4;
                    } else if (i3 == 97) {
                        constraint.f11771e.p0 = i4;
                    } else if (i3 == 93) {
                        constraint.f11771e.M = i4;
                    } else if (i3 != 94) {
                        switch (i3) {
                            case 11:
                                constraint.f11771e.Q = i4;
                                break;
                            case 12:
                                constraint.f11771e.R = i4;
                                break;
                            case 13:
                                constraint.f11771e.N = i4;
                                break;
                            case 14:
                                constraint.f11771e.P = i4;
                                break;
                            case 15:
                                constraint.f11771e.S = i4;
                                break;
                            case 16:
                                constraint.f11771e.O = i4;
                                break;
                            case 17:
                                constraint.f11771e.f11786e = i4;
                                break;
                            case 18:
                                constraint.f11771e.f11787f = i4;
                                break;
                            default:
                                switch (i3) {
                                    case 21:
                                        constraint.f11771e.d = i4;
                                        break;
                                    case 22:
                                        constraint.f11770c.f11802b = i4;
                                        break;
                                    case 23:
                                        constraint.f11771e.f11785c = i4;
                                        break;
                                    case 24:
                                        constraint.f11771e.G = i4;
                                        break;
                                    default:
                                        switch (i3) {
                                            case EACTags.CURRENCY_EXPONENT /* 54 */:
                                                constraint.f11771e.Y = i4;
                                                break;
                                            case 55:
                                                constraint.f11771e.Z = i4;
                                                break;
                                            case 56:
                                                constraint.f11771e.a0 = i4;
                                                break;
                                            case 57:
                                                constraint.f11771e.b0 = i4;
                                                break;
                                            case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                                                constraint.f11771e.c0 = i4;
                                                break;
                                            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                                                constraint.f11771e.d0 = i4;
                                                break;
                                            default:
                                                switch (i3) {
                                                    case EACTags.HISTORICAL_BYTES /* 82 */:
                                                        constraint.d.f11794c = i4;
                                                        break;
                                                    case 83:
                                                        constraint.f11772f.f11811i = i4;
                                                        break;
                                                    case 84:
                                                        constraint.d.f11799j = i4;
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                    } else {
                        constraint.f11771e.T = i4;
                    }
                }
                for (int i5 = 0; i5 < this.f11778f; i5++) {
                    int i6 = this.d[i5];
                    float f2 = this.f11777e[i5];
                    int[] iArr2 = ConstraintSet.f11760h;
                    if (i6 == 19) {
                        constraint.f11771e.g = f2;
                    } else if (i6 == 20) {
                        constraint.f11771e.x = f2;
                    } else if (i6 == 37) {
                        constraint.f11771e.y = f2;
                    } else if (i6 == 60) {
                        constraint.f11772f.f11806b = f2;
                    } else if (i6 == 63) {
                        constraint.f11771e.C = f2;
                    } else if (i6 == 79) {
                        constraint.d.g = f2;
                    } else if (i6 == 85) {
                        constraint.d.f11798i = f2;
                    } else if (i6 == 39) {
                        constraint.f11771e.V = f2;
                    } else if (i6 != 40) {
                        switch (i6) {
                            case EACTags.DATE_OF_BIRTH /* 43 */:
                                constraint.f11770c.d = f2;
                                break;
                            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                                Transform transform = constraint.f11772f;
                                transform.n = f2;
                                transform.m = true;
                                break;
                            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                                constraint.f11772f.f11807c = f2;
                                break;
                            case 46:
                                constraint.f11772f.d = f2;
                                break;
                            case EACTags.PIN_USAGE_POLICY /* 47 */:
                                constraint.f11772f.f11808e = f2;
                                break;
                            case 48:
                                constraint.f11772f.f11809f = f2;
                                break;
                            case 49:
                                constraint.f11772f.g = f2;
                                break;
                            case 50:
                                constraint.f11772f.f11810h = f2;
                                break;
                            case EACTags.TRANSACTION_DATE /* 51 */:
                                constraint.f11772f.f11812j = f2;
                                break;
                            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                                constraint.f11772f.f11813k = f2;
                                break;
                            case EACTags.SEX /* 53 */:
                                constraint.f11772f.l = f2;
                                break;
                            default:
                                switch (i6) {
                                    case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                                        constraint.d.f11797h = f2;
                                        break;
                                    case EACTags.APPLICATION_IMAGE /* 68 */:
                                        constraint.f11770c.f11804e = f2;
                                        break;
                                    case EACTags.DISPLAY_IMAGE /* 69 */:
                                        constraint.f11771e.e0 = f2;
                                        break;
                                    case 70:
                                        constraint.f11771e.f0 = f2;
                                        break;
                                }
                                break;
                        }
                    } else {
                        constraint.f11771e.U = f2;
                    }
                }
                for (int i7 = 0; i7 < this.f11780i; i7++) {
                    int i8 = this.g[i7];
                    String str = this.f11779h[i7];
                    int[] iArr3 = ConstraintSet.f11760h;
                    if (i8 == 5) {
                        constraint.f11771e.z = str;
                    } else if (i8 == 65) {
                        constraint.d.d = str;
                    } else if (i8 == 74) {
                        Layout layout = constraint.f11771e;
                        layout.k0 = str;
                        layout.j0 = null;
                    } else if (i8 == 77) {
                        constraint.f11771e.l0 = str;
                    } else if (i8 == 90) {
                        constraint.d.f11800k = str;
                    }
                }
                for (int i9 = 0; i9 < this.l; i9++) {
                    int i10 = this.f11781j[i9];
                    boolean z = this.f11782k[i9];
                    int[] iArr4 = ConstraintSet.f11760h;
                    if (i10 == 44) {
                        constraint.f11772f.m = z;
                    } else if (i10 == 75) {
                        constraint.f11771e.o0 = z;
                    } else if (i10 == 80) {
                        constraint.f11771e.m0 = z;
                    } else if (i10 == 81) {
                        constraint.f11771e.n0 = z;
                    }
                }
            }
        }

        public final void a(Constraint constraint) {
            Delta delta = this.f11773h;
            if (delta != null) {
                delta.e(constraint);
            }
        }

        public final void b(ConstraintLayout.LayoutParams layoutParams) {
            Layout layout = this.f11771e;
            layoutParams.f11735e = layout.f11789i;
            layoutParams.f11736f = layout.f11790j;
            layoutParams.g = layout.f11791k;
            layoutParams.f11737h = layout.l;
            layoutParams.f11738i = layout.m;
            layoutParams.f11739j = layout.n;
            layoutParams.f11740k = layout.o;
            layoutParams.l = layout.p;
            layoutParams.m = layout.q;
            layoutParams.n = layout.r;
            layoutParams.o = layout.s;
            layoutParams.s = layout.t;
            layoutParams.t = layout.u;
            layoutParams.u = layout.v;
            layoutParams.v = layout.w;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = layout.G;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = layout.H;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = layout.I;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = layout.J;
            layoutParams.A = layout.S;
            layoutParams.B = layout.R;
            layoutParams.x = layout.O;
            layoutParams.z = layout.Q;
            layoutParams.E = layout.x;
            layoutParams.F = layout.y;
            layoutParams.p = layout.A;
            layoutParams.q = layout.B;
            layoutParams.r = layout.C;
            layoutParams.G = layout.z;
            layoutParams.T = layout.D;
            layoutParams.U = layout.E;
            layoutParams.I = layout.U;
            layoutParams.H = layout.V;
            layoutParams.K = layout.X;
            layoutParams.J = layout.W;
            layoutParams.W = layout.m0;
            layoutParams.X = layout.n0;
            layoutParams.L = layout.Y;
            layoutParams.M = layout.Z;
            layoutParams.P = layout.a0;
            layoutParams.Q = layout.b0;
            layoutParams.N = layout.c0;
            layoutParams.O = layout.d0;
            layoutParams.R = layout.e0;
            layoutParams.S = layout.f0;
            layoutParams.V = layout.F;
            layoutParams.f11734c = layout.g;
            layoutParams.f11732a = layout.f11786e;
            layoutParams.f11733b = layout.f11787f;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = layout.f11785c;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = layout.d;
            String str = layout.l0;
            if (str != null) {
                layoutParams.Y = str;
            }
            layoutParams.Z = layout.p0;
            layoutParams.setMarginStart(layout.L);
            layoutParams.setMarginEnd(layout.K);
            layoutParams.a();
        }

        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Constraint clone() {
            Constraint constraint = new Constraint();
            constraint.f11771e.a(this.f11771e);
            constraint.d.a(this.d);
            PropertySet propertySet = constraint.f11770c;
            propertySet.getClass();
            PropertySet propertySet2 = this.f11770c;
            propertySet.f11801a = propertySet2.f11801a;
            propertySet.f11802b = propertySet2.f11802b;
            propertySet.d = propertySet2.d;
            propertySet.f11804e = propertySet2.f11804e;
            propertySet.f11803c = propertySet2.f11803c;
            constraint.f11772f.a(this.f11772f);
            constraint.f11768a = this.f11768a;
            constraint.f11773h = this.f11773h;
            return constraint;
        }

        public final void d(int i2, ConstraintLayout.LayoutParams layoutParams) {
            this.f11768a = i2;
            int i3 = layoutParams.f11735e;
            Layout layout = this.f11771e;
            layout.f11789i = i3;
            layout.f11790j = layoutParams.f11736f;
            layout.f11791k = layoutParams.g;
            layout.l = layoutParams.f11737h;
            layout.m = layoutParams.f11738i;
            layout.n = layoutParams.f11739j;
            layout.o = layoutParams.f11740k;
            layout.p = layoutParams.l;
            layout.q = layoutParams.m;
            layout.r = layoutParams.n;
            layout.s = layoutParams.o;
            layout.t = layoutParams.s;
            layout.u = layoutParams.t;
            layout.v = layoutParams.u;
            layout.w = layoutParams.v;
            layout.x = layoutParams.E;
            layout.y = layoutParams.F;
            layout.z = layoutParams.G;
            layout.A = layoutParams.p;
            layout.B = layoutParams.q;
            layout.C = layoutParams.r;
            layout.D = layoutParams.T;
            layout.E = layoutParams.U;
            layout.F = layoutParams.V;
            layout.g = layoutParams.f11734c;
            layout.f11786e = layoutParams.f11732a;
            layout.f11787f = layoutParams.f11733b;
            layout.f11785c = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            layout.d = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            layout.G = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            layout.H = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            layout.I = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            layout.J = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            layout.M = layoutParams.D;
            layout.U = layoutParams.I;
            layout.V = layoutParams.H;
            layout.X = layoutParams.K;
            layout.W = layoutParams.J;
            layout.m0 = layoutParams.W;
            layout.n0 = layoutParams.X;
            layout.Y = layoutParams.L;
            layout.Z = layoutParams.M;
            layout.a0 = layoutParams.P;
            layout.b0 = layoutParams.Q;
            layout.c0 = layoutParams.N;
            layout.d0 = layoutParams.O;
            layout.e0 = layoutParams.R;
            layout.f0 = layoutParams.S;
            layout.l0 = layoutParams.Y;
            layout.O = layoutParams.x;
            layout.Q = layoutParams.z;
            layout.N = layoutParams.w;
            layout.P = layoutParams.y;
            layout.S = layoutParams.A;
            layout.R = layoutParams.B;
            layout.T = layoutParams.C;
            layout.p0 = layoutParams.Z;
            layout.K = layoutParams.getMarginEnd();
            layout.L = layoutParams.getMarginStart();
        }

        public final void e(int i2, Constraints.LayoutParams layoutParams) {
            d(i2, layoutParams);
            this.f11770c.d = layoutParams.r0;
            float f2 = layoutParams.u0;
            Transform transform = this.f11772f;
            transform.f11806b = f2;
            transform.f11807c = layoutParams.v0;
            transform.d = layoutParams.w0;
            transform.f11808e = layoutParams.x0;
            transform.f11809f = layoutParams.y0;
            transform.g = layoutParams.z0;
            transform.f11810h = layoutParams.A0;
            transform.f11812j = layoutParams.B0;
            transform.f11813k = layoutParams.C0;
            transform.l = layoutParams.D0;
            transform.n = layoutParams.t0;
            transform.m = layoutParams.s0;
        }
    }

    public static class Layout {
        public static final SparseIntArray q0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11785c;
        public int d;
        public int[] j0;
        public String k0;
        public String l0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f11783a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f11784b = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11786e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f11787f = -1;
        public float g = -1.0f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f11788h = true;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f11789i = -1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f11790j = -1;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f11791k = -1;
        public int l = -1;
        public int m = -1;
        public int n = -1;
        public int o = -1;
        public int p = -1;
        public int q = -1;
        public int r = -1;
        public int s = -1;
        public int t = -1;
        public int u = -1;
        public int v = -1;
        public int w = -1;
        public float x = 0.5f;
        public float y = 0.5f;
        public String z = null;
        public int A = -1;
        public int B = 0;
        public float C = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public int D = -1;
        public int E = -1;
        public int F = -1;
        public int G = 0;
        public int H = 0;
        public int I = 0;
        public int J = 0;
        public int K = 0;
        public int L = 0;
        public int M = 0;
        public int N = Integer.MIN_VALUE;
        public int O = Integer.MIN_VALUE;
        public int P = Integer.MIN_VALUE;
        public int Q = Integer.MIN_VALUE;
        public int R = Integer.MIN_VALUE;
        public int S = Integer.MIN_VALUE;
        public int T = Integer.MIN_VALUE;
        public float U = -1.0f;
        public float V = -1.0f;
        public int W = 0;
        public int X = 0;
        public int Y = 0;
        public int Z = 0;
        public int a0 = 0;
        public int b0 = 0;
        public int c0 = 0;
        public int d0 = 0;
        public float e0 = 1.0f;
        public float f0 = 1.0f;
        public int g0 = -1;
        public int h0 = 0;
        public int i0 = -1;
        public boolean m0 = false;
        public boolean n0 = false;
        public boolean o0 = true;
        public int p0 = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            q0 = sparseIntArray;
            sparseIntArray.append(43, 24);
            sparseIntArray.append(44, 25);
            sparseIntArray.append(46, 28);
            sparseIntArray.append(47, 29);
            sparseIntArray.append(52, 35);
            sparseIntArray.append(51, 34);
            sparseIntArray.append(24, 4);
            sparseIntArray.append(23, 3);
            sparseIntArray.append(19, 1);
            sparseIntArray.append(61, 6);
            sparseIntArray.append(62, 7);
            sparseIntArray.append(31, 17);
            sparseIntArray.append(32, 18);
            sparseIntArray.append(33, 19);
            sparseIntArray.append(15, 90);
            sparseIntArray.append(0, 26);
            sparseIntArray.append(48, 31);
            sparseIntArray.append(49, 32);
            sparseIntArray.append(30, 10);
            sparseIntArray.append(29, 9);
            sparseIntArray.append(66, 13);
            sparseIntArray.append(69, 16);
            sparseIntArray.append(67, 14);
            sparseIntArray.append(64, 11);
            sparseIntArray.append(68, 15);
            sparseIntArray.append(65, 12);
            sparseIntArray.append(55, 38);
            sparseIntArray.append(41, 37);
            sparseIntArray.append(40, 39);
            sparseIntArray.append(54, 40);
            sparseIntArray.append(39, 20);
            sparseIntArray.append(53, 36);
            sparseIntArray.append(28, 5);
            sparseIntArray.append(42, 91);
            sparseIntArray.append(50, 91);
            sparseIntArray.append(45, 91);
            sparseIntArray.append(22, 91);
            sparseIntArray.append(18, 91);
            sparseIntArray.append(3, 23);
            sparseIntArray.append(5, 27);
            sparseIntArray.append(7, 30);
            sparseIntArray.append(8, 8);
            sparseIntArray.append(4, 33);
            sparseIntArray.append(6, 2);
            sparseIntArray.append(1, 22);
            sparseIntArray.append(2, 21);
            sparseIntArray.append(56, 41);
            sparseIntArray.append(34, 42);
            sparseIntArray.append(17, 87);
            sparseIntArray.append(16, 88);
            sparseIntArray.append(71, 76);
            sparseIntArray.append(25, 61);
            sparseIntArray.append(27, 62);
            sparseIntArray.append(26, 63);
            sparseIntArray.append(60, 69);
            sparseIntArray.append(38, 70);
            sparseIntArray.append(12, 71);
            sparseIntArray.append(10, 72);
            sparseIntArray.append(11, 73);
            sparseIntArray.append(13, 74);
            sparseIntArray.append(9, 75);
            sparseIntArray.append(58, 84);
            sparseIntArray.append(59, 86);
            sparseIntArray.append(58, 83);
            sparseIntArray.append(37, 85);
            sparseIntArray.append(56, 87);
            sparseIntArray.append(34, 88);
            sparseIntArray.append(91, 89);
            sparseIntArray.append(15, 90);
        }

        public final void a(Layout layout) {
            this.f11783a = layout.f11783a;
            this.f11785c = layout.f11785c;
            this.f11784b = layout.f11784b;
            this.d = layout.d;
            this.f11786e = layout.f11786e;
            this.f11787f = layout.f11787f;
            this.g = layout.g;
            this.f11788h = layout.f11788h;
            this.f11789i = layout.f11789i;
            this.f11790j = layout.f11790j;
            this.f11791k = layout.f11791k;
            this.l = layout.l;
            this.m = layout.m;
            this.n = layout.n;
            this.o = layout.o;
            this.p = layout.p;
            this.q = layout.q;
            this.r = layout.r;
            this.s = layout.s;
            this.t = layout.t;
            this.u = layout.u;
            this.v = layout.v;
            this.w = layout.w;
            this.x = layout.x;
            this.y = layout.y;
            this.z = layout.z;
            this.A = layout.A;
            this.B = layout.B;
            this.C = layout.C;
            this.D = layout.D;
            this.E = layout.E;
            this.F = layout.F;
            this.G = layout.G;
            this.H = layout.H;
            this.I = layout.I;
            this.J = layout.J;
            this.K = layout.K;
            this.L = layout.L;
            this.M = layout.M;
            this.N = layout.N;
            this.O = layout.O;
            this.P = layout.P;
            this.Q = layout.Q;
            this.R = layout.R;
            this.S = layout.S;
            this.T = layout.T;
            this.U = layout.U;
            this.V = layout.V;
            this.W = layout.W;
            this.X = layout.X;
            this.Y = layout.Y;
            this.Z = layout.Z;
            this.a0 = layout.a0;
            this.b0 = layout.b0;
            this.c0 = layout.c0;
            this.d0 = layout.d0;
            this.e0 = layout.e0;
            this.f0 = layout.f0;
            this.g0 = layout.g0;
            this.h0 = layout.h0;
            this.i0 = layout.i0;
            this.l0 = layout.l0;
            int[] iArr = layout.j0;
            if (iArr == null || layout.k0 != null) {
                this.j0 = null;
            } else {
                this.j0 = Arrays.copyOf(iArr, iArr.length);
            }
            this.k0 = layout.k0;
            this.m0 = layout.m0;
            this.n0 = layout.n0;
            this.o0 = layout.o0;
            this.p0 = layout.p0;
        }

        public final void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.l);
            this.f11784b = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                SparseIntArray sparseIntArray = q0;
                int i3 = sparseIntArray.get(index);
                switch (i3) {
                    case 1:
                        this.q = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.q);
                        break;
                    case 2:
                        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                        break;
                    case 3:
                        this.p = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.p);
                        break;
                    case 4:
                        this.o = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.o);
                        break;
                    case 5:
                        this.z = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.D = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.D);
                        break;
                    case 7:
                        this.E = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.E);
                        break;
                    case 8:
                        this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        break;
                    case 9:
                        this.w = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.w);
                        break;
                    case 10:
                        this.v = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.v);
                        break;
                    case 11:
                        this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                        break;
                    case 12:
                        this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.R);
                        break;
                    case 13:
                        this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        break;
                    case 14:
                        this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        break;
                    case 15:
                        this.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.S);
                        break;
                    case 16:
                        this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        break;
                    case 17:
                        this.f11786e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f11786e);
                        break;
                    case 18:
                        this.f11787f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f11787f);
                        break;
                    case 19:
                        this.g = typedArrayObtainStyledAttributes.getFloat(index, this.g);
                        break;
                    case 20:
                        this.x = typedArrayObtainStyledAttributes.getFloat(index, this.x);
                        break;
                    case 21:
                        this.d = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.d);
                        break;
                    case 22:
                        this.f11785c = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f11785c);
                        break;
                    case 23:
                        this.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.G);
                        break;
                    case 24:
                        this.f11789i = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.f11789i);
                        break;
                    case 25:
                        this.f11790j = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.f11790j);
                        break;
                    case 26:
                        this.F = typedArrayObtainStyledAttributes.getInt(index, this.F);
                        break;
                    case 27:
                        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.H);
                        break;
                    case 28:
                        this.f11791k = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.f11791k);
                        break;
                    case 29:
                        this.l = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.l);
                        break;
                    case 30:
                        this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        break;
                    case 31:
                        this.t = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.t);
                        break;
                    case 32:
                        this.u = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.u);
                        break;
                    case 33:
                        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.I);
                        break;
                    case 34:
                        this.n = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.n);
                        break;
                    case 35:
                        this.m = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.m);
                        break;
                    case 36:
                        this.y = typedArrayObtainStyledAttributes.getFloat(index, this.y);
                        break;
                    case 37:
                        this.V = typedArrayObtainStyledAttributes.getFloat(index, this.V);
                        break;
                    case 38:
                        this.U = typedArrayObtainStyledAttributes.getFloat(index, this.U);
                        break;
                    case 39:
                        this.W = typedArrayObtainStyledAttributes.getInt(index, this.W);
                        break;
                    case 40:
                        this.X = typedArrayObtainStyledAttributes.getInt(index, this.X);
                        break;
                    case 41:
                        ConstraintSet.o(this, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case EACTags.CURRENCY_CODE /* 42 */:
                        ConstraintSet.o(this, typedArrayObtainStyledAttributes, index, 1);
                        break;
                    default:
                        switch (i3) {
                            case 61:
                                this.A = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.A);
                                break;
                            case 62:
                                this.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.B);
                                break;
                            case 63:
                                this.C = typedArrayObtainStyledAttributes.getFloat(index, this.C);
                                break;
                            default:
                                switch (i3) {
                                    case EACTags.DISPLAY_IMAGE /* 69 */:
                                        this.e0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 70:
                                        this.f0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case EACTags.MESSAGE_REFERENCE /* 71 */:
                                        break;
                                    case 72:
                                        this.g0 = typedArrayObtainStyledAttributes.getInt(index, this.g0);
                                        break;
                                    case 73:
                                        this.h0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.h0);
                                        break;
                                    case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                                        this.k0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case EACTags.DEPRECATED /* 75 */:
                                        this.o0 = typedArrayObtainStyledAttributes.getBoolean(index, this.o0);
                                        break;
                                    case 76:
                                        this.p0 = typedArrayObtainStyledAttributes.getInt(index, this.p0);
                                        break;
                                    case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                                        this.r = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.r);
                                        break;
                                    case 78:
                                        this.s = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.s);
                                        break;
                                    case 79:
                                        this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.T);
                                        break;
                                    case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                                        this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                                        break;
                                    case EACTags.ANSWER_TO_RESET /* 81 */:
                                        this.Y = typedArrayObtainStyledAttributes.getInt(index, this.Y);
                                        break;
                                    case EACTags.HISTORICAL_BYTES /* 82 */:
                                        this.Z = typedArrayObtainStyledAttributes.getInt(index, this.Z);
                                        break;
                                    case 83:
                                        this.b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.b0);
                                        break;
                                    case 84:
                                        this.a0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.a0);
                                        break;
                                    case 85:
                                        this.d0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.d0);
                                        break;
                                    case 86:
                                        this.c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.c0);
                                        break;
                                    case 87:
                                        this.m0 = typedArrayObtainStyledAttributes.getBoolean(index, this.m0);
                                        break;
                                    case 88:
                                        this.n0 = typedArrayObtainStyledAttributes.getBoolean(index, this.n0);
                                        break;
                                    case 89:
                                        this.l0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case Sink.ORIENTATION_90 /* 90 */:
                                        this.f11788h = typedArrayObtainStyledAttributes.getBoolean(index, this.f11788h);
                                        break;
                                    case 91:
                                        Integer.toHexString(index);
                                        sparseIntArray.get(index);
                                        break;
                                    default:
                                        Integer.toHexString(index);
                                        sparseIntArray.get(index);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class Motion {
        public static final SparseIntArray n;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f11792a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f11793b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11794c = 0;
        public String d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11795e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f11796f = 0;
        public float g = Float.NaN;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f11797h = Float.NaN;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f11798i = Float.NaN;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f11799j = -1;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f11800k = null;
        public int l = -3;
        public int m = -1;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            n = sparseIntArray;
            sparseIntArray.append(3, 1);
            sparseIntArray.append(5, 2);
            sparseIntArray.append(9, 3);
            sparseIntArray.append(2, 4);
            sparseIntArray.append(1, 5);
            sparseIntArray.append(0, 6);
            sparseIntArray.append(4, 7);
            sparseIntArray.append(8, 8);
            sparseIntArray.append(7, 9);
            sparseIntArray.append(6, 10);
        }

        public final void a(Motion motion) {
            this.f11792a = motion.f11792a;
            this.f11793b = motion.f11793b;
            this.d = motion.d;
            this.f11795e = motion.f11795e;
            this.f11796f = motion.f11796f;
            this.f11797h = motion.f11797h;
            this.g = motion.g;
        }

        public final void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.m);
            this.f11792a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                switch (n.get(index)) {
                    case 1:
                        this.f11797h = typedArrayObtainStyledAttributes.getFloat(index, this.f11797h);
                        break;
                    case 2:
                        this.f11795e = typedArrayObtainStyledAttributes.getInt(index, this.f11795e);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            this.d = typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            this.d = Easing.f11341c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        this.f11796f = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f11793b = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.f11793b);
                        break;
                    case 6:
                        this.f11794c = typedArrayObtainStyledAttributes.getInteger(index, this.f11794c);
                        break;
                    case 7:
                        this.g = typedArrayObtainStyledAttributes.getFloat(index, this.g);
                        break;
                    case 8:
                        this.f11799j = typedArrayObtainStyledAttributes.getInteger(index, this.f11799j);
                        break;
                    case 9:
                        this.f11798i = typedArrayObtainStyledAttributes.getFloat(index, this.f11798i);
                        break;
                    case 10:
                        int i3 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (i3 == 1) {
                            int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.m = resourceId;
                            if (resourceId != -1) {
                                this.l = -2;
                            }
                        } else if (i3 == 3) {
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            this.f11800k = string;
                            if (string.indexOf("/") > 0) {
                                this.m = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                this.l = -2;
                            } else {
                                this.l = -1;
                            }
                        } else {
                            this.l = typedArrayObtainStyledAttributes.getInteger(index, this.m);
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class PropertySet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f11801a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f11802b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11803c = 0;
        public float d = 1.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f11804e = Float.NaN;

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.s);
            this.f11801a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == 1) {
                    this.d = typedArrayObtainStyledAttributes.getFloat(index, this.d);
                } else if (index == 0) {
                    int i3 = typedArrayObtainStyledAttributes.getInt(index, this.f11802b);
                    this.f11802b = i3;
                    this.f11802b = ConstraintSet.f11760h[i3];
                } else if (index == 4) {
                    this.f11803c = typedArrayObtainStyledAttributes.getInt(index, this.f11803c);
                } else if (index == 3) {
                    this.f11804e = typedArrayObtainStyledAttributes.getFloat(index, this.f11804e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class Transform {
        public static final SparseIntArray o;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f11805a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f11806b = Call.Parameters.DEFAULT_CAMERA_ZOOM;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f11807c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float d = Call.Parameters.DEFAULT_CAMERA_ZOOM;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f11808e = 1.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f11809f = 1.0f;
        public float g = Float.NaN;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f11810h = Float.NaN;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f11811i = -1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f11812j = Call.Parameters.DEFAULT_CAMERA_ZOOM;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f11813k = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public float l = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public boolean m = false;
        public float n = Call.Parameters.DEFAULT_CAMERA_ZOOM;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            o = sparseIntArray;
            sparseIntArray.append(6, 1);
            sparseIntArray.append(7, 2);
            sparseIntArray.append(8, 3);
            sparseIntArray.append(4, 4);
            sparseIntArray.append(5, 5);
            sparseIntArray.append(0, 6);
            sparseIntArray.append(1, 7);
            sparseIntArray.append(2, 8);
            sparseIntArray.append(3, 9);
            sparseIntArray.append(9, 10);
            sparseIntArray.append(10, 11);
            sparseIntArray.append(11, 12);
        }

        public final void a(Transform transform) {
            this.f11805a = transform.f11805a;
            this.f11806b = transform.f11806b;
            this.f11807c = transform.f11807c;
            this.d = transform.d;
            this.f11808e = transform.f11808e;
            this.f11809f = transform.f11809f;
            this.g = transform.g;
            this.f11810h = transform.f11810h;
            this.f11811i = transform.f11811i;
            this.f11812j = transform.f11812j;
            this.f11813k = transform.f11813k;
            this.l = transform.l;
            this.m = transform.m;
            this.n = transform.n;
        }

        public final void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.v);
            this.f11805a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                switch (o.get(index)) {
                    case 1:
                        this.f11806b = typedArrayObtainStyledAttributes.getFloat(index, this.f11806b);
                        break;
                    case 2:
                        this.f11807c = typedArrayObtainStyledAttributes.getFloat(index, this.f11807c);
                        break;
                    case 3:
                        this.d = typedArrayObtainStyledAttributes.getFloat(index, this.d);
                        break;
                    case 4:
                        this.f11808e = typedArrayObtainStyledAttributes.getFloat(index, this.f11808e);
                        break;
                    case 5:
                        this.f11809f = typedArrayObtainStyledAttributes.getFloat(index, this.f11809f);
                        break;
                    case 6:
                        this.g = typedArrayObtainStyledAttributes.getDimension(index, this.g);
                        break;
                    case 7:
                        this.f11810h = typedArrayObtainStyledAttributes.getDimension(index, this.f11810h);
                        break;
                    case 8:
                        this.f11812j = typedArrayObtainStyledAttributes.getDimension(index, this.f11812j);
                        break;
                    case 9:
                        this.f11813k = typedArrayObtainStyledAttributes.getDimension(index, this.f11813k);
                        break;
                    case 10:
                        this.l = typedArrayObtainStyledAttributes.getDimension(index, this.l);
                        break;
                    case 11:
                        this.m = true;
                        this.n = typedArrayObtainStyledAttributes.getDimension(index, this.n);
                        break;
                    case 12:
                        this.f11811i = ConstraintSet.n(typedArrayObtainStyledAttributes, index, this.f11811i);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f11761i = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f11762j = sparseIntArray2;
        sparseIntArray.append(82, 25);
        sparseIntArray.append(83, 26);
        sparseIntArray.append(85, 29);
        sparseIntArray.append(86, 30);
        sparseIntArray.append(92, 36);
        sparseIntArray.append(91, 35);
        sparseIntArray.append(63, 4);
        sparseIntArray.append(62, 3);
        sparseIntArray.append(58, 1);
        sparseIntArray.append(60, 91);
        sparseIntArray.append(59, 92);
        sparseIntArray.append(101, 6);
        sparseIntArray.append(102, 7);
        sparseIntArray.append(70, 17);
        sparseIntArray.append(71, 18);
        sparseIntArray.append(72, 19);
        sparseIntArray.append(54, 99);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(87, 32);
        sparseIntArray.append(88, 33);
        sparseIntArray.append(69, 10);
        sparseIntArray.append(68, 9);
        sparseIntArray.append(106, 13);
        sparseIntArray.append(109, 16);
        sparseIntArray.append(107, 14);
        sparseIntArray.append(104, 11);
        sparseIntArray.append(108, 15);
        sparseIntArray.append(105, 12);
        sparseIntArray.append(95, 40);
        sparseIntArray.append(80, 39);
        sparseIntArray.append(79, 41);
        sparseIntArray.append(94, 42);
        sparseIntArray.append(78, 20);
        sparseIntArray.append(93, 37);
        sparseIntArray.append(67, 5);
        sparseIntArray.append(81, 87);
        sparseIntArray.append(90, 87);
        sparseIntArray.append(84, 87);
        sparseIntArray.append(61, 87);
        sparseIntArray.append(57, 87);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(96, 95);
        sparseIntArray.append(73, 96);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(97, 54);
        sparseIntArray.append(74, 55);
        sparseIntArray.append(98, 56);
        sparseIntArray.append(75, 57);
        sparseIntArray.append(99, 58);
        sparseIntArray.append(76, 59);
        sparseIntArray.append(64, 61);
        sparseIntArray.append(66, 62);
        sparseIntArray.append(65, 63);
        sparseIntArray.append(28, 64);
        sparseIntArray.append(121, 65);
        sparseIntArray.append(35, 66);
        sparseIntArray.append(122, 67);
        sparseIntArray.append(113, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(112, 68);
        sparseIntArray.append(100, 69);
        sparseIntArray.append(77, 70);
        sparseIntArray.append(111, 97);
        sparseIntArray.append(32, 71);
        sparseIntArray.append(30, 72);
        sparseIntArray.append(31, 73);
        sparseIntArray.append(33, 74);
        sparseIntArray.append(29, 75);
        sparseIntArray.append(114, 76);
        sparseIntArray.append(89, 77);
        sparseIntArray.append(123, 78);
        sparseIntArray.append(56, 80);
        sparseIntArray.append(55, 81);
        sparseIntArray.append(116, 82);
        sparseIntArray.append(120, 83);
        sparseIntArray.append(119, 84);
        sparseIntArray.append(118, 85);
        sparseIntArray.append(117, 86);
        sparseIntArray2.append(85, 6);
        sparseIntArray2.append(85, 7);
        sparseIntArray2.append(0, 27);
        sparseIntArray2.append(89, 13);
        sparseIntArray2.append(92, 16);
        sparseIntArray2.append(90, 14);
        sparseIntArray2.append(87, 11);
        sparseIntArray2.append(91, 15);
        sparseIntArray2.append(88, 12);
        sparseIntArray2.append(78, 40);
        sparseIntArray2.append(71, 39);
        sparseIntArray2.append(70, 41);
        sparseIntArray2.append(77, 42);
        sparseIntArray2.append(69, 20);
        sparseIntArray2.append(76, 37);
        sparseIntArray2.append(60, 5);
        sparseIntArray2.append(72, 87);
        sparseIntArray2.append(75, 87);
        sparseIntArray2.append(73, 87);
        sparseIntArray2.append(57, 87);
        sparseIntArray2.append(56, 87);
        sparseIntArray2.append(5, 24);
        sparseIntArray2.append(7, 28);
        sparseIntArray2.append(23, 31);
        sparseIntArray2.append(24, 8);
        sparseIntArray2.append(6, 34);
        sparseIntArray2.append(8, 2);
        sparseIntArray2.append(3, 23);
        sparseIntArray2.append(4, 21);
        sparseIntArray2.append(79, 95);
        sparseIntArray2.append(64, 96);
        sparseIntArray2.append(2, 22);
        sparseIntArray2.append(13, 43);
        sparseIntArray2.append(26, 44);
        sparseIntArray2.append(21, 45);
        sparseIntArray2.append(22, 46);
        sparseIntArray2.append(20, 60);
        sparseIntArray2.append(18, 47);
        sparseIntArray2.append(19, 48);
        sparseIntArray2.append(14, 49);
        sparseIntArray2.append(15, 50);
        sparseIntArray2.append(16, 51);
        sparseIntArray2.append(17, 52);
        sparseIntArray2.append(25, 53);
        sparseIntArray2.append(80, 54);
        sparseIntArray2.append(65, 55);
        sparseIntArray2.append(81, 56);
        sparseIntArray2.append(66, 57);
        sparseIntArray2.append(82, 58);
        sparseIntArray2.append(67, 59);
        sparseIntArray2.append(59, 62);
        sparseIntArray2.append(58, 63);
        sparseIntArray2.append(28, 64);
        sparseIntArray2.append(105, 65);
        sparseIntArray2.append(34, 66);
        sparseIntArray2.append(106, 67);
        sparseIntArray2.append(96, 79);
        sparseIntArray2.append(1, 38);
        sparseIntArray2.append(97, 98);
        sparseIntArray2.append(95, 68);
        sparseIntArray2.append(83, 69);
        sparseIntArray2.append(68, 70);
        sparseIntArray2.append(32, 71);
        sparseIntArray2.append(30, 72);
        sparseIntArray2.append(31, 73);
        sparseIntArray2.append(33, 74);
        sparseIntArray2.append(29, 75);
        sparseIntArray2.append(98, 76);
        sparseIntArray2.append(74, 77);
        sparseIntArray2.append(107, 78);
        sparseIntArray2.append(55, 80);
        sparseIntArray2.append(54, 81);
        sparseIntArray2.append(100, 82);
        sparseIntArray2.append(104, 83);
        sparseIntArray2.append(103, 84);
        sparseIntArray2.append(102, 85);
        sparseIntArray2.append(101, 86);
        sparseIntArray2.append(94, 97);
    }

    public static Constraint e(Context context, XmlResourceParser xmlResourceParser) {
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        Constraint constraint = new Constraint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSetAsAttributeSet, R$styleable.d);
        q(constraint, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return constraint;
    }

    public static int[] h(Barrier barrier, String str) {
        int iIntValue;
        String[] strArrSplit = str.split(",");
        Context context = barrier.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < strArrSplit.length) {
            String strTrim = strArrSplit[i2].trim();
            Object obj = null;
            try {
                iIntValue = R$id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, b.a.f24015b, context.getPackageName());
            }
            if (iIntValue == 0 && barrier.isInEditMode() && (barrier.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) barrier.getParent();
                if (strTrim != null) {
                    HashMap map = constraintLayout.n;
                    if (map != null && map.containsKey(strTrim)) {
                        obj = constraintLayout.n.get(strTrim);
                    }
                } else {
                    constraintLayout.getClass();
                }
                if (obj != null && (obj instanceof Integer)) {
                    iIntValue = ((Integer) obj).intValue();
                }
            }
            iArr[i3] = iIntValue;
            i2++;
            i3++;
        }
        return i3 != strArrSplit.length ? Arrays.copyOf(iArr, i3) : iArr;
    }

    public static Constraint i(Context context, AttributeSet attributeSet, boolean z) {
        Constraint constraint = new Constraint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z ? R$styleable.d : R$styleable.f11818a);
        if (z) {
            q(constraint, typedArrayObtainStyledAttributes);
        } else {
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            int i2 = 0;
            while (true) {
                Layout layout = constraint.f11771e;
                if (i2 < indexCount) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i2);
                    PropertySet propertySet = constraint.f11770c;
                    Transform transform = constraint.f11772f;
                    Motion motion = constraint.d;
                    if (index != 1 && 23 != index && 24 != index) {
                        motion.f11792a = true;
                        layout.f11784b = true;
                        propertySet.f11801a = true;
                        transform.f11805a = true;
                    }
                    SparseIntArray sparseIntArray = f11761i;
                    switch (sparseIntArray.get(index)) {
                        case 1:
                            layout.q = n(typedArrayObtainStyledAttributes, index, layout.q);
                            break;
                        case 2:
                            layout.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.J);
                            break;
                        case 3:
                            layout.p = n(typedArrayObtainStyledAttributes, index, layout.p);
                            break;
                        case 4:
                            layout.o = n(typedArrayObtainStyledAttributes, index, layout.o);
                            break;
                        case 5:
                            layout.z = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case 6:
                            layout.D = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, layout.D);
                            break;
                        case 7:
                            layout.E = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, layout.E);
                            break;
                        case 8:
                            layout.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.K);
                            break;
                        case 9:
                            layout.w = n(typedArrayObtainStyledAttributes, index, layout.w);
                            break;
                        case 10:
                            layout.v = n(typedArrayObtainStyledAttributes, index, layout.v);
                            break;
                        case 11:
                            layout.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.Q);
                            break;
                        case 12:
                            layout.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.R);
                            break;
                        case 13:
                            layout.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.N);
                            break;
                        case 14:
                            layout.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.P);
                            break;
                        case 15:
                            layout.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.S);
                            break;
                        case 16:
                            layout.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.O);
                            break;
                        case 17:
                            layout.f11786e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, layout.f11786e);
                            break;
                        case 18:
                            layout.f11787f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, layout.f11787f);
                            break;
                        case 19:
                            layout.g = typedArrayObtainStyledAttributes.getFloat(index, layout.g);
                            break;
                        case 20:
                            layout.x = typedArrayObtainStyledAttributes.getFloat(index, layout.x);
                            break;
                        case 21:
                            layout.d = typedArrayObtainStyledAttributes.getLayoutDimension(index, layout.d);
                            break;
                        case 22:
                            int i3 = typedArrayObtainStyledAttributes.getInt(index, propertySet.f11802b);
                            propertySet.f11802b = i3;
                            propertySet.f11802b = f11760h[i3];
                            break;
                        case 23:
                            layout.f11785c = typedArrayObtainStyledAttributes.getLayoutDimension(index, layout.f11785c);
                            break;
                        case 24:
                            layout.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.G);
                            break;
                        case 25:
                            layout.f11789i = n(typedArrayObtainStyledAttributes, index, layout.f11789i);
                            break;
                        case 26:
                            layout.f11790j = n(typedArrayObtainStyledAttributes, index, layout.f11790j);
                            break;
                        case 27:
                            layout.F = typedArrayObtainStyledAttributes.getInt(index, layout.F);
                            break;
                        case 28:
                            layout.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.H);
                            break;
                        case 29:
                            layout.f11791k = n(typedArrayObtainStyledAttributes, index, layout.f11791k);
                            break;
                        case 30:
                            layout.l = n(typedArrayObtainStyledAttributes, index, layout.l);
                            break;
                        case 31:
                            layout.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.L);
                            break;
                        case 32:
                            layout.t = n(typedArrayObtainStyledAttributes, index, layout.t);
                            break;
                        case 33:
                            layout.u = n(typedArrayObtainStyledAttributes, index, layout.u);
                            break;
                        case 34:
                            layout.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.I);
                            break;
                        case 35:
                            layout.n = n(typedArrayObtainStyledAttributes, index, layout.n);
                            break;
                        case 36:
                            layout.m = n(typedArrayObtainStyledAttributes, index, layout.m);
                            break;
                        case 37:
                            layout.y = typedArrayObtainStyledAttributes.getFloat(index, layout.y);
                            break;
                        case 38:
                            constraint.f11768a = typedArrayObtainStyledAttributes.getResourceId(index, constraint.f11768a);
                            break;
                        case 39:
                            layout.V = typedArrayObtainStyledAttributes.getFloat(index, layout.V);
                            break;
                        case 40:
                            layout.U = typedArrayObtainStyledAttributes.getFloat(index, layout.U);
                            break;
                        case 41:
                            layout.W = typedArrayObtainStyledAttributes.getInt(index, layout.W);
                            break;
                        case EACTags.CURRENCY_CODE /* 42 */:
                            layout.X = typedArrayObtainStyledAttributes.getInt(index, layout.X);
                            break;
                        case EACTags.DATE_OF_BIRTH /* 43 */:
                            propertySet.d = typedArrayObtainStyledAttributes.getFloat(index, propertySet.d);
                            break;
                        case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                            transform.m = true;
                            transform.n = typedArrayObtainStyledAttributes.getDimension(index, transform.n);
                            break;
                        case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                            transform.f11807c = typedArrayObtainStyledAttributes.getFloat(index, transform.f11807c);
                            break;
                        case 46:
                            transform.d = typedArrayObtainStyledAttributes.getFloat(index, transform.d);
                            break;
                        case EACTags.PIN_USAGE_POLICY /* 47 */:
                            transform.f11808e = typedArrayObtainStyledAttributes.getFloat(index, transform.f11808e);
                            break;
                        case 48:
                            transform.f11809f = typedArrayObtainStyledAttributes.getFloat(index, transform.f11809f);
                            break;
                        case 49:
                            transform.g = typedArrayObtainStyledAttributes.getDimension(index, transform.g);
                            break;
                        case 50:
                            transform.f11810h = typedArrayObtainStyledAttributes.getDimension(index, transform.f11810h);
                            break;
                        case EACTags.TRANSACTION_DATE /* 51 */:
                            transform.f11812j = typedArrayObtainStyledAttributes.getDimension(index, transform.f11812j);
                            break;
                        case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                            transform.f11813k = typedArrayObtainStyledAttributes.getDimension(index, transform.f11813k);
                            break;
                        case EACTags.SEX /* 53 */:
                            transform.l = typedArrayObtainStyledAttributes.getDimension(index, transform.l);
                            break;
                        case EACTags.CURRENCY_EXPONENT /* 54 */:
                            layout.Y = typedArrayObtainStyledAttributes.getInt(index, layout.Y);
                            break;
                        case 55:
                            layout.Z = typedArrayObtainStyledAttributes.getInt(index, layout.Z);
                            break;
                        case 56:
                            layout.a0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.a0);
                            break;
                        case 57:
                            layout.b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.b0);
                            break;
                        case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                            layout.c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.c0);
                            break;
                        case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                            layout.d0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.d0);
                            break;
                        case 60:
                            transform.f11806b = typedArrayObtainStyledAttributes.getFloat(index, transform.f11806b);
                            break;
                        case 61:
                            layout.A = n(typedArrayObtainStyledAttributes, index, layout.A);
                            break;
                        case 62:
                            layout.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.B);
                            break;
                        case 63:
                            layout.C = typedArrayObtainStyledAttributes.getFloat(index, layout.C);
                            break;
                        case 64:
                            motion.f11793b = n(typedArrayObtainStyledAttributes, index, motion.f11793b);
                            break;
                        case EACTags.ELEMENT_LIST /* 65 */:
                            if (typedArrayObtainStyledAttributes.peekValue(index).type != 3) {
                                motion.d = Easing.f11341c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                            } else {
                                motion.d = typedArrayObtainStyledAttributes.getString(index);
                            }
                            break;
                        case EACTags.ADDRESS /* 66 */:
                            motion.f11796f = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                            motion.f11797h = typedArrayObtainStyledAttributes.getFloat(index, motion.f11797h);
                            break;
                        case EACTags.APPLICATION_IMAGE /* 68 */:
                            propertySet.f11804e = typedArrayObtainStyledAttributes.getFloat(index, propertySet.f11804e);
                            break;
                        case EACTags.DISPLAY_IMAGE /* 69 */:
                            layout.e0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                            break;
                        case 70:
                            layout.f0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                            break;
                        case EACTags.MESSAGE_REFERENCE /* 71 */:
                            break;
                        case 72:
                            layout.g0 = typedArrayObtainStyledAttributes.getInt(index, layout.g0);
                            break;
                        case 73:
                            layout.h0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.h0);
                            break;
                        case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                            layout.k0 = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case EACTags.DEPRECATED /* 75 */:
                            layout.o0 = typedArrayObtainStyledAttributes.getBoolean(index, layout.o0);
                            break;
                        case 76:
                            motion.f11795e = typedArrayObtainStyledAttributes.getInt(index, motion.f11795e);
                            break;
                        case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                            layout.l0 = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case 78:
                            propertySet.f11803c = typedArrayObtainStyledAttributes.getInt(index, propertySet.f11803c);
                            break;
                        case 79:
                            motion.g = typedArrayObtainStyledAttributes.getFloat(index, motion.g);
                            break;
                        case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                            layout.m0 = typedArrayObtainStyledAttributes.getBoolean(index, layout.m0);
                            break;
                        case EACTags.ANSWER_TO_RESET /* 81 */:
                            layout.n0 = typedArrayObtainStyledAttributes.getBoolean(index, layout.n0);
                            break;
                        case EACTags.HISTORICAL_BYTES /* 82 */:
                            motion.f11794c = typedArrayObtainStyledAttributes.getInteger(index, motion.f11794c);
                            break;
                        case 83:
                            transform.f11811i = n(typedArrayObtainStyledAttributes, index, transform.f11811i);
                            break;
                        case 84:
                            motion.f11799j = typedArrayObtainStyledAttributes.getInteger(index, motion.f11799j);
                            break;
                        case 85:
                            motion.f11798i = typedArrayObtainStyledAttributes.getFloat(index, motion.f11798i);
                            break;
                        case 86:
                            int i4 = typedArrayObtainStyledAttributes.peekValue(index).type;
                            if (i4 == 1) {
                                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                motion.m = resourceId;
                                if (resourceId != -1) {
                                    motion.l = -2;
                                }
                            } else if (i4 != 3) {
                                motion.l = typedArrayObtainStyledAttributes.getInteger(index, motion.m);
                            } else {
                                String string = typedArrayObtainStyledAttributes.getString(index);
                                motion.f11800k = string;
                                if (string.indexOf("/") <= 0) {
                                    motion.l = -1;
                                } else {
                                    motion.m = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                    motion.l = -2;
                                }
                            }
                            break;
                        case 87:
                            Integer.toHexString(index);
                            sparseIntArray.get(index);
                            break;
                        case 88:
                        case 89:
                        case Sink.ORIENTATION_90 /* 90 */:
                        default:
                            Integer.toHexString(index);
                            sparseIntArray.get(index);
                            break;
                        case 91:
                            layout.r = n(typedArrayObtainStyledAttributes, index, layout.r);
                            break;
                        case 92:
                            layout.s = n(typedArrayObtainStyledAttributes, index, layout.s);
                            break;
                        case 93:
                            layout.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.M);
                            break;
                        case 94:
                            layout.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, layout.T);
                            break;
                        case 95:
                            o(layout, typedArrayObtainStyledAttributes, index, 0);
                            break;
                        case 96:
                            o(layout, typedArrayObtainStyledAttributes, index, 1);
                            break;
                        case 97:
                            layout.p0 = typedArrayObtainStyledAttributes.getInt(index, layout.p0);
                            break;
                    }
                    i2++;
                } else if (layout.k0 != null) {
                    layout.j0 = null;
                }
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return constraint;
    }

    public static int n(TypedArray typedArray, int i2, int i3) {
        int resourceId = typedArray.getResourceId(i2, i3);
        return resourceId == -1 ? typedArray.getInt(i2, -1) : resourceId;
    }

    /* JADX WARN: Code duplicated, block: B:123:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    /* JADX WARN: Code duplicated, block: B:22:0x003a  */
    /* JADX WARN: Code duplicated, block: B:24:0x003f  */
    /* JADX WARN: Code duplicated, block: B:26:0x0044  */
    /* JADX WARN: Code duplicated, block: B:28:0x0048  */
    /* JADX WARN: Code duplicated, block: B:30:0x004c  */
    /* JADX WARN: Code duplicated, block: B:32:0x0051  */
    /* JADX WARN: Code duplicated, block: B:34:0x0056  */
    /* JADX WARN: Code duplicated, block: B:36:0x005a  */
    /* JADX WARN: Code duplicated, block: B:38:0x005e  */
    /* JADX WARN: Code duplicated, block: B:40:0x0067  */
    public static void o(Object obj, TypedArray typedArray, int i2, int i3) {
        int dimensionPixelSize;
        Constraint.Delta delta;
        Layout layout;
        ConstraintLayout.LayoutParams layoutParams;
        if (obj == null) {
            return;
        }
        int i4 = typedArray.peekValue(i2).type;
        boolean z = true;
        int i5 = 0;
        if (i4 != 3) {
            if (i4 != 5) {
                dimensionPixelSize = typedArray.getInt(i2, 0);
                if (dimensionPixelSize == -4) {
                    i5 = -2;
                } else if (dimensionPixelSize == -3 || (dimensionPixelSize != -2 && dimensionPixelSize != -1)) {
                    z = false;
                }
                if (obj instanceof ConstraintLayout.LayoutParams) {
                    layoutParams = (ConstraintLayout.LayoutParams) obj;
                    if (i3 == 0) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).width = i5;
                        layoutParams.W = z;
                        return;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = i5;
                        layoutParams.X = z;
                        return;
                    }
                }
                if (obj instanceof Layout) {
                    layout = (Layout) obj;
                    if (i3 == 0) {
                        layout.f11785c = i5;
                        layout.m0 = z;
                        return;
                    } else {
                        layout.d = i5;
                        layout.n0 = z;
                        return;
                    }
                }
                if (obj instanceof Constraint.Delta) {
                    delta = (Constraint.Delta) obj;
                    if (i3 == 0) {
                        delta.b(23, i5);
                        delta.d(80, z);
                        return;
                    } else {
                        delta.b(21, i5);
                        delta.d(81, z);
                        return;
                    }
                }
                return;
            }
            dimensionPixelSize = typedArray.getDimensionPixelSize(i2, 0);
            z = false;
            i5 = dimensionPixelSize;
            if (obj instanceof ConstraintLayout.LayoutParams) {
                layoutParams = (ConstraintLayout.LayoutParams) obj;
                if (i3 == 0) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = i5;
                    layoutParams.W = z;
                    return;
                } else {
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = i5;
                    layoutParams.X = z;
                    return;
                }
            }
            if (obj instanceof Layout) {
                layout = (Layout) obj;
                if (i3 == 0) {
                    layout.f11785c = i5;
                    layout.m0 = z;
                    return;
                } else {
                    layout.d = i5;
                    layout.n0 = z;
                    return;
                }
            }
            if (obj instanceof Constraint.Delta) {
                delta = (Constraint.Delta) obj;
                if (i3 == 0) {
                    delta.b(23, i5);
                    delta.d(80, z);
                    return;
                } else {
                    delta.b(21, i5);
                    delta.d(81, z);
                    return;
                }
            }
            return;
        }
        String string = typedArray.getString(i2);
        if (string == null) {
            return;
        }
        int iIndexOf = string.indexOf(61);
        int length = string.length();
        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
            return;
        }
        String strSubstring = string.substring(0, iIndexOf);
        String strSubstring2 = string.substring(iIndexOf + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if ("ratio".equalsIgnoreCase(strTrim)) {
                if (obj instanceof ConstraintLayout.LayoutParams) {
                    ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) obj;
                    if (i3 == 0) {
                        ((ViewGroup.MarginLayoutParams) layoutParams2).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams2).height = 0;
                    }
                    p(layoutParams2, strTrim2);
                    return;
                }
                if (obj instanceof Layout) {
                    ((Layout) obj).z = strTrim2;
                    return;
                } else {
                    if (obj instanceof Constraint.Delta) {
                        ((Constraint.Delta) obj).c(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if ("weight".equalsIgnoreCase(strTrim)) {
                    float f2 = Float.parseFloat(strTrim2);
                    if (obj instanceof ConstraintLayout.LayoutParams) {
                        ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) obj;
                        if (i3 == 0) {
                            ((ViewGroup.MarginLayoutParams) layoutParams3).width = 0;
                            layoutParams3.H = f2;
                            return;
                        } else {
                            ((ViewGroup.MarginLayoutParams) layoutParams3).height = 0;
                            layoutParams3.I = f2;
                            return;
                        }
                    }
                    if (obj instanceof Layout) {
                        Layout layout2 = (Layout) obj;
                        if (i3 == 0) {
                            layout2.f11785c = 0;
                            layout2.V = f2;
                            return;
                        } else {
                            layout2.d = 0;
                            layout2.U = f2;
                            return;
                        }
                    }
                    if (obj instanceof Constraint.Delta) {
                        Constraint.Delta delta2 = (Constraint.Delta) obj;
                        if (i3 == 0) {
                            delta2.b(23, 0);
                            delta2.a(f2, 39);
                            return;
                        } else {
                            delta2.b(21, 0);
                            delta2.a(f2, 40);
                            return;
                        }
                    }
                    return;
                }
                if ("parent".equalsIgnoreCase(strTrim)) {
                    float fMax = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof ConstraintLayout.LayoutParams) {
                        ConstraintLayout.LayoutParams layoutParams4 = (ConstraintLayout.LayoutParams) obj;
                        if (i3 == 0) {
                            ((ViewGroup.MarginLayoutParams) layoutParams4).width = 0;
                            layoutParams4.R = fMax;
                            layoutParams4.L = 2;
                            return;
                        } else {
                            ((ViewGroup.MarginLayoutParams) layoutParams4).height = 0;
                            layoutParams4.S = fMax;
                            layoutParams4.M = 2;
                            return;
                        }
                    }
                    if (obj instanceof Layout) {
                        Layout layout3 = (Layout) obj;
                        if (i3 == 0) {
                            layout3.f11785c = 0;
                            layout3.e0 = fMax;
                            layout3.Y = 2;
                            return;
                        } else {
                            layout3.d = 0;
                            layout3.f0 = fMax;
                            layout3.Z = 2;
                            return;
                        }
                    }
                    if (obj instanceof Constraint.Delta) {
                        Constraint.Delta delta3 = (Constraint.Delta) obj;
                        if (i3 == 0) {
                            delta3.b(23, 0);
                            delta3.b(54, 2);
                        } else {
                            delta3.b(21, 0);
                            delta3.b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    public static void p(ConstraintLayout.LayoutParams layoutParams, String str) {
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            int i2 = 0;
            int i3 = -1;
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                if (!strSubstring.equalsIgnoreCase("W")) {
                    i2 = strSubstring.equalsIgnoreCase("H") ? 1 : -1;
                }
                i3 = i2;
                i2 = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(58);
            try {
                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                    String strSubstring2 = str.substring(i2);
                    if (strSubstring2.length() > 0) {
                        Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(i2, iIndexOf2);
                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f2 = Float.parseFloat(strSubstring3);
                        float f3 = Float.parseFloat(strSubstring4);
                        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM && f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            if (i3 == 1) {
                                Math.abs(f3 / f2);
                            } else {
                                Math.abs(f2 / f3);
                            }
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        layoutParams.G = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void q(Constraint constraint, TypedArray typedArray) {
        char c2;
        int indexCount = typedArray.getIndexCount();
        Constraint.Delta delta = new Constraint.Delta();
        delta.f11774a = new int[10];
        delta.f11775b = new int[10];
        int i2 = 0;
        delta.f11776c = 0;
        delta.d = new int[10];
        delta.f11777e = new float[10];
        delta.f11778f = 0;
        delta.g = new int[5];
        delta.f11779h = new String[5];
        delta.f11780i = 0;
        delta.f11781j = new int[4];
        delta.f11782k = new boolean[4];
        delta.l = 0;
        constraint.f11773h = delta;
        Motion motion = constraint.d;
        motion.f11792a = false;
        Layout layout = constraint.f11771e;
        layout.f11784b = false;
        PropertySet propertySet = constraint.f11770c;
        propertySet.f11801a = false;
        Transform transform = constraint.f11772f;
        transform.f11805a = false;
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArray.getIndex(i3);
            int i4 = f11762j.get(index);
            SparseIntArray sparseIntArray = f11761i;
            switch (i4) {
                case 2:
                    c2 = 5;
                    delta.b(2, typedArray.getDimensionPixelSize(index, layout.J));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case 25:
                case 26:
                case 29:
                case 30:
                case 32:
                case 33:
                case 35:
                case 36:
                case 61:
                case 88:
                case 89:
                case Sink.ORIENTATION_90 /* 90 */:
                case 91:
                case 92:
                default:
                    Integer.toHexString(index);
                    sparseIntArray.get(index);
                    c2 = 5;
                    break;
                case 5:
                    c2 = 5;
                    delta.c(5, typedArray.getString(index));
                    break;
                case 6:
                    delta.b(6, typedArray.getDimensionPixelOffset(index, layout.D));
                    c2 = 5;
                    break;
                case 7:
                    delta.b(7, typedArray.getDimensionPixelOffset(index, layout.E));
                    c2 = 5;
                    break;
                case 8:
                    delta.b(8, typedArray.getDimensionPixelSize(index, layout.K));
                    c2 = 5;
                    break;
                case 11:
                    delta.b(11, typedArray.getDimensionPixelSize(index, layout.Q));
                    c2 = 5;
                    break;
                case 12:
                    delta.b(12, typedArray.getDimensionPixelSize(index, layout.R));
                    c2 = 5;
                    break;
                case 13:
                    delta.b(13, typedArray.getDimensionPixelSize(index, layout.N));
                    c2 = 5;
                    break;
                case 14:
                    delta.b(14, typedArray.getDimensionPixelSize(index, layout.P));
                    c2 = 5;
                    break;
                case 15:
                    delta.b(15, typedArray.getDimensionPixelSize(index, layout.S));
                    c2 = 5;
                    break;
                case 16:
                    delta.b(16, typedArray.getDimensionPixelSize(index, layout.O));
                    c2 = 5;
                    break;
                case 17:
                    delta.b(17, typedArray.getDimensionPixelOffset(index, layout.f11786e));
                    c2 = 5;
                    break;
                case 18:
                    delta.b(18, typedArray.getDimensionPixelOffset(index, layout.f11787f));
                    c2 = 5;
                    break;
                case 19:
                    delta.a(typedArray.getFloat(index, layout.g), 19);
                    c2 = 5;
                    break;
                case 20:
                    delta.a(typedArray.getFloat(index, layout.x), 20);
                    c2 = 5;
                    break;
                case 21:
                    delta.b(21, typedArray.getLayoutDimension(index, layout.d));
                    c2 = 5;
                    break;
                case 22:
                    delta.b(22, f11760h[typedArray.getInt(index, propertySet.f11802b)]);
                    c2 = 5;
                    break;
                case 23:
                    delta.b(23, typedArray.getLayoutDimension(index, layout.f11785c));
                    c2 = 5;
                    break;
                case 24:
                    delta.b(24, typedArray.getDimensionPixelSize(index, layout.G));
                    c2 = 5;
                    break;
                case 27:
                    delta.b(27, typedArray.getInt(index, layout.F));
                    c2 = 5;
                    break;
                case 28:
                    delta.b(28, typedArray.getDimensionPixelSize(index, layout.H));
                    c2 = 5;
                    break;
                case 31:
                    delta.b(31, typedArray.getDimensionPixelSize(index, layout.L));
                    c2 = 5;
                    break;
                case 34:
                    delta.b(34, typedArray.getDimensionPixelSize(index, layout.I));
                    c2 = 5;
                    break;
                case 37:
                    delta.a(typedArray.getFloat(index, layout.y), 37);
                    c2 = 5;
                    break;
                case 38:
                    int resourceId = typedArray.getResourceId(index, constraint.f11768a);
                    constraint.f11768a = resourceId;
                    delta.b(38, resourceId);
                    c2 = 5;
                    break;
                case 39:
                    delta.a(typedArray.getFloat(index, layout.V), 39);
                    c2 = 5;
                    break;
                case 40:
                    delta.a(typedArray.getFloat(index, layout.U), 40);
                    c2 = 5;
                    break;
                case 41:
                    delta.b(41, typedArray.getInt(index, layout.W));
                    c2 = 5;
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    delta.b(42, typedArray.getInt(index, layout.X));
                    c2 = 5;
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    delta.a(typedArray.getFloat(index, propertySet.d), 43);
                    c2 = 5;
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    delta.d(44, true);
                    delta.a(typedArray.getDimension(index, transform.n), 44);
                    c2 = 5;
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    delta.a(typedArray.getFloat(index, transform.f11807c), 45);
                    c2 = 5;
                    break;
                case 46:
                    delta.a(typedArray.getFloat(index, transform.d), 46);
                    c2 = 5;
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    delta.a(typedArray.getFloat(index, transform.f11808e), 47);
                    c2 = 5;
                    break;
                case 48:
                    delta.a(typedArray.getFloat(index, transform.f11809f), 48);
                    c2 = 5;
                    break;
                case 49:
                    delta.a(typedArray.getDimension(index, transform.g), 49);
                    c2 = 5;
                    break;
                case 50:
                    delta.a(typedArray.getDimension(index, transform.f11810h), 50);
                    c2 = 5;
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    delta.a(typedArray.getDimension(index, transform.f11812j), 51);
                    c2 = 5;
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    delta.a(typedArray.getDimension(index, transform.f11813k), 52);
                    c2 = 5;
                    break;
                case EACTags.SEX /* 53 */:
                    delta.a(typedArray.getDimension(index, transform.l), 53);
                    c2 = 5;
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    delta.b(54, typedArray.getInt(index, layout.Y));
                    c2 = 5;
                    break;
                case 55:
                    delta.b(55, typedArray.getInt(index, layout.Z));
                    c2 = 5;
                    break;
                case 56:
                    delta.b(56, typedArray.getDimensionPixelSize(index, layout.a0));
                    c2 = 5;
                    break;
                case 57:
                    delta.b(57, typedArray.getDimensionPixelSize(index, layout.b0));
                    c2 = 5;
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    delta.b(58, typedArray.getDimensionPixelSize(index, layout.c0));
                    c2 = 5;
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    delta.b(59, typedArray.getDimensionPixelSize(index, layout.d0));
                    c2 = 5;
                    break;
                case 60:
                    delta.a(typedArray.getFloat(index, transform.f11806b), 60);
                    c2 = 5;
                    break;
                case 62:
                    delta.b(62, typedArray.getDimensionPixelSize(index, layout.B));
                    c2 = 5;
                    break;
                case 63:
                    delta.a(typedArray.getFloat(index, layout.C), 63);
                    c2 = 5;
                    break;
                case 64:
                    delta.b(64, n(typedArray, index, motion.f11793b));
                    c2 = 5;
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    if (typedArray.peekValue(index).type == 3) {
                        delta.c(65, typedArray.getString(index));
                    } else {
                        delta.c(65, Easing.f11341c[typedArray.getInteger(index, i2)]);
                    }
                    c2 = 5;
                    break;
                case EACTags.ADDRESS /* 66 */:
                    i2 = 0;
                    delta.b(66, typedArray.getInt(index, 0));
                    c2 = 5;
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    delta.a(typedArray.getFloat(index, motion.f11797h), 67);
                    i2 = 0;
                    c2 = 5;
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    delta.a(typedArray.getFloat(index, propertySet.f11804e), 68);
                    i2 = 0;
                    c2 = 5;
                    break;
                case EACTags.DISPLAY_IMAGE /* 69 */:
                    delta.a(typedArray.getFloat(index, 1.0f), 69);
                    i2 = 0;
                    c2 = 5;
                    break;
                case 70:
                    delta.a(typedArray.getFloat(index, 1.0f), 70);
                    i2 = 0;
                    c2 = 5;
                    break;
                case EACTags.MESSAGE_REFERENCE /* 71 */:
                    c2 = 5;
                    break;
                case 72:
                    delta.b(72, typedArray.getInt(index, layout.g0));
                    i2 = 0;
                    c2 = 5;
                    break;
                case 73:
                    delta.b(73, typedArray.getDimensionPixelSize(index, layout.h0));
                    i2 = 0;
                    c2 = 5;
                    break;
                case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                    delta.c(74, typedArray.getString(index));
                    i2 = 0;
                    c2 = 5;
                    break;
                case EACTags.DEPRECATED /* 75 */:
                    delta.d(75, typedArray.getBoolean(index, layout.o0));
                    i2 = 0;
                    c2 = 5;
                    break;
                case 76:
                    delta.b(76, typedArray.getInt(index, motion.f11795e));
                    i2 = 0;
                    c2 = 5;
                    break;
                case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                    delta.c(77, typedArray.getString(index));
                    i2 = 0;
                    c2 = 5;
                    break;
                case 78:
                    delta.b(78, typedArray.getInt(index, propertySet.f11803c));
                    i2 = 0;
                    c2 = 5;
                    break;
                case 79:
                    delta.a(typedArray.getFloat(index, motion.g), 79);
                    i2 = 0;
                    c2 = 5;
                    break;
                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                    delta.d(80, typedArray.getBoolean(index, layout.m0));
                    i2 = 0;
                    c2 = 5;
                    break;
                case EACTags.ANSWER_TO_RESET /* 81 */:
                    delta.d(81, typedArray.getBoolean(index, layout.n0));
                    i2 = 0;
                    c2 = 5;
                    break;
                case EACTags.HISTORICAL_BYTES /* 82 */:
                    delta.b(82, typedArray.getInteger(index, motion.f11794c));
                    i2 = 0;
                    c2 = 5;
                    break;
                case 83:
                    delta.b(83, n(typedArray, index, transform.f11811i));
                    i2 = 0;
                    c2 = 5;
                    break;
                case 84:
                    delta.b(84, typedArray.getInteger(index, motion.f11799j));
                    i2 = 0;
                    c2 = 5;
                    break;
                case 85:
                    delta.a(typedArray.getFloat(index, motion.f11798i), 85);
                    i2 = 0;
                    c2 = 5;
                    break;
                case 86:
                    int i5 = typedArray.peekValue(index).type;
                    if (i5 == 1) {
                        int resourceId2 = typedArray.getResourceId(index, -1);
                        motion.m = resourceId2;
                        delta.b(89, resourceId2);
                        if (motion.m != -1) {
                            motion.l = -2;
                            delta.b(88, -2);
                        }
                    } else if (i5 == 3) {
                        String string = typedArray.getString(index);
                        motion.f11800k = string;
                        delta.c(90, string);
                        if (motion.f11800k.indexOf("/") > 0) {
                            int resourceId3 = typedArray.getResourceId(index, -1);
                            motion.m = resourceId3;
                            delta.b(89, resourceId3);
                            motion.l = -2;
                            delta.b(88, -2);
                        } else {
                            motion.l = -1;
                            delta.b(88, -1);
                        }
                    } else {
                        int integer = typedArray.getInteger(index, motion.m);
                        motion.l = integer;
                        delta.b(88, integer);
                    }
                    i2 = 0;
                    c2 = 5;
                    break;
                case 87:
                    Integer.toHexString(index);
                    sparseIntArray.get(index);
                    c2 = 5;
                    break;
                case 93:
                    delta.b(93, typedArray.getDimensionPixelSize(index, layout.M));
                    c2 = 5;
                    break;
                case 94:
                    delta.b(94, typedArray.getDimensionPixelSize(index, layout.T));
                    c2 = 5;
                    break;
                case 95:
                    o(delta, typedArray, index, i2);
                    c2 = 5;
                    break;
                case 96:
                    o(delta, typedArray, index, 1);
                    c2 = 5;
                    break;
                case 97:
                    delta.b(97, typedArray.getInt(index, layout.p0));
                    c2 = 5;
                    break;
                case 98:
                    if (MotionLayout.F1) {
                        int resourceId4 = typedArray.getResourceId(index, constraint.f11768a);
                        constraint.f11768a = resourceId4;
                        if (resourceId4 == -1) {
                            constraint.f11769b = typedArray.getString(index);
                        }
                    } else if (typedArray.peekValue(index).type == 3) {
                        constraint.f11769b = typedArray.getString(index);
                    } else {
                        constraint.f11768a = typedArray.getResourceId(index, constraint.f11768a);
                    }
                    c2 = 5;
                    break;
                case 99:
                    delta.d(99, typedArray.getBoolean(index, layout.f11788h));
                    c2 = 5;
                    break;
            }
        }
    }

    public static String r(int i2) {
        switch (i2) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    public final void a(MotionLayout motionLayout) {
        Constraint constraint;
        int childCount = motionLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = motionLayout.getChildAt(i2);
            int id = childAt.getId();
            Integer numValueOf = Integer.valueOf(id);
            HashMap map = this.g;
            if (!map.containsKey(numValueOf)) {
                Debug.c(childAt);
            } else if (this.f11767f && id == -1) {
                v7.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                return;
            } else if (map.containsKey(Integer.valueOf(id)) && (constraint = (Constraint) map.get(Integer.valueOf(id))) != null) {
                ConstraintAttribute.e(childAt, constraint.g);
            }
        }
    }

    public final void b(ConstraintSet constraintSet) {
        for (Constraint constraint : constraintSet.g.values()) {
            if (constraint.f11773h != null) {
                if (constraint.f11769b == null) {
                    constraint.f11773h.e(k(constraint.f11768a));
                } else {
                    Iterator it = this.g.keySet().iterator();
                    while (it.hasNext()) {
                        Constraint constraintK = k(((Integer) it.next()).intValue());
                        String str = constraintK.f11771e.l0;
                        if (str != null && constraint.f11769b.matches(str)) {
                            constraint.f11773h.e(constraintK);
                            constraintK.g.putAll((HashMap) constraint.g.clone());
                        }
                    }
                }
            }
        }
    }

    public final void c(ConstraintLayout constraintLayout) {
        d(constraintLayout);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public final void d(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashMap map = this.g;
        HashSet<Integer> hashSet = new HashSet(map.keySet());
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (!map.containsKey(Integer.valueOf(id))) {
                Debug.c(childAt);
            } else {
                if (this.f11767f && id == -1) {
                    v7.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                    return;
                }
                if (id != -1 && map.containsKey(Integer.valueOf(id))) {
                    hashSet.remove(Integer.valueOf(id));
                    Constraint constraint = (Constraint) map.get(Integer.valueOf(id));
                    if (constraint != null) {
                        PropertySet propertySet = constraint.f11770c;
                        Layout layout = constraint.f11771e;
                        Transform transform = constraint.f11772f;
                        if (childAt instanceof Barrier) {
                            layout.i0 = 1;
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            barrier.setType(layout.g0);
                            barrier.setMargin(layout.h0);
                            barrier.setAllowsGoneWidget(layout.o0);
                            int[] iArr = layout.j0;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str = layout.k0;
                                if (str != null) {
                                    int[] iArrH = h(barrier, str);
                                    layout.j0 = iArrH;
                                    barrier.setReferencedIds(iArrH);
                                }
                            }
                        }
                        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                        layoutParams.a();
                        constraint.b(layoutParams);
                        ConstraintAttribute.e(childAt, constraint.g);
                        childAt.setLayoutParams(layoutParams);
                        if (propertySet.f11803c == 0) {
                            childAt.setVisibility(propertySet.f11802b);
                        }
                        childAt.setAlpha(propertySet.d);
                        childAt.setRotation(transform.f11806b);
                        childAt.setRotationX(transform.f11807c);
                        childAt.setRotationY(transform.d);
                        childAt.setScaleX(transform.f11808e);
                        childAt.setScaleY(transform.f11809f);
                        if (transform.f11811i != -1) {
                            View viewFindViewById = ((View) childAt.getParent()).findViewById(transform.f11811i);
                            if (viewFindViewById != null) {
                                float bottom = (viewFindViewById.getBottom() + viewFindViewById.getTop()) / 2.0f;
                                float right = (viewFindViewById.getRight() + viewFindViewById.getLeft()) / 2.0f;
                                if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                    float left = right - childAt.getLeft();
                                    float top = bottom - childAt.getTop();
                                    childAt.setPivotX(left);
                                    childAt.setPivotY(top);
                                }
                            }
                        } else {
                            if (!Float.isNaN(transform.g)) {
                                childAt.setPivotX(transform.g);
                            }
                            if (!Float.isNaN(transform.f11810h)) {
                                childAt.setPivotY(transform.f11810h);
                            }
                        }
                        childAt.setTranslationX(transform.f11812j);
                        childAt.setTranslationY(transform.f11813k);
                        childAt.setTranslationZ(transform.l);
                        if (transform.m) {
                            childAt.setElevation(transform.n);
                        }
                    }
                }
            }
        }
        for (Integer num : hashSet) {
            Constraint constraint2 = (Constraint) map.get(num);
            if (constraint2 != null) {
                Layout layout2 = constraint2.f11771e;
                if (layout2.i0 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    int[] iArr2 = layout2.j0;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str2 = layout2.k0;
                        if (str2 != null) {
                            int[] iArrH2 = h(barrier2, str2);
                            layout2.j0 = iArrH2;
                            barrier2.setReferencedIds(iArrH2);
                        }
                    }
                    barrier2.setType(layout2.g0);
                    barrier2.setMargin(layout2.h0);
                    SharedValues sharedValues = ConstraintLayout.q;
                    ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(-2, -2);
                    barrier2.k();
                    constraint2.b(layoutParams2);
                    constraintLayout.addView(barrier2, layoutParams2);
                }
                if (layout2.f11783a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    SharedValues sharedValues2 = ConstraintLayout.q;
                    ConstraintLayout.LayoutParams layoutParams3 = new ConstraintLayout.LayoutParams(-2, -2);
                    constraint2.b(layoutParams3);
                    constraintLayout.addView(guideline, layoutParams3);
                }
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = constraintLayout.getChildAt(i3);
            if (childAt2 instanceof ConstraintHelper) {
                ((ConstraintHelper) childAt2).e(constraintLayout);
            }
        }
    }

    public final void f(ConstraintLayout constraintLayout) {
        int i2;
        HashMap map;
        int i3;
        int i4;
        ConstraintSet constraintSet = this;
        int childCount = constraintLayout.getChildCount();
        HashMap map2 = constraintSet.g;
        map2.clear();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = constraintLayout.getChildAt(i5);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (constraintSet.f11767f && id == -1) {
                v7.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                return;
            }
            if (!map2.containsKey(Integer.valueOf(id))) {
                map2.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = (Constraint) map2.get(Integer.valueOf(id));
            if (constraint == null) {
                i2 = childCount;
                map = map2;
                i3 = i5;
            } else {
                PropertySet propertySet = constraint.f11770c;
                Layout layout = constraint.f11771e;
                Transform transform = constraint.f11772f;
                HashMap map3 = new HashMap();
                Class<?> cls = childAt.getClass();
                HashMap map4 = constraintSet.f11766e;
                for (String str : map4.keySet()) {
                    int i6 = childCount;
                    ConstraintAttribute constraintAttribute = (ConstraintAttribute) map4.get(str);
                    HashMap map5 = map2;
                    try {
                        if (str.equals("BackgroundColor")) {
                            i4 = i5;
                            try {
                                map3.put(str, new ConstraintAttribute(constraintAttribute, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                            }
                        } else {
                            i4 = i5;
                            map3.put(str, new ConstraintAttribute(constraintAttribute, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                        }
                    } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
                        i4 = i5;
                    }
                    map2 = map5;
                    childCount = i6;
                    i5 = i4;
                }
                i2 = childCount;
                map = map2;
                i3 = i5;
                constraint.g = map3;
                constraint.d(id, layoutParams);
                propertySet.f11802b = childAt.getVisibility();
                propertySet.d = childAt.getAlpha();
                transform.f11806b = childAt.getRotation();
                transform.f11807c = childAt.getRotationX();
                transform.d = childAt.getRotationY();
                transform.f11808e = childAt.getScaleX();
                transform.f11809f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    transform.g = pivotX;
                    transform.f11810h = pivotY;
                }
                transform.f11812j = childAt.getTranslationX();
                transform.f11813k = childAt.getTranslationY();
                transform.l = childAt.getTranslationZ();
                if (transform.m) {
                    transform.n = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    layout.o0 = barrier.getAllowsGoneWidget();
                    layout.j0 = barrier.getReferencedIds();
                    layout.g0 = barrier.getType();
                    layout.h0 = barrier.getMargin();
                }
            }
            i5 = i3 + 1;
            constraintSet = this;
            map2 = map;
            childCount = i2;
        }
    }

    public final void g(int i2, int i3, int i4, int i5, int i6) {
        Integer numValueOf = Integer.valueOf(i2);
        HashMap map = this.g;
        if (!map.containsKey(numValueOf)) {
            map.put(Integer.valueOf(i2), new Constraint());
        }
        Constraint constraint = (Constraint) map.get(Integer.valueOf(i2));
        if (constraint == null) {
            return;
        }
        Layout layout = constraint.f11771e;
        switch (i3) {
            case 1:
                if (i5 == 1) {
                    layout.f11789i = i4;
                    layout.f11790j = -1;
                } else if (i5 != 2) {
                    az.r("Left to ", r(i5), " undefined");
                    return;
                } else {
                    layout.f11790j = i4;
                    layout.f11789i = -1;
                }
                layout.G = i6;
                return;
            case 2:
                if (i5 == 1) {
                    layout.f11791k = i4;
                    layout.l = -1;
                } else if (i5 != 2) {
                    az.r("right to ", r(i5), " undefined");
                    return;
                } else {
                    layout.l = i4;
                    layout.f11791k = -1;
                }
                layout.H = i6;
                return;
            case 3:
                if (i5 == 3) {
                    layout.m = i4;
                    layout.n = -1;
                    layout.q = -1;
                    layout.r = -1;
                    layout.s = -1;
                } else {
                    if (i5 != 4) {
                        az.r("right to ", r(i5), " undefined");
                        return;
                    }
                    layout.n = i4;
                    layout.m = -1;
                    layout.q = -1;
                    layout.r = -1;
                    layout.s = -1;
                }
                layout.I = i6;
                return;
            case 4:
                if (i5 == 4) {
                    layout.p = i4;
                    layout.o = -1;
                    layout.q = -1;
                    layout.r = -1;
                    layout.s = -1;
                } else {
                    if (i5 != 3) {
                        az.r("right to ", r(i5), " undefined");
                        return;
                    }
                    layout.o = i4;
                    layout.p = -1;
                    layout.q = -1;
                    layout.r = -1;
                    layout.s = -1;
                }
                layout.J = i6;
                return;
            case 5:
                if (i5 == 5) {
                    layout.q = i4;
                    layout.p = -1;
                    layout.o = -1;
                    layout.m = -1;
                    layout.n = -1;
                    return;
                }
                if (i5 == 3) {
                    layout.r = i4;
                    layout.p = -1;
                    layout.o = -1;
                    layout.m = -1;
                    layout.n = -1;
                    return;
                }
                if (i5 != 4) {
                    az.r("right to ", r(i5), " undefined");
                    return;
                }
                layout.s = i4;
                layout.p = -1;
                layout.o = -1;
                layout.m = -1;
                layout.n = -1;
                return;
            case 6:
                if (i5 == 6) {
                    layout.u = i4;
                    layout.t = -1;
                } else if (i5 != 7) {
                    az.r("right to ", r(i5), " undefined");
                    return;
                } else {
                    layout.t = i4;
                    layout.u = -1;
                }
                layout.L = i6;
                return;
            case 7:
                if (i5 == 7) {
                    layout.w = i4;
                    layout.v = -1;
                } else if (i5 != 6) {
                    az.r("right to ", r(i5), " undefined");
                    return;
                } else {
                    layout.v = i4;
                    layout.w = -1;
                }
                layout.K = i6;
                return;
            default:
                throw new IllegalArgumentException(r(i3) + " to " + r(i5) + " unknown");
        }
    }

    public final Constraint j(int i2) {
        Integer numValueOf = Integer.valueOf(i2);
        HashMap map = this.g;
        if (!map.containsKey(numValueOf)) {
            map.put(Integer.valueOf(i2), new Constraint());
        }
        return (Constraint) map.get(Integer.valueOf(i2));
    }

    public final Constraint k(int i2) {
        Integer numValueOf = Integer.valueOf(i2);
        HashMap map = this.g;
        if (map.containsKey(numValueOf)) {
            return (Constraint) map.get(Integer.valueOf(i2));
        }
        return null;
    }

    public final void l(int i2, Context context) {
        XmlResourceParser xml = context.getResources().getXml(i2);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    Constraint constraintI = i(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        constraintI.f11771e.f11783a = true;
                    }
                    this.g.put(Integer.valueOf(constraintI.f11768a), constraintI);
                }
            }
        } catch (IOException | XmlPullParserException unused) {
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void m(Context context, XmlResourceParser xmlResourceParser) {
        try {
            int eventType = xmlResourceParser.getEventType();
            Constraint constraintI = null;
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlResourceParser.getName();
                } else if (eventType == 2) {
                    String name = xmlResourceParser.getName();
                    switch (name.hashCode()) {
                        case -2025855158:
                            if (!name.equals("Layout")) {
                                continue;
                            } else {
                                if (constraintI == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                }
                                constraintI.f11771e.b(context, Xml.asAttributeSet(xmlResourceParser));
                            }
                            break;
                        case -1984451626:
                            if (!name.equals("Motion")) {
                                continue;
                            } else {
                                if (constraintI == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                }
                                constraintI.d.b(context, Xml.asAttributeSet(xmlResourceParser));
                            }
                            break;
                        case -1962203927:
                            if (!name.equals("ConstraintOverride")) {
                                continue;
                            } else {
                                constraintI = i(context, Xml.asAttributeSet(xmlResourceParser), true);
                            }
                            break;
                        case -1269513683:
                            if (!name.equals("PropertySet")) {
                                continue;
                            } else {
                                if (constraintI == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                }
                                constraintI.f11770c.a(context, Xml.asAttributeSet(xmlResourceParser));
                            }
                            break;
                        case -1238332596:
                            if (!name.equals("Transform")) {
                                continue;
                            } else {
                                if (constraintI == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                }
                                constraintI.f11772f.b(context, Xml.asAttributeSet(xmlResourceParser));
                            }
                            break;
                        case -71750448:
                            if (!name.equals("Guideline")) {
                                continue;
                            } else {
                                constraintI = i(context, Xml.asAttributeSet(xmlResourceParser), false);
                                Layout layout = constraintI.f11771e;
                                layout.f11783a = true;
                                layout.f11784b = true;
                            }
                            break;
                        case 366511058:
                            if (!name.equals("CustomMethod")) {
                                continue;
                            }
                            break;
                        case 1331510167:
                            if (!name.equals("Barrier")) {
                                continue;
                            } else {
                                constraintI = i(context, Xml.asAttributeSet(xmlResourceParser), false);
                                constraintI.f11771e.i0 = 1;
                            }
                            break;
                        case 1791837707:
                            if (!name.equals("CustomAttribute")) {
                                continue;
                            }
                            break;
                        case 1803088381:
                            if (!name.equals("Constraint")) {
                                continue;
                            } else {
                                constraintI = i(context, Xml.asAttributeSet(xmlResourceParser), false);
                            }
                            break;
                        default:
                            continue;
                    }
                    if (constraintI == null) {
                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                    }
                    ConstraintAttribute.d(context, xmlResourceParser, constraintI.g);
                } else if (eventType == 3) {
                    String lowerCase = xmlResourceParser.getName().toLowerCase(Locale.ROOT);
                    switch (lowerCase.hashCode()) {
                        case -2075718416:
                            if (!lowerCase.equals("guideline")) {
                                break;
                            }
                            break;
                        case -190376483:
                            if (!lowerCase.equals("constraint")) {
                            }
                            break;
                        case 426575017:
                            if (!lowerCase.equals("constraintoverride")) {
                            }
                            break;
                        case 2146106725:
                            if (!lowerCase.equals("constraintset")) {
                                continue;
                            } else {
                                return;
                            }
                            break;
                        default:
                            continue;
                    }
                    this.g.put(Integer.valueOf(constraintI.f11768a), constraintI);
                    constraintI = null;
                }
                eventType = xmlResourceParser.next();
            }
        } catch (IOException | XmlPullParserException unused) {
        }
    }
}
