package com.vuitton.android.presentation.screen.options.accessibility;

import com.vuitton.android.domain.usecase.account.accessibility.SaveAccessibilityPreferencesUseCase;
import defpackage.md;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl$saveValues$1", f = "AccessibilityPreferencesViewModelImpl.kt", l = {123}, m = "invokeSuspend", v = 2)
final class AccessibilityPreferencesViewModelImpl$saveValues$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccessibilityPreferencesViewModelImpl f59689c;
    public final /* synthetic */ Map d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccessibilityPreferencesViewModelImpl$saveValues$1(AccessibilityPreferencesViewModelImpl accessibilityPreferencesViewModelImpl, Map map, Continuation continuation) {
        super(2, continuation);
        this.f59689c = accessibilityPreferencesViewModelImpl;
        this.d = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccessibilityPreferencesViewModelImpl$saveValues$1(this.f59689c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccessibilityPreferencesViewModelImpl$saveValues$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59688b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AccessibilityPreferencesViewModelImpl accessibilityPreferencesViewModelImpl = this.f59689c;
            SharedFlowImpl sharedFlowImpl = accessibilityPreferencesViewModelImpl.f59686j;
            SaveAccessibilityPreferencesUseCase saveAccessibilityPreferencesUseCase = accessibilityPreferencesViewModelImpl.d;
            saveAccessibilityPreferencesUseCase.getClass();
            Object objB = saveAccessibilityPreferencesUseCase.f49066a.b(this.d);
            Result.Companion companion = Result.INSTANCE;
            Boolean boolValueOf = Boolean.valueOf(!(objB instanceof Result.Failure));
            this.f59688b = 1;
            if (sharedFlowImpl.emit(boolValueOf, this) == coroutineSingletons) {
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
