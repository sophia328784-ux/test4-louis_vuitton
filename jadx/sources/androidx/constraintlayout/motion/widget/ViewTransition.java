package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.util.Xml;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R$styleable;
import com.vuitton.android.R;
import defpackage.w21;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import net.rtccloud.sdk.Call;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ViewTransition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11686a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11689e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final KeyFrames f11690f;
    public final ConstraintSet.Constraint g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11693j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f11694k;
    public final Context o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11687b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f11688c = false;
    public int d = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11691h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11692i = -1;
    public int l = 0;
    public String m = null;
    public int n = -1;
    public int p = -1;
    public int q = -1;
    public int r = -1;
    public int s = -1;
    public int t = -1;
    public int u = -1;

    public static class Animate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f11696a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11697b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MotionController f11698c;
        public final int d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ViewTransitionController f11700f;
        public final Interpolator g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f11702i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f11703j;
        public final boolean m;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final KeyCache f11699e = new KeyCache();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f11701h = false;
        public final Rect l = new Rect();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f11704k = System.nanoTime();

        public Animate(ViewTransitionController viewTransitionController, MotionController motionController, int i2, int i3, int i4, Interpolator interpolator, int i5, int i6) {
            this.m = false;
            this.f11700f = viewTransitionController;
            this.f11698c = motionController;
            this.d = i3;
            if (viewTransitionController.d == null) {
                viewTransitionController.d = new ArrayList();
            }
            viewTransitionController.d.add(this);
            this.g = interpolator;
            this.f11696a = i5;
            this.f11697b = i6;
            if (i4 == 3) {
                this.m = true;
            }
            this.f11703j = i2 == 0 ? Float.MAX_VALUE : 1.0f / i2;
            a();
        }

        public final void a() {
            boolean z = this.f11701h;
            int i2 = this.f11697b;
            int i3 = this.f11696a;
            Interpolator interpolator = this.g;
            MotionController motionController = this.f11698c;
            ViewTransitionController viewTransitionController = this.f11700f;
            if (z) {
                long jNanoTime = System.nanoTime();
                long j2 = jNanoTime - this.f11704k;
                this.f11704k = jNanoTime;
                float f2 = this.f11702i - (((float) (j2 * 1.0E-6d)) * this.f11703j);
                this.f11702i = f2;
                if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    this.f11702i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
                float interpolation = this.f11702i;
                if (interpolator != null) {
                    interpolation = interpolator.getInterpolation(interpolation);
                }
                boolean zD = motionController.d(interpolation, jNanoTime, motionController.f11614b, this.f11699e);
                if (this.f11702i <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    if (i3 != -1) {
                        motionController.f11614b.setTag(i3, Long.valueOf(System.nanoTime()));
                    }
                    if (i2 != -1) {
                        motionController.f11614b.setTag(i2, null);
                    }
                    viewTransitionController.f11708e.add(this);
                }
                if (this.f11702i > Call.Parameters.DEFAULT_CAMERA_ZOOM || zD) {
                    viewTransitionController.f11705a.invalidate();
                    return;
                }
                return;
            }
            long jNanoTime2 = System.nanoTime();
            long j3 = jNanoTime2 - this.f11704k;
            this.f11704k = jNanoTime2;
            float f3 = (((float) (j3 * 1.0E-6d)) * this.f11703j) + this.f11702i;
            this.f11702i = f3;
            if (f3 >= 1.0f) {
                this.f11702i = 1.0f;
            }
            float interpolation2 = this.f11702i;
            if (interpolator != null) {
                interpolation2 = interpolator.getInterpolation(interpolation2);
            }
            boolean zD2 = motionController.d(interpolation2, jNanoTime2, motionController.f11614b, this.f11699e);
            if (this.f11702i >= 1.0f) {
                if (i3 != -1) {
                    motionController.f11614b.setTag(i3, Long.valueOf(System.nanoTime()));
                }
                if (i2 != -1) {
                    motionController.f11614b.setTag(i2, null);
                }
                if (!this.m) {
                    viewTransitionController.f11708e.add(this);
                }
            }
            if (this.f11702i < 1.0f || zD2) {
                viewTransitionController.f11705a.invalidate();
            }
        }

        public final void b() {
            this.f11701h = true;
            int i2 = this.d;
            if (i2 != -1) {
                this.f11703j = i2 == 0 ? Float.MAX_VALUE : 1.0f / i2;
            }
            this.f11700f.f11705a.invalidate();
            this.f11704k = System.nanoTime();
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x008f A[Catch: IOException | XmlPullParserException -> 0x00ac, IOException | XmlPullParserException -> 0x00ac, TryCatch #0 {IOException | XmlPullParserException -> 0x00ac, blocks: (B:3:0x0024, B:11:0x0035, B:11:0x0035, B:33:0x00a6, B:33:0x00a6, B:14:0x0041, B:14:0x0041, B:15:0x0049, B:15:0x0049, B:32:0x008f, B:32:0x008f, B:17:0x004d, B:17:0x004d, B:22:0x005e, B:22:0x005e, B:20:0x0056, B:20:0x0056, B:23:0x0066, B:23:0x0066, B:25:0x006c, B:25:0x006c, B:26:0x0070, B:26:0x0070, B:28:0x0078, B:28:0x0078, B:29:0x0080, B:29:0x0080, B:31:0x0088, B:31:0x0088), top: B:37:0x0024 }] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public ViewTransition(Context context, XmlResourceParser xmlResourceParser) {
        this.o = context;
        try {
            int eventType = xmlResourceParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlResourceParser.getName();
                    switch (name.hashCode()) {
                        case -1962203927:
                            if (!name.equals("ConstraintOverride")) {
                                StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
                                stackTraceElement.getFileName();
                                stackTraceElement.getLineNumber();
                                stackTraceElement.getMethodName();
                                xmlResourceParser.getLineNumber();
                            } else {
                                this.g = ConstraintSet.e(context, xmlResourceParser);
                            }
                            break;
                        case -1239391468:
                            if (!name.equals("KeyFrameSet")) {
                                StackTraceElement stackTraceElement2 = new Throwable().getStackTrace()[1];
                                stackTraceElement2.getFileName();
                                stackTraceElement2.getLineNumber();
                                stackTraceElement2.getMethodName();
                                xmlResourceParser.getLineNumber();
                            } else {
                                this.f11690f = new KeyFrames(context, xmlResourceParser);
                            }
                            break;
                        case 61998586:
                            if (!name.equals("ViewTransition")) {
                                StackTraceElement stackTraceElement3 = new Throwable().getStackTrace()[1];
                                stackTraceElement3.getFileName();
                                stackTraceElement3.getLineNumber();
                                stackTraceElement3.getMethodName();
                                xmlResourceParser.getLineNumber();
                            } else {
                                d(context, xmlResourceParser);
                            }
                            break;
                        case 366511058:
                            if (!name.equals("CustomMethod")) {
                                StackTraceElement stackTraceElement4 = new Throwable().getStackTrace()[1];
                                stackTraceElement4.getFileName();
                                stackTraceElement4.getLineNumber();
                                stackTraceElement4.getMethodName();
                                xmlResourceParser.getLineNumber();
                            } else {
                                ConstraintAttribute.d(context, xmlResourceParser, this.g.g);
                            }
                            break;
                        case 1791837707:
                            if (!name.equals("CustomAttribute")) {
                                StackTraceElement stackTraceElement5 = new Throwable().getStackTrace()[1];
                                stackTraceElement5.getFileName();
                                stackTraceElement5.getLineNumber();
                                stackTraceElement5.getMethodName();
                                xmlResourceParser.getLineNumber();
                            } else {
                                ConstraintAttribute.d(context, xmlResourceParser, this.g.g);
                            }
                            break;
                        default:
                            StackTraceElement stackTraceElement6 = new Throwable().getStackTrace()[1];
                            stackTraceElement6.getFileName();
                            stackTraceElement6.getLineNumber();
                            stackTraceElement6.getMethodName();
                            xmlResourceParser.getLineNumber();
                            break;
                    }
                } else if (eventType == 3 && "ViewTransition".equals(xmlResourceParser.getName())) {
                    return;
                }
                eventType = xmlResourceParser.next();
            }
        } catch (IOException | XmlPullParserException unused) {
        }
    }

    public final void a(ViewTransitionController viewTransitionController, MotionLayout motionLayout, int i2, ConstraintSet constraintSet, View... viewArr) {
        Interpolator interpolatorLoadInterpolator;
        Interpolator interpolator;
        if (this.f11688c) {
            return;
        }
        int i3 = this.f11689e;
        KeyFrames keyFrames = this.f11690f;
        int i4 = 0;
        if (i3 == 2) {
            View view = viewArr[0];
            MotionController motionController = new MotionController(view);
            MotionPaths motionPaths = motionController.f11617f;
            motionPaths.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            motionPaths.f11650e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            motionController.H = true;
            motionPaths.d(view.getX(), view.getY(), view.getWidth(), view.getHeight());
            motionController.g.d(view.getX(), view.getY(), view.getWidth(), view.getHeight());
            MotionConstrainedPoint motionConstrainedPoint = motionController.f11618h;
            motionConstrainedPoint.getClass();
            view.getX();
            view.getY();
            view.getWidth();
            view.getHeight();
            motionConstrainedPoint.b(view);
            MotionConstrainedPoint motionConstrainedPoint2 = motionController.f11619i;
            motionConstrainedPoint2.getClass();
            view.getX();
            view.getY();
            view.getWidth();
            view.getHeight();
            motionConstrainedPoint2.b(view);
            ArrayList arrayList = (ArrayList) keyFrames.f11583a.get(-1);
            if (arrayList != null) {
                motionController.w.addAll(arrayList);
            }
            motionController.g(motionLayout.getWidth(), motionLayout.getHeight(), System.nanoTime());
            int i5 = this.f11691h;
            int i6 = this.f11692i;
            int i7 = this.f11687b;
            Context context = motionLayout.getContext();
            int i8 = this.l;
            if (i8 == -2) {
                interpolatorLoadInterpolator = AnimationUtils.loadInterpolator(context, this.n);
            } else if (i8 == -1) {
                final Easing easingC = Easing.c(this.m);
                interpolatorLoadInterpolator = new Interpolator() { // from class: androidx.constraintlayout.motion.widget.ViewTransition.1
                    @Override // android.animation.TimeInterpolator
                    public final float getInterpolation(float f2) {
                        return (float) easingC.a(f2);
                    }
                };
            } else if (i8 == 0) {
                interpolatorLoadInterpolator = new AccelerateDecelerateInterpolator();
            } else if (i8 == 1) {
                interpolatorLoadInterpolator = new AccelerateInterpolator();
            } else if (i8 == 2) {
                interpolatorLoadInterpolator = new DecelerateInterpolator();
            } else if (i8 == 4) {
                interpolatorLoadInterpolator = new BounceInterpolator();
            } else {
                if (i8 != 5) {
                    if (i8 != 6) {
                        interpolator = null;
                    } else {
                        interpolatorLoadInterpolator = new AnticipateInterpolator();
                    }
                    new Animate(viewTransitionController, motionController, i5, i6, i7, interpolator, this.p, this.q);
                    return;
                }
                interpolatorLoadInterpolator = new OvershootInterpolator();
            }
            interpolator = interpolatorLoadInterpolator;
            new Animate(viewTransitionController, motionController, i5, i6, i7, interpolator, this.p, this.q);
            return;
        }
        ConstraintSet.Constraint constraint = this.g;
        if (i3 == 1) {
            int[] constraintSetIds = motionLayout.getConstraintSetIds();
            int i9 = 0;
            while (i9 < constraintSetIds.length) {
                int i10 = constraintSetIds[i9];
                if (i10 != i2) {
                    MotionScene motionScene = motionLayout.r;
                    ConstraintSet constraintSetB = motionScene == null ? null : motionScene.b(i10);
                    int length = viewArr.length;
                    for (int i11 = i4; i11 < length; i11++) {
                        ConstraintSet.Constraint constraintK = constraintSetB.k(viewArr[i11].getId());
                        if (constraint != null) {
                            constraint.a(constraintK);
                            constraintK.g.putAll(constraint.g);
                        }
                    }
                }
                i9++;
                i4 = 0;
            }
        }
        ConstraintSet constraintSet2 = new ConstraintSet();
        HashMap map = constraintSet2.g;
        map.clear();
        for (Integer num : constraintSet.g.keySet()) {
            ConstraintSet.Constraint constraint2 = (ConstraintSet.Constraint) constraintSet.g.get(num);
            if (constraint2 != null) {
                map.put(num, constraint2.clone());
            }
        }
        for (View view2 : viewArr) {
            ConstraintSet.Constraint constraintK2 = constraintSet2.k(view2.getId());
            if (constraint != null) {
                constraint.a(constraintK2);
                constraintK2.g.putAll(constraint.g);
            }
        }
        motionLayout.G(i2, constraintSet2);
        motionLayout.G(R.id.view_transition, constraintSet);
        motionLayout.C(R.id.view_transition);
        MotionScene.Transition transition = new MotionScene.Transition(-1, motionLayout.r, R.id.view_transition, i2);
        for (View view3 : viewArr) {
            int i12 = this.f11691h;
            if (i12 != -1) {
                transition.f11671h = Math.max(i12, 8);
            }
            transition.p = this.d;
            int i13 = this.l;
            String str = this.m;
            int i14 = this.n;
            transition.f11669e = i13;
            transition.f11670f = str;
            transition.g = i14;
            int id = view3.getId();
            if (keyFrames != null) {
                ArrayList arrayList2 = (ArrayList) keyFrames.f11583a.get(-1);
                KeyFrames keyFrames2 = new KeyFrames();
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    Key keyClone = ((Key) it.next()).clone();
                    keyClone.f11566b = id;
                    keyFrames2.b(keyClone);
                }
                transition.f11674k.add(keyFrames2);
            }
        }
        motionLayout.setTransition(transition);
        w21 w21Var = new w21(this, viewArr, 16);
        motionLayout.r(1.0f);
        motionLayout.v1 = w21Var;
    }

    public final boolean b(View view) {
        int i2 = this.r;
        boolean z = i2 == -1 || view.getTag(i2) != null;
        int i3 = this.s;
        return z && (i3 == -1 || view.getTag(i3) == null);
    }

    public final boolean c(View view) {
        String str;
        if (view == null) {
            return false;
        }
        if ((this.f11693j == -1 && this.f11694k == null) || !b(view)) {
            return false;
        }
        if (view.getId() == this.f11693j) {
            return true;
        }
        return this.f11694k != null && (view.getLayoutParams() instanceof ConstraintLayout.LayoutParams) && (str = ((ConstraintLayout.LayoutParams) view.getLayoutParams()).Y) != null && str.matches(this.f11694k);
    }

    public final void d(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.y);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == 0) {
                this.f11686a = typedArrayObtainStyledAttributes.getResourceId(index, this.f11686a);
            } else if (index == 8) {
                if (MotionLayout.F1) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f11693j);
                    this.f11693j = resourceId;
                    if (resourceId == -1) {
                        this.f11694k = typedArrayObtainStyledAttributes.getString(index);
                    }
                } else if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                    this.f11694k = typedArrayObtainStyledAttributes.getString(index);
                } else {
                    this.f11693j = typedArrayObtainStyledAttributes.getResourceId(index, this.f11693j);
                }
            } else if (index == 9) {
                this.f11687b = typedArrayObtainStyledAttributes.getInt(index, this.f11687b);
            } else if (index == 12) {
                this.f11688c = typedArrayObtainStyledAttributes.getBoolean(index, this.f11688c);
            } else if (index == 10) {
                this.d = typedArrayObtainStyledAttributes.getInt(index, this.d);
            } else if (index == 4) {
                this.f11691h = typedArrayObtainStyledAttributes.getInt(index, this.f11691h);
            } else if (index == 13) {
                this.f11692i = typedArrayObtainStyledAttributes.getInt(index, this.f11692i);
            } else if (index == 14) {
                this.f11689e = typedArrayObtainStyledAttributes.getInt(index, this.f11689e);
            } else if (index == 7) {
                int i3 = typedArrayObtainStyledAttributes.peekValue(index).type;
                if (i3 == 1) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    this.n = resourceId2;
                    if (resourceId2 != -1) {
                        this.l = -2;
                    }
                } else if (i3 == 3) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.m = string;
                    if (string == null || string.indexOf("/") <= 0) {
                        this.l = -1;
                    } else {
                        this.n = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.l = -2;
                    }
                } else {
                    this.l = typedArrayObtainStyledAttributes.getInteger(index, this.l);
                }
            } else if (index == 11) {
                this.p = typedArrayObtainStyledAttributes.getResourceId(index, this.p);
            } else if (index == 3) {
                this.q = typedArrayObtainStyledAttributes.getResourceId(index, this.q);
            } else if (index == 6) {
                this.r = typedArrayObtainStyledAttributes.getResourceId(index, this.r);
            } else if (index == 5) {
                this.s = typedArrayObtainStyledAttributes.getResourceId(index, this.s);
            } else if (index == 2) {
                this.u = typedArrayObtainStyledAttributes.getResourceId(index, this.u);
            } else if (index == 1) {
                this.t = typedArrayObtainStyledAttributes.getInteger(index, this.t);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final String toString() {
        return "ViewTransition(" + Debug.b(this.f11686a, this.o) + ")";
    }
}
