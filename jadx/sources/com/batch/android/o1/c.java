package com.batch.android.o1;

import com.batch.android.FailReason;
import com.batch.android.e.t;
import com.batch.android.n.p;
import com.batch.android.v0.f;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c implements com.batch.android.n1.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f23877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.batch.android.s.a f23878b;

    private c(f fVar, com.batch.android.s.a aVar) {
        this.f23877a = fVar;
        this.f23878b = aVar;
    }

    @Override // com.batch.android.n1.e
    public void a(FailReason failReason) {
        t.c(f.f24095i, "Error while refreshing local campaigns: " + failReason.toString());
        this.f23877a.k();
    }

    @Override // com.batch.android.n1.e
    public void a(List<com.batch.android.g1.c> list) {
        this.f23878b.m();
        Iterator<com.batch.android.g1.c> it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public static c a() {
        return new c(p.a(), com.batch.android.n.f.a());
    }

    private void a(com.batch.android.g1.c cVar) {
        this.f23878b.a(cVar);
        this.f23877a.k();
    }
}
