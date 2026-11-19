package com.vuitton.android.presentation.screen.connectivity.home;

import com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.ConnectedObject;
import defpackage.md;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$refreshDeviceListAfterPairingADevice$1", f = "ConnectivityViewModel.kt", l = {85}, m = "invokeSuspend", v = 2)
final class ConnectivityViewModel$refreshDeviceListAfterPairingADevice$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConnectivityViewModel f56095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f56096c;
    public final /* synthetic */ ConnectivityViewModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivityViewModel$refreshDeviceListAfterPairingADevice$1(ConnectivityViewModel connectivityViewModel, Continuation continuation) {
        super(2, continuation);
        this.d = connectivityViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConnectivityViewModel$refreshDeviceListAfterPairingADevice$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivityViewModel$refreshDeviceListAfterPairingADevice$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ConnectivityViewModel connectivityViewModel;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56096c;
        if (i2 == 0) {
            ResultKt.b(obj);
            ConnectivityViewModel connectivityViewModel2 = this.d;
            GetConnectedObjectListUseCase getConnectedObjectListUseCase = connectivityViewModel2.f56075f;
            GetConnectedObjectListUseCase.Params params = new GetConnectedObjectListUseCase.Params(true, true);
            this.f56095b = connectivityViewModel2;
            this.f56096c = 1;
            Serializable serializableA = getConnectedObjectListUseCase.a(params, this);
            if (serializableA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = serializableA;
            connectivityViewModel = connectivityViewModel2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            connectivityViewModel = this.f56095b;
            ResultKt.b(obj);
        }
        Iterable iterable = (Iterable) obj;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(ConnectivityViewModelKt.a((ConnectedObject) it.next()));
        }
        ConnectivityViewModel.Cc(connectivityViewModel, arrayList);
        return Unit.f71739a;
    }
}
