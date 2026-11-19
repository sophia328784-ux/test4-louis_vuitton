package com.vuitton.android.data.net.atg;

import com.vuitton.foundation.model.domain.error.session.SessionException;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "T", "atgSessionStatus", "Lcom/vuitton/android/data/net/atg/ATGSessionStatus;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.atg.ATGSessionManagerImpl$withAuthATGSessionOrThrow$2", f = "ATGSessionManagerImpl.kt", l = {35}, m = "invokeSuspend", v = 2)
final class ATGSessionManagerImpl$withAuthATGSessionOrThrow$2 extends SuspendLambda implements Function2<ATGSessionStatus, Continuation<Object>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47014c;
    public final /* synthetic */ Function2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ATGSessionManagerImpl$withAuthATGSessionOrThrow$2(Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.d = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ATGSessionManagerImpl$withAuthATGSessionOrThrow$2 aTGSessionManagerImpl$withAuthATGSessionOrThrow$2 = new ATGSessionManagerImpl$withAuthATGSessionOrThrow$2(this.d, continuation);
        aTGSessionManagerImpl$withAuthATGSessionOrThrow$2.f47014c = obj;
        return aTGSessionManagerImpl$withAuthATGSessionOrThrow$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ATGSessionManagerImpl$withAuthATGSessionOrThrow$2) create((ATGSessionStatus) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws SessionException.SessionAuthenticationFailException {
        ATGSessionStatus aTGSessionStatus = (ATGSessionStatus) this.f47014c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47013b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        if (!(aTGSessionStatus instanceof ATGSessionStatus.Authenticated)) {
            throw new SessionException.SessionAuthenticationFailException();
        }
        this.f47014c = null;
        this.f47013b = 1;
        Object objInvoke = this.d.invoke(aTGSessionStatus, this);
        return objInvoke == coroutineSingletons ? coroutineSingletons : objInvoke;
    }
}
