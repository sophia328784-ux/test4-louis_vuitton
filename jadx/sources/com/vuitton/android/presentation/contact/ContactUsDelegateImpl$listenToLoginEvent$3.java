package com.vuitton.android.presentation.contact;

import com.vuitton.android.core.events.AppEvent;
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
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.contact.ContactUsDelegateImpl$listenToLoginEvent$3", f = "ContactUsDelegateImpl.kt", l = {194}, m = "invokeSuspend", v = 2)
final class ContactUsDelegateImpl$listenToLoginEvent$3 extends SuspendLambda implements Function2<AppEvent, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContactUsDelegateImpl f51117c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContactUsDelegateImpl$listenToLoginEvent$3(ContactUsDelegateImpl contactUsDelegateImpl, Continuation continuation) {
        super(2, continuation);
        this.f51117c = contactUsDelegateImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ContactUsDelegateImpl$listenToLoginEvent$3(this.f51117c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ContactUsDelegateImpl$listenToLoginEvent$3) create((AppEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f51116b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f51116b = 1;
            if (this.f51117c.S0(this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
