package com.vuitton.android.presentation.screen.osa.form.storeselection;

import com.vuitton.android.domain.usecase.osa.GetStoreListByCodesUseCase;
import com.vuitton.android.presentation.model.storelocator.StoreMapperKt;
import com.vuitton.foundation.model.domain.model.storelocator.Store;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$initVirtualStudioPrefillIfNeeded$1$1", f = "OsaLocationFormViewModelImpl.kt", l = {845}, m = "invokeSuspend", v = 2)
final class OsaLocationFormViewModelImpl$initVirtualStudioPrefillIfNeeded$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModelImpl f60781c;
    public final /* synthetic */ List d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaLocationFormViewModelImpl$initVirtualStudioPrefillIfNeeded$1$1(OsaLocationFormViewModelImpl osaLocationFormViewModelImpl, List list, Continuation continuation) {
        super(2, continuation);
        this.f60781c = osaLocationFormViewModelImpl;
        this.d = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaLocationFormViewModelImpl$initVirtualStudioPrefillIfNeeded$1$1(this.f60781c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaLocationFormViewModelImpl$initVirtualStudioPrefillIfNeeded$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        OsaLocationFormViewModelImpl osaLocationFormViewModelImpl = this.f60781c;
        MutableStateFlow mutableStateFlow = osaLocationFormViewModelImpl.z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60780b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetStoreListByCodesUseCase getStoreListByCodesUseCase = osaLocationFormViewModelImpl.l;
            this.f60780b = 1;
            objA = getStoreListByCodesUseCase.a(this.d, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            List list = (List) objA;
            if (list.isEmpty()) {
                mutableStateFlow.setValue(Boolean.TRUE);
            } else {
                MutableStateFlow mutableStateFlow2 = osaLocationFormViewModelImpl.C;
                List list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(StoreMapperKt.a((Store) it.next(), false));
                }
                mutableStateFlow2.setValue(arrayList);
                osaLocationFormViewModelImpl.zc(null);
            }
        }
        if (Result.a(objA) != null) {
            mutableStateFlow.setValue(Boolean.TRUE);
        }
        return Unit.f71739a;
    }
}
