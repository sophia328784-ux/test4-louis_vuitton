package com.networkbench.agent.impl.logtrack;

/* JADX INFO: loaded from: classes2.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    a f37483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    k f37484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    h f37485c;

    public enum a {
        WRITE,
        SEND,
        FLUSH
    }

    public boolean a() {
        k kVar;
        h hVar;
        a aVar = this.f37483a;
        if (aVar == null) {
            return false;
        }
        if (aVar == a.SEND && (hVar = this.f37485c) != null && hVar.a()) {
            return true;
        }
        return (this.f37483a == a.WRITE && (kVar = this.f37484b) != null && kVar.a()) || this.f37483a == a.FLUSH;
    }
}
