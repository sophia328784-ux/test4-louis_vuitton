package com.vuitton.android.presentation.screen.personalselections.list;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.personalselections.PersonalSelectionsMonitoring;
import com.vuitton.android.domain.usecase.personalselections.GetPersonalSelectionsListUseCase;
import com.vuitton.android.presentation.screen.personalselections.list.mappers.PersonalSelectionsUiModelMapperKt;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListViewState;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSelections;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSharing;
import defpackage.md;
import java.util.ArrayList;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1", f = "PersonalSelectionsListViewModelImpl.kt", l = {EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f62598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f62599c;
    public final /* synthetic */ PersonalSelectionsListViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1(PersonalSelectionsListViewModelImpl personalSelectionsListViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = personalSelectionsListViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        MonitorAction monitorAction;
        PersonalSelectionsListViewModelImpl personalSelectionsListViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = personalSelectionsListViewModelImpl.f62596h;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62599c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = personalSelectionsListViewModelImpl.f62593c.a(personalSelectionsListViewModelImpl.g, PersonalSelectionsMonitoring.Action.OpenMyPersonalSections.f48983a);
            GetPersonalSelectionsListUseCase getPersonalSelectionsListUseCase = personalSelectionsListViewModelImpl.d;
            this.f62598b = dynatraceMonitorActionA;
            this.f62599c = 1;
            Object objA = getPersonalSelectionsListUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj2 = objA;
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f62598b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            PersonalSelections personalSelections = (PersonalSelections) obj2;
            Locale locale = personalSelectionsListViewModelImpl.f62594e.f49912a.b().m;
            personalSelections.getClass();
            locale.getClass();
            List list = personalSelections.f67789a;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(PersonalSelectionsUiModelMapperKt.a((PersonalSharing) it.next(), locale));
            }
            List list2 = personalSelections.f67790b;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(PersonalSelectionsUiModelMapperKt.a((PersonalSharing) it2.next(), locale));
            }
            mutableStateFlow.setValue(new PersonalSelectionsListViewState.Success(new PersonalSelectionsListUiModel(arrayList, arrayList2)));
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            personalSelectionsListViewModelImpl.f62591a.c("PersonalSelectionsListViewModelImpl", "Unable to get personal selections list", thA);
            monitorAction.d(new PersonalSelectionsMonitoring.Error.MyPersonalSectionsError(thA));
            mutableStateFlow.setValue(PersonalSelectionsListViewState.Error.f62645a);
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
