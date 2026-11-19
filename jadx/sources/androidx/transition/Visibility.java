package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import com.vuitton.android.R;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class Visibility extends Transition {
    public static final String[] G = {"android:visibility:visibility", "android:visibility:parent"};
    public int F;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public static class VisibilityInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f20049a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f20050b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f20051c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ViewGroup f20052e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ViewGroup f20053f;
    }

    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.F = 3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f19992c);
        int iD = TypedArrayUtils.d(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (iD != 0) {
            Z(iD);
        }
    }

    public static void V(TransitionValues transitionValues) {
        View view = transitionValues.f20031b;
        int visibility = view.getVisibility();
        HashMap map = transitionValues.f20030a;
        map.put("android:visibility:visibility", Integer.valueOf(visibility));
        map.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        map.put("android:visibility:screenLocation", iArr);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0052  */
    /* JADX WARN: Code duplicated, block: B:7:0x002f  */
    public static VisibilityInfo W(TransitionValues transitionValues, TransitionValues transitionValues2) {
        VisibilityInfo visibilityInfo = new VisibilityInfo();
        visibilityInfo.f20049a = false;
        visibilityInfo.f20050b = false;
        if (transitionValues != null) {
            HashMap map = transitionValues.f20030a;
            if (map.containsKey("android:visibility:visibility")) {
                visibilityInfo.f20051c = ((Integer) map.get("android:visibility:visibility")).intValue();
                visibilityInfo.f20052e = (ViewGroup) map.get("android:visibility:parent");
            } else {
                visibilityInfo.f20051c = -1;
                visibilityInfo.f20052e = null;
            }
        } else {
            visibilityInfo.f20051c = -1;
            visibilityInfo.f20052e = null;
        }
        if (transitionValues2 != null) {
            HashMap map2 = transitionValues2.f20030a;
            if (map2.containsKey("android:visibility:visibility")) {
                visibilityInfo.d = ((Integer) map2.get("android:visibility:visibility")).intValue();
                visibilityInfo.f20053f = (ViewGroup) map2.get("android:visibility:parent");
            } else {
                visibilityInfo.d = -1;
                visibilityInfo.f20053f = null;
            }
        } else {
            visibilityInfo.d = -1;
            visibilityInfo.f20053f = null;
        }
        if (transitionValues != null && transitionValues2 != null) {
            int i2 = visibilityInfo.f20051c;
            int i3 = visibilityInfo.d;
            if (i2 != i3 || visibilityInfo.f20052e != visibilityInfo.f20053f) {
                if (i2 != i3) {
                    if (i2 == 0) {
                        visibilityInfo.f20050b = false;
                        visibilityInfo.f20049a = true;
                        return visibilityInfo;
                    }
                    if (i3 == 0) {
                        visibilityInfo.f20050b = true;
                        visibilityInfo.f20049a = true;
                        return visibilityInfo;
                    }
                } else {
                    if (visibilityInfo.f20053f == null) {
                        visibilityInfo.f20050b = false;
                        visibilityInfo.f20049a = true;
                        return visibilityInfo;
                    }
                    if (visibilityInfo.f20052e == null) {
                        visibilityInfo.f20050b = true;
                        visibilityInfo.f20049a = true;
                        return visibilityInfo;
                    }
                }
            }
        } else {
            if (transitionValues == null && visibilityInfo.d == 0) {
                visibilityInfo.f20050b = true;
                visibilityInfo.f20049a = true;
                return visibilityInfo;
            }
            if (transitionValues2 == null && visibilityInfo.f20051c == 0) {
                visibilityInfo.f20050b = false;
                visibilityInfo.f20049a = true;
            }
        }
        return visibilityInfo;
    }

    @Override // androidx.transition.Transition
    public final boolean C(TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null && transitionValues2 == null) {
            return false;
        }
        if (transitionValues != null && transitionValues2 != null && transitionValues2.f20030a.containsKey("android:visibility:visibility") != transitionValues.f20030a.containsKey("android:visibility:visibility")) {
            return false;
        }
        VisibilityInfo visibilityInfoW = W(transitionValues, transitionValues2);
        if (visibilityInfoW.f20049a) {
            return visibilityInfoW.f20051c == 0 || visibilityInfoW.d == 0;
        }
        return false;
    }

    public Animator X(View view, TransitionValues transitionValues) {
        return null;
    }

    public Animator Y(View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    public final void Z(int i2) {
        if ((i2 & (-4)) == 0) {
            this.F = i2;
        } else {
            md.n("Only MODE_IN and MODE_OUT flags are allowed");
        }
    }

    @Override // androidx.transition.Transition
    public final void d(TransitionValues transitionValues) {
        V(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void g(TransitionValues transitionValues) {
        V(transitionValues);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0092  */
    /* JADX WARN: Code duplicated, block: B:51:0x0098  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:58:0x0128 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x012a  */
    /* JADX WARN: Code duplicated, block: B:60:0x0132  */
    /* JADX WARN: Code duplicated, block: B:61:0x0148  */
    /* JADX WARN: Code duplicated, block: B:64:0x0164 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:66:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:68:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:70:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:73:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:75:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:78:0x01ea  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
    
        if (W(v(r3, false), z(r3, false)).f20049a != false) goto L9;
     */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator k(android.view.ViewGroup r25, androidx.transition.TransitionValues r26, androidx.transition.TransitionValues r27) {
        /*
            Method dump skipped, instruction units count: 642
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.k(android.view.ViewGroup, androidx.transition.TransitionValues, androidx.transition.TransitionValues):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    public final String[] y() {
        return G;
    }

    public class OverlayListener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ViewGroup f20045a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final View f20046b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final View f20047c;
        public boolean d = true;

        public OverlayListener(ViewGroup viewGroup, View view, View view2) {
            this.f20045a = viewGroup;
            this.f20046b = view;
            this.f20047c = view2;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void a() {
        }

        public final void b() {
            this.f20047c.setTag(R.id.save_overlay_view, null);
            this.f20045a.getOverlay().remove(this.f20046b);
            this.d = false;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void f() {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void i(Transition transition) {
            transition.H(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void k(Transition transition) {
            if (this.d) {
                b();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            if (z) {
                return;
            }
            b();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            this.f20045a.getOverlay().remove(this.f20046b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            View view = this.f20046b;
            if (view.getParent() == null) {
                ViewCompat.a(view, this.f20045a);
            } else {
                Visibility.this.cancel();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator, boolean z) {
            if (z) {
                View view = this.f20047c;
                View view2 = this.f20046b;
                view.setTag(R.id.save_overlay_view, view2);
                ViewCompat.a(view2, this.f20045a);
                this.d = true;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            b();
        }
    }

    public static class DisappearListener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f20040a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f20041b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ViewGroup f20042c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f20043e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f20044f = false;
        public final boolean d = true;

        public DisappearListener(View view, int i2) {
            this.f20040a = view;
            this.f20041b = i2;
            this.f20042c = (ViewGroup) view.getParent();
            b(true);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void a() {
            b(false);
            if (this.f20044f) {
                return;
            }
            Property property = ViewUtils.f20039a;
            this.f20040a.setTransitionVisibility(this.f20041b);
        }

        public final void b(boolean z) {
            ViewGroup viewGroup;
            if (!this.d || this.f20043e == z || (viewGroup = this.f20042c) == null) {
                return;
            }
            this.f20043e = z;
            viewGroup.suppressLayout(z);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void f() {
            b(true);
            if (this.f20044f) {
                return;
            }
            Property property = ViewUtils.f20039a;
            this.f20040a.setTransitionVisibility(0);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void i(Transition transition) {
            transition.H(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void k(Transition transition) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f20044f = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            if (z) {
                return;
            }
            if (!this.f20044f) {
                Property property = ViewUtils.f20039a;
                this.f20040a.setTransitionVisibility(this.f20041b);
                ViewGroup viewGroup = this.f20042c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            b(false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator, boolean z) {
            if (z) {
                Property property = ViewUtils.f20039a;
                this.f20040a.setTransitionVisibility(0);
                ViewGroup viewGroup = this.f20042c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (!this.f20044f) {
                Property property = ViewUtils.f20039a;
                this.f20040a.setTransitionVisibility(this.f20041b);
                ViewGroup viewGroup = this.f20042c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            b(false);
        }
    }

    public Visibility() {
        this.F = 3;
    }
}
