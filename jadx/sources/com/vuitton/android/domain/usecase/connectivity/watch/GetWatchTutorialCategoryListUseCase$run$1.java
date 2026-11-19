package com.vuitton.android.domain.usecase.connectivity.watch;

import com.vuitton.android.domain.repository.WatchRepository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.watch.GetWatchTutorialCategoryListUseCase", f = "GetWatchTutorialCategoryListUseCase.kt", l = {13, 13}, m = "run", v = 2)
final class GetWatchTutorialCategoryListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WatchRepository f49829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49830c;
    public final /* synthetic */ GetWatchTutorialCategoryListUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49831e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetWatchTutorialCategoryListUseCase$run$1(GetWatchTutorialCategoryListUseCase getWatchTutorialCategoryListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getWatchTutorialCategoryListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49830c = obj;
        this.f49831e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
