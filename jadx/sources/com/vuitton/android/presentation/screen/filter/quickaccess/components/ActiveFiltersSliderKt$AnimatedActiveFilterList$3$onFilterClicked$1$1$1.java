package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1", f = "ActiveFiltersSlider.kt", l = {243}, m = "invokeSuspend", v = 2)
final class ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f58065c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f58066e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1(Function1 function1, Function1 function2, Object obj, Continuation continuation) {
        super(2, continuation);
        this.f58065c = function1;
        this.d = function2;
        this.f58066e = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1(this.f58065c, this.d, this.f58066e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58064b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Duration.Companion companion = Duration.INSTANCE;
            long jH = DurationKt.h(300L, DurationUnit.MILLISECONDS);
            this.f58064b = 1;
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
        String str = (String) this.d.invoke(this.f58066e);
        if (str == null) {
            str = "";
        }
        this.f58065c.invoke(str);
        return Unit.f71739a;
    }
}
