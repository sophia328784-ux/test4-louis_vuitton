package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes3.dex */
abstract class d<K, V> extends e<K, V> implements ListMultimap<K, V> {
    @Override // com.perfectcorp.thirdparty.com.google.common.collect.e, com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final Collection a(Object obj) {
        return (List) super.a(obj);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.e
    public final Collection c(Object obj, Collection collection) {
        List list = (List) collection;
        return list instanceof RandomAccess ? new e.d(obj, list, null) : new e.f(obj, list, null);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.e
    public final Collection d(Collection collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.e
    public final /* synthetic */ Collection g() {
        return Collections.EMPTY_LIST;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap, com.perfectcorp.thirdparty.com.google.common.collect.ListMultimap
    public final /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get(obj);
    }
}
