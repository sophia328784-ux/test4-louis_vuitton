package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R$styleable;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.tr;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class KeyTrigger extends Key {
    public float w;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f11598e = 0.1f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11599f = -1;
    public int g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11600h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public RectF f11601i = new RectF();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public RectF f11602j = new RectF();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public HashMap f11603k = new HashMap();
    public String l = null;
    public int m = -1;
    public String n = null;
    public String o = null;
    public int p = -1;
    public int q = -1;
    public View r = null;
    public boolean s = true;
    public boolean t = true;
    public boolean u = true;
    public float v = Float.NaN;
    public boolean x = false;

    public static class Loader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f11604a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f11604a = sparseIntArray;
            sparseIntArray.append(0, 8);
            sparseIntArray.append(4, 4);
            sparseIntArray.append(5, 1);
            sparseIntArray.append(6, 2);
            sparseIntArray.append(1, 7);
            sparseIntArray.append(7, 6);
            sparseIntArray.append(9, 5);
            sparseIntArray.append(3, 9);
            sparseIntArray.append(2, 10);
            sparseIntArray.append(8, 11);
            sparseIntArray.append(10, 12);
            sparseIntArray.append(11, 13);
            sparseIntArray.append(12, 14);
        }
    }

    public KeyTrigger() {
        this.d = new HashMap();
    }

    public static void h(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: a */
    public final Key clone() {
        KeyTrigger keyTrigger = new KeyTrigger();
        super.b(this);
        keyTrigger.l = this.l;
        keyTrigger.m = this.m;
        keyTrigger.n = this.n;
        keyTrigger.o = this.o;
        keyTrigger.p = this.p;
        keyTrigger.q = this.q;
        keyTrigger.r = this.r;
        keyTrigger.f11598e = this.f11598e;
        keyTrigger.s = this.s;
        keyTrigger.t = this.t;
        keyTrigger.u = this.u;
        keyTrigger.v = this.v;
        keyTrigger.w = this.w;
        keyTrigger.x = this.x;
        keyTrigger.f11601i = this.f11601i;
        keyTrigger.f11602j = this.f11602j;
        keyTrigger.f11603k = this.f11603k;
        return keyTrigger;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void c(HashSet hashSet) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public final void d(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f11826k);
        SparseIntArray sparseIntArray = Loader.f11604a;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            SparseIntArray sparseIntArray2 = Loader.f11604a;
            switch (sparseIntArray2.get(index)) {
                case 1:
                    this.n = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 2:
                    this.o = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 3:
                default:
                    Integer.toHexString(index);
                    sparseIntArray2.get(index);
                    break;
                case 4:
                    this.l = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 5:
                    this.f11598e = typedArrayObtainStyledAttributes.getFloat(index, this.f11598e);
                    break;
                case 6:
                    this.p = typedArrayObtainStyledAttributes.getResourceId(index, this.p);
                    break;
                case 7:
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
                case 8:
                    int integer = typedArrayObtainStyledAttributes.getInteger(index, this.f11565a);
                    this.f11565a = integer;
                    this.v = (integer + 0.5f) / 100.0f;
                    break;
                case 9:
                    this.q = typedArrayObtainStyledAttributes.getResourceId(index, this.q);
                    break;
                case 10:
                    this.x = typedArrayObtainStyledAttributes.getBoolean(index, this.x);
                    break;
                case 11:
                    this.m = typedArrayObtainStyledAttributes.getResourceId(index, this.m);
                    break;
                case 12:
                    this.f11600h = typedArrayObtainStyledAttributes.getResourceId(index, this.f11600h);
                    break;
                case 13:
                    this.f11599f = typedArrayObtainStyledAttributes.getResourceId(index, this.f11599f);
                    break;
                case 14:
                    this.g = typedArrayObtainStyledAttributes.getResourceId(index, this.g);
                    break;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008a  */
    /* JADX WARN: Code duplicated, block: B:42:0x009c  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:56:0x00cf  */
    public final void f(float f2, View view) {
        boolean z;
        boolean z2;
        float f3;
        boolean z3;
        boolean z4;
        float f4;
        float f5;
        float f6;
        boolean z5;
        boolean z6;
        boolean z7 = true;
        boolean z8 = false;
        if (this.q != -1) {
            if (this.r == null) {
                this.r = ((ViewGroup) view.getParent()).findViewById(this.q);
            }
            h(this.f11601i, this.r, this.x);
            h(this.f11602j, view, this.x);
            boolean zIntersect = this.f11601i.intersect(this.f11602j);
            boolean z9 = this.s;
            if (zIntersect) {
                if (z9) {
                    this.s = false;
                    z = true;
                } else {
                    z = false;
                }
                if (this.u) {
                    this.u = false;
                    z6 = true;
                } else {
                    z6 = false;
                }
                this.t = true;
            } else {
                if (z9) {
                    z = false;
                } else {
                    this.s = true;
                    z = true;
                }
                if (this.t) {
                    this.t = false;
                    z5 = true;
                } else {
                    z5 = false;
                }
                this.u = true;
                boolean z10 = z5;
                z6 = false;
                z8 = z10;
            }
            z7 = z6;
        } else {
            boolean z11 = this.s;
            float f7 = this.v;
            if (z11) {
                if ((this.w - f7) * (f2 - f7) < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    this.s = false;
                    z = true;
                }
                z2 = this.t;
                f3 = this.v;
                if (z2) {
                    f6 = f2 - f3;
                    if ((this.w - f3) * f6 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f6 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        this.t = false;
                        z3 = true;
                    }
                    z4 = this.u;
                    f4 = this.v;
                    if (z4) {
                        f5 = f2 - f4;
                        if ((this.w - f4) * f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f5 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            this.u = false;
                        }
                        z8 = z3;
                    } else if (Math.abs(f2 - f4) > this.f11598e) {
                        this.u = true;
                    }
                    z7 = false;
                    z8 = z3;
                } else if (Math.abs(f2 - f3) > this.f11598e) {
                    this.t = true;
                }
                z3 = false;
                z4 = this.u;
                f4 = this.v;
                if (z4) {
                    f5 = f2 - f4;
                    if ((this.w - f4) * f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    }
                    z8 = z3;
                } else if (Math.abs(f2 - f4) > this.f11598e) {
                    this.u = true;
                }
                z7 = false;
                z8 = z3;
            } else if (Math.abs(f2 - f7) > this.f11598e) {
                this.s = true;
            }
            z = false;
            z2 = this.t;
            f3 = this.v;
            if (z2) {
                f6 = f2 - f3;
                if ((this.w - f3) * f6 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                }
                z4 = this.u;
                f4 = this.v;
                if (z4) {
                    f5 = f2 - f4;
                    if ((this.w - f4) * f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    }
                    z8 = z3;
                } else if (Math.abs(f2 - f4) > this.f11598e) {
                    this.u = true;
                }
                z7 = false;
                z8 = z3;
            } else if (Math.abs(f2 - f3) > this.f11598e) {
                this.t = true;
            }
            z3 = false;
            z4 = this.u;
            f4 = this.v;
            if (z4) {
                f5 = f2 - f4;
                if ((this.w - f4) * f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                }
                z8 = z3;
            } else if (Math.abs(f2 - f4) > this.f11598e) {
                this.u = true;
            }
            z7 = false;
            z8 = z3;
        }
        this.w = f2;
        if (z8 || z || z7) {
            MotionLayout motionLayout = (MotionLayout) view.getParent();
            MotionLayout.TransitionListener transitionListener = motionLayout.K;
            CopyOnWriteArrayList copyOnWriteArrayList = motionLayout.e1;
            if (copyOnWriteArrayList != null) {
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    ((MotionLayout.TransitionListener) it.next()).getClass();
                }
            }
        }
        View viewFindViewById = this.m == -1 ? view : ((MotionLayout) view.getParent()).findViewById(this.m);
        if (z8) {
            String str = this.n;
            if (str != null) {
                g(viewFindViewById, str);
            }
            if (this.f11599f != -1) {
                ((MotionLayout) view.getParent()).H(this.f11599f, viewFindViewById);
            }
        }
        if (z7) {
            String str2 = this.o;
            if (str2 != null) {
                g(viewFindViewById, str2);
            }
            if (this.g != -1) {
                ((MotionLayout) view.getParent()).H(this.g, viewFindViewById);
            }
        }
        if (z) {
            String str3 = this.l;
            if (str3 != null) {
                g(viewFindViewById, str3);
            }
            if (this.f11600h != -1) {
                ((MotionLayout) view.getParent()).H(this.f11600h, viewFindViewById);
            }
        }
    }

    public final void g(View view, String str) {
        Method method;
        if (str == null) {
            return;
        }
        if (!str.startsWith(FileUtils.HIDDEN_PREFIX)) {
            if (this.f11603k.containsKey(str)) {
                method = (Method) this.f11603k.get(str);
                if (method == null) {
                    return;
                }
            } else {
                method = null;
            }
            if (method == null) {
                try {
                    method = view.getClass().getMethod(str, null);
                    this.f11603k.put(str, method);
                } catch (NoSuchMethodException unused) {
                    this.f11603k.put(str, null);
                    view.getClass();
                    Debug.c(view);
                    return;
                }
            }
            try {
                method.invoke(view, null);
                return;
            } catch (Exception unused2) {
                view.getClass();
                Debug.c(view);
                return;
            }
        }
        boolean z = str.length() == 1;
        if (!z) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.d.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.d.get(str2);
                if (constraintAttribute != null) {
                    Class<?> cls = view.getClass();
                    String strG = constraintAttribute.f11712b;
                    if (!constraintAttribute.f11711a) {
                        strG = tr.g("set", strG);
                    }
                    try {
                        int iOrdinal = constraintAttribute.f11713c.ordinal();
                        Class cls2 = Integer.TYPE;
                        Class cls3 = Float.TYPE;
                        switch (iOrdinal) {
                            case 0:
                            case 7:
                                cls.getMethod(strG, cls2).invoke(view, Integer.valueOf(constraintAttribute.d));
                                break;
                            case 1:
                                cls.getMethod(strG, cls3).invoke(view, Float.valueOf(constraintAttribute.f11714e));
                                break;
                            case 2:
                                cls.getMethod(strG, cls2).invoke(view, Integer.valueOf(constraintAttribute.f11716h));
                                break;
                            case 3:
                                Method method2 = cls.getMethod(strG, Drawable.class);
                                ColorDrawable colorDrawable = new ColorDrawable();
                                colorDrawable.setColor(constraintAttribute.f11716h);
                                method2.invoke(view, colorDrawable);
                                break;
                            case 4:
                                cls.getMethod(strG, CharSequence.class).invoke(view, constraintAttribute.f11715f);
                                break;
                            case 5:
                                cls.getMethod(strG, Boolean.TYPE).invoke(view, Boolean.valueOf(constraintAttribute.g));
                                break;
                            case 6:
                                cls.getMethod(strG, cls3).invoke(view, Float.valueOf(constraintAttribute.f11714e));
                                break;
                        }
                    } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused3) {
                    }
                }
            }
        }
    }
}
