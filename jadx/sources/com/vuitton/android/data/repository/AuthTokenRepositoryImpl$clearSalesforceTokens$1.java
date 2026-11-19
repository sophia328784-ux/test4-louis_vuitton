package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AuthTokenRepositoryImpl", f = "AuthTokenRepositoryImpl.kt", l = {EACTags.CURRENCY_CODE}, m = "clearSalesforceTokens-IoAF18A", v = 2)
final class AuthTokenRepositoryImpl$clearSalesforceTokens$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthTokenRepositoryImpl f47332c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthTokenRepositoryImpl$clearSalesforceTokens$1(AuthTokenRepositoryImpl authTokenRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47332c = authTokenRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47331b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47332c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
