package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Collection;

/* JADX INFO: loaded from: classes3.dex */
public class ak<K, V> extends al<K, V> implements ListMultimap<K, V> {

    public static final class a<K, V> extends al.a<K, V> {
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final /* synthetic */ Collection a(Object obj) {
        throw null;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap, com.perfectcorp.thirdparty.com.google.common.collect.ListMultimap
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final ImmutableList get(Object obj) {
        ImmutableList immutableList = (ImmutableList) this.f42233f.get(obj);
        if (immutableList != null) {
            return immutableList;
        }
        bz bzVar = ImmutableList.f42200c;
        return bj.f42269f;
    }
}
