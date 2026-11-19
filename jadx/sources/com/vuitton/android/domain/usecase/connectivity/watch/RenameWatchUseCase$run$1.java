package com.vuitton.android.domain.usecase.connectivity.watch;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.watch.RenameWatchUseCase", f = "RenameWatchUseCase.kt", l = {9}, m = "run-gIAlu-s", v = 2)
final class RenameWatchUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RenameWatchUseCase f49845c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenameWatchUseCase$run$1(RenameWatchUseCase renameWatchUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49845c = renameWatchUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49844b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49845c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
