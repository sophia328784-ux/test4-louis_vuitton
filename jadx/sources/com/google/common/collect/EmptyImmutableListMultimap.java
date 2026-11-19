package com.google.common.collect;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class EmptyImmutableListMultimap extends ImmutableListMultimap<Object, Object> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final EmptyImmutableListMultimap f33579i = new EmptyImmutableListMultimap(RegularImmutableMap.f33700h, 0);
    private static final long serialVersionUID = 0;

    private Object readResolve() {
        return f33579i;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final Map h() {
        return this.f33602f;
    }

    @Override // com.google.common.collect.ImmutableMultimap
    /* JADX INFO: renamed from: l */
    public final ImmutableMap h() {
        return this.f33602f;
    }
}
