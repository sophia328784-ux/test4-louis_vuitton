package com.vuitton.android.data.datasource.pass;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pass.PassLocalDataSource", f = "PassLocalDataSource.kt", l = {35}, m = "hasPassEligibility-IoAF18A", v = 2)
final class PassLocalDataSource$hasPassEligibility$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PassLocalDataSource f44202c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassLocalDataSource$hasPassEligibility$1(PassLocalDataSource passLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44202c = passLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44201b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f44202c.c(this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
