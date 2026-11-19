package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ConfigsVersionRepositoryImpl", f = "ConfigsVersionRepositoryImpl.kt", l = {28}, m = "getConfigsVersionFromNetwork-IoAF18A", v = 2)
final class ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConfigsVersionRepositoryImpl f47610c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1(ConfigsVersionRepositoryImpl configsVersionRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47610c = configsVersionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47609b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f47610c.d(this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
