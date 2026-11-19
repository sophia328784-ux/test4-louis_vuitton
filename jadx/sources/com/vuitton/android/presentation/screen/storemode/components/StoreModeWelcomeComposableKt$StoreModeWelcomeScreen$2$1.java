package com.vuitton.android.presentation.screen.storemode.components;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.components.StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1", f = "StoreModeWelcomeComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f64844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreModeViewState f64845c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ State f64846e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f64847f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1(float f2, StoreModeViewState storeModeViewState, Function0 function0, State state, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f64844b = f2;
        this.f64845c = storeModeViewState;
        this.d = function0;
        this.f64846e = state;
        this.f64847f = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1(this.f64844b, this.f64845c, this.d, this.f64846e, this.f64847f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoreModeWelcomeComposableKt$StoreModeWelcomeScreen$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        float f2 = StoreModeWelcomeComposableKt.f64839a;
        if (Dp.b(((Dp) this.f64846e.getF10755b()).f11006b, this.f64844b)) {
            StoreModeViewState storeModeViewState = this.f64845c;
            boolean z = storeModeViewState.d;
            boolean z2 = storeModeViewState.f65082b;
            if (!z && !z2) {
                this.f64847f.setValue(Boolean.TRUE);
            }
            if (z2) {
                this.d.mo47invoke();
            }
        }
        return Unit.f71739a;
    }
}
