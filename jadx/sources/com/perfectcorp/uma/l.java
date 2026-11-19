package com.perfectcorp.uma;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
abstract class l implements p {

    public static class a extends l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final p f43274a;

        public a(p pVar) {
            this.f43274a = pVar;
        }
    }

    public abstract p a();

    @Override // com.perfectcorp.uma.p
    public final void a(String str) {
        a().a(str);
    }

    @Override // com.perfectcorp.uma.p
    public final void a_() {
        a().a_();
    }

    @Override // com.perfectcorp.uma.p
    public final void b() {
        a().b();
    }

    @Override // com.perfectcorp.uma.p
    public final void c() {
        a().c();
    }

    @Override // com.perfectcorp.uma.p
    public final void a(String str, String str2) {
        a().a(str, str2);
    }

    @Override // com.perfectcorp.uma.p
    public final void a(String str, Map<String, String> map, int i2, double d) {
        a().a(str, map, i2, d);
    }
}
