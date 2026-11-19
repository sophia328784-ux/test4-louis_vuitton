package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CareServicesBffRepositoryImpl", f = "CareServicesBffRepositoryImpl.kt", l = {EACTags.SEX}, m = "cancelCareService-FjMe0-8", v = 2)
final class CareServicesBffRepositoryImpl$cancelCareService$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CareServicesBffRepositoryImpl f47436c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CareServicesBffRepositoryImpl$cancelCareService$1(CareServicesBffRepositoryImpl careServicesBffRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47436c = careServicesBffRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47435b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f47436c.d(null, null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
