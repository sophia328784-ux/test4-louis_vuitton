package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ConfigsVersionRepositoryImpl", f = "ConfigsVersionRepositoryImpl.kt", l = {31}, m = "getConfigsVersionFromCache-IoAF18A", v = 2)
final class ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConfigsVersionRepositoryImpl f47608c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1(ConfigsVersionRepositoryImpl configsVersionRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47608c = configsVersionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47607b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47608c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
