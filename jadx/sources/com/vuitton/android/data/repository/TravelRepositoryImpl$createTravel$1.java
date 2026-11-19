package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.connectivity.travel.Travel;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TravelRepositoryImpl", f = "TravelRepositoryImpl.kt", l = {41, EACTags.CURRENCY_CODE}, m = "createTravel-gIAlu-s", v = 2)
final class TravelRepositoryImpl$createTravel$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Travel f48057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TravelRepositoryImpl f48058c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f48059e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f48060f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TravelRepositoryImpl f48061h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f48062i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TravelRepositoryImpl$createTravel$1(TravelRepositoryImpl travelRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48061h = travelRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f48062i |= Integer.MIN_VALUE;
        Object objD = this.f48061h.d(null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
