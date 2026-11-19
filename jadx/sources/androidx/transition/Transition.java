package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import defpackage.fc;
import defpackage.md;
import defpackage.mt;
import defpackage.x1;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.StringTokenizer;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class Transition implements Cloneable {
    public static final Animator[] B = new Animator[0];
    public static final int[] C = {2, 1, 3, 4};
    public static final PathMotion D = new AnonymousClass1();
    public static final ThreadLocal E = new ThreadLocal();
    public long A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f19995c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TimeInterpolator f19996e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f19997f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TransitionValuesMaps f19998h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TransitionValuesMaps f19999i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TransitionSet f20000j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f20001k;
    public ArrayList l;
    public ArrayList m;
    public TransitionListener[] n;
    public final ArrayList o;
    public Animator[] p;
    public int q;
    public boolean r;
    public boolean s;
    public Transition t;
    public ArrayList u;
    public ArrayList v;
    public EpicenterCallback w;
    public PathMotion x;
    public long y;
    public SeekController z;

    /* JADX INFO: renamed from: androidx.transition.Transition$1, reason: invalid class name */
    public class AnonymousClass1 extends PathMotion {
        @Override // androidx.transition.PathMotion
        public final Path a(float f2, float f3, float f4, float f5) {
            Path path = new Path();
            path.moveTo(f2, f3);
            path.lineTo(f4, f5);
            return path;
        }
    }

    public static class AnimationInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f20005a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f20006b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TransitionValues f20007c;
        public WindowId d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Transition f20008e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Animator f20009f;
    }

    public static abstract class EpicenterCallback {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MatchOrder {
    }

    public class SeekController extends TransitionListenerAdapter implements TransitionSeekController, DynamicAnimation.OnAnimationUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f20011b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f20012c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SpringAnimation f20013e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final VelocityTracker1D f20014f;
        public Runnable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ TransitionSet f20015h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f20010a = -1;
        public int d = 0;

        public SeekController(TransitionSet transitionSet) {
            this.f20015h = transitionSet;
            VelocityTracker1D velocityTracker1D = new VelocityTracker1D();
            long[] jArr = new long[20];
            velocityTracker1D.f20036a = jArr;
            velocityTracker1D.f20037b = new float[20];
            velocityTracker1D.f20038c = 0;
            Arrays.fill(jArr, Long.MIN_VALUE);
            this.f20014f = velocityTracker1D;
        }

        @Override // androidx.transition.TransitionSeekController
        public final long b() {
            return this.f20015h.y;
        }

        @Override // androidx.transition.TransitionSeekController
        public final void d() {
            if (this.f20011b) {
                m();
                this.f20013e.f(this.f20015h.y + 1);
            } else {
                this.d = 1;
                this.g = null;
            }
        }

        @Override // androidx.transition.TransitionSeekController
        public final void h(long j2) {
            if (this.f20013e != null) {
                md.k("setCurrentPlayTimeMillis() called after animation has been started");
                return;
            }
            long j3 = this.f20010a;
            if (j2 == j3 || !this.f20011b) {
                return;
            }
            if (!this.f20012c) {
                TransitionSet transitionSet = this.f20015h;
                if (j2 != 0 || j3 <= 0) {
                    long j4 = transitionSet.y;
                    if (j2 == j4 && j3 < j4) {
                        j2 = 1 + j4;
                    }
                } else {
                    j2 = -1;
                }
                if (j2 != j3) {
                    transitionSet.M(j2, j3);
                    this.f20010a = j2;
                }
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            VelocityTracker1D velocityTracker1D = this.f20014f;
            int i2 = (velocityTracker1D.f20038c + 1) % 20;
            velocityTracker1D.f20038c = i2;
            velocityTracker1D.f20036a[i2] = jCurrentAnimationTimeMillis;
            velocityTracker1D.f20037b[i2] = j2;
        }

        @Override // androidx.transition.TransitionSeekController
        public final boolean isReady() {
            return this.f20011b;
        }

        @Override // androidx.transition.TransitionSeekController
        public final void j(Runnable runnable) {
            this.g = runnable;
            if (!this.f20011b) {
                this.d = 2;
            } else {
                m();
                this.f20013e.f(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void k(Transition transition) {
            this.f20012c = true;
        }

        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
        public final void l(float f2) {
            TransitionSet transitionSet = this.f20015h;
            long jMax = Math.max(-1L, Math.min(transitionSet.y + 1, Math.round(f2)));
            transitionSet.M(jMax, this.f20010a);
            this.f20010a = jMax;
        }

        public final void m() {
            if (this.f20013e != null) {
                return;
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float f2 = this.f20010a;
            VelocityTracker1D velocityTracker1D = this.f20014f;
            int i2 = velocityTracker1D.f20038c;
            float[] fArr = velocityTracker1D.f20037b;
            long[] jArr = velocityTracker1D.f20036a;
            char c2 = 20;
            int i3 = (i2 + 1) % 20;
            velocityTracker1D.f20038c = i3;
            jArr[i3] = jCurrentAnimationTimeMillis;
            fArr[i3] = f2;
            this.f20013e = new SpringAnimation(new FloatValueHolder());
            SpringForce springForce = new SpringForce();
            springForce.a(1.0f);
            springForce.b(200.0f);
            SpringAnimation springAnimation = this.f20013e;
            springAnimation.u = springForce;
            springAnimation.f13040b = this.f20010a;
            springAnimation.f13041c = true;
            ArrayList arrayList = springAnimation.l;
            if (springAnimation.f13043f) {
                mt.i("Error: Update listeners must be added beforethe animation.");
                return;
            }
            if (!arrayList.contains(this)) {
                arrayList.add(this);
            }
            SpringAnimation springAnimation2 = this.f20013e;
            int i4 = velocityTracker1D.f20038c;
            long j2 = Long.MIN_VALUE;
            float fSqrt = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (i4 != 0 || jArr[i4] != Long.MIN_VALUE) {
                long j3 = jArr[i4];
                int i5 = 0;
                long j4 = j3;
                while (true) {
                    long j5 = jArr[i4];
                    if (j5 == j2) {
                        break;
                    }
                    float f3 = j3 - j5;
                    float fAbs = Math.abs(j5 - j4);
                    if (f3 > 100.0f || fAbs > 40.0f) {
                        break;
                    }
                    if (i4 == 0) {
                        i4 = 20;
                    }
                    i4--;
                    i5++;
                    if (i5 >= 20) {
                        break;
                    }
                    j4 = j5;
                    j2 = Long.MIN_VALUE;
                }
                if (i5 >= 2) {
                    int i6 = velocityTracker1D.f20038c;
                    float f4 = 1000.0f;
                    if (i5 == 2) {
                        int i7 = i6 == 0 ? 19 : i6 - 1;
                        float f5 = jArr[i6] - jArr[i7];
                        if (f5 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            fSqrt = ((fArr[i6] - fArr[i7]) / f5) * 1000.0f;
                        }
                    } else {
                        int i8 = ((i6 - i5) + 21) % 20;
                        int i9 = (i6 + 21) % 20;
                        long j6 = jArr[i8];
                        float f6 = fArr[i8];
                        int i10 = i8 + 1;
                        int i11 = i10 % 20;
                        float f7 = 0.0f;
                        while (i11 != i9) {
                            long j7 = jArr[i11];
                            float f8 = fSqrt;
                            int i12 = i9;
                            float f9 = j7 - j6;
                            if (f9 != f8) {
                                float f10 = fArr[i11];
                                float f11 = (f10 - f6) / f9;
                                float fAbs2 = (Math.abs(f11) * (f11 - ((float) (Math.sqrt(2.0f * Math.abs(f7)) * ((double) Math.signum(f7)))))) + f7;
                                if (i11 == i10) {
                                    fAbs2 *= 0.5f;
                                }
                                f7 = fAbs2;
                                f6 = f10;
                                j6 = j7;
                            }
                            i11 = (i11 + 1) % 20;
                            fSqrt = f8;
                            i9 = i12;
                            c2 = c2;
                            f4 = f4;
                        }
                        fSqrt = ((float) (Math.sqrt(Math.abs(f7) * 2.0f) * ((double) Math.signum(f7)))) * f4;
                    }
                }
            }
            springAnimation2.f13039a = fSqrt;
            SpringAnimation springAnimation3 = this.f20013e;
            springAnimation3.g = this.f20015h.y + 1;
            springAnimation3.f13044h = -1.0f;
            springAnimation3.f13046j = 4.0f;
            DynamicAnimation.OnAnimationEndListener onAnimationEndListener = new DynamicAnimation.OnAnimationEndListener() { // from class: androidx.transition.a
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void a(float f12, boolean z) {
                    Transition.SeekController seekController = this.f20054a;
                    TransitionSet transitionSet = seekController.f20015h;
                    if (z) {
                        return;
                    }
                    Transition.TransitionNotification transitionNotification = Transition.TransitionNotification.f20017b;
                    if (f12 >= 1.0f) {
                        transitionSet.E(transitionSet, transitionNotification, false);
                        return;
                    }
                    long j8 = transitionSet.y;
                    Transition transitionW = transitionSet.W(0);
                    Transition transition = transitionW.t;
                    transitionW.t = null;
                    transitionSet.M(-1L, seekController.f20010a);
                    transitionSet.M(j8, -1L);
                    seekController.f20010a = j8;
                    Runnable runnable = seekController.g;
                    if (runnable != null) {
                        runnable.run();
                    }
                    transitionSet.v.clear();
                    if (transition != null) {
                        transition.E(transition, transitionNotification, true);
                    }
                }
            };
            ArrayList arrayList2 = springAnimation3.f13047k;
            if (arrayList2.contains(onAnimationEndListener)) {
                return;
            }
            arrayList2.add(onAnimationEndListener);
        }
    }

    public interface TransitionListener {
        void a();

        default void c(Transition transition) {
            g(transition);
        }

        default void e(Transition transition) {
            i(transition);
        }

        void f();

        void g(Transition transition);

        void i(Transition transition);

        void k(Transition transition);
    }

    public interface TransitionNotification {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f20016a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f20017b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b f20018c;
        public static final b d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final b f20019e;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.transition.b] */
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.transition.b] */
        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.transition.b] */
        /* JADX WARN: Type inference failed for: r0v3, types: [androidx.transition.b] */
        /* JADX WARN: Type inference failed for: r0v4, types: [androidx.transition.b] */
        static {
            final int i2 = 0;
            f20016a = new TransitionNotification() { // from class: androidx.transition.b
                @Override // androidx.transition.Transition.TransitionNotification
                public final void a(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                    switch (i2) {
                        case 0:
                            transitionListener.c(transition);
                            break;
                        case 1:
                            transitionListener.e(transition);
                            break;
                        case 2:
                            transitionListener.k(transition);
                            break;
                        case 3:
                            transitionListener.a();
                            break;
                        default:
                            transitionListener.f();
                            break;
                    }
                }
            };
            final int i3 = 1;
            f20017b = new TransitionNotification() { // from class: androidx.transition.b
                @Override // androidx.transition.Transition.TransitionNotification
                public final void a(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                    switch (i3) {
                        case 0:
                            transitionListener.c(transition);
                            break;
                        case 1:
                            transitionListener.e(transition);
                            break;
                        case 2:
                            transitionListener.k(transition);
                            break;
                        case 3:
                            transitionListener.a();
                            break;
                        default:
                            transitionListener.f();
                            break;
                    }
                }
            };
            final int i4 = 2;
            f20018c = new TransitionNotification() { // from class: androidx.transition.b
                @Override // androidx.transition.Transition.TransitionNotification
                public final void a(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                    switch (i4) {
                        case 0:
                            transitionListener.c(transition);
                            break;
                        case 1:
                            transitionListener.e(transition);
                            break;
                        case 2:
                            transitionListener.k(transition);
                            break;
                        case 3:
                            transitionListener.a();
                            break;
                        default:
                            transitionListener.f();
                            break;
                    }
                }
            };
            final int i5 = 3;
            d = new TransitionNotification() { // from class: androidx.transition.b
                @Override // androidx.transition.Transition.TransitionNotification
                public final void a(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                    switch (i5) {
                        case 0:
                            transitionListener.c(transition);
                            break;
                        case 1:
                            transitionListener.e(transition);
                            break;
                        case 2:
                            transitionListener.k(transition);
                            break;
                        case 3:
                            transitionListener.a();
                            break;
                        default:
                            transitionListener.f();
                            break;
                    }
                }
            };
            final int i6 = 4;
            f20019e = new TransitionNotification() { // from class: androidx.transition.b
                @Override // androidx.transition.Transition.TransitionNotification
                public final void a(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                    switch (i6) {
                        case 0:
                            transitionListener.c(transition);
                            break;
                        case 1:
                            transitionListener.e(transition);
                            break;
                        case 2:
                            transitionListener.k(transition);
                            break;
                        case 3:
                            transitionListener.a();
                            break;
                        default:
                            transitionListener.f();
                            break;
                    }
                }
            };
        }

        void a(TransitionListener transitionListener, Transition transition, boolean z);
    }

    public Transition(Context context, AttributeSet attributeSet) {
        this.f19994b = getClass().getName();
        this.f19995c = -1L;
        this.d = -1L;
        this.f19996e = null;
        this.f19997f = new ArrayList();
        this.g = new ArrayList();
        this.f19998h = new TransitionValuesMaps();
        this.f19999i = new TransitionValuesMaps();
        this.f20000j = null;
        int[] iArr = C;
        this.f20001k = iArr;
        this.o = new ArrayList();
        this.p = B;
        this.q = 0;
        this.r = false;
        this.s = false;
        this.t = null;
        this.u = null;
        this.v = new ArrayList();
        this.x = D;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f19990a);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long jD = TypedArrayUtils.d(typedArrayObtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (jD >= 0) {
            N(jD);
        }
        long j2 = xmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "startDelay") != null ? typedArrayObtainStyledAttributes.getInt(2, -1) : -1;
        if (j2 > 0) {
            S(j2);
        }
        int resourceId = xmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "interpolator") != null ? typedArrayObtainStyledAttributes.getResourceId(0, 0) : 0;
        if (resourceId > 0) {
            P(AnimationUtils.loadInterpolator(context, resourceId));
        }
        String string = xmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "matchOrder") != null ? typedArrayObtainStyledAttributes.getString(3) : null;
        if (string != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(string, ",");
            int[] iArr2 = new int[stringTokenizer.countTokens()];
            int i2 = 0;
            while (stringTokenizer.hasMoreTokens()) {
                String strTrim = stringTokenizer.nextToken().trim();
                if (com.batch.android.s.b.a.f24015b.equalsIgnoreCase(strTrim)) {
                    iArr2[i2] = 3;
                } else if ("instance".equalsIgnoreCase(strTrim)) {
                    iArr2[i2] = 1;
                } else if ("name".equalsIgnoreCase(strTrim)) {
                    iArr2[i2] = 2;
                } else if ("itemId".equalsIgnoreCase(strTrim)) {
                    iArr2[i2] = 4;
                } else {
                    if (!strTrim.isEmpty()) {
                        throw new InflateException(fc.h("Unknown match type in matchOrder: '", strTrim, "'"));
                    }
                    int[] iArr3 = new int[iArr2.length - 1];
                    System.arraycopy(iArr2, 0, iArr3, 0, i2);
                    i2--;
                    iArr2 = iArr3;
                }
                i2++;
            }
            if (iArr2.length == 0) {
                this.f20001k = iArr;
            } else {
                for (int i3 = 0; i3 < iArr2.length; i3++) {
                    int i4 = iArr2[i3];
                    if (i4 < 1 || i4 > 4) {
                        md.n("matches contains invalid value");
                        throw null;
                    }
                    for (int i5 = 0; i5 < i3; i5++) {
                        if (iArr2[i5] == i4) {
                            md.n("matches contains a duplicate value");
                            throw null;
                        }
                    }
                }
                this.f20001k = (int[]) iArr2.clone();
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void c(TransitionValuesMaps transitionValuesMaps, View view, TransitionValues transitionValues) {
        ArrayMap arrayMap = transitionValuesMaps.f20033a;
        ArrayMap arrayMap2 = transitionValuesMaps.d;
        SparseArray sparseArray = transitionValuesMaps.f20034b;
        LongSparseArray longSparseArray = transitionValuesMaps.f20035c;
        arrayMap.put(view, transitionValues);
        int id = view.getId();
        if (id >= 0) {
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            if (arrayMap2.containsKey(transitionName)) {
                arrayMap2.put(transitionName, null);
            } else {
                arrayMap2.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (longSparseArray.c(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    longSparseArray.e(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) longSparseArray.b(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    longSparseArray.e(itemIdAtPosition, null);
                }
            }
        }
    }

    public static ArrayMap x() {
        ThreadLocal threadLocal = E;
        ArrayMap arrayMap = (ArrayMap) threadLocal.get();
        if (arrayMap != null) {
            return arrayMap;
        }
        ArrayMap arrayMap2 = new ArrayMap();
        threadLocal.set(arrayMap2);
        return arrayMap2;
    }

    public boolean A() {
        return !this.o.isEmpty();
    }

    public boolean B() {
        return this instanceof ChangeBounds;
    }

    public boolean C(TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues != null) {
            HashMap map = transitionValues.f20030a;
            if (transitionValues2 != null) {
                HashMap map2 = transitionValues2.f20030a;
                String[] strArrY = y();
                if (strArrY != null) {
                    for (String str : strArrY) {
                        Object obj = map.get(str);
                        Object obj2 = map2.get(str);
                        if ((obj == null && obj2 == null) ? false : (obj == null || obj2 == null) ? true : !obj.equals(obj2)) {
                            return true;
                        }
                    }
                } else {
                    for (String str2 : map.keySet()) {
                        Object obj3 = map.get(str2);
                        Object obj4 = map2.get(str2);
                        if ((obj3 == null && obj4 == null) ? false : (obj3 == null || obj4 == null) ? true : !obj3.equals(obj4)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final boolean D(View view) {
        int id = view.getId();
        ArrayList arrayList = this.f19997f;
        int size = arrayList.size();
        ArrayList arrayList2 = this.g;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
    }

    public final void E(Transition transition, TransitionNotification transitionNotification, boolean z) {
        Transition transition2 = this.t;
        if (transition2 != null) {
            transition2.E(transition, transitionNotification, z);
        }
        ArrayList arrayList = this.u;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.u.size();
        TransitionListener[] transitionListenerArr = this.n;
        if (transitionListenerArr == null) {
            transitionListenerArr = new TransitionListener[size];
        }
        this.n = null;
        TransitionListener[] transitionListenerArr2 = (TransitionListener[]) this.u.toArray(transitionListenerArr);
        for (int i2 = 0; i2 < size; i2++) {
            transitionNotification.a(transitionListenerArr2[i2], transition, z);
            transitionListenerArr2[i2] = null;
        }
        this.n = transitionListenerArr2;
    }

    public void F(View view) {
        if (this.s) {
            return;
        }
        ArrayList arrayList = this.o;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.p);
        this.p = B;
        for (int i2 = size - 1; i2 >= 0; i2--) {
            Animator animator = animatorArr[i2];
            animatorArr[i2] = null;
            animator.pause();
        }
        this.p = animatorArr;
        E(this, TransitionNotification.d, false);
        this.r = true;
    }

    public void G() {
        ArrayMap arrayMapX = x();
        this.y = 0L;
        int i2 = 0;
        while (true) {
            int size = this.v.size();
            ArrayList arrayList = this.v;
            if (i2 >= size) {
                arrayList.clear();
                return;
            }
            Animator animator = (Animator) arrayList.get(i2);
            AnimationInfo animationInfo = (AnimationInfo) arrayMapX.get(animator);
            if (animator != null && animationInfo != null) {
                Animator animator2 = animationInfo.f20009f;
                long j2 = this.d;
                if (j2 >= 0) {
                    animator2.setDuration(j2);
                }
                long j3 = this.f19995c;
                if (j3 >= 0) {
                    animator2.setStartDelay(animator2.getStartDelay() + j3);
                }
                TimeInterpolator timeInterpolator = this.f19996e;
                if (timeInterpolator != null) {
                    animator2.setInterpolator(timeInterpolator);
                }
                this.o.add(animator);
                this.y = Math.max(this.y, animator.getTotalDuration());
            }
            i2++;
        }
    }

    public Transition H(TransitionListener transitionListener) {
        Transition transition;
        ArrayList arrayList = this.u;
        if (arrayList != null) {
            if (!arrayList.remove(transitionListener) && (transition = this.t) != null) {
                transition.H(transitionListener);
            }
            if (this.u.size() == 0) {
                this.u = null;
            }
        }
        return this;
    }

    public void J(View view) {
        this.g.remove(view);
    }

    public void K(View view) {
        if (this.r) {
            if (!this.s) {
                ArrayList arrayList = this.o;
                int size = arrayList.size();
                Animator[] animatorArr = (Animator[]) arrayList.toArray(this.p);
                this.p = B;
                for (int i2 = size - 1; i2 >= 0; i2--) {
                    Animator animator = animatorArr[i2];
                    animatorArr[i2] = null;
                    animator.resume();
                }
                this.p = animatorArr;
                E(this, TransitionNotification.f20019e, false);
            }
            this.r = false;
        }
    }

    public void L() {
        T();
        final ArrayMap arrayMapX = x();
        for (Animator animator : this.v) {
            if (arrayMapX.containsKey(animator)) {
                T();
                if (animator != null) {
                    animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator2) {
                            arrayMapX.remove(animator2);
                            Transition.this.o.remove(animator2);
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator2) {
                            Transition.this.o.add(animator2);
                        }
                    });
                    long j2 = this.d;
                    if (j2 >= 0) {
                        animator.setDuration(j2);
                    }
                    long j3 = this.f19995c;
                    if (j3 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j3);
                    }
                    TimeInterpolator timeInterpolator = this.f19996e;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.3
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator2) {
                            Transition.this.u();
                            animator2.removeListener(this);
                        }
                    });
                    animator.start();
                }
            }
        }
        this.v.clear();
        u();
    }

    public void M(long j2, long j3) {
        long j4 = this.y;
        int i2 = 0;
        boolean z = j2 < j3;
        if ((j3 < 0 && j2 >= 0) || (j3 > j4 && j2 <= j4)) {
            this.s = false;
            E(this, TransitionNotification.f20016a, z);
        }
        ArrayList arrayList = this.o;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.p);
        this.p = B;
        while (i2 < size) {
            Animator animator = animatorArr[i2];
            animatorArr[i2] = null;
            ((AnimatorSet) animator).setCurrentPlayTime(Math.min(Math.max(0L, j2), animator.getTotalDuration()));
            i2++;
            j4 = j4;
        }
        long j5 = j4;
        this.p = animatorArr;
        if ((j2 <= j5 || j3 > j5) && (j2 >= 0 || j3 < 0)) {
            return;
        }
        if (j2 > j5) {
            this.s = true;
        }
        E(this, TransitionNotification.f20017b, z);
    }

    public void N(long j2) {
        this.d = j2;
    }

    public void O(EpicenterCallback epicenterCallback) {
        this.w = epicenterCallback;
    }

    public void P(TimeInterpolator timeInterpolator) {
        this.f19996e = timeInterpolator;
    }

    public void Q(PathMotion pathMotion) {
        if (pathMotion == null) {
            this.x = D;
        } else {
            this.x = pathMotion;
        }
    }

    public void R() {
    }

    public void S(long j2) {
        this.f19995c = j2;
    }

    public final void T() {
        if (this.q == 0) {
            E(this, TransitionNotification.f20016a, false);
            this.s = false;
        }
        this.q++;
    }

    public String U(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.d != -1) {
            sb.append("dur(");
            sb.append(this.d);
            sb.append(") ");
        }
        if (this.f19995c != -1) {
            sb.append("dly(");
            sb.append(this.f19995c);
            sb.append(") ");
        }
        if (this.f19996e != null) {
            sb.append("interp(");
            sb.append(this.f19996e);
            sb.append(") ");
        }
        ArrayList arrayList = this.f19997f;
        int size = arrayList.size();
        ArrayList arrayList2 = this.g;
        if (size > 0 || arrayList2.size() > 0) {
            sb.append("tgts(");
            if (arrayList.size() > 0) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList.get(i2));
                }
            }
            if (arrayList2.size() > 0) {
                for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                    if (i3 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList2.get(i3));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    public void a(TransitionListener transitionListener) {
        if (this.u == null) {
            this.u = new ArrayList();
        }
        this.u.add(transitionListener);
    }

    public void b(View view) {
        this.g.add(view);
    }

    public void cancel() {
        ArrayList arrayList = this.o;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.p);
        this.p = B;
        for (int i2 = size - 1; i2 >= 0; i2--) {
            Animator animator = animatorArr[i2];
            animatorArr[i2] = null;
            animator.cancel();
        }
        this.p = animatorArr;
        E(this, TransitionNotification.f20018c, false);
    }

    public abstract void d(TransitionValues transitionValues);

    public final void e(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            TransitionValues transitionValues = new TransitionValues(view);
            if (z) {
                g(transitionValues);
            } else {
                d(transitionValues);
            }
            transitionValues.f20032c.add(this);
            f(transitionValues);
            if (z) {
                c(this.f19998h, view, transitionValues);
            } else {
                c(this.f19999i, view, transitionValues);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                e(viewGroup.getChildAt(i2), z);
            }
        }
    }

    public void f(TransitionValues transitionValues) {
    }

    public abstract void g(TransitionValues transitionValues);

    public final void h(ViewGroup viewGroup, boolean z) {
        i(z);
        ArrayList arrayList = this.f19997f;
        int size = arrayList.size();
        ArrayList arrayList2 = this.g;
        if (size <= 0 && arrayList2.size() <= 0) {
            e(viewGroup, z);
            return;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            View viewFindViewById = viewGroup.findViewById(((Integer) arrayList.get(i2)).intValue());
            if (viewFindViewById != null) {
                TransitionValues transitionValues = new TransitionValues(viewFindViewById);
                if (z) {
                    g(transitionValues);
                } else {
                    d(transitionValues);
                }
                transitionValues.f20032c.add(this);
                f(transitionValues);
                if (z) {
                    c(this.f19998h, viewFindViewById, transitionValues);
                } else {
                    c(this.f19999i, viewFindViewById, transitionValues);
                }
            }
        }
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            View view = (View) arrayList2.get(i3);
            TransitionValues transitionValues2 = new TransitionValues(view);
            if (z) {
                g(transitionValues2);
            } else {
                d(transitionValues2);
            }
            transitionValues2.f20032c.add(this);
            f(transitionValues2);
            if (z) {
                c(this.f19998h, view, transitionValues2);
            } else {
                c(this.f19999i, view, transitionValues2);
            }
        }
    }

    public final void i(boolean z) {
        if (z) {
            this.f19998h.f20033a.clear();
            this.f19998h.f20034b.clear();
            this.f19998h.f20035c.a();
        } else {
            this.f19999i.f20033a.clear();
            this.f19999i.f20034b.clear();
            this.f19999i.f20035c.a();
        }
    }

    @Override // 
    /* JADX INFO: renamed from: j */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.v = new ArrayList();
            transition.f19998h = new TransitionValuesMaps();
            transition.f19999i = new TransitionValuesMaps();
            transition.l = null;
            transition.m = null;
            transition.z = null;
            transition.t = this;
            transition.u = null;
            return transition;
        } catch (CloneNotSupportedException e2) {
            x1.m(e2);
            return null;
        }
    }

    public Animator k(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    public void l(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList arrayList, ArrayList arrayList2) {
        int i2;
        boolean z;
        View view;
        TransitionValues transitionValues;
        Animator animator;
        Object obj;
        Animator animator2;
        TransitionValues transitionValues2;
        ArrayMap arrayMapX = x();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        boolean z2 = w().z != null;
        int i3 = 0;
        while (i3 < size) {
            TransitionValues transitionValues3 = (TransitionValues) arrayList.get(i3);
            TransitionValues transitionValues4 = (TransitionValues) arrayList2.get(i3);
            if (transitionValues3 != null && !transitionValues3.f20032c.contains(this)) {
                transitionValues3 = null;
            }
            if (transitionValues4 != null && !transitionValues4.f20032c.contains(this)) {
                transitionValues4 = null;
            }
            if ((transitionValues3 != null || transitionValues4 != null) && (transitionValues3 == null || transitionValues4 == null || C(transitionValues3, transitionValues4))) {
                Animator animatorK = k(viewGroup, transitionValues3, transitionValues4);
                if (animatorK != null) {
                    String str = this.f19994b;
                    if (transitionValues4 != null) {
                        view = transitionValues4.f20031b;
                        String[] strArrY = y();
                        if (strArrY != null && strArrY.length > 0) {
                            transitionValues2 = new TransitionValues(view);
                            TransitionValues transitionValues5 = (TransitionValues) transitionValuesMaps2.f20033a.get(view);
                            i2 = size;
                            z = z2;
                            if (transitionValues5 != null) {
                                for (String str2 : strArrY) {
                                    transitionValues2.f20030a.put(str2, transitionValues5.f20030a.get(str2));
                                }
                            }
                            int i4 = arrayMapX.d;
                            int i5 = 0;
                            while (true) {
                                if (i5 >= i4) {
                                    animator2 = animatorK;
                                    break;
                                }
                                AnimationInfo animationInfo = (AnimationInfo) arrayMapX.get((Animator) arrayMapX.g(i5));
                                if (animationInfo.f20007c != null && animationInfo.f20005a == view && animationInfo.f20006b.equals(str) && animationInfo.f20007c.equals(transitionValues2)) {
                                    animator2 = null;
                                    break;
                                }
                                i5++;
                            }
                        } else {
                            i2 = size;
                            z = z2;
                            animator2 = animatorK;
                            transitionValues2 = null;
                        }
                        animator = animator2;
                        transitionValues = transitionValues2;
                    } else {
                        i2 = size;
                        z = z2;
                        view = transitionValues3.f20031b;
                        transitionValues = null;
                    }
                    if (animator != null) {
                        animator = animatorK;
                        WindowId windowId = viewGroup.getWindowId();
                        AnimationInfo animationInfo2 = new AnimationInfo();
                        animationInfo2.f20005a = view;
                        animationInfo2.f20006b = str;
                        animationInfo2.f20007c = transitionValues;
                        animationInfo2.d = windowId;
                        animationInfo2.f20008e = this;
                        animationInfo2.f20009f = animator;
                        if (z) {
                            obj = animator;
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.play(animator);
                            obj = animatorSet;
                        }
                        obj = animator;
                        arrayMapX.put(obj, animationInfo2);
                        this.v.add(obj);
                    } else {
                        animator = animatorK;
                    }
                }
                i3++;
                size = i2;
                z2 = z;
            }
            i2 = size;
            z = z2;
            i3++;
            size = i2;
            z2 = z;
        }
        if (sparseIntArray.size() != 0) {
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                AnimationInfo animationInfo3 = (AnimationInfo) arrayMapX.get((Animator) this.v.get(sparseIntArray.keyAt(i6)));
                animationInfo3.f20009f.setStartDelay(animationInfo3.f20009f.getStartDelay() + (((long) sparseIntArray.valueAt(i6)) - Long.MAX_VALUE));
            }
        }
    }

    public final String toString() {
        return U("");
    }

    public final void u() {
        int i2 = this.q - 1;
        this.q = i2;
        if (i2 == 0) {
            E(this, TransitionNotification.f20017b, false);
            for (int i3 = 0; i3 < this.f19998h.f20035c.g(); i3++) {
                View view = (View) this.f19998h.f20035c.h(i3);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i4 = 0; i4 < this.f19999i.f20035c.g(); i4++) {
                View view2 = (View) this.f19999i.f20035c.h(i4);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.s = true;
        }
    }

    public final TransitionValues v(View view, boolean z) {
        TransitionSet transitionSet = this.f20000j;
        if (transitionSet != null) {
            return transitionSet.v(view, z);
        }
        ArrayList arrayList = z ? this.l : this.m;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            }
            TransitionValues transitionValues = (TransitionValues) arrayList.get(i2);
            if (transitionValues == null) {
                return null;
            }
            if (transitionValues.f20031b == view) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            return (TransitionValues) (z ? this.m : this.l).get(i2);
        }
        return null;
    }

    public final Transition w() {
        TransitionSet transitionSet = this.f20000j;
        return transitionSet != null ? transitionSet.w() : this;
    }

    public String[] y() {
        return null;
    }

    public final TransitionValues z(View view, boolean z) {
        TransitionSet transitionSet = this.f20000j;
        if (transitionSet != null) {
            return transitionSet.z(view, z);
        }
        return (TransitionValues) (z ? this.f19998h : this.f19999i).f20033a.get(view);
    }

    public Transition() {
        this.f19994b = getClass().getName();
        this.f19995c = -1L;
        this.d = -1L;
        this.f19996e = null;
        this.f19997f = new ArrayList();
        this.g = new ArrayList();
        this.f19998h = new TransitionValuesMaps();
        this.f19999i = new TransitionValuesMaps();
        this.f20000j = null;
        this.f20001k = C;
        this.o = new ArrayList();
        this.p = B;
        this.q = 0;
        this.r = false;
        this.s = false;
        this.t = null;
        this.u = null;
        this.v = new ArrayList();
        this.x = D;
    }
}
