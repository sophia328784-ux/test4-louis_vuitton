package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class aq extends FluentIterable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Iterable f42242c;
    public final /* synthetic */ Predicate d;

    public aq(Iterable iterable, Predicate predicate) {
        this.f42242c = iterable;
        this.d = predicate;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterator it = this.f42242c.iterator();
        it.getClass();
        Predicate predicate = this.d;
        predicate.getClass();
        aw awVar = new aw();
        awVar.d = it;
        awVar.f42254e = predicate;
        awVar.f42260b = b.a.f42263b;
        return awVar;
    }
}
