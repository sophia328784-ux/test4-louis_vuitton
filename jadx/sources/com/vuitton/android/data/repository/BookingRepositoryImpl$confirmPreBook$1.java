package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.BookingRepositoryImpl", f = "BookingRepositoryImpl.kt", l = {106}, m = "confirmPreBook-gIAlu-s", v = 2)
final class BookingRepositoryImpl$confirmPreBook$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BookingRepositoryImpl f47391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47392c;
    public final /* synthetic */ BookingRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47393e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingRepositoryImpl$confirmPreBook$1(BookingRepositoryImpl bookingRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = bookingRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47392c = obj;
        this.f47393e |= Integer.MIN_VALUE;
        Object objC = this.d.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
