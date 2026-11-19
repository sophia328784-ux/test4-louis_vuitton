package com.vuitton.android.domain.usecase.connectivity.watch.watchface;

import com.vuitton.android.domain.repository.WatchRepository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.watch.watchface.GetWatchfacePresentationWithVersionUseCase", f = "GetWatchfacePresentationWithVersionUseCase.kt", l = {13, 12}, m = "run", v = 2)
final class GetWatchfacePresentationWithVersionUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f49864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WatchRepository f49865c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ GetWatchfacePresentationWithVersionUseCase f49866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f49867f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetWatchfacePresentationWithVersionUseCase$run$1(GetWatchfacePresentationWithVersionUseCase getWatchfacePresentationWithVersionUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49866e = getWatchfacePresentationWithVersionUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f49867f |= Integer.MIN_VALUE;
        return this.f49866e.a(0, this);
    }
}
