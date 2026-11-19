package com.vuitton.android.data.datasource.auth;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.auth.SalesforceTokenDataSourceImpl", f = "SalesforceTokenDataSourceImpl.kt", l = {97}, m = "getSFIDAccessTokenExpiration", v = 2)
final class SalesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SalesforceTokenDataSourceImpl f43808c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SalesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1(SalesforceTokenDataSourceImpl salesforceTokenDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43808c = salesforceTokenDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43807b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f43808c.f(this);
    }
}
