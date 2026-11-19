package com.batch.android.m0;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.view.View;
import android.view.Window;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.batch.android.BatchMessage;
import com.batch.android.g0.c;
import com.batch.android.g0.d;
import com.batch.android.i;
import com.batch.android.n.t;
import com.batch.android.v0.g;
import defpackage.f31;
import defpackage.v71;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends com.batch.android.l0.a implements com.batch.android.m0.a.InterfaceC0059a {
    public static final a r = new a(null);
    private final com.batch.android.g0.a o;
    private Map<String, com.batch.android.z.a.d<?>> p;
    private Map<String, com.batch.android.z.a.c> q;

    private b(View view, com.batch.android.g0.a aVar, i iVar, BatchMessage batchMessage, boolean z, g gVar) {
        Configuration configuration;
        super(view, gVar, iVar, batchMessage, z);
        this.o = aVar;
        this.p = new LinkedHashMap();
        this.q = new LinkedHashMap();
        super.h();
        n();
        int i2 = 1;
        if (aVar.v()) {
            this.f23642e.setFitsSystemWindows(true);
        }
        Context context = this.f23639a;
        Integer numValueOf = null;
        Activity activity = context instanceof Activity ? (Activity) context : null;
        Window window = activity != null ? activity.getWindow() : null;
        if (window != null) {
            WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, window.getDecorView());
            Resources resources = this.f23639a.getResources();
            if (resources != null && (configuration = resources.getConfiguration()) != null) {
                numValueOf = Integer.valueOf(configuration.uiMode & 48);
            }
            windowInsetsControllerCompat.e(numValueOf != null && numValueOf.intValue() == 16);
            ViewCompat.x(window.getDecorView(), new v71(windowInsetsControllerCompat, i2));
        }
    }

    private final void n() {
        for (c.g gVar : this.o.g()) {
            if (this.p.get(gVar.r()) == null) {
                C0060b c0060b = new C0060b(gVar);
                this.q.put(gVar.r(), c0060b);
                new com.batch.android.z.a(c0060b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.o.k().get(gVar.r()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.batch.android.m0.a o() {
        RelativeLayout relativeLayout = this.f23643f;
        relativeLayout.getClass();
        return (com.batch.android.m0.a) relativeLayout;
    }

    @Override // com.batch.android.m0.a.InterfaceC0059a
    public void a(String str, String str2, com.batch.android.f0.b bVar) {
        str.getClass();
        str2.getClass();
        bVar.getClass();
        c(true);
        this.f23641c.a(str, str2, bVar);
        this.f23640b.a(this.f23639a, this.g, bVar);
    }

    @Override // com.batch.android.l0.a
    public com.batch.android.l0.a.e d() {
        return this.o.h() == d.i.TOP ? com.batch.android.l0.a.e.TOP : com.batch.android.l0.a.e.BOTTOM;
    }

    @Override // com.batch.android.l0.a
    public ScrollView e() {
        return o().getScrollView();
    }

    @Override // com.batch.android.l0.a
    public void k() {
        com.batch.android.g0.b bVarE;
        com.batch.android.g0.b.a aVarC;
        if (!o().c() || (bVarE = this.o.e()) == null || (aVarC = bVarE.c()) == null) {
            return;
        }
        this.m.postAtTime(new f31(this, 13), this.f23647k, SystemClock.uptimeMillis() + ((long) (aVarC.d() * 1000)));
        o().d();
    }

    @Override // com.batch.android.l0.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public com.batch.android.m0.a g() {
        Context context = this.f23639a;
        context.getClass();
        com.batch.android.g0.a aVar = this.o;
        BatchMessage batchMessage = this.g;
        batchMessage.getClass();
        return new com.batch.android.m0.a(context, aVar, batchMessage, this.p, this, null);
    }

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(View view, BatchMessage batchMessage, com.batch.android.g0.a aVar, i iVar, boolean z) {
            view.getClass();
            batchMessage.getClass();
            aVar.getClass();
            iVar.getClass();
            return new b(view, aVar, iVar, batchMessage, z, t.a(), null);
        }

        private a() {
        }
    }

    @Override // com.batch.android.l0.a
    public boolean c() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(b bVar) {
        bVar.getClass();
        bVar.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat a(WindowInsetsControllerCompat windowInsetsControllerCompat, View view, WindowInsetsCompat windowInsetsCompat) {
        windowInsetsControllerCompat.g(1);
        return ViewCompat.o(view, windowInsetsCompat);
    }

    @Override // com.batch.android.m0.a.InterfaceC0059a, com.batch.android.z.c
    public void a() {
        c(true);
        this.f23641c.b();
    }

    @Override // com.batch.android.m0.a.InterfaceC0059a
    public void a(com.batch.android.f0.d dVar) {
        dVar.getClass();
        c(true);
        this.f23641c.a(dVar);
    }

    /* JADX INFO: renamed from: com.batch.android.m0.b$b, reason: collision with other inner class name */
    public static final class C0060b implements com.batch.android.z.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c.g f23704b;

        public C0060b(c.g gVar) {
            this.f23704b = gVar;
        }

        @Override // com.batch.android.z.a.c
        public void b(com.batch.android.f0.d dVar) {
            dVar.getClass();
            com.batch.android.e.t.e("Failed downloading image: " + dVar);
            boolean zR = b.this.o.r();
            b bVar = b.this;
            if (zR) {
                bVar.a(dVar);
            } else {
                bVar.o().a(this.f23704b.r());
            }
        }

        @Override // com.batch.android.z.a.c
        public void c() {
            b.this.o().b(this.f23704b.r());
        }

        @Override // com.batch.android.z.a.c
        public void b(com.batch.android.z.a.d<?> dVar) {
            if (dVar != null) {
                b.this.p.put(this.f23704b.r(), dVar);
                b.this.o().a(this.f23704b.r(), dVar);
            }
        }
    }

    public /* synthetic */ b(View view, com.batch.android.g0.a aVar, i iVar, BatchMessage batchMessage, boolean z, g gVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, aVar, iVar, batchMessage, z, gVar);
    }
}
