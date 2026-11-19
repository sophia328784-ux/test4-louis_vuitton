package com.vuitton.android.domain.usecase.automatedtest;

import com.vuitton.foundation.model.domain.model.environment.Environment;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.automatedtest.ApplyAutomatedTestConfigUseCase", f = "ApplyAutomatedTestConfigUseCase.kt", l = {26, 27, 28}, m = "run-CVEVb2Y", v = 2)
final class ApplyAutomatedTestConfigUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Environment f49430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f49431c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ApplyAutomatedTestConfigUseCase f49432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f49433f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyAutomatedTestConfigUseCase$run$1(ApplyAutomatedTestConfigUseCase applyAutomatedTestConfigUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49432e = applyAutomatedTestConfigUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f49433f |= Integer.MIN_VALUE;
        return this.f49432e.a(null, null, null, this);
    }
}
