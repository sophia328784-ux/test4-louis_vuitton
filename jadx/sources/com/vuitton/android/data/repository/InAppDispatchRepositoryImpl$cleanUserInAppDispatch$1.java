package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.InAppDispatchRepositoryImpl", f = "InAppDispatchRepositoryImpl.kt", l = {29}, m = "cleanUserInAppDispatch-IoAF18A", v = 2)
final class InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InAppDispatchRepositoryImpl f47732c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1(InAppDispatchRepositoryImpl inAppDispatchRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47732c = inAppDispatchRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47731b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objE = this.f47732c.e(this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
