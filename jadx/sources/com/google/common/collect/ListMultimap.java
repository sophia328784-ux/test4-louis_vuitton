package com.google.common.collect;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface ListMultimap<K, V> extends Multimap<K, V> {
    @Override // 
    List a(Object obj);

    @Override // 
    List get(Object obj);
}
