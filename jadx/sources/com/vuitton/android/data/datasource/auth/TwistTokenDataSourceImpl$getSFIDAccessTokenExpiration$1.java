package com.vuitton.android.data.datasource.auth;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.auth.TwistTokenDataSourceImpl", f = "TwistTokenDataSourceImpl.kt", l = {128}, m = "getSFIDAccessTokenExpiration", v = 2)
final class TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TwistTokenDataSourceImpl f43831c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1(TwistTokenDataSourceImpl twistTokenDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43831c = twistTokenDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43830b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f43831c.e(this);
    }
}
