package com.batch.android.f;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.e.t;
import com.batch.android.n.w;
import com.batch.android.n.z;
import com.linkplay.medialib.ContentTree;
import com.sightcall.universal.media.offline.FileUtils;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class c implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23272a = "DomainStore";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Integer f23273b = 5;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final Integer f23274c = 172800;
    public static final String d = "batch.com";

    @Override // com.batch.android.f.f
    public boolean a(String str) {
        return str.contains(f());
    }

    @Override // com.batch.android.f.f
    public void b() {
        if (Integer.parseInt(w.a(z.a().c()).a(com.batch.android.e.z.u1, ContentTree.ROOT_ID)) == 0) {
            return;
        }
        w.a(z.a().c()).b(com.batch.android.e.z.u1);
        w.a(z.a().c()).b(com.batch.android.e.z.v1);
        com.batch.android.t0.b.d.b(Payload.RESPONSE_OK).j();
    }

    @Override // com.batch.android.f.f
    public void c(String str) {
        b();
        if (str != null) {
            t.c(f23272a, "Set BAParameter key: 'dns.domain.current' with '" + str + "'.");
            w.a(z.a().c()).a(com.batch.android.e.z.t1, str, true);
        } else {
            t.c(f23272a, "Remove BAParameter key: 'dns.domain.current'.");
            w.a(z.a().c()).b(com.batch.android.e.z.t1);
        }
        w.a(z.a().c()).a(com.batch.android.e.z.w1, String.valueOf(new Date().getTime()), true);
        t.c(f23272a, "New current domain: '" + f() + FileUtils.HIDDEN_PREFIX);
    }

    @Override // com.batch.android.f.f
    public void d() {
        w.a(z.a().c()).a(com.batch.android.e.z.x1, String.valueOf(new Date().getTime()), true);
    }

    @Override // com.batch.android.f.f
    public Date e() {
        String strA = w.a(z.a().c()).a(com.batch.android.e.z.v1, null);
        if (strA == null) {
            return null;
        }
        return new Date(Long.parseLong(strA));
    }

    @Override // com.batch.android.f.f
    public String f() {
        return w.a(z.a().c()).a(com.batch.android.e.z.t1, a.f23267f.get(0));
    }

    @Override // com.batch.android.f.f
    public int g() {
        int i2 = Integer.parseInt(w.a(z.a().c()).a(com.batch.android.e.z.u1, ContentTree.ROOT_ID));
        int i3 = i2 + 1;
        Date date = new Date();
        t.c(f23272a, String.format("Increment BAParameter key: '%s' by 1, (old value: %d, new value: %d, domain: %s). %s", com.batch.android.e.z.u1, Integer.valueOf(i2), Integer.valueOf(i3), f(), date));
        w.a(z.a().c()).a(com.batch.android.e.z.u1, String.valueOf(i3), true);
        w.a(z.a().c()).a(com.batch.android.e.z.v1, String.valueOf(date.getTime()), true);
        com.batch.android.t0.b.d.b("KO").l();
        return i3;
    }

    @Override // com.batch.android.f.f
    public void a() {
        c(null);
    }

    @Override // com.batch.android.f.f
    public boolean b(String str) {
        return str.contains(d);
    }

    @Override // com.batch.android.f.f
    public boolean c() {
        String strA = w.a(z.a().c()).a(com.batch.android.e.z.t1, null);
        String strA2 = w.a(z.a().c()).a(com.batch.android.e.z.w1, null);
        if (strA == null || strA2 == null || strA.equals(d)) {
            return false;
        }
        String strA3 = w.a(z.a().c()).a(com.batch.android.e.z.x1, null);
        if (strA3 == null) {
            return true;
        }
        return (((long) f23273b.intValue()) * 1000) + Long.parseLong(strA3) < new Date().getTime();
    }
}
