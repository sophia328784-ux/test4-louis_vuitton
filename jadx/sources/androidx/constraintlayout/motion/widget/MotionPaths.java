package androidx.constraintlayout.motion.widget;

import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.LinkedHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class MotionPaths implements Comparable<MotionPaths> {
    public static final String[] s = {"position", "x", "y", "width", "height", "pathRotate"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Easing f11648b;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f11650e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11651f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11652h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11653i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11649c = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f11654j = Float.NaN;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11655k = -1;
    public int l = -1;
    public float m = Float.NaN;
    public MotionController n = null;
    public LinkedHashMap o = new LinkedHashMap();
    public int p = 0;
    public double[] q = new double[18];
    public double[] r = new double[18];

    public static boolean b(float f2, float f3) {
        if (Float.isNaN(f2) || Float.isNaN(f3)) {
            return Float.isNaN(f2) != Float.isNaN(f3);
        }
        return Math.abs(f2 - f3) > 1.0E-6f;
    }

    public static void e(float f2, float f3, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f8 = (float) dArr[i2];
            double d = dArr2[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f4 = f8;
            } else if (i3 == 2) {
                f6 = f8;
            } else if (i3 == 3) {
                f5 = f8;
            } else if (i3 == 4) {
                f7 = f8;
            }
        }
        float f9 = f4 - ((Call.Parameters.DEFAULT_CAMERA_ZOOM * f5) / 2.0f);
        float f10 = f6 - ((Call.Parameters.DEFAULT_CAMERA_ZOOM * f7) / 2.0f);
        fArr[0] = (((f5 * 1.0f) + f9) * f2) + ((1.0f - f2) * f9) + Call.Parameters.DEFAULT_CAMERA_ZOOM;
        fArr[1] = (((f7 * 1.0f) + f10) * f3) + ((1.0f - f3) * f10) + Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final void a(ConstraintSet.Constraint constraint) {
        int iOrdinal;
        this.f11648b = Easing.c(constraint.d.d);
        ConstraintSet.Motion motion = constraint.d;
        this.f11655k = motion.f11795e;
        this.l = motion.f11793b;
        this.f11654j = motion.f11797h;
        this.f11649c = motion.f11796f;
        float f2 = constraint.f11770c.f11804e;
        this.m = constraint.f11771e.C;
        for (String str : constraint.g.keySet()) {
            ConstraintAttribute constraintAttribute = (ConstraintAttribute) constraint.g.get(str);
            if (constraintAttribute != null && (iOrdinal = constraintAttribute.f11713c.ordinal()) != 4 && iOrdinal != 5 && iOrdinal != 7) {
                this.o.put(str, constraintAttribute);
            }
        }
    }

    public final void c(double d, int[] iArr, double[] dArr, float[] fArr, int i2) {
        float f2 = this.f11651f;
        float fCos = this.g;
        float f3 = this.f11652h;
        float f4 = this.f11653i;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            float f5 = (float) dArr[i3];
            int i4 = iArr[i3];
            if (i4 == 1) {
                f2 = f5;
            } else if (i4 == 2) {
                fCos = f5;
            } else if (i4 == 3) {
                f3 = f5;
            } else if (i4 == 4) {
                f4 = f5;
            }
        }
        MotionController motionController = this.n;
        if (motionController != null) {
            float[] fArr2 = new float[2];
            motionController.b(d, fArr2, new float[2]);
            float f6 = fArr2[0];
            float f7 = fArr2[1];
            double d2 = f2;
            double d3 = fCos;
            double dSin = Math.sin(d3) * d2;
            fCos = (float) ((((double) f7) - (Math.cos(d3) * d2)) - ((double) (f4 / 2.0f)));
            f2 = (float) ((dSin + ((double) f6)) - ((double) (f3 / 2.0f)));
        }
        fArr[i2] = (f3 / 2.0f) + f2 + Call.Parameters.DEFAULT_CAMERA_ZOOM;
        fArr[i2 + 1] = (f4 / 2.0f) + fCos + Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // java.lang.Comparable
    public final int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.f11650e, motionPaths.f11650e);
    }

    public final void d(float f2, float f3, float f4, float f5) {
        this.f11651f = f2;
        this.g = f3;
        this.f11652h = f4;
        this.f11653i = f5;
    }

    public final void f(MotionController motionController, MotionPaths motionPaths) {
        double d = (((this.f11652h / 2.0f) + this.f11651f) - motionPaths.f11651f) - (motionPaths.f11652h / 2.0f);
        double d2 = (((this.f11653i / 2.0f) + this.g) - motionPaths.g) - (motionPaths.f11653i / 2.0f);
        this.n = motionController;
        this.f11651f = (float) Math.hypot(d2, d);
        if (Float.isNaN(this.m)) {
            this.g = (float) (Math.atan2(d2, d) + 1.5707963267948966d);
        } else {
            this.g = (float) Math.toRadians(this.m);
        }
    }
}
