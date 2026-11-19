package com.vuitton.android.presentation.screen.cart;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$chooseSamples$1", f = "NativeCartViewModelImpl.kt", l = {934, 942, 943, 946}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$chooseSamples$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f54895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NativeCartViewModelImpl f54896c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f54897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f54898f;
    public final /* synthetic */ NativeCartViewModelImpl g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$chooseSamples$1(Continuation continuation, NativeCartViewModelImpl nativeCartViewModelImpl) {
        super(2, continuation);
        this.g = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartViewModelImpl$chooseSamples$1(continuation, this.g);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$chooseSamples$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:53:0x0158 A[PHI: r2
      0x0158: PHI (r2v10 java.lang.Object) = (r2v8 java.lang.Object), (r2v9 java.lang.Object), (r2v20 java.lang.Object) binds: [B:38:0x00e7, B:51:0x0155, B:11:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:55:0x015e  */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0173, code lost:
    
        if (com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl.zc(r1, r3, r24) == r5) goto L57;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r25) {
        /*
            Method dump skipped, instruction units count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$chooseSamples$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
