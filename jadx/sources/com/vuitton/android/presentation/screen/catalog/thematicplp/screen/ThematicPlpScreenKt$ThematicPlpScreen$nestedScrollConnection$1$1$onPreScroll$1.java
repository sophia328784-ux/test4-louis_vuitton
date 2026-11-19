package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$1", f = "ThematicPlpScreen.kt", l = {204}, m = "invokeSuspend", v = 2)
final class ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1 f55476c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$1(ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1 thematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1, Continuation continuation) {
        super(2, continuation);
        this.f55476c = thematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$1(this.f55476c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55475b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Duration.Companion companion = Duration.INSTANCE;
            long jH = DurationKt.h(1000L, DurationUnit.MILLISECONDS);
            this.f55475b = 1;
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
        this.f55476c.f55468b = true;
        return Unit.f71739a;
    }
}
