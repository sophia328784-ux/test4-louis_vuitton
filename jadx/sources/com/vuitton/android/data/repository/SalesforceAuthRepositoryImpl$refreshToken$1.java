package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl", f = "SalesforceAuthRepositoryImpl.kt", l = {46, 50, 60}, m = "refreshToken-gIAlu-s", v = 2)
final class SalesforceAuthRepositoryImpl$refreshToken$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AuthToken.Atg f47964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AuthToken.Atg f47965c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47966e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47967f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SalesforceAuthRepositoryImpl f47968h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f47969i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SalesforceAuthRepositoryImpl$refreshToken$1(SalesforceAuthRepositoryImpl salesforceAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47968h = salesforceAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f47969i |= Integer.MIN_VALUE;
        Object objC = this.f47968h.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
