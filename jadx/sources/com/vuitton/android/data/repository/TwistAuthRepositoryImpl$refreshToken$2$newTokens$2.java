package com.vuitton.android.data.repository;

import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl$refreshToken$2$newTokens$2", f = "TwistAuthRepositoryImpl.kt", l = {188}, m = "invokeSuspend", v = 2)
final class TwistAuthRepositoryImpl$refreshToken$2$newTokens$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TwistAuthRepositoryImpl f48136c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$refreshToken$2$newTokens$2(TwistAuthRepositoryImpl twistAuthRepositoryImpl, Continuation continuation) {
        super(1, continuation);
        this.f48136c = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new TwistAuthRepositoryImpl$refreshToken$2$newTokens$2(this.f48136c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((TwistAuthRepositoryImpl$refreshToken$2$newTokens$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objS;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48135b;
        if (i2 == 0) {
            ResultKt.b(obj);
            TwistAuthRepositoryImpl twistAuthRepositoryImpl = this.f48136c;
            twistAuthRepositoryImpl.f48084e.a();
            this.f48135b = 1;
            objS = twistAuthRepositoryImpl.s(this);
            if (objS == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objS = ((Result) obj).f71708b;
        }
        ResultKt.b(objS);
        return Unit.f71739a;
    }
}
