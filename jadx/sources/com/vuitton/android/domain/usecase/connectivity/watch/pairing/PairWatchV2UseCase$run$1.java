package com.vuitton.android.domain.usecase.connectivity.watch.pairing;

import com.vuitton.foundation.model.domain.model.connectivity.watch.PairWatchV2;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.watch.pairing.PairWatchV2UseCase", f = "PairWatchV2UseCase.kt", l = {18, 22, 23}, m = "run", v = 2)
final class PairWatchV2UseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PairWatchV2 f49849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InAppDispatch f49850c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49851e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f49852f;
    public final /* synthetic */ PairWatchV2UseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f49853h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PairWatchV2UseCase$run$1(PairWatchV2UseCase pairWatchV2UseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = pairWatchV2UseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49852f = obj;
        this.f49853h |= Integer.MIN_VALUE;
        return this.g.a(null, this);
    }
}
