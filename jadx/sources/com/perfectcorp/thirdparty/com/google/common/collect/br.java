package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes3.dex */
public interface br<K, V> extends SetMultimap<K, V> {
    SortedSet a();

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.SetMultimap, com.perfectcorp.thirdparty.com.google.common.collect.Multimap, com.perfectcorp.thirdparty.com.google.common.collect.ListMultimap
    /* synthetic */ default Collection get(Object obj) {
        return a();
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.SetMultimap, com.perfectcorp.thirdparty.com.google.common.collect.Multimap, com.perfectcorp.thirdparty.com.google.common.collect.ListMultimap
    /* synthetic */ default Set get(Object obj) {
        return a();
    }
}
