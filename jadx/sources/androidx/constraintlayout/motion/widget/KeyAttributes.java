package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R$styleable;
import defpackage.tr;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class KeyAttributes extends Key {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11568e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11569f = Float.NaN;
    public float g = Float.NaN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11570h = Float.NaN;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11571i = Float.NaN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f11572j = Float.NaN;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f11573k = Float.NaN;
    public float l = Float.NaN;
    public float m = Float.NaN;
    public float n = Float.NaN;
    public float o = Float.NaN;
    public float p = Float.NaN;
    public float q = Float.NaN;
    public float r = Float.NaN;
    public float s = Float.NaN;

    public static class Loader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f11574a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f11574a = sparseIntArray;
            sparseIntArray.append(0, 1);
            sparseIntArray.append(11, 2);
            sparseIntArray.append(7, 4);
            sparseIntArray.append(8, 5);
            sparseIntArray.append(9, 6);
            sparseIntArray.append(1, 19);
            sparseIntArray.append(2, 20);
            sparseIntArray.append(5, 7);
            sparseIntArray.append(18, 8);
            sparseIntArray.append(17, 9);
            sparseIntArray.append(15, 10);
            sparseIntArray.append(13, 12);
            sparseIntArray.append(12, 13);
            sparseIntArray.append(6, 14);
            sparseIntArray.append(3, 15);
            sparseIntArray.append(4, 16);
            sparseIntArray.append(10, 17);
            sparseIntArray.append(14, 18);
        }
    }

    public KeyAttributes() {
        this.d = new HashMap();
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: a */
    public final Key clone() {
        KeyAttributes keyAttributes = new KeyAttributes();
        super.b(this);
        keyAttributes.f11568e = this.f11568e;
        keyAttributes.f11569f = this.f11569f;
        keyAttributes.g = this.g;
        keyAttributes.f11570h = this.f11570h;
        keyAttributes.f11571i = this.f11571i;
        keyAttributes.f11572j = this.f11572j;
        keyAttributes.f11573k = this.f11573k;
        keyAttributes.l = this.l;
        keyAttributes.m = this.m;
        keyAttributes.n = this.n;
        keyAttributes.o = this.o;
        keyAttributes.p = this.p;
        keyAttributes.q = this.q;
        keyAttributes.r = this.r;
        keyAttributes.s = this.s;
        return keyAttributes;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void c(HashSet hashSet) {
        if (!Float.isNaN(this.f11569f)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.g)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f11570h)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f11571i)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f11572j)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f11573k)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.l)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.r)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.m)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.o)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.s)) {
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
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.g);
        SparseIntArray sparseIntArray = Loader.f11574a;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            SparseIntArray sparseIntArray2 = Loader.f11574a;
            switch (sparseIntArray2.get(index)) {
                case 1:
                    this.f11569f = typedArrayObtainStyledAttributes.getFloat(index, this.f11569f);
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
                    this.f11570h = typedArrayObtainStyledAttributes.getFloat(index, this.f11570h);
                    break;
                case 5:
                    this.f11571i = typedArrayObtainStyledAttributes.getFloat(index, this.f11571i);
                    break;
                case 6:
                    this.f11572j = typedArrayObtainStyledAttributes.getFloat(index, this.f11572j);
                    break;
                case 7:
                    this.n = typedArrayObtainStyledAttributes.getFloat(index, this.n);
                    break;
                case 8:
                    this.m = typedArrayObtainStyledAttributes.getFloat(index, this.m);
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
                    this.f11568e = typedArrayObtainStyledAttributes.getInteger(index, this.f11568e);
                    break;
                case 14:
                    this.o = typedArrayObtainStyledAttributes.getFloat(index, this.o);
                    break;
                case 15:
                    this.p = typedArrayObtainStyledAttributes.getDimension(index, this.p);
                    break;
                case 16:
                    this.q = typedArrayObtainStyledAttributes.getDimension(index, this.q);
                    break;
                case 17:
                    this.r = typedArrayObtainStyledAttributes.getDimension(index, this.r);
                    break;
                case 18:
                    this.s = typedArrayObtainStyledAttributes.getFloat(index, this.s);
                    break;
                case 19:
                    this.f11573k = typedArrayObtainStyledAttributes.getDimension(index, this.f11573k);
                    break;
                case 20:
                    this.l = typedArrayObtainStyledAttributes.getDimension(index, this.l);
                    break;
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void e(HashMap map) {
        if (this.f11568e == -1) {
            return;
        }
        if (!Float.isNaN(this.f11569f)) {
            map.put("alpha", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.g)) {
            map.put("elevation", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.f11570h)) {
            map.put("rotation", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.f11571i)) {
            map.put("rotationX", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.f11572j)) {
            map.put("rotationY", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.f11573k)) {
            map.put("transformPivotX", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.l)) {
            map.put("transformPivotY", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.p)) {
            map.put("translationX", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.q)) {
            map.put("translationY", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.r)) {
            map.put("translationZ", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.m)) {
            map.put("transitionPathRotate", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.n)) {
            map.put("scaleX", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.o)) {
            map.put("scaleY", Integer.valueOf(this.f11568e));
        }
        if (!Float.isNaN(this.s)) {
            map.put("progress", Integer.valueOf(this.f11568e));
        }
        if (this.d.size() > 0) {
            Iterator it = this.d.keySet().iterator();
            while (it.hasNext()) {
                map.put(tr.g("CUSTOM,", (String) it.next()), Integer.valueOf(this.f11568e));
            }
        }
    }
}
