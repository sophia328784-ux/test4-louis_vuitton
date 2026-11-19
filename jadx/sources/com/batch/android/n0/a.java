package com.batch.android.n0;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.batch.android.R;
import com.batch.android.e.f0;
import com.batch.android.e.t;
import com.batch.android.messaging.view.CloseButton;
import com.batch.android.messaging.view.styled.mep.TextView;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import defpackage.c81;
import defpackage.x71;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class a extends RelativeLayout implements com.batch.android.s0.a.InterfaceC0072a, com.batch.android.z.a.c {
    private static final int l = 500;
    private static final int m = 28;
    private static final int n = 150;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f23776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.batch.android.h0.c f23777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.batch.android.o0.a.InterfaceC0065a f23778c;
    private final com.batch.android.a0.d d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Point f23779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.batch.android.l0.a.e f23780f;
    private final com.batch.android.s0.a g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.batch.android.j0.a f23781h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.batch.android.q0.c f23782i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private InterfaceC0063a f23783j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f23784k;

    /* JADX INFO: renamed from: com.batch.android.n0.a$a, reason: collision with other inner class name */
    public interface InterfaceC0063a {
        void a();

        void a(int i2, com.batch.android.f0.b bVar);

        void b();
    }

    public a(Context context, com.batch.android.h0.c cVar, com.batch.android.a0.d dVar, com.batch.android.a0.b bVar, com.batch.android.o0.a.InterfaceC0065a interfaceC0065a) {
        super(context);
        setId(R.id.com_batchsdk_messaging_root_view);
        this.f23776a = context;
        this.f23777b = cVar;
        this.f23778c = interfaceC0065a;
        this.d = dVar == null ? com.batch.android.o0.b.d(cVar.f23453h) : dVar;
        this.f23779e = com.batch.android.o0.d.a(context);
        Map<String, String> mapA = a(bVar);
        this.f23780f = a(mapA);
        com.batch.android.o0.b.a(this, mapA);
        setLayoutParams(com.batch.android.o0.b.a(context, new FrameLayout.LayoutParams(-1, -2), mapA));
        Map<String, String> mapA2 = a(new com.batch.android.a0.b("content", new String[0]));
        com.batch.android.s0.a aVarC = c(mapA2);
        this.g = aVarC;
        aVarC.setId(R.id.com_batchsdk_messaging_content_view);
        com.batch.android.p0.c.a aVarA = com.batch.android.o0.b.a(context, new com.batch.android.p0.c.a(-1, -2), mapA2, 9, null);
        aVarA.addRule(8, 0);
        aVarA.addRule(12, 0);
        if (cVar.f23455j != null) {
            aVarC.setOnClickListener(new x71(this, 2));
        }
        addView(aVarC, aVarA);
        d();
        a();
        b();
        f0.b(this);
    }

    private void a() {
        if (this.f23777b.p || (!e() && this.f23777b.q > 0)) {
            CloseButton closeButton = new CloseButton(this.f23776a);
            Map<String, String> mapA = a(new com.batch.android.a0.b("close", new String[0]));
            closeButton.a(mapA);
            closeButton.setId(R.id.com_batchsdk_messaging_close_button);
            closeButton.setLayoutParams(com.batch.android.o0.b.a(this.f23776a, new com.batch.android.p0.c.a(-2, -2), mapA, 11, this.g));
            closeButton.setOnClickListener(new x71(this, 1));
            addView(closeButton);
        }
    }

    private com.batch.android.s0.a b(Map<String, String> map) {
        List<com.batch.android.f0.b> list = this.f23777b.o;
        if (list == null || list.size() == 0) {
            return null;
        }
        com.batch.android.s0.a aVar = new com.batch.android.s0.a(this.f23776a, "ctas", this);
        int i2 = 0;
        aVar.setClipChildren(false);
        aVar.setClipToPadding(false);
        if (this.f23777b.r == com.batch.android.h0.c.a.HORIZONTAL) {
            aVar.setFlexDirection(1);
        } else {
            aVar.setFlexDirection(2);
        }
        aVar.setAlignItems(2);
        aVar.setJustifyContent(2);
        aVar.a(map);
        new LinkedList();
        LinkedList linkedList = new LinkedList(this.f23777b.o);
        int i3 = 0;
        while (i3 < linkedList.size()) {
            com.batch.android.f0.b bVar = (com.batch.android.f0.b) linkedList.get(i3);
            com.batch.android.messaging.view.styled.mep.a aVar2 = new com.batch.android.messaging.view.styled.mep.a(this.f23776a);
            aVar2.setText(bVar.d);
            aVar2.setTag(bVar);
            aVar2.setMaxLines(1);
            aVar2.setSingleLine(true);
            aVar2.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            aVar2.setAllCaps(false);
            aVar2.setOnClickListener(new c81(this, i3, bVar, i2));
            com.batch.android.h0.c.a aVar3 = this.f23777b.r;
            com.batch.android.h0.c.a aVar4 = com.batch.android.h0.c.a.HORIZONTAL;
            String strConcat = "btn-".concat(aVar3 == aVar4 ? NBSSpanMetricUnit.Hour : "v");
            StringBuilder sb = new StringBuilder("cta");
            i3++;
            sb.append(i3);
            View viewA = a(new Pair<>(aVar2, new com.batch.android.a0.b(sb.toString(), "btn", strConcat)));
            if (this.f23777b.r == aVar4) {
                com.batch.android.j0.d.h hVar = (com.batch.android.j0.d.h) viewA.getLayoutParams();
                hVar.f23517b = 1.0f;
                hVar.f23518c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                hVar.f23519e = 0.1f;
                viewA.setLayoutParams(hVar);
            }
            aVar.addView(viewA);
        }
        return aVar;
    }

    private com.batch.android.s0.a c(Map<String, String> map) {
        View view;
        LayoutInflater layoutInflater = (LayoutInflater) this.f23776a.getSystemService("layout_inflater");
        Resources resources = getResources();
        com.batch.android.s0.a aVar = new com.batch.android.s0.a(this.f23776a, "cnt", this);
        aVar.setFlexDirection(2);
        aVar.a(map);
        int i2 = 0;
        aVar.setClipChildren(false);
        aVar.setClipToPadding(false);
        aVar.setImportantForAccessibility(1);
        com.batch.android.l0.a.e eVarA = a(map);
        if (eVarA != null) {
            this.f23780f = eVarA;
        }
        LinkedList linkedList = new LinkedList();
        com.batch.android.a0.b bVar = new com.batch.android.a0.b("title", new String[0]);
        com.batch.android.j0.d.h hVar = new com.batch.android.j0.d.h(-1, -2);
        hVar.f23517b = 1.0f;
        hVar.f23518c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (TextUtils.isEmpty(this.f23777b.f23454i)) {
            View view2 = new View(this.f23776a);
            ((ViewGroup.MarginLayoutParams) hVar).height = 0;
            hVar.f23522i = 0;
            view = view2;
        } else {
            TextView textView = new TextView(this.f23776a);
            textView.setText(this.f23777b.f23454i);
            bVar.f22873c.add("text");
            view = textView;
        }
        view.setLayoutParams(hVar);
        linkedList.add(new Pair(view, bVar));
        TextView textView2 = (TextView) layoutInflater.inflate(R.layout.com_batchsdk_messaging_scrollabletextview, (ViewGroup) aVar, false);
        textView2.setText(this.f23777b.d());
        textView2.a();
        if (this.f23777b.f23455j != null) {
            textView2.setOnClickListener(new x71(this, i2));
        }
        com.batch.android.j0.d.h hVar2 = new com.batch.android.j0.d.h(-1, -2);
        hVar2.f23517b = 1.0f;
        hVar2.f23518c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        hVar2.g = com.batch.android.o0.b.a(resources, Float.valueOf(28.0f));
        hVar2.f23522i = com.batch.android.o0.b.a(resources, Float.valueOf(150.0f));
        textView2.setLayoutParams(hVar2);
        linkedList.add(new Pair(textView2, new com.batch.android.a0.b("body", "text")));
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            aVar.addView(a((Pair<View, com.batch.android.a0.b>) it.next()));
        }
        Map<String, String> mapA = a(new com.batch.android.a0.b("ctas", new String[0]));
        com.batch.android.s0.a aVarB = b(mapA);
        if (aVarB != null) {
            aVarB.setId(com.batch.android.o0.d.a());
            aVar.addView(aVarB, com.batch.android.o0.b.a(this.f23776a, new com.batch.android.j0.d.h(-1, -2), mapA));
        }
        return aVar;
    }

    private void d() {
        if (this.f23777b.m != null) {
            this.f23782i = new com.batch.android.q0.c(this.f23776a);
            Map<String, String> mapA = a(new com.batch.android.a0.b("img", new String[0]));
            this.f23782i.a(mapA);
            this.f23782i.setId(R.id.com_batchsdk_messaging_image_view);
            com.batch.android.p0.c.a aVarA = com.batch.android.o0.b.a(this.f23776a, new com.batch.android.p0.c.a(-2, -2), mapA, 11, this.g);
            aVarA.addRule(6, this.g.getId());
            this.f23782i.setLayoutParams(aVarA);
            this.f23782i.setContentDescription(this.f23777b.n);
            this.f23782i.setAlpha(0);
            addView(this.f23782i);
            com.batch.android.o0.a.InterfaceC0065a interfaceC0065a = this.f23778c;
            if (interfaceC0065a == null || interfaceC0065a.b(this.f23777b.m) == null) {
                new com.batch.android.z.a(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.f23777b.m);
            }
        }
    }

    private boolean f() {
        return SystemClock.uptimeMillis() < this.f23784k + this.f23777b.f23456k;
    }

    private void g() {
        if (this.f23777b.f23456k > 0 && f()) {
            t.b(com.batch.android.v0.g.f24103i, "Global tap action has been triggered, but the accidental touch prevention delay hasn't elapsed: rejecting tap.");
            return;
        }
        InterfaceC0063a interfaceC0063a = this.f23783j;
        if (interfaceC0063a != null) {
            interfaceC0063a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$a$--V, reason: not valid java name */
    public static /* synthetic */ void m22instrumented$0$a$V(a aVar, View view) {
        Callback.n(view);
        try {
            aVar.a(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$b$-Ljava-util-Map--Lcom-batch-android-s0-a-, reason: not valid java name */
    public static /* synthetic */ void m23instrumented$0$b$LjavautilMapLcombatchandroids0a(a aVar, int i2, com.batch.android.f0.b bVar, View view) {
        Callback.n(view);
        try {
            aVar.a(i2, bVar, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$c$-Ljava-util-Map--Lcom-batch-android-s0-a-, reason: not valid java name */
    public static /* synthetic */ void m24instrumented$0$c$LjavautilMapLcombatchandroids0a(a aVar, View view) {
        Callback.n(view);
        try {
            aVar.b(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$new$-Landroid-content-Context-Lcom-batch-android-h0-c-Lcom-batch-android-a0-d-Lcom-batch-android-a0-b-Lcom-batch-android-o0-a$a--V, reason: not valid java name */
    public static /* synthetic */ void m25x75c05ec4(a aVar, View view) {
        Callback.n(view);
        try {
            aVar.c(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public boolean e() {
        return !com.batch.android.o0.d.b(this.f23776a);
    }

    public com.batch.android.s0.a getContentView() {
        return this.g;
    }

    public com.batch.android.l0.a.e getPinnedVerticalEdge() {
        com.batch.android.l0.a.e eVar = this.f23780f;
        return eVar != null ? eVar : com.batch.android.l0.a.e.BOTTOM;
    }

    public void h() {
        this.f23784k = SystemClock.uptimeMillis();
    }

    public void i() {
        int i2;
        com.batch.android.j0.a aVar = this.f23781h;
        if (aVar == null || (i2 = this.f23777b.q) <= 0) {
            return;
        }
        aVar.a(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        com.batch.android.o0.a.InterfaceC0065a interfaceC0065a;
        com.batch.android.z.a.d dVarB;
        super.onAttachedToWindow();
        if (this.f23782i == null || (interfaceC0065a = this.f23778c) == null || (dVarB = interfaceC0065a.b(this.f23777b.m)) == null) {
            return;
        }
        a(dVarB);
    }

    public void setActionListener(InterfaceC0063a interfaceC0063a) {
        this.f23783j = interfaceC0063a;
    }

    private /* synthetic */ void a(int i2, com.batch.android.f0.b bVar, View view) {
        InterfaceC0063a interfaceC0063a = this.f23783j;
        if (interfaceC0063a != null) {
            interfaceC0063a.a(i2, bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View a(Pair<View, com.batch.android.a0.b> pair) {
        View view = (View) pair.first;
        Map<String, String> mapA = a((com.batch.android.a0.b) pair.second);
        if (view instanceof com.batch.android.s0.c) {
            ((com.batch.android.s0.c) view).a(mapA);
        }
        view.setLayoutParams(com.batch.android.o0.b.a(this.f23776a, view.getLayoutParams() instanceof com.batch.android.j0.d.h ? (com.batch.android.j0.d.h) view.getLayoutParams() : null, mapA));
        return view;
    }

    private /* synthetic */ void a(View view) {
        InterfaceC0063a interfaceC0063a = this.f23783j;
        if (interfaceC0063a != null) {
            interfaceC0063a.a();
        }
    }

    private com.batch.android.l0.a.e a(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if ("vertical-align".equalsIgnoreCase(entry.getKey())) {
                String value = entry.getValue();
                if ("top".equalsIgnoreCase(value)) {
                    return com.batch.android.l0.a.e.TOP;
                }
                if ("bottom".equalsIgnoreCase(value)) {
                    return com.batch.android.l0.a.e.BOTTOM;
                }
            }
        }
        return null;
    }

    private Map<String, String> a(com.batch.android.a0.b bVar) {
        return this.d.a(bVar, this.f23779e);
    }

    @Override // com.batch.android.s0.a.InterfaceC0072a
    public Map<String, String> a(com.batch.android.s0.a aVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(aVar.getSeparatorPrefix());
        sb.append("-");
        sb.append(aVar.d() ? "h-sep" : "sep");
        return a(new com.batch.android.a0.b(str, sb.toString()));
    }

    private void a(com.batch.android.z.a.d dVar) {
        com.batch.android.q0.c cVar = this.f23782i;
        if (cVar != null) {
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(cVar, "alpha", 0, 255);
            objectAnimatorOfInt.setDuration(500L);
            objectAnimatorOfInt.setInterpolator(new LinearInterpolator());
            objectAnimatorOfInt.start();
            com.batch.android.o0.a.a(this.f23782i, dVar);
        }
    }

    @Override // com.batch.android.z.a.c
    public void b(com.batch.android.f0.d dVar) {
    }

    private /* synthetic */ void b(View view) {
        g();
    }

    private void b() {
        if (!e() || this.f23777b.q <= 0) {
            return;
        }
        Map<String, String> mapA = a(new com.batch.android.a0.b("countdown", new String[0]));
        com.batch.android.j0.a aVar = new com.batch.android.j0.a(this.f23776a);
        this.f23781h = aVar;
        aVar.a(mapA);
        this.f23781h.setId(R.id.com_batchsdk_messaging_countdown_progress);
        addView(this.f23781h, com.batch.android.o0.b.a(this.f23776a, new com.batch.android.p0.c.a(-1, -2), mapA, 9, this.g));
    }

    @Override // com.batch.android.z.a.c
    public void b(com.batch.android.z.a.d dVar) {
        com.batch.android.o0.a.InterfaceC0065a interfaceC0065a = this.f23778c;
        if (interfaceC0065a != null) {
            interfaceC0065a.a(dVar);
        }
        a(dVar);
    }

    @Override // com.batch.android.z.a.c
    public void c() {
    }

    private /* synthetic */ void c(View view) {
        g();
    }
}
