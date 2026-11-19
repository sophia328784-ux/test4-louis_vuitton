package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TravelRepositoryImpl", f = "TravelRepositoryImpl.kt", l = {32, 33}, m = "getTravelList-IoAF18A", v = 2)
final class TravelRepositoryImpl$getTravelList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f48075c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f48076e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TravelRepositoryImpl f48077f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TravelRepositoryImpl$getTravelList$1(TravelRepositoryImpl travelRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48077f = travelRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48076e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objC = this.f48077f.c(this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
