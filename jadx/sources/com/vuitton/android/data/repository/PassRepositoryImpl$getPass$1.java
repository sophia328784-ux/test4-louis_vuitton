package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PassRepositoryImpl", f = "PassRepositoryImpl.kt", l = {37, 39}, m = "getPass-gIAlu-s", v = 2)
final class PassRepositoryImpl$getPass$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PassRepositoryImpl f47849c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassRepositoryImpl$getPass$1(PassRepositoryImpl passRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47849c = passRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47848b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f47849c.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
