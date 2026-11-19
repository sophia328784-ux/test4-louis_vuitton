package com.vuitton.android.data.datasource.auth;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.auth.SalesforceTokenDataSourceImpl", f = "SalesforceTokenDataSourceImpl.kt", l = {EACTags.HISTORICAL_BYTES}, m = "getAccessToken", v = 2)
final class SalesforceTokenDataSourceImpl$getAccessToken$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SalesforceTokenDataSourceImpl f43802c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SalesforceTokenDataSourceImpl$getAccessToken$1(SalesforceTokenDataSourceImpl salesforceTokenDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43802c = salesforceTokenDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43801b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f43802c.d(this);
    }
}
