package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.BookingRepositoryImpl", f = "BookingRepositoryImpl.kt", l = {EACTags.APPLICATION_IMAGE}, m = "getPreBookSummary-IoAF18A", v = 2)
final class BookingRepositoryImpl$getPreBookSummary$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingRepositoryImpl f47411c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingRepositoryImpl$getPreBookSummary$1(BookingRepositoryImpl bookingRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47411c = bookingRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47410b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f47411c.d(this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
