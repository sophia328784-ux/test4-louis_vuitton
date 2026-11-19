package com.vuitton.android.data.datasource.auth;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.auth.SalesforceTokenDataSourceImpl", f = "SalesforceTokenDataSourceImpl.kt", l = {EACTags.LANGUAGE_PREFERENCES}, m = "saveToken-gIAlu-s", v = 2)
final class SalesforceTokenDataSourceImpl$saveToken$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SalesforceTokenDataSourceImpl f43819c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SalesforceTokenDataSourceImpl$saveToken$1(SalesforceTokenDataSourceImpl salesforceTokenDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43819c = salesforceTokenDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f43818b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f43819c.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
