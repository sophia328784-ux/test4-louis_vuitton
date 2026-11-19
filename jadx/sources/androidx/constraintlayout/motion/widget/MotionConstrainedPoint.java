package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.HashMap;
import java.util.LinkedHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {
    public int d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f11605b = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11606c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f11607e = new LinkedHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11608f = 1.0f;
    public float g = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11609h = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11610i = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f11611j = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f11612k = 1.0f;
    public float l = Float.NaN;
    public float m = Float.NaN;
    public float n = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    public float o = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    public float p = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    public float q = Float.NaN;
    public float r = Float.NaN;

    public static boolean c(float f2, float f3) {
        if (Float.isNaN(f2) || Float.isNaN(f3)) {
            return Float.isNaN(f2) != Float.isNaN(f3);
        }
        return Math.abs(f2 - f3) > 1.0E-6f;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void a(HashMap map, int i2) {
        for (String str : map.keySet()) {
            ViewSpline viewSpline = (ViewSpline) map.get(str);
            if (viewSpline != null) {
                str.getClass();
                byte b2 = -1;
                switch (str.hashCode()) {
                    case -1249320806:
                        if (str.equals("rotationX")) {
                            b2 = 0;
                        }
                        break;
                    case -1249320805:
                        if (str.equals("rotationY")) {
                            b2 = 1;
                        }
                        break;
                    case -1225497657:
                        if (str.equals("translationX")) {
                            b2 = 2;
                        }
                        break;
                    case -1225497656:
                        if (str.equals("translationY")) {
                            b2 = 3;
                        }
                        break;
                    case -1225497655:
                        if (str.equals("translationZ")) {
                            b2 = 4;
                        }
                        break;
                    case -1001078227:
                        if (str.equals("progress")) {
                            b2 = 5;
                        }
                        break;
                    case -908189618:
                        if (str.equals("scaleX")) {
                            b2 = 6;
                        }
                        break;
                    case -908189617:
                        if (str.equals("scaleY")) {
                            b2 = 7;
                        }
                        break;
                    case -760884510:
                        if (str.equals("transformPivotX")) {
                            b2 = 8;
                        }
                        break;
                    case -760884509:
                        if (str.equals("transformPivotY")) {
                            b2 = 9;
                        }
                        break;
                    case -40300674:
                        if (str.equals("rotation")) {
                            b2 = 10;
                        }
                        break;
                    case -4379043:
                        if (str.equals("elevation")) {
                            b2 = 11;
                        }
                        break;
                    case 37232917:
                        if (str.equals("transitionPathRotate")) {
                            b2 = 12;
                        }
                        break;
                    case 92909918:
                        if (str.equals("alpha")) {
                            b2 = 13;
                        }
                        break;
                }
                float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                switch (b2) {
                    case 0:
                        if (!Float.isNaN(this.f11610i)) {
                            f2 = this.f11610i;
                        }
                        viewSpline.b(f2, i2);
                        break;
                    case 1:
                        if (!Float.isNaN(this.f11605b)) {
                            f2 = this.f11605b;
                        }
                        viewSpline.b(f2, i2);
                        break;
                    case 2:
                        if (!Float.isNaN(this.n)) {
                            f2 = this.n;
                        }
                        viewSpline.b(f2, i2);
                        break;
                    case 3:
                        if (!Float.isNaN(this.o)) {
                            f2 = this.o;
                        }
                        viewSpline.b(f2, i2);
                        break;
                    case 4:
                        if (!Float.isNaN(this.p)) {
                            f2 = this.p;
                        }
                        viewSpline.b(f2, i2);
                        break;
                    case 5:
                        if (!Float.isNaN(this.r)) {
                            f2 = this.r;
                        }
                        viewSpline.b(f2, i2);
                        break;
                    case 6:
                        viewSpline.b(Float.isNaN(this.f11611j) ? 1.0f : this.f11611j, i2);
                        break;
                    case 7:
                        viewSpline.b(Float.isNaN(this.f11612k) ? 1.0f : this.f11612k, i2);
                        break;
                    case 8:
                        if (!Float.isNaN(this.l)) {
                            f2 = this.l;
                        }
                        viewSpline.b(f2, i2);
                        break;
                    case 9:
                        if (!Float.isNaN(this.m)) {
                            f2 = this.m;
                        }
                        viewSpline.b(f2, i2);
                        break;
                    case 10:
                        if (!Float.isNaN(this.f11609h)) {
                            f2 = this.f11609h;
                        }
                        viewSpline.b(f2, i2);
                        break;
                    case 11:
                        if (!Float.isNaN(this.g)) {
                            f2 = this.g;
                        }
                        viewSpline.b(f2, i2);
                        break;
                    case 12:
                        if (!Float.isNaN(this.q)) {
                            f2 = this.q;
                        }
                        viewSpline.b(f2, i2);
                        break;
                    case 13:
                        viewSpline.b(Float.isNaN(this.f11608f) ? 1.0f : this.f11608f, i2);
                        break;
                    default:
                        if (str.startsWith("CUSTOM")) {
                            String str2 = str.split(",")[1];
                            LinkedHashMap linkedHashMap = this.f11607e;
                            if (linkedHashMap.containsKey(str2)) {
                                ConstraintAttribute constraintAttribute = (ConstraintAttribute) linkedHashMap.get(str2);
                                if (viewSpline instanceof ViewSpline.CustomSet) {
                                    ((ViewSpline.CustomSet) viewSpline).f11561f.append(i2, constraintAttribute);
                                } else {
                                    constraintAttribute.a();
                                    viewSpline.toString();
                                }
                            }
                        }
                        break;
                }
            }
        }
    }

    public final void b(View view) {
        this.d = view.getVisibility();
        this.f11608f = view.getVisibility() != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : view.getAlpha();
        this.g = view.getElevation();
        this.f11609h = view.getRotation();
        this.f11610i = view.getRotationX();
        this.f11605b = view.getRotationY();
        this.f11611j = view.getScaleX();
        this.f11612k = view.getScaleY();
        this.l = view.getPivotX();
        this.m = view.getPivotY();
        this.n = view.getTranslationX();
        this.o = view.getTranslationY();
        this.p = view.getTranslationZ();
    }

    @Override // java.lang.Comparable
    public final int compareTo(MotionConstrainedPoint motionConstrainedPoint) {
        motionConstrainedPoint.getClass();
        return Float.compare(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public final void d(Rect rect, ConstraintSet constraintSet, int i2, int i3) {
        rect.width();
        rect.height();
        ConstraintSet.Constraint constraintJ = constraintSet.j(i3);
        ConstraintSet.PropertySet propertySet = constraintJ.f11770c;
        ConstraintSet.Motion motion = constraintJ.d;
        int i4 = propertySet.f11803c;
        this.f11606c = i4;
        int i5 = propertySet.f11802b;
        this.d = i5;
        this.f11608f = (i5 == 0 || i4 != 0) ? propertySet.d : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ConstraintSet.Transform transform = constraintJ.f11772f;
        boolean z = transform.m;
        this.g = transform.n;
        this.f11609h = transform.f11806b;
        this.f11610i = transform.f11807c;
        this.f11605b = transform.d;
        this.f11611j = transform.f11808e;
        this.f11612k = transform.f11809f;
        this.l = transform.g;
        this.m = transform.f11810h;
        this.n = transform.f11812j;
        this.o = transform.f11813k;
        this.p = transform.l;
        Easing.c(motion.d);
        this.q = motion.f11797h;
        this.r = constraintJ.f11770c.f11804e;
        for (String str : constraintJ.g.keySet()) {
            ConstraintAttribute constraintAttribute = (ConstraintAttribute) constraintJ.g.get(str);
            int iOrdinal = constraintAttribute.f11713c.ordinal();
            if (iOrdinal != 4 && iOrdinal != 5 && iOrdinal != 7) {
                this.f11607e.put(str, constraintAttribute);
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        return;
                    }
                }
            }
            float f2 = this.f11609h + 90.0f;
            this.f11609h = f2;
            if (f2 > 180.0f) {
                this.f11609h = f2 - 360.0f;
                return;
            }
            return;
        }
        this.f11609h -= 90.0f;
    }
}
