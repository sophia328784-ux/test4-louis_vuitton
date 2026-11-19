package androidx.constraintlayout.motion.utils;

import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewTimeCycle extends TimeCycleSplineSet {

    public static class AlphaSet extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            view.setAlpha(d(f2, j2, view, keyCache));
            return this.f11398h;
        }
    }

    public static class CustomSet extends ViewTimeCycle {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final String f11563k;
        public final SparseArray l;
        public final SparseArray m = new SparseArray();
        public float[] n;

        public CustomSet(String str, SparseArray<ConstraintAttribute> sparseArray) {
            this.f11563k = str.split(",")[1];
            this.l = sparseArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public final void b(float f2, float f3, float f4, int i2, int i3) {
            throw new RuntimeException("Wrong call for custom attribute");
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public final void c(int i2) {
            SparseArray sparseArray = this.l;
            int size = sparseArray.size();
            int iC = ((ConstraintAttribute) sparseArray.valueAt(0)).c();
            double[] dArr = new double[size];
            int i3 = iC + 2;
            this.n = new float[i3];
            this.g = new float[iC];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i3);
            for (int i4 = 0; i4 < size; i4++) {
                int iKeyAt = sparseArray.keyAt(i4);
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) sparseArray.valueAt(i4);
                float[] fArr = (float[]) this.m.valueAt(i4);
                dArr[i4] = ((double) iKeyAt) * 0.01d;
                constraintAttribute.b(this.n);
                int i5 = 0;
                while (true) {
                    float[] fArr2 = this.n;
                    if (i5 < fArr2.length) {
                        dArr2[i4][i5] = fArr2[i5];
                        i5++;
                    }
                }
                double[] dArr3 = dArr2[i4];
                dArr3[iC] = fArr[0];
                dArr3[iC + 1] = fArr[1];
            }
            this.f11393a = CurveFit.a(i2, dArr, dArr2);
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            this.f11393a.d(f2, this.n);
            float[] fArr = this.n;
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            long j3 = j2 - this.f11399i;
            if (Float.isNaN(this.f11400j)) {
                float fA = keyCache.a(view, this.f11563k);
                this.f11400j = fA;
                if (Float.isNaN(fA)) {
                    this.f11400j = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
            }
            float f5 = (float) ((((j3 * 1.0E-9d) * ((double) f3)) + ((double) this.f11400j)) % 1.0d);
            this.f11400j = f5;
            this.f11399i = j2;
            float fA2 = a(f5);
            this.f11398h = false;
            int i2 = 0;
            while (true) {
                float[] fArr2 = this.g;
                if (i2 >= fArr2.length) {
                    break;
                }
                boolean z = this.f11398h;
                float f6 = this.n[i2];
                this.f11398h = z | (((double) f6) != 0.0d);
                fArr2[i2] = (f6 * fA2) + f4;
                i2++;
            }
            CustomSupport.b((ConstraintAttribute) this.l.valueAt(0), view, this.g);
            if (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                this.f11398h = true;
            }
            return this.f11398h;
        }
    }

    public static class ElevationSet extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            view.setElevation(d(f2, j2, view, keyCache));
            return this.f11398h;
        }
    }

    public static class PathRotate extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            return this.f11398h;
        }
    }

    public static class ProgressSet extends ViewTimeCycle {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f11564k;

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(d(f2, j2, view, keyCache));
            } else {
                if (this.f11564k) {
                    return false;
                }
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.f11564k = true;
                    method = null;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(d(f2, j2, view, keyCache)));
                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                    }
                }
            }
            return this.f11398h;
        }
    }

    public static class RotationSet extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            view.setRotation(d(f2, j2, view, keyCache));
            return this.f11398h;
        }
    }

    public static class RotationXset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            view.setRotationX(d(f2, j2, view, keyCache));
            return this.f11398h;
        }
    }

    public static class RotationYset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            view.setRotationY(d(f2, j2, view, keyCache));
            return this.f11398h;
        }
    }

    public static class ScaleXset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            view.setScaleX(d(f2, j2, view, keyCache));
            return this.f11398h;
        }
    }

    public static class ScaleYset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            view.setScaleY(d(f2, j2, view, keyCache));
            return this.f11398h;
        }
    }

    public static class TranslationXset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            view.setTranslationX(d(f2, j2, view, keyCache));
            return this.f11398h;
        }
    }

    public static class TranslationYset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            view.setTranslationY(d(f2, j2, view, keyCache));
            return this.f11398h;
        }
    }

    public static class TranslationZset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public final boolean f(float f2, long j2, View view, KeyCache keyCache) {
            view.setTranslationZ(d(f2, j2, view, keyCache));
            return this.f11398h;
        }
    }

    public static ViewTimeCycle e(long j2, String str) {
        ViewTimeCycle rotationXset;
        switch (str) {
            case "rotationX":
                rotationXset = new RotationXset();
                break;
            case "rotationY":
                rotationXset = new RotationYset();
                break;
            case "translationX":
                rotationXset = new TranslationXset();
                break;
            case "translationY":
                rotationXset = new TranslationYset();
                break;
            case "translationZ":
                rotationXset = new TranslationZset();
                break;
            case "progress":
                ProgressSet progressSet = new ProgressSet();
                progressSet.f11564k = false;
                rotationXset = progressSet;
                break;
            case "scaleX":
                rotationXset = new ScaleXset();
                break;
            case "scaleY":
                rotationXset = new ScaleYset();
                break;
            case "rotation":
                rotationXset = new RotationSet();
                break;
            case "elevation":
                rotationXset = new ElevationSet();
                break;
            case "transitionPathRotate":
                rotationXset = new PathRotate();
                break;
            case "alpha":
                rotationXset = new AlphaSet();
                break;
            default:
                return null;
        }
        rotationXset.f11399i = j2;
        return rotationXset;
    }

    public final float d(float f2, long j2, View view, KeyCache keyCache) {
        this.f11393a.d(f2, this.g);
        float[] fArr = this.g;
        boolean z = true;
        float f3 = fArr[1];
        if (f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            this.f11398h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f11400j)) {
            float fA = keyCache.a(view, this.f11397f);
            this.f11400j = fA;
            if (Float.isNaN(fA)) {
                this.f11400j = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
        }
        float f4 = (float) (((((j2 - this.f11399i) * 1.0E-9d) * ((double) f3)) + ((double) this.f11400j)) % 1.0d);
        this.f11400j = f4;
        String str = this.f11397f;
        HashMap map = keyCache.f11345a;
        if (map.containsKey(view)) {
            HashMap map2 = (HashMap) map.get(view);
            if (map2 == null) {
                map2 = new HashMap();
            }
            if (map2.containsKey(str)) {
                float[] fArrCopyOf = (float[]) map2.get(str);
                if (fArrCopyOf == null) {
                    fArrCopyOf = new float[0];
                }
                if (fArrCopyOf.length <= 0) {
                    fArrCopyOf = Arrays.copyOf(fArrCopyOf, 1);
                }
                fArrCopyOf[0] = f4;
                map2.put(str, fArrCopyOf);
            } else {
                map2.put(str, new float[]{f4});
                map.put(view, map2);
            }
        } else {
            HashMap map3 = new HashMap();
            map3.put(str, new float[]{f4});
            map.put(view, map3);
        }
        this.f11399i = j2;
        float f5 = this.g[0];
        float fA2 = (a(this.f11400j) * f5) + this.g[2];
        if (f5 == Call.Parameters.DEFAULT_CAMERA_ZOOM && f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            z = false;
        }
        this.f11398h = z;
        return fA2;
    }

    public abstract boolean f(float f2, long j2, View view, KeyCache keyCache);
}
