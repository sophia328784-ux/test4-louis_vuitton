package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import java.util.AbstractMap;

/* JADX INFO: loaded from: classes3.dex */
final class bl extends ImmutableList {
    public final /* synthetic */ bk.a d;

    public bl(bk.a aVar) {
        this.d = aVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i2) {
        bk.a aVar = this.d;
        Preconditions.b(i2, aVar.g);
        Object[] objArr = aVar.f42275f;
        int i3 = i2 * 2;
        return new AbstractMap.SimpleImmutableEntry(objArr[i3], objArr[i3 + 1]);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final boolean o() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d.g;
    }
}
