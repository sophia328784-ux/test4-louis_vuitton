package com.vuitton.android.data.net.atg;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\n"}, d2 = {"<anonymous>", "T"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.atg.ATGSessionManagerImpl$withATGSession$performBody$1", f = "ATGSessionManagerImpl.kt", l = {EACTags.TRANSACTION_DATE, EACTags.CARD_SEQUENCE_NUMBER}, m = "invokeSuspend", v = 2)
final class ATGSessionManagerImpl$withATGSession$performBody$1 extends SuspendLambda implements Function1<Continuation<Object>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ATGSessionManagerImpl f47012c;
    public final /* synthetic */ Function2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ATGSessionManagerImpl$withATGSession$performBody$1(ATGSessionManagerImpl aTGSessionManagerImpl, Function2 function2, Continuation continuation) {
        super(1, continuation);
        this.f47012c = aTGSessionManagerImpl;
        this.d = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new ATGSessionManagerImpl$withATGSession$performBody$1(this.f47012c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((ATGSessionManagerImpl$withATGSession$performBody$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47011b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f47011b = 1;
            int i3 = ATGSessionManagerImpl.f46997f;
            obj = this.f47012c.d(false, this);
            if (obj != coroutineSingletons) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.f47011b = 2;
        Object objInvoke = this.d.invoke((ATGSessionStatus) obj, this);
        return objInvoke == coroutineSingletons ? coroutineSingletons : objInvoke;
    }
}
