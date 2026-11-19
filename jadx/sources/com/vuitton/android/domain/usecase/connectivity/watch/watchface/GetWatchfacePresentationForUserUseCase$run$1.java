package com.vuitton.android.domain.usecase.connectivity.watch.watchface;

import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.watch.watchface.GetWatchfacePresentationForUserUseCase", f = "GetWatchfacePresentationForUserUseCase.kt", l = {20, 23, 31, 33}, m = "run", v = 2)
final class GetWatchfacePresentationForUserUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConnectedObjectsConfig f49859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49860c;
    public final /* synthetic */ GetWatchfacePresentationForUserUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49861e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetWatchfacePresentationForUserUseCase$run$1(GetWatchfacePresentationForUserUseCase getWatchfacePresentationForUserUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getWatchfacePresentationForUserUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49860c = obj;
        this.f49861e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
