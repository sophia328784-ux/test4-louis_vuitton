package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import com.vuitton.android.domain.usecase.account.address.GetAddressListUseCase;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$getAddresses$1", f = "DistantRepairAssessmentViewModelImpl.kt", l = {381}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentViewModelImpl$getAddresses$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModelImpl f56918c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentViewModelImpl$getAddresses$1(DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f56918c = distantRepairAssessmentViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentViewModelImpl$getAddresses$1(this.f56918c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentViewModelImpl$getAddresses$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r10v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r2v22 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        ?? failure;
        Object next;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl = this.f56918c;
        MutableStateFlow mutableStateFlow = distantRepairAssessmentViewModelImpl.s;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56917b;
        Object obj2 = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            GetAddressListUseCase getAddressListUseCase = distantRepairAssessmentViewModelImpl.f56891k;
            this.f56917b = 1;
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
                int i3 = DistantRepairAssessmentViewModelImpl.R;
                Iterator it2 = list.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!((Address) next).f68152b);
                Address address = (Address) next;
                if (address != null) {
                    distantRepairAssessmentViewModelImpl.Q = address.f68151a;
                }
                List list3 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                Iterator it3 = list3.iterator();
                while (it3.hasNext()) {
                    arrayList.add(MapperKt.c((Address) it3.next()));
                }
                distantRepairAssessmentViewModelImpl.O = arrayList;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj3 : list) {
                    String str = ((Address) obj3).s;
                    Locale locale = Locale.getDefault();
                    locale.getClass();
                    String upperCase = str.toUpperCase(locale);
                    upperCase.getClass();
                    if (upperCase.equals(distantRepairAssessmentViewModelImpl.o.f67483j)) {
                        arrayList2.add(obj3);
                    }
                }
                HashSet hashSet = new HashSet();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj4 : arrayList2) {
                    if (hashSet.add(new AddressId(((Address) obj4).f68151a))) {
                        arrayList3.add(obj4);
                    }
                }
                failure = new ArrayList(CollectionsKt.t(arrayList3, 10));
                Iterator it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    failure.add(MapperKt.c((Address) it4.next()));
                }
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        if (!(failure instanceof Result.Failure)) {
            List list4 = (List) failure;
            MutableStateFlow mutableStateFlow2 = distantRepairAssessmentViewModelImpl.x;
            MutableStateFlow mutableStateFlow3 = distantRepairAssessmentViewModelImpl.z;
            MutableStateFlow mutableStateFlow4 = distantRepairAssessmentViewModelImpl.y;
            mutableStateFlow2.setValue(list4);
            String str2 = this.d;
            if (str2 != null && str2.length() != 0) {
                for (Object obj5 : list4) {
                    if (Intrinsics.c(((AddressUiModel) obj5).f52673b, str2)) {
                        obj2 = obj5;
                        break;
                    }
                }
                obj2 = (AddressUiModel) obj2;
            }
            if (obj2 != null) {
                mutableStateFlow4.setValue(obj2);
                mutableStateFlow3.setValue(obj2);
            } else if (mutableStateFlow4.getValue() == null) {
                mutableStateFlow4.setValue(CollectionsKt.firstOrNull(list4));
                mutableStateFlow3.setValue(CollectionsKt.firstOrNull(list4));
            }
            mutableStateFlow.setValue(Boolean.FALSE);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            distantRepairAssessmentViewModelImpl.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to retrieve profile", thA);
            mutableStateFlow.setValue(Boolean.FALSE);
        }
        return Unit.f71739a;
    }
}
