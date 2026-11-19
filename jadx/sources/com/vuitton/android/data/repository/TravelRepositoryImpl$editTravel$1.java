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
@DebugMetadata(c = "com.vuitton.android.data.repository.TravelRepositoryImpl", f = "TravelRepositoryImpl.kt", l = {EACTags.TRANSACTION_DATE, EACTags.SEX}, m = "editTravel-gIAlu-s", v = 2)
final class TravelRepositoryImpl$editTravel$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Travel f48068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TravelRepositoryImpl f48069c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f48070e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f48071f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TravelRepositoryImpl f48072h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f48073i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TravelRepositoryImpl$editTravel$1(TravelRepositoryImpl travelRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48072h = travelRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f48073i |= Integer.MIN_VALUE;
        Object objA = this.f48072h.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
