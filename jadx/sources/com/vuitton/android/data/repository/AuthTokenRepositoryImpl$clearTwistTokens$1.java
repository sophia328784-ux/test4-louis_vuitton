package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AuthTokenRepositoryImpl", f = "AuthTokenRepositoryImpl.kt", l = {EACTags.DATE_OF_BIRTH}, m = "clearTwistTokens-IoAF18A", v = 2)
final class AuthTokenRepositoryImpl$clearTwistTokens$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthTokenRepositoryImpl f47334c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthTokenRepositoryImpl$clearTwistTokens$1(AuthTokenRepositoryImpl authTokenRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47334c = authTokenRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47333b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f47334c.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
