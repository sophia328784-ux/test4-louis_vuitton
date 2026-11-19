package com.vuitton.android.domain.usecase.connectivity.watchv3;

import com.vuitton.android.domain.repository.WatchV3Repository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.watchv3.GetWatchV3TutorialUseCase", f = "GetWatchV3TutorialUseCase.kt", l = {12, 12}, m = "run", v = 2)
final class GetWatchV3TutorialUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WatchV3Repository f49875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49876c;
    public final /* synthetic */ GetWatchV3TutorialUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49877e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetWatchV3TutorialUseCase$run$1(GetWatchV3TutorialUseCase getWatchV3TutorialUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getWatchV3TutorialUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49876c = obj;
        this.f49877e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
