package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
abstract class l<K, V> extends e<K, V> implements SetMultimap<K, V> {
    @Override // com.perfectcorp.thirdparty.com.google.common.collect.e, com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final Collection a(Object obj) {
        return (Set) super.a(obj);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.e
    public final Collection c(Object obj, Collection collection) {
        return new e.g(this, obj, (Set) collection);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.e
    public final Collection d(Collection collection) {
        return Collections.unmodifiableSet((Set) collection);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.e
    public final /* synthetic */ Collection g() {
        return Collections.EMPTY_SET;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap, com.perfectcorp.thirdparty.com.google.common.collect.ListMultimap
    public final /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get(obj);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.e, com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    /* JADX INFO: renamed from: k */
    public Set f() {
        return (Set) super.f();
    }
}
