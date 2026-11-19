package com.vuitton.android.presentation.screen.account.addresseditor;

import com.vuitton.foundation.model.domain.model.forms.Form;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/forms/Form;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3", f = "AddressEditorViewModelImpl.kt", l = {244, 246}, m = "invokeSuspend", v = 2)
final class AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3 extends SuspendLambda implements Function1<Continuation<? super Result<? extends Form>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressEditorViewModelImpl f52241c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3(AddressEditorViewModelImpl addressEditorViewModelImpl, Continuation continuation) {
        super(1, continuation);
        this.f52241c = addressEditorViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3(this.f52241c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
    
        if (r6 == r0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
    
        if (r6 == r0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
    
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f52240b
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1b
            if (r1 == r4) goto Ld
            if (r1 != r3) goto L15
        Ld:
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            goto L4c
        L15:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r2
        L1b:
            kotlin.ResultKt.b(r7)
            com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl r7 = r6.f52241c
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r1 = r7.t
            boolean r5 = r7.r
            if (r5 == 0) goto L39
            com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase r3 = r7.l
            com.vuitton.foundation.model.domain.model.profile.Address r7 = r7.Ac()
            if (r7 == 0) goto L30
            java.lang.String r2 = r7.s
        L30:
            r6.f52240b = r4
            java.lang.Object r6 = r3.a(r1, r2, r6)
            if (r6 != r0) goto L4c
            goto L4b
        L39:
            com.vuitton.android.domain.usecase.forms.GetSecondaryAddressFormUseCase r4 = r7.m
            com.vuitton.foundation.model.domain.model.profile.Address r7 = r7.Ac()
            if (r7 == 0) goto L43
            java.lang.String r2 = r7.s
        L43:
            r6.f52240b = r3
            java.lang.Object r6 = r4.a(r1, r2, r6)
            if (r6 != r0) goto L4c
        L4b:
            return r0
        L4c:
            kotlin.Result r7 = new kotlin.Result
            r7.<init>(r6)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
