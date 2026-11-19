package com.vuitton.android.domain.usecase.connectivity.watch;

import com.vuitton.android.domain.repository.WatchRepository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.watch.GetWatchVideoUseCase", f = "GetWatchVideoUseCase.kt", l = {12, 12}, m = "run", v = 2)
final class GetWatchVideoUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WatchRepository f49840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49841c;
    public final /* synthetic */ GetWatchVideoUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49842e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetWatchVideoUseCase$run$1(GetWatchVideoUseCase getWatchVideoUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getWatchVideoUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49841c = obj;
        this.f49842e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
