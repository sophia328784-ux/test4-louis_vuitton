package com.networkbench.agent.impl.i;

import android.view.View;
import com.networkbench.agent.impl.data.type.p;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.y;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f37341a = 50;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f37342b = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f37343c = "NBSViewStatusScan";
    private static final int d = 5000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static f f37344e = new f();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private g f37348j;
    private WeakReference<View> l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.networkbench.agent.impl.util.c.e f37345f = new com.networkbench.agent.impl.util.c.e();
    private int g = 50;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37346h = 5000;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Map<String, g> f37349k = Collections.synchronizedMap(new LinkedHashMap<String, g>(10) { // from class: com.networkbench.agent.impl.i.f.1
        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<String, g> entry) {
            return size() > 10;
        }
    });
    private String m = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Runnable f37347i = new y() { // from class: com.networkbench.agent.impl.i.f.2
        @Override // com.networkbench.agent.impl.util.y
        public void tryCatchRun() {
            if (f.this.l == null || f.this.l.get() == null || f.this.f37348j == null || !f.this.f37348j.a((View) f.this.l.get())) {
                return;
            }
            Logger.debug(f.f37343c, "page match 8060 or timeout, pageStatus is:" + f.this.f37348j.c() + ", pageVisibleTime:" + f.this.f37348j.a());
            f.this.c();
        }
    };

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        synchronized (f37344e) {
            this.f37345f.a();
            this.f37348j = null;
            this.m = "";
        }
    }

    public void a(String str, p pVar) {
        Logger.debug(f37343c, "page status scan start");
        if (ab.c(str)) {
            Logger.warning(f37343c, "feature uuid is empty");
            return;
        }
        if (this.m.equals(str)) {
            Logger.debug(f37343c, "page scan has start, skip start again");
            g gVar = this.f37348j;
            if (gVar != null) {
                gVar.a(pVar);
                return;
            }
            return;
        }
        g gVar2 = this.f37348j;
        if (gVar2 != null) {
            gVar2.d();
            c();
        }
        this.m = str;
        g gVar3 = new g(this.f37346h);
        this.f37348j = gVar3;
        gVar3.a(pVar);
        this.f37349k.put(str, this.f37348j);
        this.f37345f.a(this.f37347i, this.g, 0);
    }

    public g b(String str) throws NullPointerException {
        if (ab.c(str)) {
            Logger.error(f37343c, "feature uuid is empty");
            return null;
        }
        if (this.f37349k.containsKey(str)) {
            return this.f37349k.get(str);
        }
        Logger.warning(f37343c, "not find page scan info featureUUID:" + str);
        return null;
    }

    public void b(int i2) {
        this.f37346h = i2;
        g gVar = this.f37348j;
        if (gVar != null) {
            gVar.a(i2);
        }
    }

    public void b() {
        if (this.f37348j != null) {
            Logger.debug(f37343c, "stopScanAndTask");
            this.f37348j.d();
            c();
        }
    }

    public static f a() {
        return f37344e;
    }

    public void a(int i2) {
        this.g = i2;
    }

    public void a(String str) {
        if (ab.c(str)) {
            Logger.error(f37343c, "feature uuid is empty");
            return;
        }
        Logger.debug(f37343c, "currentFeatureUUID:" + this.m + ", featureUUID:" + str);
        if (this.m.equals(str)) {
            return;
        }
        b();
    }

    public void a(View view) {
        if (view == null) {
            return;
        }
        this.l = new WeakReference<>(view);
    }
}
