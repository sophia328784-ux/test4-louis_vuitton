package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.BackInStockRepositoryImpl", f = "BackInStockRepositoryImpl.kt", l = {EACTags.PIN_USAGE_POLICY}, m = "unsubscribe-IoAF18A", v = 2)
final class BackInStockRepositoryImpl$unsubscribe$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BackInStockRepositoryImpl f47378c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackInStockRepositoryImpl$unsubscribe$1(BackInStockRepositoryImpl backInStockRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47378c = backInStockRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47377b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f47378c.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
