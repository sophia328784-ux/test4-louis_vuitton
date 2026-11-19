package com.vuitton.android.presentation.screen.filter.quickaccess;

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
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2", f = "QuickAccessFiltersViewModelImpl.kt", l = {152}, m = "invokeSuspend", v = 2)
final class QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewModelImpl f58039c;
    public final /* synthetic */ boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2(QuickAccessFiltersViewModelImpl quickAccessFiltersViewModelImpl, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f58039c = quickAccessFiltersViewModelImpl;
        this.d = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2(this.f58039c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object value2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58038b;
        QuickAccessFiltersViewModelImpl quickAccessFiltersViewModelImpl = this.f58039c;
        if (i2 == 0) {
            ResultKt.b(obj);
            MutableStateFlow mutableStateFlow = quickAccessFiltersViewModelImpl.f58021c;
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.valueOf(this.d)));
            this.f58038b = 1;
            if (DelayKt.b(800L, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        MutableStateFlow mutableStateFlow2 = quickAccessFiltersViewModelImpl.f58025i;
        do {
            value2 = mutableStateFlow2.getValue();
        } while (!mutableStateFlow2.i(value2, null));
        return Unit.f71739a;
    }
}
