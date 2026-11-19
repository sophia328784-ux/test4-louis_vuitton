package com.batch.android.m0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.batch.android.BatchMessage;
import com.batch.android.BatchMessagingWebViewJavascriptBridge;
import com.batch.android.R;
import com.batch.android.e.t;
import com.batch.android.m0.a;
import com.batch.android.messaging.view.CloseButton;
import com.batch.android.r0.e;
import com.batch.android.r0.g;
import com.batch.android.r0.h;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import defpackage.bx;
import defpackage.hi;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends RelativeLayout implements OnApplyWindowInsetsListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.batch.android.g0.a f23692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BatchMessage f23693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, com.batch.android.z.a.d<?>> f23694c;
    private final InterfaceC0059a d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.batch.android.z.c f23695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.batch.android.j0.a f23696f;
    private Map<String, com.batch.android.r0.d> g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ScrollView f23697h;

    /* JADX INFO: renamed from: com.batch.android.m0.a$a, reason: collision with other inner class name */
    public interface InterfaceC0059a {
        void a();

        void a(com.batch.android.f0.d dVar);

        void a(String str, String str2, com.batch.android.f0.b bVar);
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f23698a;

        static {
            int[] iArr = new int[com.batch.android.g0.c.j.values().length];
            try {
                iArr[com.batch.android.g0.c.j.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[com.batch.android.g0.c.j.BUTTON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[com.batch.android.g0.c.j.IMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[com.batch.android.g0.c.j.DIVIDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[com.batch.android.g0.c.j.COLUMNS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[com.batch.android.g0.c.j.SPACER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[com.batch.android.g0.c.j.WEBVIEW.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f23698a = iArr;
        }
    }

    public static final class c extends Lambda implements Function2<com.batch.android.g0.c, LinearLayout, Unit> {
        public c() {
            super(2);
        }

        public final void a(com.batch.android.g0.c cVar, LinearLayout linearLayout) {
            cVar.getClass();
            linearLayout.getClass();
            a.this.a(cVar, linearLayout);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            a((com.batch.android.g0.c) obj, (LinearLayout) obj2);
            return Unit.f71739a;
        }
    }

    public static final class d implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.batch.android.r0.d f23700a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ a f23701b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.batch.android.g0.c.g f23702c;

        public d(com.batch.android.r0.d dVar, a aVar, com.batch.android.g0.c.g gVar) {
            this.f23700a = dVar;
            this.f23701b = aVar;
            this.f23702c = gVar;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f23700a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            com.batch.android.z.a.d<?> dVar = (com.batch.android.z.a.d) this.f23701b.f23694c.get(this.f23702c.r());
            com.batch.android.r0.d dVar2 = this.f23700a;
            if (dVar == null) {
                dVar2.a(this.f23702c, this.f23701b.f23692a.k().get(this.f23702c.r()));
            } else {
                dVar2.a();
                this.f23700a.a(this.f23702c, dVar);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, com.batch.android.g0.a aVar, BatchMessage batchMessage, Map<String, com.batch.android.z.a.d<?>> map, InterfaceC0059a interfaceC0059a, com.batch.android.z.c cVar) {
        super(context);
        context.getClass();
        aVar.getClass();
        batchMessage.getClass();
        map.getClass();
        interfaceC0059a.getClass();
        this.f23692a = aVar;
        this.f23693b = batchMessage;
        this.f23694c = map;
        this.d = interfaceC0059a;
        this.f23695e = cVar;
        this.g = new LinkedHashMap();
        this.f23697h = new ScrollView(context);
        setId(R.id.com_batchsdk_messaging_root_view);
        ViewCompat.x(this, this);
        b();
        a();
    }

    private final void a() {
        String strA;
        String strA2;
        com.batch.android.g0.d.h hVarC;
        com.batch.android.g0.d.h hVarC2;
        com.batch.android.g0.d.h hVarD;
        com.batch.android.g0.b bVarE = this.f23692a.e();
        String strA3 = null;
        com.batch.android.g0.b.C0049b c0049bD = bVarE != null ? bVarE.d() : null;
        CloseButton closeButton = new CloseButton(getContext());
        closeButton.setId(R.id.com_batchsdk_messaging_close_button);
        closeButton.setSize(24);
        closeButton.setPadding(10);
        if (c0049bD == null || (hVarD = c0049bD.d()) == null) {
            strA = null;
        } else {
            Context context = closeButton.getContext();
            context.getClass();
            strA = hVarD.a(context);
        }
        closeButton.setGlyphColor(com.batch.android.o0.b.c(strA));
        closeButton.setGlyphStrokeCap(Paint.Cap.ROUND);
        closeButton.setGlyphPadding(com.batch.android.k0.a.a(7));
        closeButton.setGlyphWidth(com.batch.android.k0.a.a(3));
        if (c0049bD == null || (hVarC2 = c0049bD.c()) == null) {
            strA2 = null;
        } else {
            Context context2 = closeButton.getContext();
            context2.getClass();
            strA2 = hVarC2.a(context2);
        }
        closeButton.setBackgroundColor(com.batch.android.o0.b.c(strA2));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        closeButton.setLayoutParams(layoutParams);
        closeButton.setOnClickListener(new hi(this, 9));
        addView(closeButton);
        com.batch.android.g0.b bVarE2 = this.f23692a.e();
        com.batch.android.g0.b.a aVarC = bVarE2 != null ? bVarE2.c() : null;
        com.batch.android.j0.a aVar = new com.batch.android.j0.a(getContext());
        aVar.setId(R.id.com_batchsdk_messaging_countdown_progress);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, com.batch.android.k0.a.a(2));
        if (this.f23692a.t()) {
            layoutParams2.addRule(3, R.id.com_batchsdk_messaging_scroll_view);
        } else {
            layoutParams2.addRule(9);
        }
        aVar.setLayoutParams(layoutParams2);
        if (aVarC != null && (hVarC = aVarC.c()) != null) {
            Context context3 = aVar.getContext();
            context3.getClass();
            strA3 = hVarC.a(context3);
        }
        aVar.setColor(com.batch.android.o0.b.c(strA3));
        this.f23696f = aVar;
        addView(aVar);
    }

    private final void b() {
        String strA;
        if (this.f23692a.o()) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.setMargins(com.batch.android.k0.a.a(this.f23692a.i().i().c()), com.batch.android.k0.a.a(this.f23692a.i().i().f()), com.batch.android.k0.a.a(this.f23692a.i().i().e()), com.batch.android.k0.a.a(this.f23692a.i().i().b()));
            setLayoutParams(layoutParams);
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        setElevation(10.0f);
        com.batch.android.g0.d.h hVarF = this.f23692a.i().f();
        if (hVarF != null) {
            Context context = getContext();
            context.getClass();
            strA = hVarF.a(context);
        } else {
            strA = null;
        }
        gradientDrawable.setColor(ColorStateList.valueOf(com.batch.android.o0.b.c(strA)));
        if (this.f23692a.s()) {
            com.batch.android.g0.d.b bVarJ = this.f23692a.i().j();
            Context context2 = getContext();
            context2.getClass();
            gradientDrawable.setCornerRadii(bVarJ.a(context2));
            com.batch.android.g0.d.a aVarG = this.f23692a.i().g();
            if (aVarG != null) {
                int iD = aVarG.d();
                com.batch.android.g0.d.h hVarC = this.f23692a.i().g().c();
                Context context3 = getContext();
                context3.getClass();
                gradientDrawable.setStroke(iD, ColorStateList.valueOf(com.batch.android.o0.b.c(hVarC.a(context3))));
            }
        }
        setClipToOutline(true);
        setBackground(gradientDrawable);
        setImportantForAccessibility(1);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setId(R.id.com_batchsdk_messaging_content_view);
        linearLayout.setClipChildren(false);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        com.batch.android.g0.d.a aVarG2 = this.f23692a.i().g();
        if (aVarG2 != null) {
            int iD2 = aVarG2.d();
            linearLayout.setPadding(iD2, iD2, iD2, iD2);
        }
        if (this.f23692a.q()) {
            linearLayout.setGravity(this.f23692a.h().c());
        }
        Iterator<com.batch.android.g0.c> it = this.f23692a.i().h().iterator();
        while (it.hasNext()) {
            a(it.next(), linearLayout);
        }
        ScrollView scrollView = this.f23697h;
        scrollView.setId(R.id.com_batchsdk_messaging_scroll_view);
        scrollView.setLayoutParams(new FrameLayout.LayoutParams(-1, this.f23692a.s() ? -2 : -1));
        scrollView.setFillViewport(true);
        this.f23697h.addView(linearLayout);
        addView(this.f23697h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$a$--V, reason: not valid java name */
    public static /* synthetic */ void m19instrumented$0$a$V(a aVar, View view) {
        Callback.n(view);
        try {
            a(aVar, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$a$-Lcom-batch-android-g0-c$a-Landroid-view-ViewGroup--V, reason: not valid java name */
    public static /* synthetic */ void m20xb92bf87a(a aVar, com.batch.android.g0.c.a aVar2, View view) {
        Callback.n(view);
        try {
            a(aVar, aVar2, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$a$-Lcom-batch-android-g0-c$g-Landroid-view-ViewGroup--V, reason: not valid java name */
    public static /* synthetic */ void m21x5e1224b4(a aVar, com.batch.android.g0.c.g gVar, String str, com.batch.android.f0.a aVar2, View view) {
        Callback.n(view);
        try {
            a(aVar, gVar, str, aVar2, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public final boolean c() {
        return !com.batch.android.o0.d.b(getContext());
    }

    public final void d() {
        com.batch.android.g0.b.a aVarC;
        com.batch.android.g0.b bVarE = this.f23692a.e();
        if (bVarE == null || (aVarC = bVarE.c()) == null) {
            return;
        }
        int iD = aVarC.d();
        com.batch.android.j0.a aVar = this.f23696f;
        if (aVar == null || iD <= 0) {
            return;
        }
        aVar.a(((long) iD) * 1000);
    }

    public final ScrollView getScrollView() {
        return this.f23697h;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        view.getClass();
        windowInsetsCompat.getClass();
        if (this.f23692a.m()) {
            view.setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), windowInsetsCompat.e(2).d);
        }
        if (this.f23692a.n()) {
            view.setPadding(getPaddingLeft(), windowInsetsCompat.e(1).f12055b, getPaddingRight(), getPaddingBottom());
        }
        if (this.f23692a.q() || this.f23692a.u()) {
            Insets insetsE = windowInsetsCompat.e(519);
            view.setPadding(insetsE.f12054a, insetsE.f12055b, insetsE.f12056c, insetsE.d);
        }
        WindowInsetsCompat windowInsetsCompat2 = WindowInsetsCompat.f12243b;
        windowInsetsCompat2.getClass();
        return windowInsetsCompat2;
    }

    public final void setScrollView(ScrollView scrollView) {
        scrollView.getClass();
        this.f23697h = scrollView;
    }

    public final void a(Window window) {
        if (this.f23692a.p()) {
            InsetDrawable insetDrawable = new InsetDrawable((Drawable) new ColorDrawable(0), com.batch.android.k0.a.a(this.f23692a.i().i().c()), com.batch.android.k0.a.a(this.f23692a.i().i().f()), com.batch.android.k0.a.a(this.f23692a.i().i().e()), com.batch.android.k0.a.a(this.f23692a.i().i().b()));
            if (window != null) {
                window.setBackgroundDrawable(insetDrawable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(com.batch.android.g0.c cVar, ViewGroup viewGroup) {
        switch (b.f23698a[cVar.j().ordinal()]) {
            case 1:
                a((com.batch.android.g0.c.i) cVar, viewGroup);
                break;
            case 2:
                a((com.batch.android.g0.c.a) cVar, viewGroup);
                break;
            case 3:
                a((com.batch.android.g0.c.g) cVar, viewGroup);
                break;
            case 4:
                a((com.batch.android.g0.c.d) cVar, viewGroup);
                break;
            case 5:
                a((com.batch.android.g0.c.C0050c) cVar, viewGroup);
                break;
            case 6:
                a((com.batch.android.g0.c.h) cVar, viewGroup);
                break;
            case 7:
                a((com.batch.android.g0.c.k) cVar, viewGroup);
                break;
        }
    }

    private final void a(com.batch.android.g0.c.i iVar, ViewGroup viewGroup) {
        Context context = getContext();
        context.getClass();
        g gVar = new g(context);
        gVar.a(iVar);
        gVar.setText(com.batch.android.o0.b.f(this.f23692a.j().get(iVar.t())));
        viewGroup.addView(gVar);
    }

    private final void a(com.batch.android.g0.c.a aVar, ViewGroup viewGroup) {
        Context context = getContext();
        context.getClass();
        com.batch.android.r0.a aVar2 = new com.batch.android.r0.a(context);
        aVar2.a(aVar);
        aVar2.setText(com.batch.android.o0.b.f(this.f23692a.j().get(aVar.B())));
        aVar2.setOnClickListener(new bx(this, aVar, 7));
        com.batch.android.p0.c cVar = new com.batch.android.p0.c(getContext());
        cVar.setLayoutParams(new com.batch.android.p0.c.a(-1, -2));
        cVar.setGravity(aVar.x().c());
        cVar.setClipChildren(false);
        cVar.addView(aVar2);
        viewGroup.addView(cVar);
    }

    private static final void a(a aVar, com.batch.android.g0.c.a aVar2, View view) {
        aVar.getClass();
        aVar2.getClass();
        InterfaceC0059a interfaceC0059a = aVar.d;
        String strB = aVar2.B();
        String str = aVar.f23692a.j().get(aVar2.B());
        com.batch.android.f0.a aVar3 = aVar.f23692a.d().get(aVar2.B());
        String str2 = aVar3 != null ? aVar3.f23284b : null;
        com.batch.android.f0.a aVar4 = aVar.f23692a.d().get(aVar2.B());
        interfaceC0059a.a(strB, "button", new com.batch.android.f0.b(str, str2, aVar4 != null ? aVar4.f23285c : null));
    }

    private final void a(final com.batch.android.g0.c.g gVar, ViewGroup viewGroup) {
        final String str = this.f23692a.j().get(gVar.r());
        Context context = getContext();
        context.getClass();
        com.batch.android.r0.d dVar = new com.batch.android.r0.d(context);
        dVar.a(gVar);
        dVar.setImageContentDescription(str);
        final com.batch.android.f0.a aVar = this.f23692a.d().get(gVar.r());
        if (aVar != null) {
            dVar.setOnClickListener(new View.OnClickListener() { // from class: w71
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.m21x5e1224b4(this.f80782b, gVar, str, aVar, view);
                }
            });
        }
        this.g.put(gVar.r(), dVar);
        dVar.getViewTreeObserver().addOnGlobalLayoutListener(new d(dVar, this, gVar));
        viewGroup.addView(dVar);
    }

    private static final void a(a aVar, com.batch.android.g0.c.g gVar, String str, com.batch.android.f0.a aVar2, View view) {
        aVar.getClass();
        gVar.getClass();
        aVar2.getClass();
        aVar.d.a(gVar.r(), "image", new com.batch.android.f0.b(str, aVar2.f23284b, aVar2.f23285c));
    }

    private final void a(com.batch.android.g0.c.h hVar, ViewGroup viewGroup) {
        Context context = getContext();
        context.getClass();
        e eVar = new e(context, viewGroup);
        eVar.a(hVar);
        viewGroup.addView(eVar);
    }

    private final void a(com.batch.android.g0.c.k kVar, ViewGroup viewGroup) {
        Context context = getContext();
        context.getClass();
        h hVar = new h(context);
        hVar.a(kVar);
        hVar.a(this.f23693b, this.f23695e);
        String str = this.f23692a.k().get(kVar.p());
        if (str != null) {
            hVar.a(str);
        } else {
            com.batch.android.z.c cVar = this.f23695e;
            if (cVar != null) {
                cVar.a(BatchMessagingWebViewJavascriptBridge.e.UNKNOWN, com.batch.android.f0.d.UNKNOWN, "No webview's url has been provided");
            }
        }
        viewGroup.addView(hVar);
    }

    public final void a(String str, com.batch.android.z.a.d<?> dVar) {
        str.getClass();
        com.batch.android.r0.d dVar2 = this.g.get(str);
        if (dVar2 != null) {
            dVar2.a();
            com.batch.android.g0.c.g gVarA = this.f23692a.a(str);
            if (gVarA != null) {
                if (dVar == null) {
                    t.c(com.batch.android.v0.g.f24103i, "Downloaded image is null");
                    com.batch.android.g0.c.g gVarA2 = this.f23692a.a(str);
                    if (gVarA2 != null) {
                        dVar2.a(gVarA2, (com.batch.android.z.a.d<?>) null);
                        return;
                    }
                    return;
                }
                dVar2.a(gVarA, dVar);
            }
        }
    }

    public final void a(String str) {
        com.batch.android.g0.c.g gVarA;
        str.getClass();
        com.batch.android.r0.d dVar = this.g.get(str);
        if (dVar == null || (gVarA = this.f23692a.a(str)) == null) {
            return;
        }
        dVar.a();
        dVar.a(gVarA, (com.batch.android.z.a.d<?>) null);
    }

    private final void a(com.batch.android.g0.c.d dVar, ViewGroup viewGroup) {
        Context context = getContext();
        context.getClass();
        com.batch.android.r0.c cVar = new com.batch.android.r0.c(context);
        cVar.a(dVar);
        com.batch.android.p0.c cVar2 = new com.batch.android.p0.c(getContext());
        cVar2.setLayoutParams(new com.batch.android.p0.c.a(-1, -2));
        cVar2.setGravity(dVar.p().c());
        cVar2.addView(cVar);
        viewGroup.addView(cVar2);
    }

    private final void a(com.batch.android.g0.c.C0050c c0050c, ViewGroup viewGroup) {
        Context context = getContext();
        context.getClass();
        com.batch.android.r0.b bVar = new com.batch.android.r0.b(context);
        bVar.a(c0050c);
        bVar.a(c0050c, new c());
        viewGroup.addView(bVar);
    }

    private static final void a(a aVar, View view) {
        aVar.getClass();
        aVar.d.a();
    }

    public final void b(String str) {
        str.getClass();
        com.batch.android.r0.d dVar = this.g.get(str);
        if (dVar != null) {
            dVar.b();
        }
    }
}
