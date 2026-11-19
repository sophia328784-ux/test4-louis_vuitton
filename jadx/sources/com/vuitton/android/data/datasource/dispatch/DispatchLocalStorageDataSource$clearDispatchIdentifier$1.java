package com.vuitton.android.data.datasource.dispatch;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.dispatch.DispatchLocalStorageDataSource", f = "DispatchLocalStorageDataSource.kt", l = {46}, m = "clearDispatchIdentifier-IoAF18A", v = 2)
final class DispatchLocalStorageDataSource$clearDispatchIdentifier$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DispatchLocalStorageDataSource f44081c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchLocalStorageDataSource$clearDispatchIdentifier$1(DispatchLocalStorageDataSource dispatchLocalStorageDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44081c = dispatchLocalStorageDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44080b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f44081c.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
