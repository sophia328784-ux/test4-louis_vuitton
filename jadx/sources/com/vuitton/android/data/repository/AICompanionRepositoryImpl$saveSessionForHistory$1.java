package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AICompanionRepositoryImpl", f = "AICompanionRepositoryImpl.kt", l = {EACTags.DEPRECATED, 76, EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "saveSessionForHistory-gIAlu-s", v = 2)
final class AICompanionRepositoryImpl$saveSessionForHistory$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ChatHistory f47115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47116c;
    public final /* synthetic */ AICompanionRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47117e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionRepositoryImpl$saveSessionForHistory$1(AICompanionRepositoryImpl aICompanionRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = aICompanionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47116c = obj;
        this.f47117e |= Integer.MIN_VALUE;
        Object objD = this.d.d(null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
