package com.batch.android.n0;

import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.batch.android.R;
import com.batch.android.e.c0;
import com.batch.android.e.f0;
import com.batch.android.e.t;
import com.batch.android.messaging.Size2D;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import defpackage.h81;
import defpackage.hd;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b extends FrameLayout implements com.batch.android.z.a.c {
    private static final float n = 52.0f;
    private static final float o = 20.0f;
    private static final float p = 10.0f;
    private static final float q = 40.0f;
    private static final int r = 500;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f23785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.batch.android.h0.d f23786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.batch.android.o0.a.InterfaceC0065a f23787c;
    private final com.batch.android.a0.d d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Point f23788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.batch.android.messaging.view.a f23789f;
    private final RelativeLayout g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a f23790h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ProgressBar f23791i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.batch.android.q0.c f23792j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private InterfaceC0064b f23793k;
    private long l;
    private c0<Void> m;

    public static class a extends com.batch.android.j0.c implements com.batch.android.j0.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.batch.android.j0.b.a f23794b;

        public a(Context context, Size2D size2D) {
            super(context, size2D);
        }

        @Override // com.batch.android.j0.b
        public boolean a(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        @Override // com.batch.android.j0.b
        public boolean b(MotionEvent motionEvent) {
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            com.batch.android.j0.b.a aVar = this.f23794b;
            return aVar != null ? aVar.a(motionEvent, this) : super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            com.batch.android.j0.b.a aVar = this.f23794b;
            if (aVar != null) {
                return aVar.a(motionEvent, this, getForeground() != null);
            }
            return super.onTouchEvent(motionEvent);
        }

        @Override // com.batch.android.j0.b
        public void setTouchEventDelegate(com.batch.android.j0.b.a aVar) {
            this.f23794b = aVar;
        }
    }

    /* JADX INFO: renamed from: com.batch.android.n0.b$b, reason: collision with other inner class name */
    public interface InterfaceC0064b {
        void a();

        void a(com.batch.android.f0.d dVar);

        void b();

        void d();
    }

    public b(Context context, com.batch.android.h0.d dVar, com.batch.android.a0.d dVar2, com.batch.android.o0.a.InterfaceC0065a interfaceC0065a) {
        super(context);
        this.l = 0L;
        setId(R.id.com_batchsdk_messaging_root_view);
        this.m = new c0<>();
        this.f23785a = context;
        this.f23786b = dVar;
        this.f23787c = interfaceC0065a;
        this.d = dVar2 == null ? com.batch.android.o0.b.d(dVar.f23459h) : dVar2;
        this.f23788e = com.batch.android.o0.d.a(context);
        a();
        RelativeLayout relativeLayoutB = b();
        this.g = relativeLayoutB;
        a aVarA = a(relativeLayoutB);
        this.f23790h = aVarA;
        this.f23792j = b((FrameLayout) aVarA);
        this.f23791i = a((FrameLayout) aVarA);
        this.f23789f = a(relativeLayoutB, aVarA);
        if (interfaceC0065a.b(dVar.l) == null) {
            new com.batch.android.z.a(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, dVar.l);
        }
        setFitsSystemWindows(true);
        f0.b(this);
    }

    private com.batch.android.messaging.view.a a(RelativeLayout relativeLayout, View view) {
        com.batch.android.messaging.view.a aVar = new com.batch.android.messaging.view.a(this.f23785a);
        aVar.setId(R.id.com_batchsdk_messaging_close_button);
        aVar.setShowBorder(true);
        int i2 = 0;
        aVar.a(a(new com.batch.android.a0.b("close", new String[0])));
        int iA = com.batch.android.o0.b.a(getResources(), Float.valueOf(n));
        aVar.setPadding(com.batch.android.o0.b.a(getResources(), Float.valueOf(p)));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA, iA);
        if (this.f23786b.p) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            int iA2 = com.batch.android.o0.b.a(getResources(), Float.valueOf(20.0f));
            layoutParams.setMargins(0, iA2, iA2, 0);
        } else {
            layoutParams.addRule(6, view.getId());
            layoutParams.addRule(7, view.getId());
            int i3 = (-iA) / 2;
            layoutParams.setMargins(0, i3, i3, 0);
        }
        aVar.setLayoutParams(layoutParams);
        if (d() && this.f23786b.o > 0) {
            aVar.setCountdownProgress(1.0f);
        }
        aVar.setOnClickListener(new h81(this, i2));
        relativeLayout.addView(aVar);
        return aVar;
    }

    private com.batch.android.q0.c b(FrameLayout frameLayout) {
        com.batch.android.q0.c cVar = new com.batch.android.q0.c(this.f23785a);
        cVar.setId(R.id.com_batchsdk_messaging_image_view);
        cVar.a(a(new com.batch.android.a0.b("image", new String[0])));
        cVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(cVar);
        return cVar;
    }

    private boolean e() {
        return SystemClock.uptimeMillis() < this.l + this.f23786b.f23461j;
    }

    private void f() {
        if (this.f23786b.f23461j > 0 && e()) {
            t.b(com.batch.android.v0.g.f24103i, "Global tap action has been triggered, but the accidental touch prevention delay hasn't elapsed: rejecting tap.");
            return;
        }
        InterfaceC0064b interfaceC0064b = this.f23793k;
        if (interfaceC0064b != null) {
            interfaceC0064b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$a$-Landroid-widget-RelativeLayout--Lcom-batch-android-n0-b$a-, reason: not valid java name */
    public static /* synthetic */ void m26x31b85bfd(b bVar, View view) {
        Callback.n(view);
        try {
            bVar.b(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$a$-Landroid-widget-RelativeLayout-Landroid-view-View--Lcom-batch-android-messaging-view-a-, reason: not valid java name */
    public static /* synthetic */ void m27x703cffe5(b bVar, View view) {
        Callback.n(view);
        try {
            bVar.a(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public boolean d() {
        return !com.batch.android.o0.d.b(this.f23785a);
    }

    public void g() {
        this.m.a((Void) null);
    }

    public View getPanEffectsView() {
        return this.g;
    }

    public a getPannableView() {
        return this.f23790h;
    }

    public void h() {
        int i2;
        com.batch.android.messaging.view.a aVar = this.f23789f;
        if (aVar == null || (i2 = this.f23786b.o) <= 0) {
            return;
        }
        aVar.a(i2);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        RelativeLayout relativeLayout = this.g;
        if (relativeLayout != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.setMargins(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
            this.g.setLayoutParams(layoutParams);
        }
        return super.onApplyWindowInsets(windowInsets.replaceSystemWindowInsets(0, 0, 0, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.batch.android.z.a.d dVarB = this.f23787c.b(this.f23786b.l);
        if (dVarB != null) {
            a(dVarB);
        }
    }

    public void setActionListener(InterfaceC0064b interfaceC0064b) {
        this.f23793k = interfaceC0064b;
    }

    @Override // com.batch.android.z.a.c
    public void c() {
    }

    private RelativeLayout b() {
        RelativeLayout relativeLayout = new RelativeLayout(this.f23785a);
        relativeLayout.setId(R.id.com_batchsdk_messaging_container_view);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.enableTransitionType(4);
        relativeLayout.setLayoutTransition(layoutTransition);
        addView(relativeLayout);
        return relativeLayout;
    }

    private /* synthetic */ void b(View view) {
        f();
    }

    @Override // com.batch.android.z.a.c
    public void b(com.batch.android.z.a.d dVar) {
        this.f23787c.a(dVar);
        a(dVar);
    }

    @Override // com.batch.android.z.a.c
    public void b(com.batch.android.f0.d dVar) {
        ((ViewGroup) this.f23791i.getParent()).removeView(this.f23791i);
        InterfaceC0064b interfaceC0064b = this.f23793k;
        if (interfaceC0064b != null) {
            interfaceC0064b.a(dVar);
        }
    }

    private Map<String, String> a(com.batch.android.a0.b bVar) {
        return this.d.a(bVar, this.f23788e);
    }

    private void a() {
        View view = new View(this.f23785a);
        view.setId(R.id.com_batchsdk_messaging_background_view);
        com.batch.android.o0.b.a(view, a(new com.batch.android.a0.b("background", new String[0])));
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        addView(view);
    }

    private a a(RelativeLayout relativeLayout) {
        Context context = this.f23785a;
        com.batch.android.h0.d dVar = this.f23786b;
        a aVar = new a(context, dVar.p ? null : dVar.n);
        aVar.setId(R.id.com_batchsdk_messaging_image_container_view);
        com.batch.android.o0.b.a(aVar, a(new com.batch.android.a0.b("container", new String[0])));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (!this.f23786b.p) {
            int iA = com.batch.android.o0.b.a(getResources(), Float.valueOf(q));
            layoutParams.setMargins(iA, iA, iA, iA);
        }
        layoutParams.addRule(13);
        aVar.setLayoutParams(layoutParams);
        aVar.setContentDescription(this.f23786b.m);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{android.R.attr.selectableItemBackground});
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            aVar.setForeground(drawable);
        }
        typedArrayObtainStyledAttributes.recycle();
        aVar.setOnClickListener(new h81(this, 1));
        relativeLayout.addView(aVar);
        return aVar;
    }

    private ProgressBar a(FrameLayout frameLayout) {
        ProgressBar progressBar = new ProgressBar(this.f23785a);
        progressBar.setId(com.batch.android.o0.d.a());
        progressBar.setIndeterminate(true);
        progressBar.setIndeterminateTintList(ColorStateList.valueOf(-1));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        progressBar.setLayoutParams(layoutParams);
        frameLayout.addView(progressBar);
        return progressBar;
    }

    private /* synthetic */ void a(View view) {
        InterfaceC0064b interfaceC0064b = this.f23793k;
        if (interfaceC0064b != null) {
            interfaceC0064b.a();
        }
    }

    private void a(com.batch.android.z.a.d dVar) {
        Drawable drawable;
        ViewGroup viewGroup = (ViewGroup) this.f23791i.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.f23791i);
        }
        com.batch.android.q0.c cVar = this.f23792j;
        if (cVar != null) {
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(cVar, "alpha", 0, 255);
            objectAnimatorOfInt.setDuration(500L);
            objectAnimatorOfInt.setInterpolator(new LinearInterpolator());
            objectAnimatorOfInt.start();
            com.batch.android.o0.a.a(this.f23792j, dVar);
            if (!this.f23786b.p && (drawable = this.f23792j.getDrawable()) != null && this.f23790h != null) {
                this.f23790h.setTargetSize(new Size2D(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight()));
            }
        }
        this.m.a(new hd(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Void r5) {
        if (this.l == 0) {
            this.l = SystemClock.uptimeMillis();
        }
        InterfaceC0064b interfaceC0064b = this.f23793k;
        if (interfaceC0064b != null) {
            interfaceC0064b.d();
        }
    }
}
