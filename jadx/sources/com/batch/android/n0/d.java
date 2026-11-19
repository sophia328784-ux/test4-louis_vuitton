package com.batch.android.n0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Point;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import com.batch.android.R;
import com.batch.android.e.f0;
import com.batch.android.messaging.view.styled.mep.TextView;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import defpackage.c81;
import defpackage.hi;
import defpackage.pq0;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class d extends com.batch.android.p0.c implements com.batch.android.s0.a.InterfaceC0072a {
    private static final int A = 1;
    private static final long B = 0;
    private static final double z = 0.4d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f23795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f23796c;
    private Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FrameLayout f23797e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.batch.android.s0.a f23798f;
    private com.batch.android.s0.a g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Map<String, String> f23799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map<String, String> f23800i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.batch.android.messaging.view.a f23801j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextureView f23802k;
    private com.batch.android.q0.c l;
    private View m;
    private ProgressBar n;
    private com.batch.android.h0.g o;
    private com.batch.android.a0.d p;
    private boolean q;
    private com.batch.android.z.a.d r;
    private a s;
    private TextureView.SurfaceTextureListener t;
    private Point u;
    private int v;
    private int w;
    private int x;
    private long y;

    public interface a {
        void a();

        void a(int i2, com.batch.android.f0.b bVar);
    }

    public d(Context context, com.batch.android.h0.g gVar, com.batch.android.a0.d dVar, com.batch.android.z.a.d dVar2, boolean z2) {
        super(context);
        this.f23795b = true;
        this.f23796c = false;
        this.v = 0;
        this.w = 0;
        this.x = 0;
        this.y = B;
        setId(R.id.com_batchsdk_messaging_root_view);
        this.d = context;
        this.o = gVar;
        this.q = z2;
        this.p = dVar;
        this.r = dVar2;
        setFitsSystemWindows(true);
        this.u = com.batch.android.o0.d.a(context);
        b();
        f0.b(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View a(Pair<View, com.batch.android.a0.b> pair) {
        View view = (View) pair.first;
        com.batch.android.a0.b bVar = (com.batch.android.a0.b) pair.second;
        if (bVar != null) {
            Map<String, String> mapA = a(bVar);
            if (view instanceof com.batch.android.s0.c) {
                ((com.batch.android.s0.c) view).a(mapA);
            }
            view.setLayoutParams(com.batch.android.o0.b.a(this.d, view.getLayoutParams() instanceof com.batch.android.j0.d.h ? (com.batch.android.j0.d.h) view.getLayoutParams() : null, mapA));
        }
        return view;
    }

    private void b() {
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        com.batch.android.o0.b.a(this, a(new com.batch.android.a0.b("root", new String[0])));
        if (this.q || this.r != null || this.o.n != null) {
            h();
        }
        g();
        f();
        Boolean bool = this.o.p;
        if (bool == null || !bool.booleanValue()) {
            return;
        }
        com.batch.android.messaging.view.a aVar = new com.batch.android.messaging.view.a(this.d);
        this.f23801j = aVar;
        aVar.setId(R.id.com_batchsdk_messaging_close_button);
        Map<String, String> mapA = a(new com.batch.android.a0.b("close", new String[0]));
        this.f23801j.a(mapA);
        com.batch.android.p0.c.a aVarA = com.batch.android.o0.b.a(this.d, new com.batch.android.p0.c.a(-2, -2), mapA, 11, null);
        this.f23801j.setLayoutParams(aVarA);
        this.f23801j.setOnClickListener(new hi(this, 11));
        if (a() && this.o.w > 0) {
            this.f23801j.setCountdownProgress(1.0f);
        }
        this.x = ((RelativeLayout.LayoutParams) aVarA).topMargin;
        addView(this.f23801j);
    }

    private void c() {
        com.batch.android.z.a.d dVar = this.r;
        com.batch.android.q0.c cVar = this.l;
        if (dVar == null) {
            cVar.setImageDrawable(null);
        } else {
            com.batch.android.o0.a.a(cVar, dVar);
        }
    }

    private boolean d() {
        return SystemClock.uptimeMillis() < this.y;
    }

    private void f() {
        Boolean bool;
        this.f23799h = a(new com.batch.android.a0.b("content", new String[0]));
        com.batch.android.s0.a aVar = new com.batch.android.s0.a(this.d, "cnt", this);
        this.f23798f = aVar;
        aVar.setId(R.id.com_batchsdk_messaging_content_view);
        this.f23798f.setFlexDirection(2);
        this.f23798f.setAlignItems(2);
        this.f23798f.setJustifyContent(2);
        this.f23798f.a(this.f23799h);
        int i2 = 1;
        this.f23798f.setImportantForAccessibility(1);
        this.w = this.f23798f.getPaddingTop();
        addView(this.f23798f);
        if (this.o == null) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        if (!TextUtils.isEmpty(this.o.f23465i)) {
            TextView textView = new TextView(this.d);
            textView.setText(this.o.f23465i);
            linkedList.add(new Pair(textView, new com.batch.android.a0.b("h1", "text")));
        }
        if (!TextUtils.isEmpty(this.o.f23466j)) {
            TextView textView2 = new TextView(this.d);
            textView2.setText(this.o.f23466j);
            linkedList.add(new Pair(textView2, new com.batch.android.a0.b("h2", "text")));
        }
        if (!TextUtils.isEmpty(this.o.f23467k)) {
            TextView textView3 = new TextView(this.d);
            textView3.setText(this.o.f23467k);
            linkedList.add(new Pair(textView3, new com.batch.android.a0.b("h3", "text")));
        }
        Map<String, String> mapA = a(new com.batch.android.a0.b("body", "text"));
        TextView textView4 = new TextView(this.d);
        textView4.setText(this.o.d());
        textView4.a(mapA);
        textView4.setGravity(17);
        textView4.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        ScrollView scrollView = new ScrollView(this.d);
        scrollView.setFillViewport(true);
        scrollView.addView(textView4);
        com.batch.android.j0.d.h hVar = new com.batch.android.j0.d.h(-2, -2);
        hVar.f23517b = 1.0f;
        scrollView.setLayoutParams(com.batch.android.o0.b.a(this.d, hVar, mapA));
        linkedList.add(new Pair(scrollView, null));
        List<com.batch.android.f0.b> list = this.o.l;
        if (list != null) {
            int i3 = 0;
            for (com.batch.android.f0.b bVar : list) {
                int i4 = i3 + 1;
                com.batch.android.messaging.view.styled.mep.a aVar2 = new com.batch.android.messaging.view.styled.mep.a(this.d);
                aVar2.setText(bVar.d);
                aVar2.setTag(bVar);
                aVar2.setMaxLines(1);
                aVar2.setSingleLine(true);
                aVar2.setEllipsize(TextUtils.TruncateAt.MIDDLE);
                aVar2.setAllCaps(false);
                aVar2.setOnClickListener(new c81(this, i3, bVar, i2));
                linkedList2.add(new Pair(aVar2, new com.batch.android.a0.b(pq0.k(i4, "cta"), "btn")));
                i3 = i4;
            }
        }
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            this.f23798f.addView(a((Pair<View, com.batch.android.a0.b>) it.next()));
        }
        com.batch.android.s0.a aVar3 = this.g;
        if (aVar3 == null) {
            aVar3 = this.f23798f;
        }
        Boolean bool2 = this.o.r;
        if (bool2 != null && bool2.booleanValue()) {
            Collections.reverse(linkedList2);
        }
        Iterator it2 = linkedList2.iterator();
        while (it2.hasNext()) {
            View viewA = a((Pair<View, com.batch.android.a0.b>) it2.next());
            if (this.g != null && (bool = this.o.s) != null && bool.booleanValue()) {
                com.batch.android.j0.d.h hVar2 = (com.batch.android.j0.d.h) viewA.getLayoutParams();
                hVar2.f23517b = 1.0f;
                hVar2.f23518c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                hVar2.f23519e = 1.0f / linkedList2.size();
                viewA.setLayoutParams(hVar2);
            }
            aVar3.addView(viewA);
        }
    }

    private void g() {
        Boolean bool = this.o.q;
        if (bool == null || !bool.booleanValue()) {
            return;
        }
        this.f23800i = a(new com.batch.android.a0.b("ctas", new String[0]));
        com.batch.android.s0.a aVar = new com.batch.android.s0.a(this.d, "ctas", this);
        this.g = aVar;
        aVar.setId(com.batch.android.o0.d.a());
        Boolean bool2 = this.o.r;
        if (bool2 == null || !bool2.booleanValue()) {
            this.g.setFlexDirection(2);
        } else {
            this.g.setFlexDirection(0);
        }
        this.g.setAlignItems(2);
        this.g.setJustifyContent(2);
        this.g.a(this.f23800i);
        addView(this.g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void h() {
        boolean z2;
        LinkedList<Pair> linkedList = new LinkedList();
        FrameLayout frameLayout = new FrameLayout(this.d);
        this.f23797e = frameLayout;
        frameLayout.setId(com.batch.android.o0.d.a());
        addView(this.f23797e);
        if (this.o.n != null) {
            TextureView textureView = new TextureView(this.d);
            this.f23802k = textureView;
            TextureView.SurfaceTextureListener surfaceTextureListener = this.t;
            if (surfaceTextureListener != null) {
                textureView.setSurfaceTextureListener(surfaceTextureListener);
            }
            linkedList.add(new Pair(this.f23802k, new com.batch.android.a0.b("video", new String[0])));
        } else {
            com.batch.android.q0.c cVar = new com.batch.android.q0.c(this.d);
            this.l = cVar;
            cVar.setScaleType(ImageView.ScaleType.CENTER_CROP);
            if (!TextUtils.isEmpty(this.o.o)) {
                this.l.setContentDescription(this.o.o);
                this.l.setImportantForAccessibility(1);
            }
            linkedList.add(new Pair(this.l, new com.batch.android.a0.b("image", "image")));
            if (this.r == null) {
                this.m = new View(this.d);
                com.batch.android.a0.b bVar = new com.batch.android.a0.b("placeholder", new String[0]);
                linkedList.add(new Pair(this.m, bVar));
                Iterator<Map.Entry<String, String>> it = a(bVar).entrySet().iterator();
                loop1: while (true) {
                    z2 = false;
                    while (true) {
                        if (!it.hasNext()) {
                            break loop1;
                        }
                        Map.Entry<String, String> next = it.next();
                        if ("loader".equalsIgnoreCase(next.getKey())) {
                            String value = next.getValue();
                            if ("dark".equalsIgnoreCase(value)) {
                                z2 = true;
                            } else if ("light".equalsIgnoreCase(value)) {
                            }
                        }
                    }
                }
                ProgressBar progressBar = new ProgressBar(this.d);
                this.n = progressBar;
                progressBar.setIndeterminate(true);
                ProgressBar progressBar2 = this.n;
                if (z2) {
                    progressBar2.setIndeterminateTintList(ColorStateList.valueOf(com.batch.android.q0.b.v));
                } else {
                    progressBar2.setIndeterminateTintList(ColorStateList.valueOf(-1));
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = 17;
                this.n.setLayoutParams(layoutParams);
                this.n.setVisibility(8);
            } else {
                c();
            }
        }
        for (Pair pair : linkedList) {
            Map<String, String> mapA = a((com.batch.android.a0.b) pair.second);
            View view = (View) pair.first;
            view.setLayoutParams(com.batch.android.o0.b.a(this.d, (FrameLayout.LayoutParams) null, mapA));
            if (view instanceof com.batch.android.s0.c) {
                ((com.batch.android.s0.c) view).a(mapA);
            } else {
                com.batch.android.o0.b.a(view, mapA);
            }
            this.f23797e.addView((View) pair.first);
        }
        ProgressBar progressBar3 = this.n;
        if (progressBar3 != null) {
            this.f23797e.addView(progressBar3);
        }
    }

    private void i() {
        com.batch.android.p0.c.a aVar;
        com.batch.android.p0.c.a aVarA = null;
        com.batch.android.p0.c.a aVarA2 = com.batch.android.o0.b.a(this.d, new com.batch.android.p0.c.a(-1, -1), this.f23799h, 14, null);
        if (this.g != null) {
            aVarA = com.batch.android.o0.b.a(this.d, new com.batch.android.p0.c.a(-1, -2), this.f23800i, 14, null);
            aVarA.addRule(12);
        }
        if (this.f23797e != null) {
            if (this.f23795b) {
                aVar = new com.batch.android.p0.c.a(0, -1);
                com.batch.android.p0.b.a aVarA3 = aVar.a();
                Double d = this.o.v;
                aVarA3.f23895a = d != null ? d.floatValue() : 0.4f;
                Boolean bool = this.o.u;
                if (bool == null || !bool.booleanValue()) {
                    aVar.addRule(9);
                    aVarA2.addRule(11);
                    aVarA2.addRule(1, this.f23797e.getId());
                    if (aVarA != null) {
                        aVarA.addRule(11);
                        aVarA.addRule(1, this.f23797e.getId());
                    }
                } else {
                    aVar.addRule(11);
                    aVarA2.addRule(9);
                    aVarA2.addRule(0, this.f23797e.getId());
                    if (aVarA != null) {
                        aVarA.addRule(9);
                        aVarA.addRule(0, this.f23797e.getId());
                    }
                }
                if (aVarA != null) {
                    aVarA2.addRule(2, this.g.getId());
                }
            } else {
                aVar = new com.batch.android.p0.c.a(-1, 0);
                com.batch.android.p0.b.a aVarA4 = aVar.a();
                Double d2 = this.o.v;
                aVarA4.f23896b = d2 != null ? d2.floatValue() : 0.4f;
                Boolean bool2 = this.o.t;
                if (bool2 == null || !bool2.booleanValue()) {
                    if (aVarA != null) {
                        aVarA2.addRule(2, this.g.getId());
                    } else {
                        aVarA2.addRule(12);
                    }
                    aVarA2.addRule(3, this.f23797e.getId());
                    aVar.addRule(10);
                } else {
                    if (aVarA != null) {
                        aVar.addRule(2, this.g.getId());
                    } else {
                        aVar.addRule(12);
                    }
                    aVarA2.addRule(10);
                    aVarA2.addRule(2, this.f23797e.getId());
                }
            }
            this.f23797e.setLayoutParams(aVar);
        } else {
            com.batch.android.s0.a aVar2 = this.g;
            if (aVar2 != null) {
                aVarA2.addRule(2, aVar2.getId());
            }
        }
        this.f23798f.setLayoutParams(aVarA2);
        com.batch.android.s0.a aVar3 = this.g;
        if (aVar3 != null && aVarA != null) {
            aVar3.setLayoutParams(aVarA);
        }
        l();
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$b$--V, reason: not valid java name */
    public static /* synthetic */ void m28instrumented$0$b$V(d dVar, View view) {
        Callback.n(view);
        try {
            dVar.a(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$f$--V, reason: not valid java name */
    public static /* synthetic */ void m29instrumented$0$f$V(d dVar, int i2, com.batch.android.f0.b bVar, View view) {
        Callback.n(view);
        try {
            dVar.a(i2, bVar, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    private boolean j() {
        if (this.f23797e == null) {
            return true;
        }
        com.batch.android.h0.g gVar = this.o;
        return (gVar != null && gVar.t == Boolean.TRUE) || this.f23795b;
    }

    private void l() {
        com.batch.android.s0.a aVar = this.f23798f;
        if (aVar != null) {
            int paddingLeft = aVar.getPaddingLeft();
            boolean zJ = j();
            int i2 = this.w;
            if (zJ) {
                i2 += this.v;
            }
            aVar.setPadding(paddingLeft, i2, this.f23798f.getPaddingRight(), this.f23798f.getPaddingBottom());
        }
        com.batch.android.messaging.view.a aVar2 = this.f23801j;
        if (aVar2 != null) {
            com.batch.android.p0.c.a aVar3 = (com.batch.android.p0.c.a) aVar2.getLayoutParams();
            ((RelativeLayout.LayoutParams) aVar3).topMargin = this.x + this.v;
            this.f23801j.setLayoutParams(aVar3);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f23796c) {
            this.f23796c = false;
            i();
        }
    }

    public void e() {
        this.n.setVisibility(0);
    }

    public void k() {
        int i2 = this.o.w;
        com.batch.android.messaging.view.a aVar = this.f23801j;
        if (aVar == null || i2 <= 0) {
            return;
        }
        aVar.a(i2);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        this.v = windowInsets.getSystemWindowInsetTop();
        l();
        return super.onApplyWindowInsets(windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), 0, windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom()));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.y = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        boolean z2 = this.f23795b;
        boolean z3 = i2 > i3;
        this.f23795b = z3;
        if (z3 != z2 || (i4 == 0 && i5 == 0)) {
            this.f23796c = true;
        }
    }

    public void setActionListener(a aVar) {
        this.s = aVar;
    }

    public void setSurfaceHolderCallback(TextureView.SurfaceTextureListener surfaceTextureListener) {
        TextureView textureView = this.f23802k;
        if (textureView != null) {
            textureView.setSurfaceTextureListener(surfaceTextureListener);
        }
        this.t = surfaceTextureListener;
    }

    private /* synthetic */ void a(View view) {
        a aVar = this.s;
        if (aVar != null) {
            aVar.a();
        }
    }

    private /* synthetic */ void a(int i2, com.batch.android.f0.b bVar, View view) {
        if (this.s == null || d()) {
            return;
        }
        this.s.a(i2, bVar);
    }

    public boolean a() {
        return !com.batch.android.o0.d.b(this.d);
    }

    public void a(com.batch.android.z.a.d dVar) {
        FrameLayout frameLayout;
        View view;
        this.f23797e.removeView(this.n);
        this.r = dVar;
        c();
        if (dVar == null || (frameLayout = this.f23797e) == null || (view = this.m) == null) {
            return;
        }
        frameLayout.removeView(view);
        this.m = null;
    }

    private Map<String, String> a(com.batch.android.a0.b bVar) {
        return this.p.a(bVar, this.u);
    }

    @Override // com.batch.android.s0.a.InterfaceC0072a
    public Map<String, String> a(com.batch.android.s0.a aVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(aVar.getSeparatorPrefix());
        sb.append("-");
        sb.append(aVar.d() ? "h-sep" : "sep");
        return a(new com.batch.android.a0.b(str, sb.toString()));
    }
}
