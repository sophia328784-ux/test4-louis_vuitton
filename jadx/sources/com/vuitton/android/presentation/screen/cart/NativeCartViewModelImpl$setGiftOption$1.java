package com.vuitton.android.presentation.screen.cart;

import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$setGiftOption$1", f = "NativeCartViewModelImpl.kt", l = {803, 808, 809, 812}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$setGiftOption$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f54939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NativeCartViewModelImpl f54940c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f54941e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f54942f;
    public final /* synthetic */ NativeCartViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ GiftOption f54943h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$setGiftOption$1(NativeCartViewModelImpl nativeCartViewModelImpl, GiftOption giftOption, Continuation continuation) {
        super(2, continuation);
        this.g = nativeCartViewModelImpl;
        this.f54943h = giftOption;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartViewModelImpl$setGiftOption$1(this.g, this.f54943h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$setGiftOption$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b9  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00af, code lost:
    
        if (r8.Dc(r7, r12) == r2) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00cc, code lost:
    
        if (com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl.zc(r0, r3, r12) == r2) goto L37;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$setGiftOption$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
