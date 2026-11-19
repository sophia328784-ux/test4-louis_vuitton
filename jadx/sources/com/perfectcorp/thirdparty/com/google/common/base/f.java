package com.perfectcorp.thirdparty.com.google.common.base;

/* JADX INFO: loaded from: classes3.dex */
final class f extends Joiner {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Joiner f42097b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Joiner joiner, Joiner joiner2) {
        super(joiner2);
        this.f42097b = joiner;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Joiner
    public final CharSequence a(Object obj) {
        return obj == null ? "null" : this.f42097b.a(obj);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Joiner
    public final Joiner c() {
        throw null;
    }
}
