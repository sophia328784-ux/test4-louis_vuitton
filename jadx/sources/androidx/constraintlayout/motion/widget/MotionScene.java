package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
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
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.StateSet;
import com.batch.android.s.b;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.R;
import defpackage.n00;
import defpackage.o60;
import defpackage.v7;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import net.rtccloud.sdk.Call;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class MotionScene {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MotionLayout f11656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StateSet f11657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Transition f11658c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Transition f11659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f11660f;
    public final SparseArray g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f11661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SparseIntArray f11662i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11663j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11664k;
    public MotionEvent l;
    public boolean m;
    public boolean n;
    public MotionLayout.MotionTracker o;
    public boolean p;
    public final ViewTransitionController q;
    public float r;
    public float s;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public MotionScene(Context context, MotionLayout motionLayout, int i2) {
        this.f11657b = null;
        this.f11658c = null;
        ArrayList arrayList = new ArrayList();
        this.d = arrayList;
        this.f11659e = null;
        this.f11660f = new ArrayList();
        this.g = new SparseArray();
        this.f11661h = new HashMap();
        this.f11662i = new SparseIntArray();
        this.f11663j = 400;
        this.f11664k = 0;
        this.m = false;
        this.n = false;
        this.f11656a = motionLayout;
        this.q = new ViewTransitionController(motionLayout);
        XmlResourceParser xml = context.getResources().getXml(i2);
        try {
            Transition transition = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                h(context, xml);
                            }
                            break;
                        case -1239391468:
                            if (name.equals("KeyFrameSet")) {
                                KeyFrames keyFrames = new KeyFrames(context, xml);
                                if (transition != null) {
                                    transition.f11674k.add(keyFrames);
                                }
                            }
                            break;
                        case -687739768:
                            if (name.equals("Include")) {
                                j(context, xml);
                            }
                            break;
                        case 61998586:
                            if (name.equals("ViewTransition")) {
                                ViewTransition viewTransition = new ViewTransition(context, xml);
                                ViewTransitionController viewTransitionController = this.q;
                                viewTransitionController.f11706b.add(viewTransition);
                                viewTransitionController.f11707c = null;
                                int i3 = viewTransition.f11687b;
                                if (i3 == 4) {
                                    ViewTransitionController.a(viewTransition);
                                } else if (i3 == 5) {
                                    ViewTransitionController.a(viewTransition);
                                }
                            }
                            break;
                        case 269306229:
                            if (name.equals("Transition")) {
                                transition = new Transition(this, context, xml);
                                boolean z = transition.f11667b;
                                arrayList.add(transition);
                                if (this.f11658c == null && !z) {
                                    this.f11658c = transition;
                                    TouchResponse touchResponse = transition.l;
                                    if (touchResponse != null) {
                                        touchResponse.c(this.p);
                                    }
                                }
                                if (z) {
                                    if (transition.f11668c == -1) {
                                        this.f11659e = transition;
                                    } else {
                                        this.f11660f.add(transition);
                                    }
                                    arrayList.remove(transition);
                                }
                            }
                            break;
                        case 312750793:
                            if (name.equals("OnClick") && transition != null && !motionLayout.isInEditMode()) {
                                transition.m.add(new Transition.TransitionOnClick(context, transition, xml));
                            }
                            break;
                        case 327855227:
                            if (name.equals("OnSwipe")) {
                                if (transition == null) {
                                    context.getResources().getResourceEntryName(i2);
                                    xml.getLineNumber();
                                }
                                if (transition != null) {
                                    transition.l = new TouchResponse(context, motionLayout, xml);
                                }
                            }
                            break;
                        case 793277014:
                            if (name.equals("MotionScene")) {
                                k(context, xml);
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                this.f11657b = new StateSet(context, xml);
                            }
                            break;
                        case 1942574248:
                            if (name.equals("include")) {
                                j(context, xml);
                            }
                            break;
                    }
                }
            }
        } catch (IOException | XmlPullParserException unused) {
        }
        this.g.put(R.id.motion_base, new ConstraintSet());
        this.f11661h.put("motion_base", Integer.valueOf(R.id.motion_base));
    }

    public static int c(Context context, String str) {
        int identifier;
        if (str.contains("/")) {
            identifier = context.getResources().getIdentifier(o60.D(47, 1, str), b.a.f24015b, context.getPackageName());
        } else {
            identifier = -1;
        }
        return (identifier != -1 || str.length() <= 1) ? identifier : Integer.parseInt(str.substring(1));
    }

    public final boolean a(int i2, MotionLayout motionLayout) {
        Transition transition;
        if (this.o != null) {
            return false;
        }
        for (Transition transition2 : this.d) {
            int i3 = transition2.n;
            if (i3 != 0 && ((transition = this.f11658c) != transition2 || (transition.r & 2) == 0)) {
                if (i2 == transition2.d && (i3 == 4 || i3 == 2)) {
                    MotionLayout.TransitionState transitionState = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState);
                    motionLayout.setTransition(transition2);
                    if (transition2.n == 4) {
                        motionLayout.r(1.0f);
                        motionLayout.v1 = null;
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        return true;
                    }
                    motionLayout.setProgress(1.0f);
                    motionLayout.t(true);
                    motionLayout.setState(MotionLayout.TransitionState.SETUP);
                    motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    motionLayout.setState(transitionState);
                    motionLayout.z();
                    return true;
                }
                if (i2 == transition2.f11668c && (i3 == 3 || i3 == 1)) {
                    MotionLayout.TransitionState transitionState2 = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState2);
                    motionLayout.setTransition(transition2);
                    if (transition2.n == 3) {
                        motionLayout.r(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        return true;
                    }
                    motionLayout.setProgress(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    motionLayout.t(true);
                    motionLayout.setState(MotionLayout.TransitionState.SETUP);
                    motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    motionLayout.setState(transitionState2);
                    motionLayout.z();
                    return true;
                }
            }
        }
        return false;
    }

    public final ConstraintSet b(int i2) {
        int iB;
        StateSet stateSet = this.f11657b;
        if (stateSet != null && (iB = stateSet.b(i2)) != -1) {
            i2 = iB;
        }
        SparseArray sparseArray = this.g;
        if (sparseArray.get(i2) != null) {
            return (ConstraintSet) sparseArray.get(i2);
        }
        Debug.b(i2, this.f11656a.getContext());
        return (ConstraintSet) sparseArray.get(sparseArray.keyAt(0));
    }

    public final Interpolator d() {
        Transition transition = this.f11658c;
        int i2 = transition.f11669e;
        if (i2 == -2) {
            return AnimationUtils.loadInterpolator(this.f11656a.getContext(), this.f11658c.g);
        }
        if (i2 == -1) {
            final Easing easingC = Easing.c(transition.f11670f);
            return new Interpolator() { // from class: androidx.constraintlayout.motion.widget.MotionScene.1
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f2) {
                    return (float) easingC.a(f2);
                }
            };
        }
        if (i2 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i2 == 1) {
            return new AccelerateInterpolator();
        }
        if (i2 == 2) {
            return new DecelerateInterpolator();
        }
        if (i2 == 4) {
            return new BounceInterpolator();
        }
        if (i2 == 5) {
            return new OvershootInterpolator();
        }
        if (i2 != 6) {
            return null;
        }
        return new AnticipateInterpolator();
    }

    public final void e(MotionController motionController) {
        Transition transition = this.f11658c;
        if (transition != null) {
            Iterator it = transition.f11674k.iterator();
            while (it.hasNext()) {
                ((KeyFrames) it.next()).a(motionController);
            }
        } else {
            Transition transition2 = this.f11659e;
            if (transition2 != null) {
                Iterator it2 = transition2.f11674k.iterator();
                while (it2.hasNext()) {
                    ((KeyFrames) it2.next()).a(motionController);
                }
            }
        }
    }

    public final float f() {
        TouchResponse touchResponse;
        Transition transition = this.f11658c;
        return (transition == null || (touchResponse = transition.l) == null) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : touchResponse.t;
    }

    public final int g() {
        Transition transition = this.f11658c;
        if (transition == null) {
            return -1;
        }
        return transition.d;
    }

    public final int h(Context context, XmlResourceParser xmlResourceParser) {
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.f11767f = false;
        int attributeCount = xmlResourceParser.getAttributeCount();
        int iC = -1;
        int iC2 = -1;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            String attributeName = xmlResourceParser.getAttributeName(i2);
            String attributeValue = xmlResourceParser.getAttributeValue(i2);
            attributeName.getClass();
            switch (attributeName) {
                case "deriveConstraintsFrom":
                    iC2 = c(context, attributeValue);
                    break;
                case "constraintRotate":
                    try {
                        constraintSet.d = Integer.parseInt(attributeValue);
                        break;
                    } catch (NumberFormatException unused) {
                        attributeValue.getClass();
                        switch (attributeValue) {
                            case "x_left":
                                constraintSet.d = 4;
                                break;
                            case "left":
                                constraintSet.d = 2;
                                break;
                            case "none":
                                constraintSet.d = 0;
                                break;
                            case "right":
                                constraintSet.d = 1;
                                break;
                            case "x_right":
                                constraintSet.d = 3;
                                break;
                        }
                    }
                    break;
                case "id":
                    iC = c(context, attributeValue);
                    int iIndexOf = attributeValue.indexOf(47);
                    if (iIndexOf >= 0) {
                        attributeValue = attributeValue.substring(iIndexOf + 1);
                    }
                    this.f11661h.put(attributeValue, Integer.valueOf(iC));
                    constraintSet.f11763a = Debug.b(iC, context);
                    break;
                case "stateLabels":
                    constraintSet.f11765c = attributeValue.split(",");
                    int i3 = 0;
                    while (true) {
                        String[] strArr = constraintSet.f11765c;
                        if (i3 < strArr.length) {
                            strArr[i3] = strArr[i3].trim();
                            i3++;
                        }
                    }
                    break;
            }
        }
        if (iC != -1) {
            int i4 = this.f11656a.L;
            constraintSet.m(context, xmlResourceParser);
            if (iC2 != -1) {
                this.f11662i.put(iC, iC2);
            }
            this.g.put(iC, constraintSet);
        }
        return iC;
    }

    public final int i(int i2, Context context) {
        XmlResourceParser xml = context.getResources().getXml(i2);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                String name = xml.getName();
                if (2 == eventType && "ConstraintSet".equals(name)) {
                    return h(context, xml);
                }
            }
            return -1;
        } catch (IOException | XmlPullParserException unused) {
            return -1;
        }
    }

    public final void j(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.z);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == 0) {
                i(typedArrayObtainStyledAttributes.getResourceId(index, -1), context);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void k(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.p);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == 0) {
                int i3 = typedArrayObtainStyledAttributes.getInt(index, this.f11663j);
                this.f11663j = i3;
                if (i3 < 8) {
                    this.f11663j = 8;
                }
            } else if (index == 1) {
                this.f11664k = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void l(int i2, MotionLayout motionLayout) {
        SparseArray sparseArray = this.g;
        ConstraintSet constraintSet = (ConstraintSet) sparseArray.get(i2);
        String str = constraintSet.f11763a;
        HashMap map = constraintSet.g;
        constraintSet.f11764b = str;
        int i3 = this.f11662i.get(i2);
        if (i3 > 0) {
            l(i3, motionLayout);
            ConstraintSet constraintSet2 = (ConstraintSet) sparseArray.get(i3);
            if (constraintSet2 == null) {
                Debug.b(i3, this.f11656a.getContext());
                return;
            }
            HashMap map2 = constraintSet2.g;
            constraintSet.f11764b += "/" + constraintSet2.f11764b;
            for (Integer num : map2.keySet()) {
                num.getClass();
                ConstraintSet.Constraint constraint = (ConstraintSet.Constraint) map2.get(num);
                if (!map.containsKey(num)) {
                    map.put(num, new ConstraintSet.Constraint());
                }
                ConstraintSet.Constraint constraint2 = (ConstraintSet.Constraint) map.get(num);
                if (constraint2 != null) {
                    ConstraintSet.Layout layout = constraint2.f11771e;
                    if (!layout.f11784b) {
                        layout.a(constraint.f11771e);
                    }
                    ConstraintSet.PropertySet propertySet = constraint2.f11770c;
                    if (!propertySet.f11801a) {
                        ConstraintSet.PropertySet propertySet2 = constraint.f11770c;
                        propertySet.f11801a = propertySet2.f11801a;
                        propertySet.f11802b = propertySet2.f11802b;
                        propertySet.d = propertySet2.d;
                        propertySet.f11804e = propertySet2.f11804e;
                        propertySet.f11803c = propertySet2.f11803c;
                    }
                    ConstraintSet.Transform transform = constraint2.f11772f;
                    if (!transform.f11805a) {
                        transform.a(constraint.f11772f);
                    }
                    ConstraintSet.Motion motion = constraint2.d;
                    if (!motion.f11792a) {
                        motion.a(constraint.d);
                    }
                    for (String str2 : constraint.g.keySet()) {
                        if (!constraint2.g.containsKey(str2)) {
                            constraint2.g.put(str2, (ConstraintAttribute) constraint.g.get(str2));
                        }
                    }
                }
            }
        } else {
            constraintSet.f11764b = n00.r(constraintSet.f11764b, "  layout", new StringBuilder());
            int childCount = motionLayout.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = motionLayout.getChildAt(i4);
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                int id = childAt.getId();
                if (constraintSet.f11767f && id == -1) {
                    v7.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                    return;
                }
                if (!map.containsKey(Integer.valueOf(id))) {
                    map.put(Integer.valueOf(id), new ConstraintSet.Constraint());
                }
                ConstraintSet.Constraint constraint3 = (ConstraintSet.Constraint) map.get(Integer.valueOf(id));
                if (constraint3 != null) {
                    ConstraintSet.PropertySet propertySet3 = constraint3.f11770c;
                    ConstraintSet.Layout layout2 = constraint3.f11771e;
                    ConstraintSet.Transform transform2 = constraint3.f11772f;
                    if (!layout2.f11784b) {
                        constraint3.d(id, layoutParams);
                        if (childAt instanceof ConstraintHelper) {
                            layout2.j0 = ((ConstraintHelper) childAt).getReferencedIds();
                            if (childAt instanceof Barrier) {
                                Barrier barrier = (Barrier) childAt;
                                layout2.o0 = barrier.getAllowsGoneWidget();
                                layout2.g0 = barrier.getType();
                                layout2.h0 = barrier.getMargin();
                            }
                        }
                        layout2.f11784b = true;
                    }
                    if (!propertySet3.f11801a) {
                        propertySet3.f11802b = childAt.getVisibility();
                        propertySet3.d = childAt.getAlpha();
                        propertySet3.f11801a = true;
                    }
                    if (!transform2.f11805a) {
                        transform2.f11805a = true;
                        transform2.f11806b = childAt.getRotation();
                        transform2.f11807c = childAt.getRotationX();
                        transform2.d = childAt.getRotationY();
                        transform2.f11808e = childAt.getScaleX();
                        transform2.f11809f = childAt.getScaleY();
                        float pivotX = childAt.getPivotX();
                        float pivotY = childAt.getPivotY();
                        if (pivotX != 0.0d || pivotY != 0.0d) {
                            transform2.g = pivotX;
                            transform2.f11810h = pivotY;
                        }
                        transform2.f11812j = childAt.getTranslationX();
                        transform2.f11813k = childAt.getTranslationY();
                        transform2.l = childAt.getTranslationZ();
                        if (transform2.m) {
                            transform2.n = childAt.getElevation();
                        }
                    }
                }
            }
        }
        constraintSet.b(constraintSet);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0031  */
    /* JADX WARN: Code duplicated, block: B:32:0x004b  */
    /* JADX WARN: Code duplicated, block: B:37:0x005f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0076  */
    /* JADX WARN: Code duplicated, block: B:45:0x0051 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:? A[RETURN, SYNTHETIC] */
    public final void m(int i2, int i3) {
        int iB;
        int iB2;
        Transition transition;
        ArrayList arrayList;
        Iterator it;
        Transition transition2;
        Transition transition3;
        Transition transition4;
        int i4;
        TouchResponse touchResponse;
        StateSet stateSet = this.f11657b;
        if (stateSet != null) {
            iB = stateSet.b(i2);
            if (iB == -1) {
                iB = i2;
            }
            iB2 = stateSet.b(i3);
            if (iB2 == -1) {
            }
            transition = this.f11658c;
            if (transition == null && transition.f11668c == i3 && transition.d == i2) {
                return;
            }
            arrayList = this.d;
            it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    transition2 = this.f11659e;
                    for (Transition transition5 : this.f11660f) {
                        if (transition5.f11668c == i3) {
                            transition2 = transition5;
                        }
                    }
                    transition3 = new Transition(this, transition2);
                    transition3.d = iB;
                    transition3.f11668c = iB2;
                    if (iB != -1) {
                        arrayList.add(transition3);
                    }
                    this.f11658c = transition3;
                    return;
                }
                transition4 = (Transition) it.next();
                i4 = transition4.f11668c;
                if ((i4 != iB2 && transition4.d == iB) || (i4 == i3 && transition4.d == i2)) {
                    break;
                }
            }
            this.f11658c = transition4;
            touchResponse = transition4.l;
            if (touchResponse != null) {
                touchResponse.c(this.p);
            }
        }
        iB = i2;
        iB2 = i3;
        transition = this.f11658c;
        if (transition == null) {
        }
        arrayList = this.d;
        it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                transition2 = this.f11659e;
                while (r9.hasNext()) {
                    if (transition5.f11668c == i3) {
                        transition2 = transition5;
                    }
                }
                transition3 = new Transition(this, transition2);
                transition3.d = iB;
                transition3.f11668c = iB2;
                if (iB != -1) {
                    arrayList.add(transition3);
                }
                this.f11658c = transition3;
                return;
            }
            transition4 = (Transition) it.next();
            i4 = transition4.f11668c;
            if (i4 != iB2) {
            }
        }
        this.f11658c = transition4;
        touchResponse = transition4.l;
        if (touchResponse != null) {
            touchResponse.c(this.p);
        }
    }

    public final boolean n() {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            if (((Transition) it.next()).l != null) {
                return true;
            }
        }
        Transition transition = this.f11658c;
        return (transition == null || transition.l == null) ? false : true;
    }

    public static class Transition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f11666a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f11667b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11668c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11669e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f11670f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f11671h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final float f11672i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final MotionScene f11673j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ArrayList f11674k;
        public TouchResponse l;
        public final ArrayList m;
        public final int n;
        public final boolean o;
        public int p;
        public final int q;
        public final int r;

        public Transition(MotionScene motionScene, Context context, XmlResourceParser xmlResourceParser) {
            this.f11666a = -1;
            this.f11667b = false;
            this.f11668c = -1;
            this.d = -1;
            this.f11669e = 0;
            this.f11670f = null;
            this.g = -1;
            this.f11671h = 400;
            this.f11672i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f11674k = new ArrayList();
            this.l = null;
            this.m = new ArrayList();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.r = 0;
            int i2 = motionScene.f11663j;
            SparseArray sparseArray = motionScene.g;
            this.f11671h = i2;
            this.q = motionScene.f11664k;
            this.f11673j = motionScene;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.w);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == 2) {
                    this.f11668c = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f11668c);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        constraintSet.l(this.f11668c, context);
                        sparseArray.append(this.f11668c, constraintSet);
                    } else if ("xml".equals(resourceTypeName)) {
                        this.f11668c = motionScene.i(this.f11668c, context);
                    }
                } else if (index == 3) {
                    this.d = typedArrayObtainStyledAttributes.getResourceId(index, this.d);
                    String resourceTypeName2 = context.getResources().getResourceTypeName(this.d);
                    if ("layout".equals(resourceTypeName2)) {
                        ConstraintSet constraintSet2 = new ConstraintSet();
                        constraintSet2.l(this.d, context);
                        sparseArray.append(this.d, constraintSet2);
                    } else if ("xml".equals(resourceTypeName2)) {
                        this.d = motionScene.i(this.d, context);
                    }
                } else if (index == 6) {
                    int i4 = typedArrayObtainStyledAttributes.peekValue(index).type;
                    if (i4 == 1) {
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.g = resourceId;
                        if (resourceId != -1) {
                            this.f11669e = -2;
                        }
                    } else if (i4 == 3) {
                        String string = typedArrayObtainStyledAttributes.getString(index);
                        this.f11670f = string;
                        if (string != null) {
                            if (string.indexOf("/") > 0) {
                                this.g = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                this.f11669e = -2;
                            } else {
                                this.f11669e = -1;
                            }
                        }
                    } else {
                        this.f11669e = typedArrayObtainStyledAttributes.getInteger(index, this.f11669e);
                    }
                } else if (index == 4) {
                    int i5 = typedArrayObtainStyledAttributes.getInt(index, this.f11671h);
                    this.f11671h = i5;
                    if (i5 < 8) {
                        this.f11671h = 8;
                    }
                } else if (index == 8) {
                    this.f11672i = typedArrayObtainStyledAttributes.getFloat(index, this.f11672i);
                } else if (index == 1) {
                    this.n = typedArrayObtainStyledAttributes.getInteger(index, this.n);
                } else if (index == 0) {
                    this.f11666a = typedArrayObtainStyledAttributes.getResourceId(index, this.f11666a);
                } else if (index == 9) {
                    this.o = typedArrayObtainStyledAttributes.getBoolean(index, this.o);
                } else if (index == 7) {
                    this.p = typedArrayObtainStyledAttributes.getInteger(index, -1);
                } else if (index == 5) {
                    this.q = typedArrayObtainStyledAttributes.getInteger(index, 0);
                } else if (index == 10) {
                    this.r = typedArrayObtainStyledAttributes.getInteger(index, 0);
                }
            }
            if (this.d == -1) {
                this.f11667b = true;
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public static class TransitionOnClick implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Transition f11675b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final int f11676c;
            public final int d;

            public TransitionOnClick(Context context, Transition transition, XmlPullParser xmlPullParser) {
                this.f11676c = -1;
                this.d = 17;
                this.f11675b = transition;
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.q);
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                for (int i2 = 0; i2 < indexCount; i2++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i2);
                    if (index == 1) {
                        this.f11676c = typedArrayObtainStyledAttributes.getResourceId(index, this.f11676c);
                    } else if (index == 0) {
                        this.d = typedArrayObtainStyledAttributes.getInt(index, this.d);
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }

            public final void a(MotionLayout motionLayout, int i2, Transition transition) {
                boolean z;
                View viewFindViewById;
                int i3 = this.f11676c;
                View view = motionLayout;
                if (i3 != -1) {
                    viewFindViewById = motionLayout.findViewById(i3);
                }
                if (view == null) {
                    view = viewFindViewById;
                    return;
                }
                int i4 = transition.d;
                int i5 = transition.f11668c;
                if (i4 == -1) {
                    view = viewFindViewById;
                    view.setOnClickListener(this);
                    return;
                }
                int i6 = this.d;
                int i7 = i6 & 1;
                boolean z2 = false;
                if (i7 == 0 || i2 != i4) {
                    view = viewFindViewById;
                    z = false;
                } else {
                    z = true;
                }
                boolean z3 = (i7 != 0 && i2 == i4) | z | ((i6 & 256) != 0 && i2 == i4) | ((i6 & 16) != 0 && i2 == i5);
                if ((i6 & 4096) != 0 && i2 == i5) {
                    z2 = true;
                }
                if (z3 || z2) {
                    view.setOnClickListener(this);
                }
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Transition transition = this.f11675b;
                Callback.n(view);
                try {
                    MotionScene motionScene = transition.f11673j;
                    MotionLayout motionLayout = motionScene.f11656a;
                    if (motionLayout.A) {
                        if (transition.d == -1) {
                            int currentState = motionLayout.getCurrentState();
                            if (currentState == -1) {
                                motionLayout.F(transition.f11668c);
                                return;
                            }
                            Transition transition2 = new Transition(transition.f11673j, transition);
                            transition2.d = currentState;
                            transition2.f11668c = transition.f11668c;
                            motionLayout.setTransition(transition2);
                            motionLayout.r(1.0f);
                            motionLayout.v1 = null;
                            return;
                        }
                        Transition transition3 = motionScene.f11658c;
                        int i2 = this.d;
                        int i3 = i2 & 1;
                        boolean z = false;
                        boolean z2 = true;
                        boolean z3 = (i3 == 0 && (i2 & 256) == 0) ? false : true;
                        int i4 = i2 & 16;
                        if (i4 == 0 && (i2 & 4096) == 0) {
                            z2 = false;
                        }
                        if (z3 && z2) {
                            if (transition3 != transition) {
                                motionLayout.setTransition(transition);
                            }
                            if (motionLayout.getCurrentState() != motionLayout.getEndState() && motionLayout.getProgress() <= 0.5f) {
                                z2 = false;
                                z = z3;
                            }
                        } else {
                            z = z3;
                        }
                        if (transition != transition3) {
                            int i5 = transition.f11668c;
                            int i6 = transition.d;
                            int i7 = motionLayout.w;
                            if (i6 != -1 ? i7 == i6 || i7 == i5 : i7 != i5) {
                            }
                        }
                        if (z && i3 != 0) {
                            motionLayout.setTransition(transition);
                            motionLayout.r(1.0f);
                            motionLayout.v1 = null;
                        } else if (z2 && i4 != 0) {
                            motionLayout.setTransition(transition);
                            motionLayout.r(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else if (z && (i2 & 256) != 0) {
                            motionLayout.setTransition(transition);
                            motionLayout.setProgress(1.0f);
                        } else if (z2 && (i2 & 4096) != 0) {
                            motionLayout.setTransition(transition);
                            motionLayout.setProgress(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        }
                    }
                } finally {
                    Callback.o();
                }
            }

            public TransitionOnClick(Transition transition, int i2, int i3) {
                this.f11675b = transition;
                this.f11676c = i2;
                this.d = i3;
            }
        }

        public Transition(int i2, MotionScene motionScene, int i3, int i4) {
            this.f11666a = -1;
            this.f11667b = false;
            this.f11668c = -1;
            this.d = -1;
            this.f11669e = 0;
            this.f11670f = null;
            this.g = -1;
            this.f11671h = 400;
            this.f11672i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f11674k = new ArrayList();
            this.l = null;
            this.m = new ArrayList();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.f11666a = i2;
            this.f11673j = motionScene;
            this.d = i3;
            this.f11668c = i4;
            this.f11671h = motionScene.f11663j;
            this.q = motionScene.f11664k;
        }

        public Transition(MotionScene motionScene, Transition transition) {
            this.f11666a = -1;
            this.f11667b = false;
            this.f11668c = -1;
            this.d = -1;
            this.f11669e = 0;
            this.f11670f = null;
            this.g = -1;
            this.f11671h = 400;
            this.f11672i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f11674k = new ArrayList();
            this.l = null;
            this.m = new ArrayList();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.f11673j = motionScene;
            this.f11671h = motionScene.f11663j;
            if (transition != null) {
                this.p = transition.p;
                this.f11669e = transition.f11669e;
                this.f11670f = transition.f11670f;
                this.g = transition.g;
                this.f11671h = transition.f11671h;
                this.f11674k = transition.f11674k;
                this.f11672i = transition.f11672i;
                this.q = transition.q;
            }
        }
    }

    public MotionScene(MotionLayout motionLayout) {
        this.f11657b = null;
        this.f11658c = null;
        this.d = new ArrayList();
        this.f11659e = null;
        this.f11660f = new ArrayList();
        this.g = new SparseArray();
        this.f11661h = new HashMap();
        this.f11662i = new SparseIntArray();
        this.f11663j = 400;
        this.f11664k = 0;
        this.m = false;
        this.n = false;
        this.f11656a = motionLayout;
        this.q = new ViewTransitionController(motionLayout);
    }
}
