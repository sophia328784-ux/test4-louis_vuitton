package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TravelRepositoryImpl", f = "TravelRepositoryImpl.kt", l = {46, EACTags.PIN_USAGE_POLICY}, m = "deleteTravel-gIAlu-s", v = 2)
final class TravelRepositoryImpl$deleteTravel$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f48063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f48064c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f48065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f48066f;
    public final /* synthetic */ TravelRepositoryImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f48067h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TravelRepositoryImpl$deleteTravel$1(TravelRepositoryImpl travelRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = travelRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48066f = obj;
        this.f48067h |= Integer.MIN_VALUE;
        Object objB = this.g.b(null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
