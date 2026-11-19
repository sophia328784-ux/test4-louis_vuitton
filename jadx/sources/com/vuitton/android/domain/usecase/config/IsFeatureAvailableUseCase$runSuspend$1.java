package com.vuitton.android.domain.usecase.config;

import com.vuitton.foundation.model.domain.model.sync.Feature;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase", f = "IsFeatureAvailableUseCase.kt", l = {29, 31}, m = "runSuspend", v = 2)
final class IsFeatureAvailableUseCase$runSuspend$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Feature[] f49703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f49704c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49705e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f49706f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ IsFeatureAvailableUseCase f49707h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f49708i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsFeatureAvailableUseCase$runSuspend$1(IsFeatureAvailableUseCase isFeatureAvailableUseCase, Continuation continuation) {
        super(continuation);
        this.f49707h = isFeatureAvailableUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f49708i |= Integer.MIN_VALUE;
        return this.f49707h.c(null, false, this);
    }
}
