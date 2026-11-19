package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ConfigsVersionRepositoryImpl", f = "ConfigsVersionRepositoryImpl.kt", l = {17, 19}, m = "getConfigsVersion-IoAF18A", v = 2)
final class ConfigsVersionRepositoryImpl$getConfigsVersion$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConfigsVersion f47604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47605c;
    public final /* synthetic */ ConfigsVersionRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47606e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigsVersionRepositoryImpl$getConfigsVersion$1(ConfigsVersionRepositoryImpl configsVersionRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = configsVersionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47605c = obj;
        this.f47606e |= Integer.MIN_VALUE;
        Object objB = this.d.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
