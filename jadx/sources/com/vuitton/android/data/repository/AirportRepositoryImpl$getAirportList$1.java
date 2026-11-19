package com.vuitton.android.data.repository;

import java.util.HashMap;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AirportRepositoryImpl", f = "AirportRepositoryImpl.kt", l = {28}, m = "getAirportList", v = 2)
final class AirportRepositoryImpl$getAirportList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HashMap f47210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47211c;
    public final /* synthetic */ AirportRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47212e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AirportRepositoryImpl$getAirportList$1(AirportRepositoryImpl airportRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = airportRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47211c = obj;
        this.f47212e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
