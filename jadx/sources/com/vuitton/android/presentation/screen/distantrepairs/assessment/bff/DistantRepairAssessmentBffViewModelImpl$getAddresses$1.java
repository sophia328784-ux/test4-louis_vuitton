package com.vuitton.android.presentation.screen.distantrepairs.assessment.bff;

import com.vuitton.android.domain.usecase.account.address.GetAddressListUseCase;
import com.vuitton.android.presentation.screen.account.profile.MapperKt;
import com.vuitton.foundation.model.domain.model.account.address.AddressId;
import com.vuitton.foundation.model.domain.model.profile.Address;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$getAddresses$1", f = "DistantRepairAssessmentBffViewModelImpl.kt", l = {361}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentBffViewModelImpl$getAddresses$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentBffViewModelImpl f56986c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentBffViewModelImpl$getAddresses$1(Continuation continuation, DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl) {
        super(2, continuation);
        this.f56986c = distantRepairAssessmentBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentBffViewModelImpl$getAddresses$1(continuation, this.f56986c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentBffViewModelImpl$getAddresses$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r8v24 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        ?? failure;
        DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl = this.f56986c;
        MutableStateFlow mutableStateFlow = distantRepairAssessmentBffViewModelImpl.u;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56985b;
        Object obj2 = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            GetAddressListUseCase getAddressListUseCase = distantRepairAssessmentBffViewModelImpl.m;
            this.f56985b = 1;
            objA = getAddressListUseCase.a(this);
            if (objA == coroutineSingletons) {
                failure = objA;
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        failure = objA;
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                List list = (List) failure;
                List list2 = list;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (it.hasNext() && !((Address) it.next()).f68152b) {
                    }
                }
                int i3 = DistantRepairAssessmentBffViewModelImpl.S;
                for (Object obj3 : list) {
                    if (((Address) obj3).f68152b) {
                        obj2 = obj3;
                        break;
                    }
                }
                Address address = (Address) obj2;
                if (address != null) {
                    distantRepairAssessmentBffViewModelImpl.R = address.f68151a;
                }
                List list3 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                Iterator it2 = list3.iterator();
                while (it2.hasNext()) {
                    arrayList.add(MapperKt.c((Address) it2.next()));
                }
                distantRepairAssessmentBffViewModelImpl.P = arrayList;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj4 : list) {
                    String str = ((Address) obj4).s;
                    Locale locale = Locale.getDefault();
                    locale.getClass();
                    String upperCase = str.toUpperCase(locale);
                    upperCase.getClass();
                    if (upperCase.equals(distantRepairAssessmentBffViewModelImpl.q.f67483j)) {
                        arrayList2.add(obj4);
                    }
                }
                HashSet hashSet = new HashSet();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj5 : arrayList2) {
                    if (hashSet.add(new AddressId(((Address) obj5).f68151a))) {
                        arrayList3.add(obj5);
                    }
                }
                failure = new ArrayList(CollectionsKt.t(arrayList3, 10));
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    failure.add(MapperKt.c((Address) it3.next()));
                }
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        if (!(failure instanceof Result.Failure)) {
            List list4 = (List) failure;
            MutableStateFlow mutableStateFlow2 = distantRepairAssessmentBffViewModelImpl.y;
            MutableStateFlow mutableStateFlow3 = distantRepairAssessmentBffViewModelImpl.A;
            MutableStateFlow mutableStateFlow4 = distantRepairAssessmentBffViewModelImpl.z;
            mutableStateFlow2.setValue(list4);
            if (mutableStateFlow4.getValue() == null) {
                mutableStateFlow4.setValue(CollectionsKt.firstOrNull(list4));
            }
            if (mutableStateFlow3.getValue() == null) {
                mutableStateFlow3.setValue(CollectionsKt.firstOrNull(list4));
            }
            mutableStateFlow.setValue(Boolean.FALSE);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            distantRepairAssessmentBffViewModelImpl.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to retrieve profile", thA);
            mutableStateFlow.setValue(Boolean.FALSE);
        }
        return Unit.f71739a;
    }
}
