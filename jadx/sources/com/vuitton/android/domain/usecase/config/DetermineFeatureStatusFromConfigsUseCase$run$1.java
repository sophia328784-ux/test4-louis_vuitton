package com.vuitton.android.domain.usecase.config;

import com.vuitton.foundation.model.domain.model.sync.Feature;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.config.DetermineFeatureStatusFromConfigsUseCase", f = "DetermineFeatureStatusFromConfigsUseCase.kt", l = {EACTags.CARDHOLDER_NATIONALITY}, m = "run", v = 2)
final class DetermineFeatureStatusFromConfigsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Feature f49671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49672c;
    public final /* synthetic */ DetermineFeatureStatusFromConfigsUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49673e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DetermineFeatureStatusFromConfigsUseCase$run$1(DetermineFeatureStatusFromConfigsUseCase determineFeatureStatusFromConfigsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = determineFeatureStatusFromConfigsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49672c = obj;
        this.f49673e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
