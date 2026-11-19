package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Function;

/* JADX INFO: loaded from: classes3.dex */
final class ao implements Function {
    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
    public final /* synthetic */ Object apply(Object obj) {
        return ((Iterable) obj).iterator();
    }
}
