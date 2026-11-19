package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class ar extends FluentIterable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Iterable f42243c;
    public final /* synthetic */ Function d;

    public ar(Iterable iterable, Function function) {
        this.f42243c = iterable;
        this.d = function;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ax(this.f42243c.iterator(), this.d);
    }
}
