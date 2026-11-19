package com.vuitton.android.presentation.screen.account.addressbook;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl$getAccountDetails$1", f = "AddressBookViewModelImpl.kt", l = {133, 133}, m = "invokeSuspend", v = 2)
final class AddressBookViewModelImpl$getAccountDetails$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressBookViewModelImpl f52155c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressBookViewModelImpl$getAccountDetails$1(Continuation continuation, AddressBookViewModelImpl addressBookViewModelImpl) {
        super(2, continuation);
        this.f52155c = addressBookViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddressBookViewModelImpl$getAccountDetails$1(continuation, this.f52155c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddressBookViewModelImpl$getAccountDetails$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        if (r5 == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.f52154b
            r2 = 2
            r3 = 1
            com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl r4 = r5.f52155c
            if (r1 == 0) goto L21
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L16
            kotlin.ResultKt.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.f71708b
            goto L3a
        L16:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L1d:
            kotlin.ResultKt.b(r6)
            goto L2f
        L21:
            kotlin.ResultKt.b(r6)
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r6 = r4.f52146f
            r5.f52154b = r3
            java.lang.Object r6 = r6.a(r5)
            if (r6 != r0) goto L2f
            goto L39
        L2f:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r6 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r6
            r5.f52154b = r2
            java.lang.Object r5 = r6.a(r5)
            if (r5 != r0) goto L3a
        L39:
            return r0
        L3a:
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            boolean r6 = r5 instanceof kotlin.Result.Failure
            if (r6 != 0) goto L46
            r6 = r5
            com.vuitton.foundation.model.domain.model.profile.Profile r6 = (com.vuitton.foundation.model.domain.model.profile.Profile) r6
            r4.h8()
        L46:
            java.lang.Throwable r5 = kotlin.Result.a(r5)
            if (r5 == 0) goto L69
            kotlinx.coroutines.flow.MutableStateFlow r6 = r4.f52148i
        L4e:
            java.lang.Object r0 = r6.getValue()
            r1 = r0
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            r1.getClass()
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            boolean r0 = r6.i(r0, r1)
            if (r0 == 0) goto L4e
            com.vuitton.foundation.logger.Logger r6 = r4.f52143b
            java.lang.String r0 = "AddressBookViewModelImpl"
            java.lang.String r1 = "Unable to get account details"
            r6.c(r0, r1, r5)
        L69:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl$getAccountDetails$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
