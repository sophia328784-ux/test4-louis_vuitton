package com.vuitton.android.presentation.screen.distantrepairs.form;

import com.vuitton.android.presentation.contact.ContactUsDelegate;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$setUserChatConsentEnabled$1", f = "DistantRepairFormBffViewModelImpl.kt", l = {788}, m = "invokeSuspend", v = 2)
final class DistantRepairFormBffViewModelImpl$setUserChatConsentEnabled$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormBffViewModelImpl f57135c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormBffViewModelImpl$setUserChatConsentEnabled$1(Continuation continuation, DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl) {
        super(2, continuation);
        this.f57135c = distantRepairFormBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairFormBffViewModelImpl$setUserChatConsentEnabled$1(continuation, this.f57135c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairFormBffViewModelImpl$setUserChatConsentEnabled$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ContactUsDelegate contactUsDelegate = this.f57135c.f57100e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57134b;
        if (i2 == 0) {
            ResultKt.b(obj);
            contactUsDelegate.Q0();
            this.f57134b = 1;
            if (contactUsDelegate.S0(this) == coroutineSingletons) {
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
