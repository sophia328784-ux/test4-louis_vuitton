package com.batch.android.l0;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.batch.android.BatchMessage;
import com.batch.android.e.f0;
import com.batch.android.i;
import com.batch.android.j0.f;
import com.batch.android.v0.g;
import com.google.android.material.appbar.AppBarLayout;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.ac;
import defpackage.md;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements f.c {
    protected static final int n = 300;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f23639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final g f23640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final i f23641c;
    protected ViewGroup d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected d f23642e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected RelativeLayout f23643f;
    protected BatchMessage g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected e f23644h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected boolean f23645i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected boolean f23646j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected Object f23647k = new Object();
    protected BroadcastReceiver l = new C0058a();
    protected Handler m = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: com.batch.android.l0.a$a, reason: collision with other inner class name */
    public class C0058a extends BroadcastReceiver {
        public C0058a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (a.this.f23645i || intent == null || !g.f24105k.equalsIgnoreCase(intent.getAction())) {
                return;
            }
            a.this.b(true);
        }
    }

    public class b implements View.OnAttachStateChangeListener {
        public b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            LocalBroadcastManager.a(a.this.f23639a).d(a.this.l);
            a.this.m();
        }
    }

    public class c implements Animator.AnimatorListener {
        public c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            a.this.j();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.j();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public static class d extends f {
        public d(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            requestApplyInsets();
        }
    }

    public enum e {
        TOP,
        BOTTOM
    }

    public a(View view, g gVar, i iVar, BatchMessage batchMessage, boolean z) {
        this.g = batchMessage;
        this.f23640b = gVar;
        this.f23641c = iVar;
        if (!z) {
            this.d = a(view);
        } else {
            if (!(view instanceof FrameLayout)) {
                md.n("Banners cannot be embedded in views that are not FrameLayouts");
                throw null;
            }
            this.d = (FrameLayout) view;
        }
        ViewGroup viewGroup = this.d;
        if (viewGroup == null) {
            md.n("Could not find any suitable view to attach the banner to");
            throw null;
        }
        this.f23639a = viewGroup.getContext();
        this.f23642e = new d(this.f23639a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        ViewParent parent = this.f23642e.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f23642e);
            this.f23641c.c();
        }
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void c(boolean z) {
        if (this.f23645i) {
            return;
        }
        this.f23645i = true;
        m();
        if (z) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f23642e, "alpha", 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            objectAnimatorOfFloat.setDuration(300L);
            objectAnimatorOfFloat.addListener(new c());
            objectAnimatorOfFloat.start();
        } else {
            j();
        }
        LocalBroadcastManager.a(this.f23639a).d(this.l);
    }

    public void b(boolean z) {
        this.m.post(new ac(this, z, 6));
    }

    public abstract boolean c();

    public abstract e d();

    public abstract ScrollView e();

    public int f() {
        return this.f23644h == e.TOP ? 48 : 80;
    }

    public abstract RelativeLayout g();

    public void h() {
        this.f23642e.setClipChildren(false);
        this.f23642e.setClipToPadding(false);
        this.f23642e.setAccessibilityLiveRegion(1);
        this.f23642e.setImportantForAccessibility(1);
        this.f23643f = g();
        this.f23644h = d();
        this.f23642e.setNestedScrollView(e());
        this.f23642e.setPannable(c());
        this.f23642e.setDismissDirection(this.f23644h == e.TOP ? f.b.TOP : f.b.BOTTOM);
        this.f23642e.setDismissListener(this);
        ViewGroup.LayoutParams layoutParams = this.f23643f.getLayoutParams();
        if (!(layoutParams instanceof FrameLayout.LayoutParams)) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
        }
        ((FrameLayout.LayoutParams) layoutParams).gravity = f();
        this.f23642e.addView(this.f23643f, layoutParams);
    }

    public void i() {
        if (this.f23645i) {
            return;
        }
        c(true);
        this.f23641c.a();
    }

    public abstract void k();

    /* JADX WARN: Code duplicated, block: B:19:0x0054  */
    public void l() {
        ViewGroup.LayoutParams layoutParams;
        RelativeLayout relativeLayout;
        ViewGroup.LayoutParams layoutParams2;
        if (this.f23646j) {
            return;
        }
        this.f23646j = true;
        int iF = f();
        ViewGroup.LayoutParams layoutParams3 = new ViewGroup.LayoutParams(-1, -2);
        ViewGroup viewGroup = this.d;
        if (!(viewGroup instanceof FrameLayout)) {
            if (f0.a((Object) viewGroup)) {
                try {
                    layoutParams = layoutParams3;
                    CoordinatorLayout.LayoutParams layoutParams4 = new CoordinatorLayout.LayoutParams(layoutParams3);
                    if (this.f23644h == e.TOP) {
                        layoutParams4.b(new AppBarLayout.ScrollingViewBehavior());
                    }
                    layoutParams4.f11853c = iF;
                    layoutParams4.g = iF;
                    layoutParams2 = layoutParams4;
                } catch (NoClassDefFoundError unused) {
                    return;
                }
            }
            layoutParams = layoutParams3;
            this.f23642e.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.d.addView(this.f23642e, layoutParams);
            relativeLayout = this.f23643f;
            if (relativeLayout instanceof com.batch.android.n0.a) {
                ((com.batch.android.n0.a) relativeLayout).h();
            }
            this.f23641c.d();
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f23642e, "alpha", Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            objectAnimatorOfFloat.setDuration(300L);
            objectAnimatorOfFloat.start();
            LocalBroadcastManager.a(this.f23639a).b(this.l, new IntentFilter(g.f24105k));
            this.f23643f.addOnAttachStateChangeListener(new b());
            k();
        }
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(layoutParams3);
        layoutParams5.gravity = iF;
        layoutParams2 = layoutParams5;
        layoutParams = layoutParams2;
        layoutParams = layoutParams3;
        this.f23642e.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.d.addView(this.f23642e, layoutParams);
        relativeLayout = this.f23643f;
        if (relativeLayout instanceof com.batch.android.n0.a) {
            ((com.batch.android.n0.a) relativeLayout).h();
        }
        this.f23641c.d();
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f23642e, "alpha", Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        objectAnimatorOfFloat2.setDuration(300L);
        objectAnimatorOfFloat2.start();
        LocalBroadcastManager.a(this.f23639a).b(this.l, new IntentFilter(g.f24105k));
        this.f23643f.addOnAttachStateChangeListener(new b());
        k();
    }

    public void m() {
        this.m.removeCallbacksAndMessages(this.f23647k);
    }

    public ViewGroup a(View view) {
        FrameLayout frameLayout = null;
        while (view != null) {
            if (f0.a((Object) view)) {
                return (ViewGroup) view;
            }
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (FrameLayout) view;
                }
                frameLayout = (FrameLayout) view;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return frameLayout;
    }

    @Override // com.batch.android.j0.f.c
    public void a(f fVar) {
        if (this.f23645i) {
            return;
        }
        c(false);
        this.f23641c.b();
    }
}
