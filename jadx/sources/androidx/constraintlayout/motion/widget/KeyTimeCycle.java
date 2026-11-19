package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R$styleable;
import defpackage.tr;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class KeyTimeCycle extends Key {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11591e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11592f = Float.NaN;
    public float g = Float.NaN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11593h = Float.NaN;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11594i = Float.NaN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f11595j = Float.NaN;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f11596k = Float.NaN;
    public float l = Float.NaN;
    public float m = Float.NaN;
    public float n = Float.NaN;
    public float o = Float.NaN;
    public float p = Float.NaN;
    public float q = Float.NaN;
    public int r = 0;
    public float s = Float.NaN;
    public float t = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    public static class Loader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f11597a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f11597a = sparseIntArray;
            sparseIntArray.append(0, 1);
            sparseIntArray.append(9, 2);
            sparseIntArray.append(5, 4);
            sparseIntArray.append(6, 5);
            sparseIntArray.append(7, 6);
            sparseIntArray.append(3, 7);
            sparseIntArray.append(15, 8);
            sparseIntArray.append(14, 9);
            sparseIntArray.append(13, 10);
            sparseIntArray.append(11, 12);
            sparseIntArray.append(10, 13);
            sparseIntArray.append(4, 14);
            sparseIntArray.append(1, 15);
            sparseIntArray.append(2, 16);
            sparseIntArray.append(8, 17);
            sparseIntArray.append(12, 18);
            sparseIntArray.append(18, 20);
            sparseIntArray.append(17, 21);
            sparseIntArray.append(20, 19);
        }
    }

    public KeyTimeCycle() {
        this.d = new HashMap();
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: a */
    public final Key clone() {
        KeyTimeCycle keyTimeCycle = new KeyTimeCycle();
        super.b(this);
        keyTimeCycle.f11591e = this.f11591e;
        keyTimeCycle.r = this.r;
        keyTimeCycle.s = this.s;
        keyTimeCycle.t = this.t;
        keyTimeCycle.q = this.q;
        keyTimeCycle.f11592f = this.f11592f;
        keyTimeCycle.g = this.g;
        keyTimeCycle.f11593h = this.f11593h;
        keyTimeCycle.f11596k = this.f11596k;
        keyTimeCycle.f11594i = this.f11594i;
        keyTimeCycle.f11595j = this.f11595j;
        keyTimeCycle.l = this.l;
        keyTimeCycle.m = this.m;
        keyTimeCycle.n = this.n;
        keyTimeCycle.o = this.o;
        keyTimeCycle.p = this.p;
        return keyTimeCycle;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void c(HashSet hashSet) {
        if (!Float.isNaN(this.f11592f)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.g)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f11593h)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f11594i)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f11595j)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.o)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f11596k)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.l)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.m)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("progress");
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
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f11825j);
        SparseIntArray sparseIntArray = Loader.f11597a;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            SparseIntArray sparseIntArray2 = Loader.f11597a;
            switch (sparseIntArray2.get(index)) {
                case 1:
                    this.f11592f = typedArrayObtainStyledAttributes.getFloat(index, this.f11592f);
                    break;
                case 2:
                    this.g = typedArrayObtainStyledAttributes.getDimension(index, this.g);
                    break;
                case 3:
                case 11:
                default:
                    Integer.toHexString(index);
                    sparseIntArray2.get(index);
                    break;
                case 4:
                    this.f11593h = typedArrayObtainStyledAttributes.getFloat(index, this.f11593h);
                    break;
                case 5:
                    this.f11594i = typedArrayObtainStyledAttributes.getFloat(index, this.f11594i);
                    break;
                case 6:
                    this.f11595j = typedArrayObtainStyledAttributes.getFloat(index, this.f11595j);
                    break;
                case 7:
                    this.l = typedArrayObtainStyledAttributes.getFloat(index, this.l);
                    break;
                case 8:
                    this.f11596k = typedArrayObtainStyledAttributes.getFloat(index, this.f11596k);
                    break;
                case 9:
                    typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 10:
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
                case 12:
                    this.f11565a = typedArrayObtainStyledAttributes.getInt(index, this.f11565a);
                    break;
                case 13:
                    this.f11591e = typedArrayObtainStyledAttributes.getInteger(index, this.f11591e);
                    break;
                case 14:
                    this.m = typedArrayObtainStyledAttributes.getFloat(index, this.m);
                    break;
                case 15:
                    this.n = typedArrayObtainStyledAttributes.getDimension(index, this.n);
                    break;
                case 16:
                    this.o = typedArrayObtainStyledAttributes.getDimension(index, this.o);
                    break;
                case 17:
                    this.p = typedArrayObtainStyledAttributes.getDimension(index, this.p);
                    break;
                case 18:
                    this.q = typedArrayObtainStyledAttributes.getFloat(index, this.q);
                    break;
                case 19:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        typedArrayObtainStyledAttributes.getString(index);
                        this.r = 7;
                    } else {
                        this.r = typedArrayObtainStyledAttributes.getInt(index, this.r);
                    }
                    break;
                case 20:
                    this.s = typedArrayObtainStyledAttributes.getFloat(index, this.s);
                    break;
                case 21:
                    int i3 = typedArrayObtainStyledAttributes.peekValue(index).type;
                    float f2 = this.t;
                    if (i3 == 5) {
                        this.t = typedArrayObtainStyledAttributes.getDimension(index, f2);
                    } else {
                        this.t = typedArrayObtainStyledAttributes.getFloat(index, f2);
                    }
                    break;
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void e(HashMap map) {
        if (this.f11591e == -1) {
            return;
        }
        if (!Float.isNaN(this.f11592f)) {
            map.put("alpha", Integer.valueOf(this.f11591e));
        }
        if (!Float.isNaN(this.g)) {
            map.put("elevation", Integer.valueOf(this.f11591e));
        }
        if (!Float.isNaN(this.f11593h)) {
            map.put("rotation", Integer.valueOf(this.f11591e));
        }
        if (!Float.isNaN(this.f11594i)) {
            map.put("rotationX", Integer.valueOf(this.f11591e));
        }
        if (!Float.isNaN(this.f11595j)) {
            map.put("rotationY", Integer.valueOf(this.f11591e));
        }
        if (!Float.isNaN(this.n)) {
            map.put("translationX", Integer.valueOf(this.f11591e));
        }
        if (!Float.isNaN(this.o)) {
            map.put("translationY", Integer.valueOf(this.f11591e));
        }
        if (!Float.isNaN(this.p)) {
            map.put("translationZ", Integer.valueOf(this.f11591e));
        }
        if (!Float.isNaN(this.f11596k)) {
            map.put("transitionPathRotate", Integer.valueOf(this.f11591e));
        }
        if (!Float.isNaN(this.l)) {
            map.put("scaleX", Integer.valueOf(this.f11591e));
        }
        if (!Float.isNaN(this.l)) {
            map.put("scaleY", Integer.valueOf(this.f11591e));
        }
        if (!Float.isNaN(this.q)) {
            map.put("progress", Integer.valueOf(this.f11591e));
        }
        if (this.d.size() > 0) {
            Iterator it = this.d.keySet().iterator();
            while (it.hasNext()) {
                map.put(tr.g("CUSTOM,", (String) it.next()), Integer.valueOf(this.f11591e));
            }
        }
    }

    public final void f(HashMap map) {
        for (String str : map.keySet()) {
            ViewTimeCycle viewTimeCycle = (ViewTimeCycle) map.get(str);
            if (viewTimeCycle != null) {
                if (!str.startsWith("CUSTOM")) {
                    switch (str) {
                        case "rotationX":
                            if (Float.isNaN(this.f11594i)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.f11594i, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                        case "rotationY":
                            if (Float.isNaN(this.f11595j)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.f11595j, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                        case "translationX":
                            if (Float.isNaN(this.n)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.n, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                        case "translationY":
                            if (Float.isNaN(this.o)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.o, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                        case "translationZ":
                            if (Float.isNaN(this.p)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.p, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                        case "progress":
                            if (Float.isNaN(this.q)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.q, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                        case "scaleX":
                            if (Float.isNaN(this.l)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.l, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                        case "scaleY":
                            if (Float.isNaN(this.m)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.m, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                        case "rotation":
                            if (Float.isNaN(this.f11593h)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.f11593h, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                        case "elevation":
                            if (Float.isNaN(this.g)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.g, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                        case "transitionPathRotate":
                            if (Float.isNaN(this.f11596k)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.f11596k, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                        case "alpha":
                            if (Float.isNaN(this.f11592f)) {
                                break;
                            } else {
                                viewTimeCycle.b(this.f11592f, this.s, this.t, this.f11565a, this.r);
                                break;
                            }
                            break;
                    }
                } else {
                    ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.d.get(str.substring(7));
                    if (constraintAttribute != null) {
                        ViewTimeCycle.CustomSet customSet = (ViewTimeCycle.CustomSet) viewTimeCycle;
                        int i2 = this.f11565a;
                        float f2 = this.s;
                        int i3 = this.r;
                        float f3 = this.t;
                        customSet.l.append(i2, constraintAttribute);
                        customSet.m.append(i2, new float[]{f2, f3});
                        customSet.f11394b = Math.max(customSet.f11394b, i3);
                    }
                }
            }
        }
    }
}
