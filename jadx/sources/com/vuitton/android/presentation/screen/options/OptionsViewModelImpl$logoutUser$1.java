package com.vuitton.android.presentation.screen.options;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$logoutUser$1", f = "OptionsViewModelImpl.kt", l = {197, 202, 209, 212}, m = "invokeSuspend", v = 2)
final class OptionsViewModelImpl$logoutUser$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f59659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OptionsViewModelImpl f59660c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f59661e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ OptionsViewModelImpl f59662f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OptionsViewModelImpl$logoutUser$1(OptionsViewModelImpl optionsViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f59662f = optionsViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OptionsViewModelImpl$logoutUser$1(this.f59662f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OptionsViewModelImpl$logoutUser$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:35:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ef A[LOOP:0: B:38:0x00ef->B:46:?, LOOP_START] */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0123, code lost:
    
        if (r2.u(r1, r18) == r3) goto L42;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$logoutUser$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
