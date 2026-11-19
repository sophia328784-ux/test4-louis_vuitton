package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public interface SetMultimap<K, V> extends Multimap<K, V> {
    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap, com.perfectcorp.thirdparty.com.google.common.collect.ListMultimap
    Set get(Object obj);

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    Set f();
}
