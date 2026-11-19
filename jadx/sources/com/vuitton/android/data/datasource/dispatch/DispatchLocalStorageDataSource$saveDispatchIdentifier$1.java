package com.vuitton.android.data.datasource.dispatch;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.dispatch.DispatchLocalStorageDataSource", f = "DispatchLocalStorageDataSource.kt", l = {38}, m = "saveDispatchIdentifier-7UcRSlk", v = 2)
final class DispatchLocalStorageDataSource$saveDispatchIdentifier$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DispatchLocalStorageDataSource f44094c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchLocalStorageDataSource$saveDispatchIdentifier$1(DispatchLocalStorageDataSource dispatchLocalStorageDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44094c = dispatchLocalStorageDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44093b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objF = this.f44094c.f(null, this);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : new Result(objF);
    }
}
