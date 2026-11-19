package com.perfectcorp.uma.countly;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ String f43228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ Map f43229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ int f43230c;
    private /* synthetic */ double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private /* synthetic */ d f43231e;

    public h(d dVar, String str, Map map, int i2, double d) {
        this.f43231e = dVar;
        this.f43228a = str;
        this.f43229b = map;
        this.f43230c = i2;
        this.d = d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        s sVar = this.f43231e.d;
        if (sVar != null) {
            String str = this.f43228a;
            Map map = this.f43229b;
            int i2 = this.f43230c;
            double d = this.d;
            p pVar = sVar.f43254a;
            u uVar = new u();
            synchronized (pVar) {
                if (str != null) {
                    if (str.length() != 0) {
                        m mVarA = pVar.a();
                        r rVar = new r(str, map, i2, d, (int) (uVar.f43257a / 1000), uVar.a());
                        mVarA.getClass();
                        try {
                            m.b(mVarA.f43240b.getWritableDatabase(), "EVENT_TABLE", rVar.b().toString());
                        } catch (Exception e2) {
                            com.perfectcorp.uma.b.d.a("CountlyDatabase", "[addEvent] Exception: " + e2.getMessage());
                        }
                    }
                }
                throw new IllegalArgumentException("valid key required");
            }
            d dVar = this.f43231e;
            dVar.getClass();
            int i3 = d.f43217j;
            if (i3 <= 0) {
                i3 = 100;
            }
            if (((int) dVar.d.f43254a.a().e("EVENT_TABLE")) >= i3) {
                dVar.g();
            }
        }
    }
}
