package com.vuitton.android.presentation.screen.options;

import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function6;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "", "isLoading", "", "isUserConnected", "consumerRightsUrl", "", "isConcernedByPrivacy", "isConsumerRightsAvailable"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$viewState$1", f = "OptionsViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
public final class OptionsViewModelImpl$viewState$1 extends SuspendLambda implements Function6<Boolean, Boolean, String, Boolean, Boolean, Continuation<? super List<? extends Object>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ boolean f59671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ boolean f59672c;
    public /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ boolean f59673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ boolean f59674f;

    public OptionsViewModelImpl$viewState$1(Continuation continuation) {
        super(6, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z = this.f59671b;
        boolean z2 = this.f59672c;
        String str = this.d;
        boolean z3 = this.f59673e;
        boolean z4 = this.f59674f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        return CollectionsKt.P(Boolean.valueOf(z), Boolean.valueOf(z2), str, Boolean.valueOf(z3), Boolean.valueOf(z4));
    }

    @Override // kotlin.jvm.functions.Function6
    public final Object l(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        boolean zBooleanValue2 = ((Boolean) obj2).booleanValue();
        boolean zBooleanValue3 = ((Boolean) obj4).booleanValue();
        boolean zBooleanValue4 = ((Boolean) obj5).booleanValue();
        OptionsViewModelImpl$viewState$1 optionsViewModelImpl$viewState$1 = new OptionsViewModelImpl$viewState$1((Continuation) obj6);
        optionsViewModelImpl$viewState$1.f59671b = zBooleanValue;
        optionsViewModelImpl$viewState$1.f59672c = zBooleanValue2;
        optionsViewModelImpl$viewState$1.d = (String) obj3;
        optionsViewModelImpl$viewState$1.f59673e = zBooleanValue3;
        optionsViewModelImpl$viewState$1.f59674f = zBooleanValue4;
        return optionsViewModelImpl$viewState$1.invokeSuspend(Unit.f71739a);
    }
}
