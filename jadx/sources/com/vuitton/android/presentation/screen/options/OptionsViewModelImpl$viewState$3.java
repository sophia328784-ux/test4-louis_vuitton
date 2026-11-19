package com.vuitton.android.presentation.screen.options;

import com.vuitton.android.presentation.screen.options.models.OptionsViewState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;", "first", "", "", "second", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$viewState$3", f = "OptionsViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
public final class OptionsViewModelImpl$viewState$3 extends SuspendLambda implements Function3<List<? extends Object>, List<? extends Boolean>, Continuation<? super OptionsViewState>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ List f59675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ List f59676c;
    public final /* synthetic */ OptionsViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OptionsViewModelImpl$viewState$3(OptionsViewModelImpl optionsViewModelImpl, Continuation continuation) {
        super(3, continuation);
        this.d = optionsViewModelImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        OptionsViewModelImpl$viewState$3 optionsViewModelImpl$viewState$3 = new OptionsViewModelImpl$viewState$3(this.d, (Continuation) obj3);
        optionsViewModelImpl$viewState$3.f59675b = (List) obj;
        optionsViewModelImpl$viewState$3.f59676c = (List) obj2;
        return optionsViewModelImpl$viewState$3.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List list = this.f59675b;
        List list2 = this.f59676c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        InAppDispatch inAppDispatch = this.d.m;
        Object obj2 = list.get(0);
        obj2.getClass();
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        Object obj3 = list.get(1);
        obj3.getClass();
        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
        Object obj4 = list.get(2);
        String str = obj4 instanceof String ? (String) obj4 : null;
        Object obj5 = list.get(3);
        obj5.getClass();
        boolean zBooleanValue3 = ((Boolean) obj5).booleanValue();
        Object obj6 = list.get(4);
        obj6.getClass();
        boolean zBooleanValue4 = ((Boolean) obj6).booleanValue();
        Object obj7 = list2.get(0);
        obj7.getClass();
        boolean zBooleanValue5 = ((Boolean) obj7).booleanValue();
        Object obj8 = list2.get(1);
        obj8.getClass();
        boolean zBooleanValue6 = ((Boolean) obj8).booleanValue();
        Object obj9 = list2.get(2);
        obj9.getClass();
        boolean zBooleanValue7 = ((Boolean) obj9).booleanValue();
        Object obj10 = list2.get(3);
        obj10.getClass();
        boolean zBooleanValue8 = ((Boolean) obj10).booleanValue();
        Object obj11 = list2.get(4);
        obj11.getClass();
        return new OptionsViewState(inAppDispatch, zBooleanValue, zBooleanValue2, str, zBooleanValue3, zBooleanValue4, zBooleanValue5, zBooleanValue6, zBooleanValue7, zBooleanValue8, ((Boolean) obj11).booleanValue());
    }
}
