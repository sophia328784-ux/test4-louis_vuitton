package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class KeyCycle extends Key {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11575e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11576f = -1;
    public String g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11577h = Float.NaN;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11578i = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f11579j = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f11580k = Float.NaN;
    public int l = -1;
    public float m = Float.NaN;
    public float n = Float.NaN;
    public float o = Float.NaN;
    public float p = Float.NaN;
    public float q = Float.NaN;
    public float r = Float.NaN;
    public float s = Float.NaN;
    public float t = Float.NaN;
    public float u = Float.NaN;
    public float v = Float.NaN;
    public float w = Float.NaN;

    public static class Loader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f11581a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f11581a = sparseIntArray;
            sparseIntArray.append(13, 1);
            sparseIntArray.append(11, 2);
            sparseIntArray.append(14, 3);
            sparseIntArray.append(10, 4);
            sparseIntArray.append(19, 5);
            sparseIntArray.append(17, 6);
            sparseIntArray.append(16, 7);
            sparseIntArray.append(20, 8);
            sparseIntArray.append(0, 9);
            sparseIntArray.append(9, 10);
            sparseIntArray.append(5, 11);
            sparseIntArray.append(6, 12);
            sparseIntArray.append(7, 13);
            sparseIntArray.append(15, 14);
            sparseIntArray.append(3, 15);
            sparseIntArray.append(4, 16);
            sparseIntArray.append(1, 17);
            sparseIntArray.append(2, 18);
            sparseIntArray.append(8, 19);
            sparseIntArray.append(12, 20);
            sparseIntArray.append(18, 21);
        }
    }

    public KeyCycle() {
        this.d = new HashMap();
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: a */
    public final Key clone() {
        KeyCycle keyCycle = new KeyCycle();
        super.b(this);
        keyCycle.f11575e = this.f11575e;
        keyCycle.f11576f = this.f11576f;
        keyCycle.g = this.g;
        keyCycle.f11577h = this.f11577h;
        keyCycle.f11578i = this.f11578i;
        keyCycle.f11579j = this.f11579j;
        keyCycle.f11580k = this.f11580k;
        keyCycle.l = this.l;
        keyCycle.m = this.m;
        keyCycle.n = this.n;
        keyCycle.o = this.o;
        keyCycle.p = this.p;
        keyCycle.q = this.q;
        keyCycle.r = this.r;
        keyCycle.s = this.s;
        keyCycle.t = this.t;
        keyCycle.u = this.u;
        keyCycle.v = this.v;
        keyCycle.w = this.w;
        return keyCycle;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void c(HashSet hashSet) {
        if (!Float.isNaN(this.m)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.o)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.r)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.s)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.t)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.u)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.v)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.w)) {
            hashSet.add("translationZ");
        }
        if (this.d.size() > 0) {
            Iterator it = this.d.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + ((String) it.next()));
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void d(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f11823h);
        SparseIntArray sparseIntArray = Loader.f11581a;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            SparseIntArray sparseIntArray2 = Loader.f11581a;
            switch (sparseIntArray2.get(index)) {
                case 1:
                    if (MotionLayout.F1) {
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f11566b);
                        this.f11566b = resourceId;
                        if (resourceId == -1) {
                            this.f11567c = typedArrayObtainStyledAttributes.getString(index);
                        }
                    } else if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        this.f11567c = typedArrayObtainStyledAttributes.getString(index);
                    } else {
                        this.f11566b = typedArrayObtainStyledAttributes.getResourceId(index, this.f11566b);
                    }
                    break;
                case 2:
                    this.f11565a = typedArrayObtainStyledAttributes.getInt(index, this.f11565a);
                    break;
                case 3:
                    typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 4:
                    this.f11575e = typedArrayObtainStyledAttributes.getInteger(index, this.f11575e);
                    break;
                case 5:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        this.g = typedArrayObtainStyledAttributes.getString(index);
                        this.f11576f = 7;
                    } else {
                        this.f11576f = typedArrayObtainStyledAttributes.getInt(index, this.f11576f);
                    }
                    break;
                case 6:
                    this.f11577h = typedArrayObtainStyledAttributes.getFloat(index, this.f11577h);
                    break;
                case 7:
                    int i3 = typedArrayObtainStyledAttributes.peekValue(index).type;
                    float f2 = this.f11578i;
                    if (i3 == 5) {
                        this.f11578i = typedArrayObtainStyledAttributes.getDimension(index, f2);
                    } else {
                        this.f11578i = typedArrayObtainStyledAttributes.getFloat(index, f2);
                    }
                    break;
                case 8:
                    this.l = typedArrayObtainStyledAttributes.getInt(index, this.l);
                    break;
                case 9:
                    this.m = typedArrayObtainStyledAttributes.getFloat(index, this.m);
                    break;
                case 10:
                    this.n = typedArrayObtainStyledAttributes.getDimension(index, this.n);
                    break;
                case 11:
                    this.o = typedArrayObtainStyledAttributes.getFloat(index, this.o);
                    break;
                case 12:
                    this.q = typedArrayObtainStyledAttributes.getFloat(index, this.q);
                    break;
                case 13:
                    this.r = typedArrayObtainStyledAttributes.getFloat(index, this.r);
                    break;
                case 14:
                    this.p = typedArrayObtainStyledAttributes.getFloat(index, this.p);
                    break;
                case 15:
                    this.s = typedArrayObtainStyledAttributes.getFloat(index, this.s);
                    break;
                case 16:
                    this.t = typedArrayObtainStyledAttributes.getFloat(index, this.t);
                    break;
                case 17:
                    this.u = typedArrayObtainStyledAttributes.getDimension(index, this.u);
                    break;
                case 18:
                    this.v = typedArrayObtainStyledAttributes.getDimension(index, this.v);
                    break;
                case 19:
                    this.w = typedArrayObtainStyledAttributes.getDimension(index, this.w);
                    break;
                case 20:
                    this.f11580k = typedArrayObtainStyledAttributes.getFloat(index, this.f11580k);
                    break;
                case 21:
                    this.f11579j = typedArrayObtainStyledAttributes.getFloat(index, this.f11579j) / 360.0f;
                    break;
                default:
                    Integer.toHexString(index);
                    sparseIntArray2.get(index);
                    break;
            }
        }
    }

    public final void f(HashMap map) {
        ViewOscillator viewOscillator;
        float f2;
        ViewOscillator viewOscillator2;
        for (String str : map.keySet()) {
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.d.get(str.substring(7));
                if (constraintAttribute != null && constraintAttribute.f11713c == ConstraintAttribute.AttributeType.FLOAT_TYPE && (viewOscillator = (ViewOscillator) map.get(str)) != null) {
                    viewOscillator.d(this.f11565a, this.f11576f, this.g, this.l, this.f11577h, this.f11578i, this.f11579j, constraintAttribute.a(), constraintAttribute);
                }
            } else {
                switch (str) {
                    case "rotationX":
                        f2 = this.q;
                        break;
                    case "rotationY":
                        f2 = this.r;
                        break;
                    case "translationX":
                        f2 = this.u;
                        break;
                    case "translationY":
                        f2 = this.v;
                        break;
                    case "translationZ":
                        f2 = this.w;
                        break;
                    case "progress":
                        f2 = this.f11580k;
                        break;
                    case "scaleX":
                        f2 = this.s;
                        break;
                    case "scaleY":
                        f2 = this.t;
                        break;
                    case "rotation":
                        f2 = this.o;
                        break;
                    case "elevation":
                        f2 = this.n;
                        break;
                    case "transitionPathRotate":
                        f2 = this.p;
                        break;
                    case "alpha":
                        f2 = this.m;
                        break;
                    case "waveOffset":
                        f2 = this.f11578i;
                        break;
                    case "wavePhase":
                        f2 = this.f11579j;
                        break;
                    default:
                        str.startsWith("CUSTOM");
                        f2 = Float.NaN;
                        break;
                }
                float f3 = f2;
                if (!Float.isNaN(f3) && (viewOscillator2 = (ViewOscillator) map.get(str)) != null) {
                    viewOscillator2.c(this.f11565a, this.f11576f, this.g, this.l, this.f11577h, this.f11578i, this.f11579j, f3);
                }
            }
        }
    }
}
