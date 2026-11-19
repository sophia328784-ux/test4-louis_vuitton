package com.vuitton.android.data.datasource.config;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.ConfigsVersionLocalDataSource", f = "ConfigsVersionLocalDataSource.kt", l = {34}, m = "getConfigsVersion-IoAF18A", v = 2)
final class ConfigsVersionLocalDataSource$getConfigsVersion$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConfigsVersionLocalDataSource f44026c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigsVersionLocalDataSource$getConfigsVersion$1(ConfigsVersionLocalDataSource configsVersionLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44026c = configsVersionLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44025b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f44026c.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
