package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PassRepositoryImpl", f = "PassRepositoryImpl.kt", l = {23, 27, 28}, m = "isEligibleForPass-gIAlu-s", v = 2)
final class PassRepositoryImpl$isEligibleForPass$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f47851c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f47852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PassRepositoryImpl f47853f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassRepositoryImpl$isEligibleForPass$1(PassRepositoryImpl passRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47853f = passRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47852e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objA = this.f47853f.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
