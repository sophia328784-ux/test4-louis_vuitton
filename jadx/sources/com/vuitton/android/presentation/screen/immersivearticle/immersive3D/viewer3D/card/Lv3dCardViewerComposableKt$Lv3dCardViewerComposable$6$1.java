package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card;

import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$6$1", f = "Lv3dCardViewerComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$6$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Lv3dCardViewerHelper f58556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f58557c;
    public final /* synthetic */ MutableState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$6$1(Lv3dCardViewerHelper lv3dCardViewerHelper, Function1 function1, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f58556b = lv3dCardViewerHelper;
        this.f58557c = function1;
        this.d = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$6$1(this.f58556b, this.f58557c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$6$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Lv3dCardViewerUiModel lv3dCardViewerUiModel = Lv3dCardViewerComposableKt.f58553a;
        if (((Boolean) this.d.getF10755b()).booleanValue()) {
            try {
                this.f58556b.f();
            } catch (Exception unused) {
                this.f58557c.invoke(Boolean.TRUE);
            }
        }
        return Unit.f71739a;
    }
}
