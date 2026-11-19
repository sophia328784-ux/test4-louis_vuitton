package com.vuitton.android.data.datasource.pass;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pass.PassNetworkDataSource", f = "PassNetworkDataSource.kt", l = {32}, m = "getPass-gIAlu-s", v = 2)
final class PassNetworkDataSource$getPass$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PassNetworkDataSource f44218c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassNetworkDataSource$getPass$1(PassNetworkDataSource passNetworkDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44218c = passNetworkDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44217b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f44218c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
