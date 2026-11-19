package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CareServicesBffRepositoryImpl", f = "CareServicesBffRepositoryImpl.kt", l = {EACTags.CURRENCY_CODE}, m = "updateCareServiceAddress-FjMe0-8", v = 2)
final class CareServicesBffRepositoryImpl$updateCareServiceAddress$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CareServicesBffRepositoryImpl f47446c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CareServicesBffRepositoryImpl$updateCareServiceAddress$1(CareServicesBffRepositoryImpl careServicesBffRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47446c = careServicesBffRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47445b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objG = this.f47446c.g(null, null, this);
        return objG == CoroutineSingletons.COROUTINE_SUSPENDED ? objG : new Result(objG);
    }
}
