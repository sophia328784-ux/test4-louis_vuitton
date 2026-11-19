package com.vuitton.android.domain.usecase.connectivity;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase", f = "GetConnectedObjectListUseCase.kt", l = {17, 25}, m = "run", v = 2)
final class GetConnectedObjectListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GetConnectedObjectListUseCase.Params f49741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f49742c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ GetConnectedObjectListUseCase f49743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f49744f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetConnectedObjectListUseCase$run$1(GetConnectedObjectListUseCase getConnectedObjectListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49743e = getConnectedObjectListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f49744f |= Integer.MIN_VALUE;
        return this.f49743e.a(null, this);
    }
}
