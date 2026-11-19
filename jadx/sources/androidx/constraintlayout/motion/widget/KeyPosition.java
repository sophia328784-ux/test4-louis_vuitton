package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class KeyPosition extends KeyPositionBase {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f11584f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11585h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11586i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f11587j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f11588k;
    public float l;
    public float m;
    public float n;
    public int o;

    public static class Loader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f11589a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f11589a = sparseIntArray;
            sparseIntArray.append(4, 1);
            sparseIntArray.append(2, 2);
            sparseIntArray.append(11, 3);
            sparseIntArray.append(0, 4);
            sparseIntArray.append(1, 5);
            sparseIntArray.append(8, 6);
            sparseIntArray.append(9, 7);
            sparseIntArray.append(3, 9);
            sparseIntArray.append(10, 8);
            sparseIntArray.append(7, 11);
            sparseIntArray.append(6, 12);
            sparseIntArray.append(5, 10);
        }
    }

    public KeyPosition() {
        this.f11590e = -1;
        this.f11584f = null;
        this.g = -1;
        this.f11585h = 0;
        this.f11586i = Float.NaN;
        this.f11587j = Float.NaN;
        this.f11588k = Float.NaN;
        this.l = Float.NaN;
        this.m = Float.NaN;
        this.n = Float.NaN;
        this.o = 0;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: a */
    public final Key clone() {
        KeyPosition keyPosition = new KeyPosition();
        super.b(this);
        keyPosition.f11584f = this.f11584f;
        keyPosition.g = this.g;
        keyPosition.f11585h = this.f11585h;
        keyPosition.f11586i = this.f11586i;
        keyPosition.f11587j = Float.NaN;
        keyPosition.f11588k = this.f11588k;
        keyPosition.l = this.l;
        keyPosition.m = this.m;
        keyPosition.n = this.n;
        return keyPosition;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void d(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f11824i);
        SparseIntArray sparseIntArray = Loader.f11589a;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            SparseIntArray sparseIntArray2 = Loader.f11589a;
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
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        this.f11584f = typedArrayObtainStyledAttributes.getString(index);
                    } else {
                        this.f11584f = Easing.f11341c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                    }
                    break;
                case 4:
                    this.f11590e = typedArrayObtainStyledAttributes.getInteger(index, this.f11590e);
                    break;
                case 5:
                    this.f11585h = typedArrayObtainStyledAttributes.getInt(index, this.f11585h);
                    break;
                case 6:
                    this.f11588k = typedArrayObtainStyledAttributes.getFloat(index, this.f11588k);
                    break;
                case 7:
                    this.l = typedArrayObtainStyledAttributes.getFloat(index, this.l);
                    break;
                case 8:
                    float f2 = typedArrayObtainStyledAttributes.getFloat(index, this.f11587j);
                    this.f11586i = f2;
                    this.f11587j = f2;
                    break;
                case 9:
                    this.o = typedArrayObtainStyledAttributes.getInt(index, this.o);
                    break;
                case 10:
                    this.g = typedArrayObtainStyledAttributes.getInt(index, this.g);
                    break;
                case 11:
                    this.f11586i = typedArrayObtainStyledAttributes.getFloat(index, this.f11586i);
                    break;
                case 12:
                    this.f11587j = typedArrayObtainStyledAttributes.getFloat(index, this.f11587j);
                    break;
                default:
                    Integer.toHexString(index);
                    sparseIntArray2.get(index);
                    break;
            }
        }
    }
}
