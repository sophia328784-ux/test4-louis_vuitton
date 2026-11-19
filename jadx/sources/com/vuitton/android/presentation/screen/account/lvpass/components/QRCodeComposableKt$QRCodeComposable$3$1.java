package com.vuitton.android.presentation.screen.account.lvpass.components;

import com.vuitton.android.presentation.screen.account.lvpass.QRCodeScreenState;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.PassActions;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.lvpass.components.QRCodeComposableKt$QRCodeComposable$3$1", f = "QRCodeComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class QRCodeComposableKt$QRCodeComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppsFlyerUiTracker f52479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ QRCodeScreenState.Success.QrCode2D f52480c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QRCodeComposableKt$QRCodeComposable$3$1(AppsFlyerUiTracker appsFlyerUiTracker, QRCodeScreenState.Success.QrCode2D qrCode2D, Continuation continuation) {
        super(2, continuation);
        this.f52479b = appsFlyerUiTracker;
        this.f52480c = qrCode2D;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new QRCodeComposableKt$QRCodeComposable$3$1(this.f52479b, this.f52480c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((QRCodeComposableKt$QRCodeComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        PassActions.LVPass lVPass = PassActions.LVPass.DISPLAYED;
        String str = AppsFlyerUiTracker.f65809b;
        this.f52479b.c(lVPass, null);
        return Unit.f71739a;
    }
}
