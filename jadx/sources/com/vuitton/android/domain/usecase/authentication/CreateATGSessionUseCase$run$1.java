package com.vuitton.android.domain.usecase.authentication;

import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.authentication.CreateATGSessionUseCase", f = "CreateATGSessionUseCase.kt", l = {15, 19, 21}, m = "run-IoAF18A", v = 2)
final class CreateATGSessionUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AuthToken.Atg f49338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f49339c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CreateATGSessionUseCase f49340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f49341f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateATGSessionUseCase$run$1(CreateATGSessionUseCase createATGSessionUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49340e = createATGSessionUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f49341f |= Integer.MIN_VALUE;
        Object objA = this.f49340e.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
