package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PassRepositoryImpl", f = "PassRepositoryImpl.kt", l = {50}, m = "clearPassDataCache-IoAF18A", v = 2)
final class PassRepositoryImpl$clearPassDataCache$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PassRepositoryImpl f47841c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassRepositoryImpl$clearPassDataCache$1(PassRepositoryImpl passRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47841c = passRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47840b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f47841c.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
