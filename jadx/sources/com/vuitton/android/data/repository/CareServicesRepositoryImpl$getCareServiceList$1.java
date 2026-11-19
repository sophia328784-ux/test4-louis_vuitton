package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.config.AppConfig;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CareServicesRepositoryImpl", f = "CareServicesRepositoryImpl.kt", l = {63, EACTags.ADDRESS}, m = "getCareServiceList-0E7RQCE", v = 2)
final class CareServicesRepositoryImpl$getCareServiceList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AppConfig f47460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47461c;
    public final /* synthetic */ CareServicesRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47462e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CareServicesRepositoryImpl$getCareServiceList$1(CareServicesRepositoryImpl careServicesRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = careServicesRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47461c = obj;
        this.f47462e |= Integer.MIN_VALUE;
        Object objB = this.d.b(null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
