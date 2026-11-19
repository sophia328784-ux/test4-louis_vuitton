package com.google.common.collect;

import com.google.common.base.Function;
import defpackage.uh;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Multimaps.TransformedEntriesListMultimap f33734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f33735c;

    public /* synthetic */ b(Multimaps.TransformedEntriesListMultimap transformedEntriesListMultimap, Object obj) {
        this.f33734b = transformedEntriesListMultimap;
        this.f33735c = obj;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        return ((uh) this.f33734b.g.f69221c).apply(obj);
    }
}
