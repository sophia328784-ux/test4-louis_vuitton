package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class aa extends FluentIterable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FluentIterable f42225c;

    public aa(FluentIterable fluentIterable) {
        this.f42225c = fluentIterable;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        ax axVar = new ax(this.f42225c.iterator(), new ao());
        at.b bVar = new at.b();
        bVar.f42247c = at.a.f42245e;
        bVar.d = axVar;
        return bVar;
    }
}
