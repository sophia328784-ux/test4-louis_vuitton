package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1", f = "ThematicPlpThemesOverlay.kt", l = {87}, m = "invokeSuspend", v = 2)
final class ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f55413c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f55414e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1(Function1 function1, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(1, continuation);
        this.f55413c = function1;
        this.d = mutableState;
        this.f55414e = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1(this.f55413c, this.d, this.f55414e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55412b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.d.setValue(Boolean.FALSE);
            this.f55412b = 1;
            if (DelayKt.b(250L, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        this.f55413c.invoke((ThemeUiModel) this.f55414e.getF10755b());
        return Unit.f71739a;
    }
}
