package com.vuitton.android.presentation.screen.options.dispatch;

import com.vuitton.android.domain.usecase.dispatch.GetDispatchAreaListUseCase;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.DispatchArea;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl$getDispatchCountryList$1", f = "DispatchCountryViewModelImpl.kt", l = {95, 97}, m = "invokeSuspend", v = 2)
final class DispatchCountryViewModelImpl$getDispatchCountryList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f59796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DispatchCountryViewModelImpl f59797c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DispatchCountryViewModelImpl f59798e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchCountryViewModelImpl$getDispatchCountryList$1(DispatchCountryViewModelImpl dispatchCountryViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f59798e = dispatchCountryViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DispatchCountryViewModelImpl$getDispatchCountryList$1(this.f59798e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DispatchCountryViewModelImpl$getDispatchCountryList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0061  */
    /* JADX WARN: Code duplicated, block: B:25:0x0084  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c6 A[EDGE_INSN: B:39:0x00c6->B:36:0x00c6 BREAK  A[LOOP:0: B:23:0x007d->B:35:0x00bb], SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object obj2;
        DispatchCountryViewModelImpl dispatchCountryViewModelImpl;
        ArrayList arrayList;
        Iterator it;
        boolean z;
        DispatchCountryViewModelImpl dispatchCountryViewModelImpl2 = this.f59798e;
        MutableStateFlow mutableStateFlow = dispatchCountryViewModelImpl2.f59795k;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            GetDispatchAreaListUseCase getDispatchAreaListUseCase = dispatchCountryViewModelImpl2.f59789c;
            this.d = 1;
            objA = getDispatchAreaListUseCase.a(this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            dispatchCountryViewModelImpl = this.f59797c;
            obj2 = this.f59796b;
            ResultKt.b(obj);
        }
        dispatchCountryViewModelImpl.f59795k.setValue(Boolean.FALSE);
        objA = obj2;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            MutableStateFlow mutableStateFlow2 = dispatchCountryViewModelImpl2.l;
            mutableStateFlow.setValue(Boolean.FALSE);
            MutableStateFlow mutableStateFlow3 = dispatchCountryViewModelImpl2.m;
            List list = (List) objA;
            arrayList = new ArrayList(CollectionsKt.t(list, 10));
            it = list.iterator();
            while (true) {
                z = false;
                if (it.hasNext()) {
                    break;
                }
                DispatchArea dispatchArea = (DispatchArea) it.next();
                if (dispatchCountryViewModelImpl2.o && CollectionsKt.u(dispatchArea.d, mutableStateFlow2.getValue())) {
                    Logger logger = dispatchCountryViewModelImpl2.f59787a;
                    DispatchCountryViewModelImpl.q.getClass();
                    logger.getClass();
                }
                if (!dispatchCountryViewModelImpl2.o && CollectionsKt.u(dispatchArea.d, mutableStateFlow2.getValue())) {
                    z = true;
                }
                arrayList.add(new Pair(dispatchArea, Boolean.valueOf(z)));
            }
            mutableStateFlow3.setValue(arrayList);
            dispatchCountryViewModelImpl2.o = false;
        }
        return Unit.f71739a;
        if (Result.a(objA) != null) {
            BufferedChannel bufferedChannel = dispatchCountryViewModelImpl2.f59793i;
            Boolean bool = Boolean.TRUE;
            this.f59796b = objA;
            this.f59797c = dispatchCountryViewModelImpl2;
            this.d = 2;
            if (bufferedChannel.u(bool, this) != coroutineSingletons) {
                obj2 = objA;
                dispatchCountryViewModelImpl = dispatchCountryViewModelImpl2;
                dispatchCountryViewModelImpl.f59795k.setValue(Boolean.FALSE);
                objA = obj2;
            }
            return coroutineSingletons;
        }
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            MutableStateFlow mutableStateFlow4 = dispatchCountryViewModelImpl2.l;
            mutableStateFlow.setValue(Boolean.FALSE);
            MutableStateFlow mutableStateFlow5 = dispatchCountryViewModelImpl2.m;
            List list2 = (List) objA;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            it = list2.iterator();
            while (true) {
                z = false;
                if (it.hasNext()) {
                    break;
                    break;
                }
                DispatchArea dispatchArea2 = (DispatchArea) it.next();
                if (dispatchCountryViewModelImpl2.o) {
                    Logger logger2 = dispatchCountryViewModelImpl2.f59787a;
                    DispatchCountryViewModelImpl.q.getClass();
                    logger2.getClass();
                }
                if (!dispatchCountryViewModelImpl2.o) {
                }
                arrayList.add(new Pair(dispatchArea2, Boolean.valueOf(z)));
            }
            mutableStateFlow5.setValue(arrayList);
            dispatchCountryViewModelImpl2.o = false;
        }
        return Unit.f71739a;
    }
}
