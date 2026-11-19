package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$2", f = "ThematicPlpScreen.kt", l = {216}, m = "invokeSuspend", v = 2)
final class ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HapticFeedback f55478c;
    public final /* synthetic */ Function0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$2(HapticFeedback hapticFeedback, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f55478c = hapticFeedback;
        this.d = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$2(this.f55478c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55477b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Duration.Companion companion = Duration.INSTANCE;
            long jH = DurationKt.h(100L, DurationUnit.MILLISECONDS);
            this.f55477b = 1;
            if (DelayKt.c(jH, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        HapticFeedbackType.f9193b.getClass();
        int i3 = PlatformHapticFeedbackType.f9196a;
        this.f55478c.a(0);
        this.d.mo47invoke();
        return Unit.f71739a;
    }
}
