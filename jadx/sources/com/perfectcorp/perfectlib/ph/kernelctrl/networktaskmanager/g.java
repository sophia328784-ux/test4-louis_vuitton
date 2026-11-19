package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.common.guava.DefaultFutureCallback;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
final class g extends DefaultFutureCallback<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c.b f41483a;

    public g(c.b bVar) {
        this.f41483a = bVar;
    }

    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.common.guava.b
    public final void a() {
        c.b.C0165b c0165b = this.f41483a.y;
        c0165b.f41459e.incrementAndGet();
        c.b bVar = c.b.this;
        if (bVar.s) {
            bVar.a(c0165b.a());
        }
    }
}
