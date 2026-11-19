package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.TypedArrayUtils;
import com.vuitton.android.R;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ChangeBounds extends Transition {
    public static final String[] G = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    public static final Property H = new AnonymousClass1(PointF.class, "topLeft");
    public static final Property I = new AnonymousClass2(PointF.class, "bottomRight");
    public static final Property J = new AnonymousClass3(PointF.class, "bottomRight");
    public static final Property K = new AnonymousClass4(PointF.class, "topLeft");
    public static final Property L = new AnonymousClass5(PointF.class, "position");
    public static final RectEvaluator M = new RectEvaluator();
    public final boolean F;

    /* JADX INFO: renamed from: androidx.transition.ChangeBounds$1, reason: invalid class name */
    public class AnonymousClass1 extends Property<ViewBounds, PointF> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(ViewBounds viewBounds) {
            return null;
        }

        @Override // android.util.Property
        public final void set(ViewBounds viewBounds, PointF pointF) {
            ViewBounds viewBounds2 = viewBounds;
            PointF pointF2 = pointF;
            viewBounds2.getClass();
            viewBounds2.f19974a = Math.round(pointF2.x);
            int iRound = Math.round(pointF2.y);
            viewBounds2.f19975b = iRound;
            int i2 = viewBounds2.f19978f + 1;
            viewBounds2.f19978f = i2;
            if (i2 == viewBounds2.g) {
                View view = viewBounds2.f19977e;
                int i3 = viewBounds2.f19974a;
                int i4 = viewBounds2.f19976c;
                int i5 = viewBounds2.d;
                Property property = ViewUtils.f20039a;
                view.setLeftTopRightBottom(i3, iRound, i4, i5);
                viewBounds2.f19978f = 0;
                viewBounds2.g = 0;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.transition.ChangeBounds$2, reason: invalid class name */
    public class AnonymousClass2 extends Property<ViewBounds, PointF> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(ViewBounds viewBounds) {
            return null;
        }

        @Override // android.util.Property
        public final void set(ViewBounds viewBounds, PointF pointF) {
            ViewBounds viewBounds2 = viewBounds;
            PointF pointF2 = pointF;
            viewBounds2.getClass();
            viewBounds2.f19976c = Math.round(pointF2.x);
            int iRound = Math.round(pointF2.y);
            viewBounds2.d = iRound;
            int i2 = viewBounds2.g + 1;
            viewBounds2.g = i2;
            if (viewBounds2.f19978f == i2) {
                View view = viewBounds2.f19977e;
                int i3 = viewBounds2.f19974a;
                int i4 = viewBounds2.f19975b;
                int i5 = viewBounds2.f19976c;
                Property property = ViewUtils.f20039a;
                view.setLeftTopRightBottom(i3, i4, i5, iRound);
                viewBounds2.f19978f = 0;
                viewBounds2.g = 0;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.transition.ChangeBounds$3, reason: invalid class name */
    public class AnonymousClass3 extends Property<View, PointF> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            int left = view2.getLeft();
            int top = view2.getTop();
            int iRound = Math.round(pointF2.x);
            int iRound2 = Math.round(pointF2.y);
            Property property = ViewUtils.f20039a;
            view2.setLeftTopRightBottom(left, top, iRound, iRound2);
        }
    }

    /* JADX INFO: renamed from: androidx.transition.ChangeBounds$4, reason: invalid class name */
    public class AnonymousClass4 extends Property<View, PointF> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            int iRound = Math.round(pointF2.x);
            int iRound2 = Math.round(pointF2.y);
            int right = view2.getRight();
            int bottom = view2.getBottom();
            Property property = ViewUtils.f20039a;
            view2.setLeftTopRightBottom(iRound, iRound2, right, bottom);
        }
    }

    /* JADX INFO: renamed from: androidx.transition.ChangeBounds$5, reason: invalid class name */
    public class AnonymousClass5 extends Property<View, PointF> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            int iRound = Math.round(pointF2.x);
            int iRound2 = Math.round(pointF2.y);
            int width = view2.getWidth() + iRound;
            int height = view2.getHeight() + iRound2;
            Property property = ViewUtils.f20039a;
            view2.setLeftTopRightBottom(iRound, iRound2, width, height);
        }
    }

    public static class SuppressLayoutListener extends TransitionListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f19972a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ViewGroup f19973b;

        public SuppressLayoutListener(ViewGroup viewGroup) {
            this.f19973b = viewGroup;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void a() {
            this.f19973b.suppressLayout(false);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void f() {
            this.f19973b.suppressLayout(true);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void i(Transition transition) {
            if (!this.f19972a) {
                this.f19973b.suppressLayout(false);
            }
            transition.H(this);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void k(Transition transition) {
            this.f19973b.suppressLayout(false);
            this.f19972a = true;
        }
    }

    public static class ViewBounds {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f19974a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19975b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f19976c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final View f19977e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f19978f;
        public int g;

        public ViewBounds(View view) {
            this.f19977e = view;
        }
    }

    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.F = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f19991b);
        boolean z = TypedArrayUtils.e((XmlResourceParser) attributeSet, "resizeClip") ? typedArrayObtainStyledAttributes.getBoolean(0, false) : false;
        typedArrayObtainStyledAttributes.recycle();
        this.F = z;
    }

    public final void V(TransitionValues transitionValues) {
        View view = transitionValues.f20031b;
        HashMap map = transitionValues.f20030a;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        map.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        map.put("android:changeBounds:parent", view.getParent());
        if (this.F) {
            map.put("android:changeBounds:clip", view.getClipBounds());
        }
    }

    @Override // androidx.transition.Transition
    public final void d(TransitionValues transitionValues) {
        V(transitionValues);
    }

    @Override // androidx.transition.Transition
    public final void g(TransitionValues transitionValues) {
        Rect rect;
        V(transitionValues);
        if (!this.F || (rect = (Rect) transitionValues.f20031b.getTag(R.id.transition_clip)) == null) {
            return;
        }
        transitionValues.f20030a.put("android:changeBounds:clip", rect);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [android.animation.Animator] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v9, types: [android.animation.AnimatorSet] */
    /* JADX WARN: Type inference failed for: r22v0, types: [androidx.transition.ChangeBounds, androidx.transition.Transition] */
    /* JADX WARN: Type inference failed for: r2v10, types: [android.animation.Animator[]] */
    /* JADX WARN: Type inference failed for: r4v15, types: [android.animation.Animator, android.animation.AnimatorSet] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v8 */
    @Override // androidx.transition.Transition
    public final Animator k(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i2;
        int i3;
        Rect rect;
        ?? animatorSet;
        ?? OfObject;
        ObjectAnimator objectAnimatorOfObject;
        if (transitionValues == null) {
            return null;
        }
        HashMap map = transitionValues.f20030a;
        if (transitionValues2 == null) {
            return null;
        }
        HashMap map2 = transitionValues2.f20030a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view = transitionValues2.f20031b;
        Rect rect2 = (Rect) map.get("android:changeBounds:bounds");
        Rect rect3 = (Rect) map2.get("android:changeBounds:bounds");
        int i4 = rect2.left;
        int i5 = rect3.left;
        int i6 = rect2.top;
        int i7 = rect3.top;
        int i8 = rect2.right;
        int i9 = rect3.right;
        int i10 = rect2.bottom;
        int i11 = rect3.bottom;
        int i12 = i8 - i4;
        int i13 = i10 - i6;
        int i14 = i9 - i5;
        int i15 = i11 - i7;
        Rect rect4 = (Rect) map.get("android:changeBounds:clip");
        Rect rect5 = (Rect) map2.get("android:changeBounds:clip");
        if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
            i2 = 0;
        } else {
            i2 = (i4 == i5 && i6 == i7) ? 0 : 1;
            if (i8 != i9 || i10 != i11) {
                i2++;
            }
        }
        if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
            i2++;
        }
        int i16 = i2;
        if (i16 <= 0) {
            return null;
        }
        boolean z = this.F;
        Property property = L;
        if (z) {
            int iMax = i4 + Math.max(i12, i14);
            int iMax2 = i6 + Math.max(i13, i15);
            Property property2 = ViewUtils.f20039a;
            view.setLeftTopRightBottom(i4, i6, iMax, iMax2);
            ObjectAnimator objectAnimatorOfObject2 = (i4 == i5 && i6 == i7) ? null : ObjectAnimator.ofObject(view, (Property<View, V>) property, (TypeConverter) null, this.x.a(i4, i6, i5, i7));
            boolean z2 = rect4 == null;
            if (z2) {
                i3 = 0;
                rect = new Rect(0, 0, i12, i13);
            } else {
                i3 = 0;
                rect = rect4;
            }
            int i17 = rect5 == null ? 1 : i3;
            Rect rect6 = i17 != 0 ? new Rect(i3, i3, i14, i15) : rect5;
            if (rect.equals(rect6)) {
                animatorSet = 0;
            } else {
                view.setClipBounds(rect);
                objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", M, rect, rect6);
                ClipListener clipListener = new ClipListener(view, rect, z2, rect6, i17, i4, i6, i8, i10, i5, i7, i9, i11);
                objectAnimatorOfObject.addListener(clipListener);
                a(clipListener);
            }
            if (objectAnimatorOfObject2 == null) {
                animatorSet = objectAnimatorOfObject;
                OfObject = animatorSet;
            } else if (animatorSet == 0) {
                OfObject = objectAnimatorOfObject2;
            } else {
                ?? animatorSet2 = new AnimatorSet();
                animatorSet2.playTogether(new Animator[]{objectAnimatorOfObject2, animatorSet});
                OfObject = animatorSet2;
            }
        } else {
            Property property3 = ViewUtils.f20039a;
            view.setLeftTopRightBottom(i4, i6, i8, i10);
            if (i16 != 2) {
                OfObject = (i4 == i5 && i6 == i7) ? ObjectAnimator.ofObject(view, (Property<View, V>) J, (TypeConverter) null, this.x.a(i8, i10, i9, i11)) : ObjectAnimator.ofObject(view, (Property<View, V>) K, (TypeConverter) null, this.x.a(i4, i6, i5, i7));
            } else if (i12 == i14 && i13 == i15) {
                OfObject = ObjectAnimator.ofObject(view, (Property<View, V>) property, (TypeConverter) null, this.x.a(i4, i6, i5, i7));
            } else {
                ViewBounds viewBounds = new ViewBounds(view);
                ObjectAnimator objectAnimatorOfObject3 = ObjectAnimator.ofObject(viewBounds, (Property<ViewBounds, V>) H, (TypeConverter) null, this.x.a(i4, i6, i5, i7));
                ObjectAnimator objectAnimatorOfObject4 = ObjectAnimator.ofObject(viewBounds, (Property<ViewBounds, V>) I, (TypeConverter) null, this.x.a(i8, i10, i9, i11));
                animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorOfObject3, objectAnimatorOfObject4);
                animatorSet.addListener(new AnimatorListenerAdapter(viewBounds) { // from class: androidx.transition.ChangeBounds.6
                    private final ViewBounds mViewBounds;

                    {
                        this.mViewBounds = viewBounds;
                    }
                });
                animatorSet = objectAnimatorOfObject;
                OfObject = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            viewGroup4.suppressLayout(true);
            w().a(new SuppressLayoutListener(viewGroup4));
        }
        return OfObject;
    }

    @Override // androidx.transition.Transition
    public final String[] y() {
        return G;
    }

    public ChangeBounds() {
        this.F = false;
    }

    public static class ClipListener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f19963a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Rect f19964b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f19965c;
        public final Rect d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f19966e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f19967f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f19968h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f19969i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f19970j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f19971k;
        public final int l;
        public final int m;
        public boolean n;

        public ClipListener(View view, Rect rect, boolean z, Rect rect2, boolean z2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.f19963a = view;
            this.f19964b = rect;
            this.f19965c = z;
            this.d = rect2;
            this.f19966e = z2;
            this.f19967f = i2;
            this.g = i3;
            this.f19968h = i4;
            this.f19969i = i5;
            this.f19970j = i6;
            this.f19971k = i7;
            this.l = i8;
            this.m = i9;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void a() {
            View view = this.f19963a;
            view.setTag(R.id.transition_clip, view.getClipBounds());
            view.setClipBounds(this.f19966e ? null : this.d);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void f() {
            View view = this.f19963a;
            Rect rect = (Rect) view.getTag(R.id.transition_clip);
            view.setTag(R.id.transition_clip, null);
            view.setClipBounds(rect);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void i(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void k(Transition transition) {
            this.n = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            if (this.n) {
                return;
            }
            Rect rect = null;
            if (z) {
                if (!this.f19965c) {
                    rect = this.f19964b;
                }
            } else if (!this.f19966e) {
                rect = this.d;
            }
            View view = this.f19963a;
            view.setClipBounds(rect);
            if (z) {
                Property property = ViewUtils.f20039a;
                view.setLeftTopRightBottom(this.f19967f, this.g, this.f19968h, this.f19969i);
            } else {
                Property property2 = ViewUtils.f20039a;
                view.setLeftTopRightBottom(this.f19970j, this.f19971k, this.l, this.m);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator, boolean z) {
            int i2 = this.f19968h;
            int i3 = this.f19967f;
            int i4 = this.l;
            int i5 = this.f19970j;
            int iMax = Math.max(i2 - i3, i4 - i5);
            int i6 = this.f19969i;
            int i7 = this.g;
            int i8 = this.m;
            int i9 = this.f19971k;
            int iMax2 = Math.max(i6 - i7, i8 - i9);
            if (z) {
                i3 = i5;
            }
            if (z) {
                i7 = i9;
            }
            Property property = ViewUtils.f20039a;
            View view = this.f19963a;
            view.setLeftTopRightBottom(i3, i7, iMax + i3, iMax2 + i7);
            view.setClipBounds(z ? this.d : this.f19964b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            onAnimationStart(animator, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }
    }
}
