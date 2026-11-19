package com.vuitton.android.domain.usecase.connectivity.lightup;

import com.vuitton.android.domain.repository.LightUpRepository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.lightup.GetLightUpVideoUseCase", f = "GetLightUpVideoUseCase.kt", l = {12, 12}, m = "run", v = 2)
final class GetLightUpVideoUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LightUpRepository f49802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49803c;
    public final /* synthetic */ GetLightUpVideoUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49804e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetLightUpVideoUseCase$run$1(GetLightUpVideoUseCase getLightUpVideoUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getLightUpVideoUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49803c = obj;
        this.f49804e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
