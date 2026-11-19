package com.batch.android;

import android.os.Bundle;
import android.text.TextUtils;
import com.batch.android.e.t;
import com.batch.android.n.e0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class i {
    private static final String g = "analyticsdelegate_called_methods";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.batch.android.v0.g f23475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.batch.android.v0.k f23476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.batch.android.v0.e f23477c;
    private final com.batch.android.f0.c d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BatchMessage f23478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final ArrayList<String> f23479f = new ArrayList<>(6);

    public i(com.batch.android.v0.g gVar, com.batch.android.v0.k kVar, com.batch.android.v0.e eVar, com.batch.android.f0.c cVar, BatchMessage batchMessage) {
        this.f23475a = gVar;
        this.f23476b = kVar;
        this.f23477c = eVar;
        this.d = cVar;
        this.f23478e = batchMessage;
    }

    public void a(com.batch.android.f0.a aVar, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        if (str == null || str.length() <= 30) {
            str2 = str;
        } else {
            t.a(com.batch.android.v0.g.f24103i, "Could not track webview event: The analytics ID is invalid: it should be 30 characters or less. The action will be tracked without an analytics ID, but will still be performed.");
            str2 = null;
        }
        Batch.EventDispatcher.Type type = Batch.EventDispatcher.Type.MESSAGING_WEBVIEW_CLICK;
        if (aVar.a()) {
            type = Batch.EventDispatcher.Type.MESSAGING_CLOSE;
        }
        this.f23475a.a(this.d, aVar, str2);
        com.batch.android.v0.e eVar = this.f23477c;
        BatchMessage batchMessage = this.f23478e;
        eVar.a(type, new com.batch.android.p.b(batchMessage, batchMessage.c(), this.f23478e.b(), aVar, str2));
    }

    public void b() {
        if (a("closed")) {
            return;
        }
        this.f23475a.b(this.d);
        com.batch.android.v0.e eVar = this.f23477c;
        Batch.EventDispatcher.Type type = Batch.EventDispatcher.Type.MESSAGING_CLOSE;
        BatchMessage batchMessage = this.f23478e;
        eVar.a(type, new com.batch.android.p.b(batchMessage, batchMessage.c(), this.f23478e.b()));
    }

    public void c() {
        if (a("viewdismissed")) {
            return;
        }
        this.f23475a.c(this.d);
    }

    public void d() {
        if (a("viewshown")) {
            return;
        }
        this.f23475a.d(this.d);
        BatchMessage batchMessage = this.f23478e;
        if (batchMessage instanceof BatchInAppMessage) {
            BatchInAppMessage batchInAppMessage = (BatchInAppMessage) batchMessage;
            this.f23476b.b(batchInAppMessage.e(), batchInAppMessage.f());
        }
        com.batch.android.v0.e eVar = this.f23477c;
        Batch.EventDispatcher.Type type = Batch.EventDispatcher.Type.MESSAGING_SHOW;
        BatchMessage batchMessage2 = this.f23478e;
        eVar.a(type, new com.batch.android.p.b(batchMessage2, batchMessage2.c(), this.f23478e.b()));
    }

    public void b(Bundle bundle) {
        ArrayList<String> stringArrayList;
        if (bundle == null || (stringArrayList = bundle.getStringArrayList(g)) == null) {
            return;
        }
        this.f23479f.addAll(stringArrayList);
    }

    private boolean a(String str) {
        synchronized (this.f23479f) {
            try {
                if (this.f23479f.contains(str)) {
                    return true;
                }
                this.f23479f.add(str);
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(com.batch.android.f0.a aVar) {
        if (a("globaltap")) {
            return;
        }
        this.f23475a.a(this.d, aVar);
        Batch.EventDispatcher.Type type = Batch.EventDispatcher.Type.MESSAGING_CLICK;
        if (aVar.a()) {
            type = Batch.EventDispatcher.Type.MESSAGING_CLOSE;
        }
        com.batch.android.v0.e eVar = this.f23477c;
        BatchMessage batchMessage = this.f23478e;
        eVar.a(type, new com.batch.android.p.b(batchMessage, batchMessage.c(), this.f23478e.b(), aVar));
    }

    public void a(String str, String str2, com.batch.android.f0.b bVar) {
        if (a("ctaclicked")) {
            return;
        }
        this.f23475a.a(this.d, str, str2, bVar);
        a(bVar);
    }

    public void a(int i2, com.batch.android.f0.b bVar) {
        if (a("ctaclicked")) {
            return;
        }
        this.f23475a.a(this.d, i2, bVar);
        a(bVar);
    }

    private void a(com.batch.android.f0.b bVar) {
        Batch.EventDispatcher.Type type = Batch.EventDispatcher.Type.MESSAGING_CLICK;
        if (bVar.a()) {
            type = Batch.EventDispatcher.Type.MESSAGING_CLOSE;
        }
        com.batch.android.v0.e eVar = this.f23477c;
        BatchMessage batchMessage = this.f23478e;
        eVar.a(type, new com.batch.android.p.b(batchMessage, batchMessage.c(), this.f23478e.b(), bVar));
    }

    public static i a(com.batch.android.f0.c cVar, BatchMessage batchMessage) {
        return new i(com.batch.android.n.t.a(), e0.a(), com.batch.android.n.i.a(), cVar, batchMessage);
    }

    public void a(com.batch.android.f0.d dVar) {
        if (a("closederror")) {
            return;
        }
        this.f23475a.a(this.d, dVar);
        com.batch.android.v0.e eVar = this.f23477c;
        Batch.EventDispatcher.Type type = Batch.EventDispatcher.Type.MESSAGING_CLOSE_ERROR;
        BatchMessage batchMessage = this.f23478e;
        eVar.a(type, new com.batch.android.p.b(batchMessage, batchMessage.c(), this.f23478e.b()));
    }

    public void a() {
        if (a("autoclosed")) {
            return;
        }
        this.f23475a.a(this.d);
        com.batch.android.v0.e eVar = this.f23477c;
        Batch.EventDispatcher.Type type = Batch.EventDispatcher.Type.MESSAGING_AUTO_CLOSE;
        BatchMessage batchMessage = this.f23478e;
        eVar.a(type, new com.batch.android.p.b(batchMessage, batchMessage.c(), this.f23478e.b()));
    }

    public void a(Bundle bundle) {
        bundle.putStringArrayList(g, this.f23479f);
    }
}
