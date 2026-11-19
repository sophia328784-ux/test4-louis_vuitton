package com.vuitton.android.presentation.screen.filter.quickaccess;

import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import defpackage.md;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl$refreshPLP$2", f = "FiltersOverlayViewModelImpl.kt", l = {55}, m = "invokeSuspend", v = 2)
final class FiltersOverlayViewModelImpl$refreshPLP$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FiltersOverlayViewModelImpl f58009c;
    public final /* synthetic */ FilterParams d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FiltersOverlayViewModelImpl$refreshPLP$2(FiltersOverlayViewModelImpl filtersOverlayViewModelImpl, FilterParams filterParams, Continuation continuation) {
        super(2, continuation);
        this.f58009c = filtersOverlayViewModelImpl;
        this.d = filterParams;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FiltersOverlayViewModelImpl$refreshPLP$2(this.f58009c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FiltersOverlayViewModelImpl$refreshPLP$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58008b;
        if (i2 == 0) {
            ResultKt.b(obj);
            FilterCommand filterCommand = this.f58009c.f58002a;
            this.f58008b = 1;
            Object objEmit = filterCommand.f57993c.emit(this.d, this);
            if (objEmit != coroutineSingletons) {
                objEmit = Unit.f71739a;
            }
            if (objEmit == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
