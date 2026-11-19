package com.vuitton.android.domain.usecase.config;

import com.vuitton.foundation.model.domain.model.sync.Feature;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase", f = "IsFeatureAvailableUseCase.kt", l = {EACTags.PIN_USAGE_POLICY}, m = "isAvailable", v = 2)
final class IsFeatureAvailableUseCase$isAvailable$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Feature f49694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49695c;
    public final /* synthetic */ IsFeatureAvailableUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49696e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsFeatureAvailableUseCase$isAvailable$1(IsFeatureAvailableUseCase isFeatureAvailableUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = isFeatureAvailableUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49695c = obj;
        this.f49696e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
