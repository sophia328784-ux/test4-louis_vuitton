package com.vuitton.android.presentation.screen.account.addresseditor;

import com.vuitton.foundation.model.domain.model.account.address.AddressRequestBody;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$upsertAddress$1", f = "AddressEditorViewModelImpl.kt", l = {437, 437}, m = "invokeSuspend", v = 2)
final class AddressEditorViewModelImpl$upsertAddress$1 extends SuspendLambda implements Function1<Continuation<? super Result<?>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f52254c;
    public final /* synthetic */ AddressEditorViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AddressRequestBody f52255e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressEditorViewModelImpl$upsertAddress$1(boolean z, AddressEditorViewModelImpl addressEditorViewModelImpl, AddressRequestBody addressRequestBody, Continuation continuation) {
        super(1, continuation);
        this.f52254c = z;
        this.d = addressEditorViewModelImpl;
        this.f52255e = addressRequestBody;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new AddressEditorViewModelImpl$upsertAddress$1(this.f52254c, this.d, this.f52255e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((AddressEditorViewModelImpl$upsertAddress$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
    
        if (r5 == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
    
        if (r5 == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003b, code lost:
    
        return r0;
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
            int r1 = r5.f52253b
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto Lc
            if (r1 != r2) goto L14
        Lc:
            kotlin.ResultKt.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.f71708b
            goto L3c
        L14:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L1b:
            kotlin.ResultKt.b(r6)
            com.vuitton.foundation.model.domain.model.account.address.AddressRequestBody r6 = r5.f52255e
            boolean r1 = r5.f52254c
            com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl r4 = r5.d
            if (r1 == 0) goto L31
            com.vuitton.android.domain.usecase.account.address.AddAddressUseCase r1 = r4.f52220j
            r5.f52253b = r3
            java.lang.Object r5 = r1.a(r6, r5)
            if (r5 != r0) goto L3c
            goto L3b
        L31:
            com.vuitton.android.domain.usecase.account.address.EditAddressUseCase r1 = r4.f52219i
            r5.f52253b = r2
            java.lang.Object r5 = r1.a(r6, r5)
            if (r5 != r0) goto L3c
        L3b:
            return r0
        L3c:
            kotlin.Result r6 = new kotlin.Result
            r6.<init>(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$upsertAddress$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
