package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.constraintlayout.core.motion.utils.ArcCurveFit;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.motion.utils.CustomSupport;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import defpackage.n00;
import defpackage.tr;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class MotionController {
    public KeyTrigger[] A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f11614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f11615c;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CurveFit[] f11620j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ArcCurveFit f11621k;
    public int[] o;
    public double[] p;
    public double[] q;
    public String[] r;
    public int[] s;
    public HashMap x;
    public HashMap y;
    public HashMap z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f11613a = new Rect();
    public boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11616e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MotionPaths f11617f = new MotionPaths();
    public final MotionPaths g = new MotionPaths();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MotionConstrainedPoint f11618h = new MotionConstrainedPoint();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MotionConstrainedPoint f11619i = new MotionConstrainedPoint();
    public float l = Float.NaN;
    public float m = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    public float n = 1.0f;
    public final float[] t = new float[4];
    public final ArrayList u = new ArrayList();
    public final float[] v = new float[1];
    public final ArrayList w = new ArrayList();
    public int B = -1;
    public int C = -1;
    public View D = null;
    public int E = -1;
    public float F = Float.NaN;
    public Interpolator G = null;
    public boolean H = false;

    public MotionController(View view) {
        this.f11614b = view;
        this.f11615c = view.getId();
        view.getLayoutParams();
    }

    public static void f(Rect rect, Rect rect2, int i2, int i3, int i4) {
        if (i2 == 1) {
            int i5 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = i4 - ((rect.height() + i5) / 2);
            rect2.right = rect.width() + rect2.left;
            rect2.bottom = rect.height() + rect2.top;
            return;
        }
        if (i2 == 2) {
            int i6 = rect.left + rect.right;
            rect2.left = i3 - ((rect.width() + (rect.top + rect.bottom)) / 2);
            rect2.top = (i6 - rect.height()) / 2;
            rect2.right = rect.width() + rect2.left;
            rect2.bottom = rect.height() + rect2.top;
            return;
        }
        if (i2 == 3) {
            int i7 = rect.left + rect.right;
            rect2.left = ((rect.height() / 2) + rect.top) - (i7 / 2);
            rect2.top = i4 - ((rect.height() + i7) / 2);
            rect2.right = rect.width() + rect2.left;
            rect2.bottom = rect.height() + rect2.top;
            return;
        }
        if (i2 != 4) {
            return;
        }
        int i8 = rect.left + rect.right;
        rect2.left = i3 - ((rect.width() + (rect.bottom + rect.top)) / 2);
        rect2.top = (i8 - rect.height()) / 2;
        rect2.right = rect.width() + rect2.left;
        rect2.bottom = rect.height() + rect2.top;
    }

    public final float a(float f2, float[] fArr) {
        float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f4 = this.n;
            if (f4 != 1.0d) {
                float f5 = this.m;
                if (f2 < f5) {
                    f2 = 0.0f;
                }
                if (f2 > f5 && f2 < 1.0d) {
                    f2 = Math.min((f2 - f5) * f4, 1.0f);
                }
            }
        }
        Easing easing = this.f11617f.f11648b;
        float f6 = Float.NaN;
        for (MotionPaths motionPaths : this.u) {
            Easing easing2 = motionPaths.f11648b;
            if (easing2 != null) {
                float f7 = motionPaths.d;
                if (f7 < f2) {
                    easing = easing2;
                    f3 = f7;
                } else if (Float.isNaN(f6)) {
                    f6 = motionPaths.d;
                }
            }
        }
        if (easing == null) {
            return f2;
        }
        float f8 = (Float.isNaN(f6) ? 1.0f : f6) - f3;
        double d = (f2 - f3) / f8;
        float fA = (((float) easing.a(d)) * f8) + f3;
        if (fArr != null) {
            fArr[0] = (float) easing.b(d);
        }
        return fA;
    }

    /* JADX WARN: Failed to calculate best type for var: r0v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v4 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v5 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r10v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v0 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r10v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v0 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r10v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v1 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r10v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v2 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r10v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v4 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r10v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v5 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r10v6 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v6 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r11v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r11v0 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r11v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r11v1 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r11v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r11v2 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r11v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r11v3 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r11v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r11v4 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r11v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r11v5 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r12v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r12v0 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r12v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r12v1 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r12v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r12v2 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r12v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r12v3 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r12v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r12v4 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r12v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r12v5 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r12v6 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r12v6 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r13v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v0 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r13v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v1 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r13v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v2 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r13v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v3 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r13v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v4 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r13v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v5 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r13v6 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v6 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r1v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v2 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r1v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v3 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r26v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r26v0 ??, new type: float[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r4v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r4v5 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to set immutable type for var: r26v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r26v0 ??, new type: float[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v0 ??, new type: float
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public final void b(double r24, float[] r26, float[] r27) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionController.b(double, float[], float[]):void");
    }

    public final float c() {
        float[] fArr = new float[2];
        double d = 0.0d;
        double d2 = 0.0d;
        float fHypot = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        for (int i2 = 0; i2 < 100; i2++) {
            float f2 = i2 * 0.01010101f;
            double dA = f2;
            Easing easing = this.f11617f.f11648b;
            float f3 = Float.NaN;
            float f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            for (MotionPaths motionPaths : this.u) {
                Easing easing2 = motionPaths.f11648b;
                float f5 = f2;
                if (easing2 != null) {
                    float f6 = motionPaths.d;
                    if (f6 < f5) {
                        f4 = f6;
                        easing = easing2;
                    } else if (Float.isNaN(f3)) {
                        f3 = motionPaths.d;
                    }
                }
                f2 = f5;
            }
            float f7 = f2;
            if (easing != null) {
                if (Float.isNaN(f3)) {
                    f3 = 1.0f;
                }
                float f8 = f3 - f4;
                dA = (((float) easing.a((f7 - f4) / f8)) * f8) + f4;
            }
            this.f11620j[0].c(dA, this.p);
            this.f11617f.c(dA, this.o, this.p, fArr, 0);
            if (i2 > 0) {
                fHypot += (float) Math.hypot(d2 - ((double) fArr[1]), d - ((double) fArr[0]));
            }
            d = fArr[0];
            d2 = fArr[1];
        }
        return fHypot;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean d(float f2, long j2, View view, KeyCache keyCache) {
        boolean zF;
        boolean z;
        float f3;
        boolean z2;
        double d;
        float f4;
        float f5;
        float f6;
        float fSin;
        float f7;
        ViewTimeCycle.PathRotate pathRotate = null;
        float fA = a(f2, null);
        int i2 = this.E;
        if (i2 != -1) {
            float f8 = 1.0f / i2;
            float fFloor = ((float) Math.floor(fA / f8)) * f8;
            float f9 = (fA % f8) / f8;
            if (!Float.isNaN(this.F)) {
                f9 = (f9 + this.F) % 1.0f;
            }
            Interpolator interpolator = this.G;
            fA = ((interpolator != null ? interpolator.getInterpolation(f9) : ((double) f9) > 0.5d ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM) * f8) + fFloor;
        }
        HashMap map = this.y;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((ViewSpline) it.next()).e(fA, view);
            }
        }
        HashMap map2 = this.x;
        if (map2 != null) {
            ViewTimeCycle.PathRotate pathRotate2 = null;
            zF = false;
            for (ViewTimeCycle viewTimeCycle : map2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle.PathRotate) {
                    pathRotate2 = (ViewTimeCycle.PathRotate) viewTimeCycle;
                } else {
                    zF |= viewTimeCycle.f(fA, j2, view, keyCache);
                }
            }
            pathRotate = pathRotate2;
        } else {
            zF = false;
        }
        CurveFit[] curveFitArr = this.f11620j;
        MotionPaths motionPaths = this.f11617f;
        if (curveFitArr != null) {
            double d2 = fA;
            curveFitArr[0].c(d2, this.p);
            this.f11620j[0].e(d2, this.q);
            ArcCurveFit arcCurveFit = this.f11621k;
            if (arcCurveFit != null) {
                double[] dArr = this.p;
                f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (dArr.length > 0) {
                    arcCurveFit.c(d2, dArr);
                    this.f11621k.e(d2, this.q);
                }
            } else {
                f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            if (this.H) {
                z2 = zF;
                d = d2;
                f4 = 2.0f;
            } else {
                int[] iArr = this.o;
                double[] dArr2 = this.p;
                f4 = 2.0f;
                double[] dArr3 = this.q;
                boolean z3 = this.d;
                float f10 = motionPaths.f11651f;
                float fCos = motionPaths.g;
                float f11 = motionPaths.f11652h;
                int i3 = 1;
                float f12 = motionPaths.f11653i;
                if (iArr.length != 0) {
                    f5 = f11;
                    if (motionPaths.q.length <= iArr[iArr.length - 1]) {
                        int i4 = iArr[iArr.length - 1] + 1;
                        motionPaths.q = new double[i4];
                        motionPaths.r = new double[i4];
                    }
                } else {
                    f5 = f11;
                }
                Arrays.fill(motionPaths.q, Double.NaN);
                for (int i5 = 0; i5 < iArr.length; i5++) {
                    double[] dArr4 = motionPaths.q;
                    int i6 = iArr[i5];
                    dArr4[i6] = dArr2[i5];
                    motionPaths.r[i6] = dArr3[i5];
                }
                float f13 = Float.NaN;
                float f14 = f3;
                float f15 = f14;
                float f16 = f15;
                float f17 = f16;
                int i7 = 0;
                while (true) {
                    double[] dArr5 = motionPaths.q;
                    f6 = f12;
                    if (i7 >= dArr5.length) {
                        break;
                    }
                    if (Double.isNaN(dArr5[i7])) {
                        f7 = f10;
                    } else {
                        f7 = f10;
                        float f18 = (float) (Double.isNaN(motionPaths.q[i7]) ? 0.0d : motionPaths.q[i7] + 0.0d);
                        float f19 = (float) motionPaths.r[i7];
                        if (i7 == i3) {
                            f15 = f19;
                            f12 = f6;
                            f10 = f18;
                        } else if (i7 == 2) {
                            f14 = f19;
                            f10 = f7;
                            f12 = f6;
                            fCos = f18;
                        } else if (i7 == 3) {
                            f16 = f19;
                            f10 = f7;
                            f12 = f6;
                            f5 = f18;
                        } else if (i7 == 4) {
                            f17 = f19;
                            f10 = f7;
                            f12 = f18;
                        } else if (i7 == 5) {
                            f10 = f7;
                            f12 = f6;
                            f13 = f18;
                        }
                        i7++;
                        i3 = 1;
                    }
                    f10 = f7;
                    f12 = f6;
                    i7++;
                    i3 = 1;
                }
                float f20 = f10;
                MotionController motionController = motionPaths.n;
                if (motionController != null) {
                    float[] fArr = new float[2];
                    float[] fArr2 = new float[2];
                    motionController.b(d2, fArr, fArr2);
                    float f21 = fArr[0];
                    float f22 = fArr[1];
                    float f23 = fArr2[0];
                    float f24 = fArr2[1];
                    z2 = zF;
                    d = d2;
                    double d3 = f20;
                    double d4 = fCos;
                    fSin = (float) (((Math.sin(d4) * d3) + ((double) f21)) - ((double) (f5 / 2.0f)));
                    fCos = (float) ((((double) f22) - (Math.cos(d4) * d3)) - ((double) (f6 / 2.0f)));
                    double d5 = f15;
                    double d6 = f14;
                    float fCos2 = (float) ((Math.cos(d4) * d3 * d6) + (Math.sin(d4) * d5) + ((double) f23));
                    float fSin2 = (float) ((Math.sin(d4) * d3 * d6) + (((double) f24) - (Math.cos(d4) * d5)));
                    if (dArr3.length >= 2) {
                        dArr3[0] = fCos2;
                        dArr3[1] = fSin2;
                    }
                    if (!Float.isNaN(f13)) {
                        view.setRotation((float) (Math.toDegrees(Math.atan2(fSin2, fCos2)) + ((double) f13)));
                    }
                } else {
                    fSin = f20;
                    z2 = zF;
                    d = d2;
                    if (!Float.isNaN(f13)) {
                        view.setRotation(f13 + ((float) Math.toDegrees(Math.atan2((f17 / 2.0f) + f14, (f16 / 2.0f) + f15))) + f3);
                    }
                }
                float f25 = fSin;
                if (view instanceof FloatLayout) {
                    ((FloatLayout) view).a();
                } else {
                    float f26 = f25 + 0.5f;
                    int i8 = (int) f26;
                    float f27 = fCos + 0.5f;
                    int i9 = (int) f27;
                    int i10 = (int) (f26 + f5);
                    int i11 = (int) (f27 + f6);
                    int i12 = i10 - i8;
                    int i13 = i11 - i9;
                    if (i12 != view.getMeasuredWidth() || i13 != view.getMeasuredHeight() || z3) {
                        view.measure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), View.MeasureSpec.makeMeasureSpec(i13, 1073741824));
                    }
                    view.layout(i8, i9, i10, i11);
                }
                this.d = false;
            }
            if (this.C != -1) {
                if (this.D == null) {
                    this.D = ((View) view.getParent()).findViewById(this.C);
                }
                View view2 = this.D;
                if (view2 != null) {
                    float bottom = (this.D.getBottom() + view2.getTop()) / f4;
                    float right = (this.D.getRight() + this.D.getLeft()) / f4;
                    if (view.getRight() - view.getLeft() > 0 && view.getBottom() - view.getTop() > 0) {
                        float left = right - view.getLeft();
                        float top = bottom - view.getTop();
                        view.setPivotX(left);
                        view.setPivotY(top);
                    }
                }
            }
            HashMap map3 = this.y;
            if (map3 != null) {
                for (SplineSet splineSet : map3.values()) {
                    if (splineSet instanceof ViewSpline.PathRotate) {
                        double[] dArr6 = this.q;
                        if (dArr6.length > 1) {
                            view.setRotation(((ViewSpline.PathRotate) splineSet).a(fA) + ((float) Math.toDegrees(Math.atan2(dArr6[1], dArr6[0]))));
                        }
                    }
                }
            }
            if (pathRotate != 0) {
                double[] dArr7 = this.q;
                double d7 = dArr7[0];
                double d8 = dArr7[1];
                ViewTimeCycle.PathRotate pathRotate3 = pathRotate;
                view.setRotation(pathRotate3.d(fA, j2, view, keyCache) + ((float) Math.toDegrees(Math.atan2(d8, d7))));
                z = z2 | pathRotate3.f11398h;
            } else {
                z = z2;
            }
            int i14 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.f11620j;
                if (i14 >= curveFitArr2.length) {
                    break;
                }
                CurveFit curveFit = curveFitArr2[i14];
                float[] fArr3 = this.t;
                curveFit.d(d, fArr3);
                CustomSupport.b((ConstraintAttribute) motionPaths.o.get(this.r[i14 - 1]), view, fArr3);
                i14++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.f11618h;
            if (motionConstrainedPoint.f11606c == 0) {
                if (fA <= f3) {
                    view.setVisibility(motionConstrainedPoint.d);
                } else {
                    MotionConstrainedPoint motionConstrainedPoint2 = this.f11619i;
                    if (fA >= 1065353216) {
                        view.setVisibility(motionConstrainedPoint2.d);
                    } else if (motionConstrainedPoint2.d != motionConstrainedPoint.d) {
                        view.setVisibility(0);
                    }
                }
            }
            if (this.A != null) {
                int i15 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.A;
                    if (i15 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i15].f(fA, view);
                    i15++;
                }
            }
        } else {
            boolean z4 = zF;
            float f28 = motionPaths.f11651f;
            MotionPaths motionPaths2 = this.g;
            float fA2 = tr.a(motionPaths2.f11651f, f28, fA, f28);
            float f29 = motionPaths.g;
            float fA3 = tr.a(motionPaths2.g, f29, fA, f29);
            float f30 = motionPaths.f11652h;
            float f31 = motionPaths2.f11652h;
            float fA4 = tr.a(f31, f30, fA, f30);
            float f32 = motionPaths.f11653i;
            float f33 = motionPaths2.f11653i;
            float f34 = fA2 + 0.5f;
            int i16 = (int) f34;
            float f35 = fA3 + 0.5f;
            int i17 = (int) f35;
            int i18 = (int) (f34 + fA4);
            int iA = (int) (f35 + tr.a(f33, f32, fA, f32));
            int i19 = i18 - i16;
            int i20 = iA - i17;
            if (f31 != f30 || f33 != f32 || this.d) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i19, 1073741824), View.MeasureSpec.makeMeasureSpec(i20, 1073741824));
                this.d = false;
            }
            view.layout(i16, i17, i18, iA);
            z = z4;
        }
        HashMap map4 = this.z;
        if (map4 != null) {
            for (ViewOscillator viewOscillator : map4.values()) {
                if (viewOscillator instanceof ViewOscillator.PathRotateSet) {
                    double[] dArr8 = this.q;
                    view.setRotation(((ViewOscillator.PathRotateSet) viewOscillator).a(fA) + ((float) Math.toDegrees(Math.atan2(dArr8[1], dArr8[0]))));
                } else {
                    viewOscillator.g(fA, view);
                }
            }
        }
        return z;
    }

    public final void e(MotionPaths motionPaths) {
        motionPaths.d((int) this.f11614b.getX(), (int) this.f11614b.getY(), this.f11614b.getWidth(), this.f11614b.getHeight());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:262:0x073c A[PHI: r1 r18 r33 r34 r35 r36 r37 r38 r39
      0x073c: PHI (r1v133 java.lang.Object) = 
      (r1v68 java.lang.Object)
      (r1v70 java.lang.Object)
      (r1v72 java.lang.Object)
      (r1v74 java.lang.Object)
      (r1v77 java.lang.Object)
      (r1v80 java.lang.Object)
      (r1v82 java.lang.Object)
      (r1v134 java.lang.Object)
     binds: [B:319:0x0825, B:315:0x0817, B:311:0x0807, B:307:0x07f7, B:303:0x07e2, B:293:0x07be, B:289:0x07ad, B:261:0x0738] A[DONT_GENERATE, DONT_INLINE]
      0x073c: PHI (r18v11 java.lang.Object) = 
      (r18v4 java.lang.Object)
      (r18v4 java.lang.Object)
      (r18v4 java.lang.Object)
      (r18v4 java.lang.Object)
      (r18v7 java.lang.Object)
      (r18v4 java.lang.Object)
      (r18v4 java.lang.Object)
      (r18v4 java.lang.Object)
     binds: [B:319:0x0825, B:315:0x0817, B:311:0x0807, B:307:0x07f7, B:303:0x07e2, B:293:0x07be, B:289:0x07ad, B:261:0x0738] A[DONT_GENERATE, DONT_INLINE]
      0x073c: PHI (r33v11 java.lang.String) = 
      (r33v4 java.lang.String)
      (r33v4 java.lang.String)
      (r33v4 java.lang.String)
      (r33v4 java.lang.String)
      (r33v9 java.lang.String)
      (r33v4 java.lang.String)
      (r33v4 java.lang.String)
      (r33v4 java.lang.String)
     binds: [B:319:0x0825, B:315:0x0817, B:311:0x0807, B:307:0x07f7, B:303:0x07e2, B:293:0x07be, B:289:0x07ad, B:261:0x0738] A[DONT_GENERATE, DONT_INLINE]
      0x073c: PHI (r34v9 java.lang.String) = 
      (r34v3 java.lang.String)
      (r34v3 java.lang.String)
      (r34v3 java.lang.String)
      (r34v3 java.lang.String)
      (r34v3 java.lang.String)
      (r34v3 java.lang.String)
      (r34v3 java.lang.String)
      (r34v10 java.lang.String)
     binds: [B:319:0x0825, B:315:0x0817, B:311:0x0807, B:307:0x07f7, B:303:0x07e2, B:293:0x07be, B:289:0x07ad, B:261:0x0738] A[DONT_GENERATE, DONT_INLINE]
      0x073c: PHI (r35v9 java.lang.String) = 
      (r35v3 java.lang.String)
      (r35v3 java.lang.String)
      (r35v3 java.lang.String)
      (r35v3 java.lang.String)
      (r35v3 java.lang.String)
      (r35v3 java.lang.String)
      (r35v3 java.lang.String)
      (r35v10 java.lang.String)
     binds: [B:319:0x0825, B:315:0x0817, B:311:0x0807, B:307:0x07f7, B:303:0x07e2, B:293:0x07be, B:289:0x07ad, B:261:0x0738] A[DONT_GENERATE, DONT_INLINE]
      0x073c: PHI (r36v15 java.lang.Object) = 
      (r36v3 java.lang.Object)
      (r36v4 java.lang.Object)
      (r36v5 java.lang.Object)
      (r36v6 java.lang.Object)
      (r36v9 java.lang.Object)
      (r36v11 java.lang.Object)
      (r36v12 java.lang.Object)
      (r36v16 java.lang.Object)
     binds: [B:319:0x0825, B:315:0x0817, B:311:0x0807, B:307:0x07f7, B:303:0x07e2, B:293:0x07be, B:289:0x07ad, B:261:0x0738] A[DONT_GENERATE, DONT_INLINE]
      0x073c: PHI (r37v9 java.lang.String) = 
      (r37v3 java.lang.String)
      (r37v3 java.lang.String)
      (r37v3 java.lang.String)
      (r37v3 java.lang.String)
      (r37v3 java.lang.String)
      (r37v3 java.lang.String)
      (r37v3 java.lang.String)
      (r37v10 java.lang.String)
     binds: [B:319:0x0825, B:315:0x0817, B:311:0x0807, B:307:0x07f7, B:303:0x07e2, B:293:0x07be, B:289:0x07ad, B:261:0x0738] A[DONT_GENERATE, DONT_INLINE]
      0x073c: PHI (r38v9 java.lang.String) = 
      (r38v3 java.lang.String)
      (r38v3 java.lang.String)
      (r38v3 java.lang.String)
      (r38v3 java.lang.String)
      (r38v3 java.lang.String)
      (r38v3 java.lang.String)
      (r38v3 java.lang.String)
      (r38v10 java.lang.String)
     binds: [B:319:0x0825, B:315:0x0817, B:311:0x0807, B:307:0x07f7, B:303:0x07e2, B:293:0x07be, B:289:0x07ad, B:261:0x0738] A[DONT_GENERATE, DONT_INLINE]
      0x073c: PHI (r39v9 java.lang.String) = 
      (r39v3 java.lang.String)
      (r39v3 java.lang.String)
      (r39v3 java.lang.String)
      (r39v3 java.lang.String)
      (r39v3 java.lang.String)
      (r39v3 java.lang.String)
      (r39v3 java.lang.String)
      (r39v10 java.lang.String)
     binds: [B:319:0x0825, B:315:0x0817, B:311:0x0807, B:307:0x07f7, B:303:0x07e2, B:293:0x07be, B:289:0x07ad, B:261:0x0738] A[DONT_GENERATE, DONT_INLINE]] */
    public final void g(int i2, int i3, long j2) {
        String str;
        ArrayList arrayList;
        HashSet<String> hashSet;
        char c2;
        int i4;
        String str2;
        MotionPaths[] motionPathsArr;
        ConstraintAttribute constraintAttribute;
        ViewTimeCycle viewTimeCycleE;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        Object obj;
        Object obj2;
        byte b2;
        HashSet hashSet2;
        SplineSet splineSetD;
        ConstraintAttribute constraintAttribute3;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        float fMin;
        float fA;
        new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet<String> hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        HashMap map = new HashMap();
        int i5 = this.B;
        MotionPaths motionPaths = this.f11617f;
        if (i5 != -1) {
            motionPaths.f11655k = i5;
        }
        MotionConstrainedPoint motionConstrainedPoint = this.f11618h;
        float f2 = motionConstrainedPoint.f11608f;
        MotionConstrainedPoint motionConstrainedPoint2 = this.f11619i;
        if (MotionConstrainedPoint.c(f2, motionConstrainedPoint2.f11608f)) {
            hashSet4.add("alpha");
        }
        String str8 = "elevation";
        if (MotionConstrainedPoint.c(motionConstrainedPoint.g, motionConstrainedPoint2.g)) {
            hashSet4.add("elevation");
        }
        int i6 = motionConstrainedPoint.d;
        int i7 = motionConstrainedPoint2.d;
        if (i6 != i7 && motionConstrainedPoint.f11606c == 0 && (i6 == 0 || i7 == 0)) {
            hashSet4.add("alpha");
        }
        String str9 = "rotation";
        if (MotionConstrainedPoint.c(motionConstrainedPoint.f11609h, motionConstrainedPoint2.f11609h)) {
            hashSet4.add("rotation");
        }
        String str10 = "transitionPathRotate";
        if (!Float.isNaN(motionConstrainedPoint.q) || !Float.isNaN(motionConstrainedPoint2.q)) {
            hashSet4.add("transitionPathRotate");
        }
        if (!Float.isNaN(motionConstrainedPoint.r) || !Float.isNaN(motionConstrainedPoint2.r)) {
            hashSet4.add("progress");
        }
        if (MotionConstrainedPoint.c(motionConstrainedPoint.f11610i, motionConstrainedPoint2.f11610i)) {
            hashSet4.add("rotationX");
        }
        if (MotionConstrainedPoint.c(motionConstrainedPoint.f11605b, motionConstrainedPoint2.f11605b)) {
            hashSet4.add("rotationY");
        }
        Object obj3 = "rotationX";
        String str11 = "transformPivotX";
        if (MotionConstrainedPoint.c(motionConstrainedPoint.l, motionConstrainedPoint2.l)) {
            hashSet4.add("transformPivotX");
        }
        String str12 = "transformPivotY";
        if (MotionConstrainedPoint.c(motionConstrainedPoint.m, motionConstrainedPoint2.m)) {
            hashSet4.add("transformPivotY");
        }
        Object obj4 = "progress";
        if (MotionConstrainedPoint.c(motionConstrainedPoint.f11611j, motionConstrainedPoint2.f11611j)) {
            hashSet4.add("scaleX");
        }
        if (MotionConstrainedPoint.c(motionConstrainedPoint.f11612k, motionConstrainedPoint2.f11612k)) {
            hashSet4.add("scaleY");
        }
        Object obj5 = "scaleY";
        if (MotionConstrainedPoint.c(motionConstrainedPoint.n, motionConstrainedPoint2.n)) {
            hashSet4.add("translationX");
        }
        if (MotionConstrainedPoint.c(motionConstrainedPoint.o, motionConstrainedPoint2.o)) {
            hashSet4.add("translationY");
        }
        String str13 = "translationZ";
        if (MotionConstrainedPoint.c(motionConstrainedPoint.p, motionConstrainedPoint2.p)) {
            hashSet4.add("translationZ");
        }
        MotionPaths motionPaths2 = this.g;
        ArrayList arrayList2 = this.u;
        ArrayList<Key> arrayList3 = this.w;
        if (arrayList3 != null) {
            ArrayList arrayList4 = null;
            for (Key key : arrayList3) {
                String str14 = str13;
                if (key instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key;
                    MotionPaths motionPaths3 = new MotionPaths();
                    str7 = str11;
                    motionPaths3.f11649c = 0;
                    motionPaths3.f11654j = Float.NaN;
                    motionPaths3.f11655k = -1;
                    motionPaths3.l = -1;
                    motionPaths3.m = Float.NaN;
                    motionPaths3.n = null;
                    motionPaths3.o = new LinkedHashMap();
                    motionPaths3.p = 0;
                    str3 = str12;
                    motionPaths3.q = new double[18];
                    motionPaths3.r = new double[18];
                    if (motionPaths.l != -1) {
                        float f3 = keyPosition.f11565a / 100.0f;
                        motionPaths3.d = f3;
                        motionPaths3.f11649c = keyPosition.f11585h;
                        motionPaths3.p = keyPosition.o;
                        float f4 = Float.isNaN(keyPosition.f11586i) ? f3 : keyPosition.f11586i;
                        str5 = str9;
                        float f5 = Float.isNaN(keyPosition.f11587j) ? f3 : keyPosition.f11587j;
                        str4 = str8;
                        float f6 = motionPaths2.f11652h;
                        float f7 = motionPaths.f11652h;
                        float f8 = f6 - f7;
                        float f9 = motionPaths2.f11653i;
                        float f10 = motionPaths.f11653i;
                        motionPaths3.f11650e = motionPaths3.d;
                        motionPaths3.f11652h = (int) ((f8 * f4) + f7);
                        motionPaths3.f11653i = (int) (((f9 - f10) * f5) + f10);
                        int i8 = keyPosition.o;
                        str6 = str10;
                        float f11 = keyPosition.f11588k;
                        if (i8 != 2) {
                            float f12 = Float.isNaN(f11) ? f3 : keyPosition.f11588k;
                            float f13 = motionPaths2.f11651f;
                            float f14 = motionPaths.f11651f;
                            motionPaths3.f11651f = tr.a(f13, f14, f12, f14);
                            if (!Float.isNaN(keyPosition.l)) {
                                f3 = keyPosition.l;
                            }
                            float f15 = motionPaths2.g;
                            float f16 = motionPaths.g;
                            motionPaths3.g = tr.a(f15, f16, f3, f16);
                        } else {
                            if (Float.isNaN(f11)) {
                                float f17 = motionPaths2.f11651f;
                                float f18 = motionPaths.f11651f;
                                fMin = tr.a(f17, f18, f3, f18);
                            } else {
                                fMin = keyPosition.f11588k * Math.min(f5, f4);
                            }
                            motionPaths3.f11651f = fMin;
                            if (Float.isNaN(keyPosition.l)) {
                                float f19 = motionPaths2.g;
                                float f20 = motionPaths.g;
                                fA = tr.a(f19, f20, f3, f20);
                            } else {
                                fA = keyPosition.l;
                            }
                            motionPaths3.g = fA;
                        }
                        motionPaths3.l = motionPaths.l;
                        motionPaths3.f11648b = Easing.c(keyPosition.f11584f);
                        motionPaths3.f11655k = keyPosition.g;
                    } else {
                        str4 = str8;
                        str5 = str9;
                        str6 = str10;
                        int i9 = keyPosition.o;
                        int i10 = keyPosition.f11565a;
                        if (i9 == 1) {
                            float f21 = i10 / 100.0f;
                            motionPaths3.d = f21;
                            motionPaths3.f11649c = keyPosition.f11585h;
                            float f22 = Float.isNaN(keyPosition.f11586i) ? f21 : keyPosition.f11586i;
                            float f23 = Float.isNaN(keyPosition.f11587j) ? f21 : keyPosition.f11587j;
                            float f24 = motionPaths2.f11652h - motionPaths.f11652h;
                            float f25 = f21;
                            float f26 = motionPaths2.f11653i - motionPaths.f11653i;
                            motionPaths3.f11650e = motionPaths3.d;
                            if (!Float.isNaN(keyPosition.f11588k)) {
                                f25 = keyPosition.f11588k;
                            }
                            float f27 = motionPaths.f11651f;
                            float f28 = motionPaths.f11652h;
                            float f29 = (f28 / 2.0f) + f27;
                            float f30 = motionPaths.g;
                            float f31 = motionPaths.f11653i;
                            float f32 = ((motionPaths2.f11652h / 2.0f) + motionPaths2.f11651f) - f29;
                            float f33 = ((motionPaths2.f11653i / 2.0f) + motionPaths2.g) - ((f31 / 2.0f) + f30);
                            float f34 = f32 * f25;
                            float f35 = f24 * f22;
                            float f36 = f35 / 2.0f;
                            motionPaths3.f11651f = (int) ((f27 + f34) - f36);
                            float f37 = f25 * f33;
                            float f38 = f26 * f23;
                            float f39 = f38 / 2.0f;
                            motionPaths3.g = (int) ((f30 + f37) - f39);
                            motionPaths3.f11652h = (int) (f28 + f35);
                            motionPaths3.f11653i = (int) (f31 + f38);
                            float f40 = Float.isNaN(keyPosition.l) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : keyPosition.l;
                            motionPaths3.p = 1;
                            float f41 = (int) ((motionPaths.f11651f + f34) - f36);
                            float f42 = (int) ((motionPaths.g + f37) - f39);
                            motionPaths3.f11651f = f41 + ((-f33) * f40);
                            motionPaths3.g = f42 + (f32 * f40);
                            motionPaths3.l = motionPaths3.l;
                            motionPaths3.f11648b = Easing.c(keyPosition.f11584f);
                            motionPaths3.f11655k = keyPosition.g;
                        } else if (i9 == 2) {
                            float f43 = i10 / 100.0f;
                            motionPaths3.d = f43;
                            motionPaths3.f11649c = keyPosition.f11585h;
                            float f44 = Float.isNaN(keyPosition.f11586i) ? f43 : keyPosition.f11586i;
                            float f45 = Float.isNaN(keyPosition.f11587j) ? f43 : keyPosition.f11587j;
                            float f46 = motionPaths2.f11652h;
                            float f47 = motionPaths.f11652h;
                            float f48 = f46 - f47;
                            float f49 = motionPaths2.f11653i;
                            float f50 = motionPaths.f11653i;
                            float f51 = f49 - f50;
                            motionPaths3.f11650e = motionPaths3.d;
                            float f52 = motionPaths.f11651f;
                            float f53 = (f47 / 2.0f) + f52;
                            float f54 = motionPaths.g;
                            float f55 = (f46 / 2.0f) + motionPaths2.f11651f;
                            float f56 = ((f49 / 2.0f) + motionPaths2.g) - ((f50 / 2.0f) + f54);
                            float f57 = f48 * f44;
                            motionPaths3.f11651f = (int) ((((f55 - f53) * f43) + f52) - (f57 / 2.0f));
                            float f58 = f51 * f45;
                            motionPaths3.g = (int) (((f56 * f43) + f54) - (f58 / 2.0f));
                            motionPaths3.f11652h = (int) (f47 + f57);
                            motionPaths3.f11653i = (int) (f50 + f58);
                            motionPaths3.p = 2;
                            if (!Float.isNaN(keyPosition.f11588k)) {
                                motionPaths3.f11651f = (int) (keyPosition.f11588k * (i2 - ((int) motionPaths3.f11652h)));
                            }
                            if (!Float.isNaN(keyPosition.l)) {
                                motionPaths3.g = (int) (keyPosition.l * (i3 - ((int) motionPaths3.f11653i)));
                            }
                            motionPaths3.l = motionPaths3.l;
                            motionPaths3.f11648b = Easing.c(keyPosition.f11584f);
                            motionPaths3.f11655k = keyPosition.g;
                        } else if (i9 != 3) {
                            float f59 = i10 / 100.0f;
                            motionPaths3.d = f59;
                            motionPaths3.f11649c = keyPosition.f11585h;
                            float f60 = Float.isNaN(keyPosition.f11586i) ? f59 : keyPosition.f11586i;
                            float f61 = Float.isNaN(keyPosition.f11587j) ? f59 : keyPosition.f11587j;
                            float f62 = motionPaths2.f11652h;
                            float f63 = motionPaths.f11652h;
                            float f64 = f62 - f63;
                            float f65 = motionPaths2.f11653i;
                            float f66 = motionPaths.f11653i;
                            float f67 = f65 - f66;
                            motionPaths3.f11650e = motionPaths3.d;
                            float f68 = motionPaths.f11651f;
                            float f69 = (f63 / 2.0f) + f68;
                            float f70 = motionPaths.g;
                            float f71 = ((f62 / 2.0f) + motionPaths2.f11651f) - f69;
                            float f72 = ((f65 / 2.0f) + motionPaths2.g) - ((f66 / 2.0f) + f70);
                            float f73 = f64 * f60;
                            float f74 = f73 / 2.0f;
                            motionPaths3.f11651f = (int) (((f71 * f59) + f68) - f74);
                            float f75 = f67 * f61;
                            float f76 = f75 / 2.0f;
                            motionPaths3.g = (int) (((f72 * f59) + f70) - f76);
                            motionPaths3.f11652h = (int) (f63 + f73);
                            motionPaths3.f11653i = (int) (f66 + f75);
                            float f77 = Float.isNaN(keyPosition.f11588k) ? f59 : keyPosition.f11588k;
                            float f78 = Float.isNaN(keyPosition.n) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : keyPosition.n;
                            float f79 = f77;
                            float f80 = Float.isNaN(keyPosition.l) ? f59 : keyPosition.l;
                            float f81 = Float.isNaN(keyPosition.m) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : keyPosition.m;
                            motionPaths3.p = 0;
                            motionPaths3.f11651f = (int) (((f81 * f72) + ((f79 * f71) + motionPaths.f11651f)) - f74);
                            motionPaths3.g = (int) (((f72 * f80) + ((f71 * f78) + motionPaths.g)) - f76);
                            motionPaths3.f11648b = Easing.c(keyPosition.f11584f);
                            motionPaths3.f11655k = keyPosition.g;
                        } else {
                            float f82 = i10 / 100.0f;
                            motionPaths3.d = f82;
                            motionPaths3.f11649c = keyPosition.f11585h;
                            float f83 = Float.isNaN(keyPosition.f11586i) ? f82 : keyPosition.f11586i;
                            float f84 = Float.isNaN(keyPosition.f11587j) ? f82 : keyPosition.f11587j;
                            float f85 = motionPaths2.f11652h;
                            float f86 = motionPaths.f11652h;
                            float f87 = f85 - f86;
                            float f88 = motionPaths2.f11653i;
                            float f89 = motionPaths.f11653i;
                            float f90 = f88 - f89;
                            motionPaths3.f11650e = motionPaths3.d;
                            float f91 = motionPaths.f11651f;
                            float f92 = (f86 / 2.0f) + f91;
                            float f93 = motionPaths.g;
                            float f94 = (f89 / 2.0f) + f93;
                            float f95 = (f85 / 2.0f) + motionPaths2.f11651f;
                            float f96 = (f88 / 2.0f) + motionPaths2.g;
                            if (f92 > f95) {
                                f92 = f95;
                                f95 = f92;
                            }
                            if (f94 <= f96) {
                                f94 = f96;
                                f96 = f94;
                            }
                            float f97 = f95 - f92;
                            float f98 = f94 - f96;
                            float f99 = f87 * f83;
                            float f100 = f99 / 2.0f;
                            motionPaths3.f11651f = (int) (((f97 * f82) + f91) - f100);
                            float f101 = f90 * f84;
                            float f102 = f101 / 2.0f;
                            motionPaths3.g = (int) (((f98 * f82) + f93) - f102);
                            motionPaths3.f11652h = (int) (f86 + f99);
                            motionPaths3.f11653i = (int) (f89 + f101);
                            float f103 = Float.isNaN(keyPosition.f11588k) ? f82 : keyPosition.f11588k;
                            float f104 = Float.isNaN(keyPosition.n) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : keyPosition.n;
                            float f105 = f103;
                            float f106 = Float.isNaN(keyPosition.l) ? f82 : keyPosition.l;
                            float f107 = Float.isNaN(keyPosition.m) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : keyPosition.m;
                            motionPaths3.p = 0;
                            motionPaths3.f11651f = (int) (((f107 * f98) + ((f105 * f97) + motionPaths.f11651f)) - f100);
                            motionPaths3.g = (int) (((f98 * f106) + ((f97 * f104) + motionPaths.g)) - f102);
                            motionPaths3.f11648b = Easing.c(keyPosition.f11584f);
                            motionPaths3.f11655k = keyPosition.g;
                        }
                    }
                    arrayList2.add((-Collections.binarySearch(arrayList2, motionPaths3)) - 1, motionPaths3);
                    int i11 = keyPosition.f11590e;
                    if (i11 != -1) {
                        this.f11616e = i11;
                    }
                } else {
                    str3 = str12;
                    str4 = str8;
                    str5 = str9;
                    str6 = str10;
                    str7 = str11;
                    if (key instanceof KeyCycle) {
                        key.c(hashSet5);
                    } else if (key instanceof KeyTimeCycle) {
                        key.c(hashSet3);
                    } else if (key instanceof KeyTrigger) {
                        ArrayList arrayList5 = arrayList4 == null ? new ArrayList() : arrayList4;
                        arrayList5.add((KeyTrigger) key);
                        arrayList4 = arrayList5;
                    } else {
                        key.e(map);
                        key.c(hashSet4);
                    }
                }
                str13 = str14;
                str11 = str7;
                str12 = str3;
                str9 = str5;
                str8 = str4;
                str10 = str6;
            }
            str = str13;
            arrayList = arrayList4;
        } else {
            str = "translationZ";
            arrayList = null;
        }
        String str15 = str12;
        String str16 = str8;
        String str17 = str9;
        String str18 = str10;
        String str19 = str11;
        if (arrayList != null) {
            this.A = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        if (hashSet4.isEmpty()) {
            hashSet = hashSet3;
            c2 = 4;
        } else {
            this.y = new HashMap();
            for (String str20 : hashSet4) {
                if (str20.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str21 = str20.split(",")[1];
                    for (Key key2 : arrayList3) {
                        HashSet hashSet6 = hashSet3;
                        HashMap map2 = key2.d;
                        if (map2 != null && (constraintAttribute3 = (ConstraintAttribute) map2.get(str21)) != null) {
                            sparseArray.append(key2.f11565a, constraintAttribute3);
                        }
                        hashSet3 = hashSet6;
                    }
                    hashSet2 = hashSet3;
                    splineSetD = new ViewSpline.CustomSet(str20, sparseArray);
                } else {
                    hashSet2 = hashSet3;
                    splineSetD = ViewSpline.d(str20);
                }
                if (splineSetD != null) {
                    splineSetD.f11376e = str20;
                    this.y.put(str20, splineSetD);
                }
                hashSet3 = hashSet2;
            }
            hashSet = hashSet3;
            c2 = 4;
            if (arrayList3 != null) {
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    Key key3 = (Key) it.next();
                    if (key3 instanceof KeyAttributes) {
                        HashMap map3 = this.y;
                        KeyAttributes keyAttributes = (KeyAttributes) key3;
                        for (String str22 : map3.keySet()) {
                            SplineSet splineSet = (SplineSet) map3.get(str22);
                            if (splineSet != null) {
                                Iterator it2 = it;
                                if (str22.startsWith("CUSTOM")) {
                                    ConstraintAttribute constraintAttribute4 = (ConstraintAttribute) keyAttributes.d.get(str22.substring(7));
                                    if (constraintAttribute4 != null) {
                                        ((ViewSpline.CustomSet) splineSet).f11561f.append(keyAttributes.f11565a, constraintAttribute4);
                                    }
                                    it = it2;
                                } else {
                                    switch (str22.hashCode()) {
                                        case -1249320806:
                                            obj = obj3;
                                            obj2 = obj5;
                                            if (str22.equals(obj)) {
                                                b2 = 0;
                                            } else {
                                                b2 = -1;
                                            }
                                            break;
                                        case -1249320805:
                                            obj2 = obj5;
                                            obj = obj3;
                                            if (str22.equals("rotationY")) {
                                                b2 = 1;
                                            } else {
                                                b2 = -1;
                                            }
                                            break;
                                        case -1225497657:
                                            obj2 = obj5;
                                            obj = obj3;
                                            if (str22.equals("translationX")) {
                                                b2 = 2;
                                            } else {
                                                b2 = -1;
                                            }
                                            break;
                                        case -1225497656:
                                            obj2 = obj5;
                                            obj = obj3;
                                            if (str22.equals("translationY")) {
                                                b2 = 3;
                                            } else {
                                                b2 = -1;
                                            }
                                            break;
                                        case -1225497655:
                                            obj2 = obj5;
                                            String str23 = str;
                                            if (str22.equals(str23)) {
                                                b2 = 4;
                                                str = str23;
                                                obj = obj3;
                                            } else {
                                                str = str23;
                                                obj = obj3;
                                                b2 = -1;
                                            }
                                            break;
                                        case -1001078227:
                                            Object obj6 = obj4;
                                            obj2 = obj5;
                                            if (str22.equals(obj6)) {
                                                b2 = 5;
                                                obj4 = obj6;
                                                obj = obj3;
                                            } else {
                                                obj4 = obj6;
                                                obj = obj3;
                                                b2 = -1;
                                            }
                                            break;
                                        case -908189618:
                                            obj2 = obj5;
                                            obj = obj3;
                                            if (str22.equals("scaleX")) {
                                                b2 = 6;
                                            } else {
                                                b2 = -1;
                                            }
                                            break;
                                        case -908189617:
                                            Object obj7 = obj5;
                                            obj2 = obj7;
                                            obj = obj3;
                                            if (str22.equals(obj7)) {
                                                b2 = 7;
                                            } else {
                                                b2 = -1;
                                            }
                                            break;
                                        case -760884510:
                                            String str24 = str19;
                                            if (str22.equals(str24)) {
                                                b2 = 8;
                                                str19 = str24;
                                                obj = obj3;
                                                obj2 = obj5;
                                            } else {
                                                str19 = str24;
                                                obj = obj3;
                                                obj2 = obj5;
                                                b2 = -1;
                                            }
                                            break;
                                        case -760884509:
                                            String str25 = str15;
                                            if (str22.equals(str25)) {
                                                b2 = 9;
                                                str15 = str25;
                                                obj = obj3;
                                                obj2 = obj5;
                                            } else {
                                                str15 = str25;
                                                obj = obj3;
                                                obj2 = obj5;
                                                b2 = -1;
                                            }
                                            break;
                                        case -40300674:
                                            String str26 = str17;
                                            if (str22.equals(str26)) {
                                                b2 = 10;
                                                str17 = str26;
                                                obj = obj3;
                                                obj2 = obj5;
                                            } else {
                                                str17 = str26;
                                                obj = obj3;
                                                obj2 = obj5;
                                                b2 = -1;
                                            }
                                            break;
                                        case -4379043:
                                            String str27 = str16;
                                            if (str22.equals(str27)) {
                                                b2 = 11;
                                                str16 = str27;
                                                obj = obj3;
                                                obj2 = obj5;
                                            } else {
                                                str16 = str27;
                                                obj = obj3;
                                                obj2 = obj5;
                                                b2 = -1;
                                            }
                                            break;
                                        case 37232917:
                                            String str28 = str18;
                                            if (str22.equals(str28)) {
                                                b2 = 12;
                                                str18 = str28;
                                                obj = obj3;
                                                obj2 = obj5;
                                            } else {
                                                str18 = str28;
                                                obj = obj3;
                                                obj2 = obj5;
                                                b2 = -1;
                                            }
                                            break;
                                        case 92909918:
                                            if (str22.equals("alpha")) {
                                                b2 = 13;
                                                obj = obj3;
                                                obj2 = obj5;
                                            }
                                            obj = obj3;
                                            obj2 = obj5;
                                            b2 = -1;
                                            break;
                                        default:
                                            obj = obj3;
                                            obj2 = obj5;
                                            b2 = -1;
                                            break;
                                    }
                                    switch (b2) {
                                        case 0:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.f11571i)) {
                                                splineSet.b(keyAttributes.f11571i, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 1:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.f11572j)) {
                                                splineSet.b(keyAttributes.f11572j, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 2:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.p)) {
                                                splineSet.b(keyAttributes.p, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 3:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.q)) {
                                                splineSet.b(keyAttributes.q, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 4:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.r)) {
                                                splineSet.b(keyAttributes.r, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 5:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.s)) {
                                                splineSet.b(keyAttributes.s, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 6:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.n)) {
                                                splineSet.b(keyAttributes.n, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 7:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.o)) {
                                                splineSet.b(keyAttributes.o, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 8:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.f11571i)) {
                                                splineSet.b(keyAttributes.f11573k, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 9:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.f11572j)) {
                                                splineSet.b(keyAttributes.l, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 10:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.f11570h)) {
                                                splineSet.b(keyAttributes.f11570h, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 11:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.g)) {
                                                splineSet.b(keyAttributes.g, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 12:
                                            obj3 = obj;
                                            if (!Float.isNaN(keyAttributes.m)) {
                                                splineSet.b(keyAttributes.m, keyAttributes.f11565a);
                                            }
                                            break;
                                        case 13:
                                            if (!Float.isNaN(keyAttributes.f11569f)) {
                                                obj3 = obj;
                                                splineSet.b(keyAttributes.f11569f, keyAttributes.f11565a);
                                                break;
                                            }
                                        default:
                                            obj3 = obj;
                                            break;
                                    }
                                    it = it2;
                                    obj5 = obj2;
                                }
                            }
                        }
                    }
                    it = it;
                    obj5 = obj5;
                }
            }
            motionConstrainedPoint.a(this.y, 0);
            motionConstrainedPoint2.a(this.y, 100);
            for (String str29 : this.y.keySet()) {
                int iIntValue = (!map.containsKey(str29) || (num = (Integer) map.get(str29)) == null) ? 0 : num.intValue();
                SplineSet splineSet2 = (SplineSet) this.y.get(str29);
                if (splineSet2 != null) {
                    splineSet2.c(iIntValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.x == null) {
                this.x = new HashMap();
            }
            for (String str30 : hashSet) {
                if (!this.x.containsKey(str30)) {
                    if (str30.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str31 = str30.split(",")[1];
                        for (Key key4 : arrayList3) {
                            HashMap map4 = key4.d;
                            if (map4 != null && (constraintAttribute2 = (ConstraintAttribute) map4.get(str31)) != null) {
                                sparseArray2.append(key4.f11565a, constraintAttribute2);
                            }
                        }
                        viewTimeCycleE = new ViewTimeCycle.CustomSet(str30, sparseArray2);
                    } else {
                        viewTimeCycleE = ViewTimeCycle.e(j2, str30);
                    }
                    if (viewTimeCycleE != null) {
                        viewTimeCycleE.f11397f = str30;
                        this.x.put(str30, viewTimeCycleE);
                    }
                }
            }
            if (arrayList3 != null) {
                for (Key key5 : arrayList3) {
                    if (key5 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) key5).f(this.x);
                    }
                }
            }
            for (String str32 : this.x.keySet()) {
                ((ViewTimeCycle) this.x.get(str32)).c(map.containsKey(str32) ? ((Integer) map.get(str32)).intValue() : 0);
            }
        }
        int size = arrayList2.size();
        int i12 = size + 2;
        MotionPaths[] motionPathsArr2 = new MotionPaths[i12];
        motionPathsArr2[0] = motionPaths;
        motionPathsArr2[size + 1] = motionPaths2;
        if (arrayList2.size() > 0 && this.f11616e == -1) {
            this.f11616e = 0;
        }
        Iterator it3 = arrayList2.iterator();
        int i13 = 1;
        while (it3.hasNext()) {
            motionPathsArr2[i13] = (MotionPaths) it3.next();
            i13++;
        }
        HashSet hashSet7 = new HashSet();
        for (String str33 : motionPaths2.o.keySet()) {
            if (motionPaths.o.containsKey(str33)) {
                if (!hashSet4.contains("CUSTOM," + str33)) {
                    hashSet7.add(str33);
                }
            }
        }
        String[] strArr = (String[]) hashSet7.toArray(new String[0]);
        this.r = strArr;
        this.s = new int[strArr.length];
        int i14 = 0;
        while (true) {
            String[] strArr2 = this.r;
            if (i14 < strArr2.length) {
                String str34 = strArr2[i14];
                this.s[i14] = 0;
                for (int i15 = 0; i15 < i12; i15++) {
                    if (motionPathsArr2[i15].o.containsKey(str34) && (constraintAttribute = (ConstraintAttribute) motionPathsArr2[i15].o.get(str34)) != null) {
                        int[] iArr = this.s;
                        iArr[i14] = constraintAttribute.c() + iArr[i14];
                        break;
                    }
                }
                i14++;
            } else {
                boolean z = motionPathsArr2[0].f11655k != -1;
                int length = 18 + strArr2.length;
                boolean[] zArr = new boolean[length];
                for (int i16 = 1; i16 < i12; i16++) {
                    MotionPaths motionPaths4 = motionPathsArr2[i16];
                    MotionPaths motionPaths5 = motionPathsArr2[i16 - 1];
                    boolean zB = MotionPaths.b(motionPaths4.f11651f, motionPaths5.f11651f);
                    boolean zB2 = MotionPaths.b(motionPaths4.g, motionPaths5.g);
                    zArr[0] = zArr[0] | MotionPaths.b(motionPaths4.f11650e, motionPaths5.f11650e);
                    boolean z2 = zB | zB2 | z;
                    zArr[1] = zArr[1] | z2;
                    zArr[2] = z2 | zArr[2];
                    zArr[3] = zArr[3] | MotionPaths.b(motionPaths4.f11652h, motionPaths5.f11652h);
                    zArr[c2] = MotionPaths.b(motionPaths4.f11653i, motionPaths5.f11653i) | zArr[c2];
                }
                int i17 = 0;
                for (int i18 = 1; i18 < length; i18++) {
                    if (zArr[i18]) {
                        i17++;
                    }
                }
                this.o = new int[i17];
                int iMax = Math.max(2, i17);
                this.p = new double[iMax];
                this.q = new double[iMax];
                int i19 = 0;
                for (int i20 = 1; i20 < length; i20++) {
                    if (zArr[i20]) {
                        this.o[i19] = i20;
                        i19++;
                    }
                }
                int[] iArr2 = {i12, this.o.length};
                Class cls = Double.TYPE;
                double[][] dArr = (double[][]) Array.newInstance((Class<?>) cls, iArr2);
                double[] dArr2 = new double[i12];
                int i21 = 0;
                while (i21 < i12) {
                    MotionPaths motionPaths6 = motionPathsArr2[i21];
                    double[] dArr3 = dArr[i21];
                    int[] iArr3 = this.o;
                    float f108 = motionPaths6.f11650e;
                    float f109 = motionPaths6.f11651f;
                    float f110 = motionPaths6.g;
                    float f111 = motionPaths6.f11652h;
                    float f112 = motionPaths6.f11653i;
                    float f113 = motionPaths6.f11654j;
                    HashSet hashSet8 = hashSet5;
                    int i22 = i21;
                    float[] fArr = new float[6];
                    fArr[0] = f108;
                    fArr[1] = f109;
                    fArr[2] = f110;
                    fArr[3] = f111;
                    fArr[c2] = f112;
                    fArr[5] = f113;
                    int i23 = 0;
                    for (int i24 : iArr3) {
                        if (i24 < 6) {
                            dArr3[i23] = fArr[i24];
                            i23++;
                        }
                    }
                    dArr2[i22] = motionPathsArr2[i22].d;
                    i21 = i22 + 1;
                    hashSet5 = hashSet8;
                }
                HashSet<String> hashSet9 = hashSet5;
                int i25 = 0;
                while (true) {
                    int[] iArr4 = this.o;
                    if (i25 < iArr4.length) {
                        if (iArr4[i25] < 6) {
                            String strR = n00.r(MotionPaths.s[this.o[i25]], " [", new StringBuilder());
                            for (int i26 = 0; i26 < i12; i26++) {
                                StringBuilder sbT = n00.t(strR);
                                sbT.append(dArr[i26][i25]);
                                strR = sbT.toString();
                            }
                        }
                        i25++;
                    } else {
                        this.f11620j = new CurveFit[this.r.length + 1];
                        int i27 = 0;
                        while (true) {
                            String[] strArr3 = this.r;
                            if (i27 >= strArr3.length) {
                                MotionPaths[] motionPathsArr3 = motionPathsArr2;
                                this.f11620j[0] = CurveFit.a(this.f11616e, dArr2, dArr);
                                if (motionPathsArr3[0].f11655k != -1) {
                                    int[] iArr5 = new int[i12];
                                    double[] dArr4 = new double[i12];
                                    double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) cls, i12, 2);
                                    for (int i28 = 0; i28 < i12; i28++) {
                                        MotionPaths motionPaths7 = motionPathsArr3[i28];
                                        iArr5[i28] = motionPaths7.f11655k;
                                        dArr4[i28] = motionPaths7.d;
                                        double[] dArr6 = dArr5[i28];
                                        dArr6[0] = motionPaths7.f11651f;
                                        dArr6[1] = motionPaths7.g;
                                    }
                                    this.f11621k = new ArcCurveFit(iArr5, dArr4, dArr5);
                                }
                                this.z = new HashMap();
                                if (arrayList3 != null) {
                                    float fC = Float.NaN;
                                    for (String str35 : hashSet9) {
                                        ViewOscillator viewOscillatorF = ViewOscillator.f(str35);
                                        if (viewOscillatorF != null) {
                                            if (viewOscillatorF.f11349e == 1 && Float.isNaN(fC)) {
                                                fC = c();
                                            }
                                            viewOscillatorF.f11347b = str35;
                                            this.z.put(str35, viewOscillatorF);
                                        }
                                    }
                                    for (Key key6 : arrayList3) {
                                        if (key6 instanceof KeyCycle) {
                                            ((KeyCycle) key6).f(this.z);
                                        }
                                    }
                                    Iterator it4 = this.z.values().iterator();
                                    while (it4.hasNext()) {
                                        ((ViewOscillator) it4.next()).e();
                                    }
                                    return;
                                }
                                return;
                            }
                            String str36 = strArr3[i27];
                            int i29 = 0;
                            int i30 = 0;
                            double[] dArr7 = null;
                            double[][] dArr8 = null;
                            while (i29 < i12) {
                                if (motionPathsArr2[i29].o.containsKey(str36)) {
                                    if (dArr8 == null) {
                                        dArr7 = new double[i12];
                                        ConstraintAttribute constraintAttribute5 = (ConstraintAttribute) motionPathsArr2[i29].o.get(str36);
                                        dArr8 = (double[][]) Array.newInstance((Class<?>) cls, i12, constraintAttribute5 == null ? 0 : constraintAttribute5.c());
                                    }
                                    MotionPaths motionPaths8 = motionPathsArr2[i29];
                                    dArr7[i30] = motionPaths8.d;
                                    double[] dArr9 = dArr8[i30];
                                    ConstraintAttribute constraintAttribute6 = (ConstraintAttribute) motionPaths8.o.get(str36);
                                    if (constraintAttribute6 != null) {
                                        if (constraintAttribute6.c() == 1) {
                                            dArr9[0] = constraintAttribute6.a();
                                        } else {
                                            int iC = constraintAttribute6.c();
                                            float[] fArr2 = new float[iC];
                                            constraintAttribute6.b(fArr2);
                                            int i31 = 0;
                                            int i32 = 0;
                                            while (i31 < iC) {
                                                dArr9[i32] = fArr2[i31];
                                                i31++;
                                                str36 = str36;
                                                i32++;
                                                i27 = i27;
                                                motionPathsArr2 = motionPathsArr2;
                                            }
                                        }
                                    }
                                    i4 = i27;
                                    str2 = str36;
                                    motionPathsArr = motionPathsArr2;
                                    i30++;
                                } else {
                                    i4 = i27;
                                    str2 = str36;
                                    motionPathsArr = motionPathsArr2;
                                }
                                i29++;
                                str36 = str2;
                                i27 = i4;
                                motionPathsArr2 = motionPathsArr;
                            }
                            int i33 = i27 + 1;
                            this.f11620j[i33] = CurveFit.a(this.f11616e, Arrays.copyOf(dArr7, i30), (double[][]) Arrays.copyOf(dArr8, i30));
                            i27 = i33;
                            motionPathsArr2 = motionPathsArr2;
                        }
                    }
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(" start: x: ");
        MotionPaths motionPaths = this.f11617f;
        sb.append(motionPaths.f11651f);
        sb.append(" y: ");
        sb.append(motionPaths.g);
        sb.append(" end: x: ");
        MotionPaths motionPaths2 = this.g;
        sb.append(motionPaths2.f11651f);
        sb.append(" y: ");
        sb.append(motionPaths2.g);
        return sb.toString();
    }
}
