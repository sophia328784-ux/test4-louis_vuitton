package com.vuitton.android.presentation.screen.personalselections.detail.instore;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.personalselections.PersonalSelectionsMonitoring;
import com.vuitton.android.domain.usecase.personalselections.GetPersonalSelectionsDetailUseCase;
import com.vuitton.android.presentation.common.editorial.mapper.EditorialModuleUiModelMapperKt;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionStoreUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.mappers.PersonalSelectionsDetailUiModelMapperKt;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSelectionsDetail;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionStore;
import defpackage.md;
import java.time.format.FormatStyle;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl$loadDetail$1", f = "PersonalSelectionsInStoreViewModelImpl.kt", l = {226, 229}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsInStoreViewModelImpl$loadDetail$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f62530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f62531c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PersonalSelectionsInStoreViewModelImpl f62532e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsInStoreViewModelImpl$loadDetail$1(PersonalSelectionsInStoreViewModelImpl personalSelectionsInStoreViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f62532e = personalSelectionsInStoreViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsInStoreViewModelImpl$loadDetail$1(this.f62532e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsInStoreViewModelImpl$loadDetail$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00db  */
    /* JADX WARN: Instruction removed from duplicated block: B:34:0x00db, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object objA;
        MonitorAction monitorAction;
        Object obj2;
        Object obj3;
        MonitorAction monitorAction2;
        Throwable thA;
        PersonalSelectionsInStoreViewModelImpl personalSelectionsInStoreViewModelImpl = this.f62532e;
        InAppDispatch inAppDispatch = personalSelectionsInStoreViewModelImpl.n;
        String str = personalSelectionsInStoreViewModelImpl.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            monitorActionA = personalSelectionsInStoreViewModelImpl.f62514e.a(inAppDispatch, PersonalSelectionsMonitoring.Action.OpenDiscoverInStoreSelection.f48982a);
            monitorActionA.c(str, "personalSelectionsId");
            GetPersonalSelectionsDetailUseCase getPersonalSelectionsDetailUseCase = personalSelectionsInStoreViewModelImpl.f62516h;
            this.f62530b = monitorActionA;
            this.d = 1;
            objA = getPersonalSelectionsDetailUseCase.a(str, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            monitorActionA = this.f62530b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj3 = this.f62531c;
            monitorAction2 = this.f62530b;
            ResultKt.b(obj);
        }
        obj2 = obj3;
        monitorAction = monitorAction2;
        thA = Result.a(obj2);
        if (thA != null) {
            personalSelectionsInStoreViewModelImpl.f62511a.c("PersonalSelectionsInStoreViewModelImpl", "Unable to retrieve personal selections detail for selectionId=" + str, thA);
            monitorAction.d(new PersonalSelectionsMonitoring.Error.DiscoverInStoreSelectionError(thA));
            personalSelectionsInStoreViewModelImpl.q.setValue(PersonalSelectionsInStoreViewState.Error.f62555a);
        }
        monitorAction.b();
        return Unit.f71739a;
        monitorAction = monitorActionA;
        obj2 = objA;
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            PersonalSelectionsDetail personalSelectionsDetail = (PersonalSelectionsDetail) obj2;
            personalSelectionsInStoreViewModelImpl.p = personalSelectionsDetail.f67795f;
            SelectionTypeUiModel selectionTypeUiModelB = PersonalSelectionsDetailUiModelMapperKt.b(personalSelectionsDetail.f67793c);
            String strD = DateTimeUtils.d(inAppDispatch.m, personalSelectionsDetail.d, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", FormatStyle.MEDIUM);
            if (strD == null) {
                strD = "";
            }
            String str2 = personalSelectionsDetail.f67792b;
            String str3 = str2 != null ? str2 : "";
            String str4 = strD;
            String str5 = personalSelectionsDetail.f67794e;
            String str6 = str3;
            String str7 = personalSelectionsDetail.f67795f;
            List list = personalSelectionsDetail.f67797i;
            SelectionStore selectionStore = personalSelectionsDetail.g;
            selectionStore.getClass();
            SelectionStoreUiModel selectionStoreUiModel = new SelectionStoreUiModel(selectionStore.f67814a, selectionStore.f67815b, selectionStore.f67816c);
            List list2 = personalSelectionsDetail.f67798j;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(EditorialModuleUiModelMapperKt.b((EditorialModule) it.next()));
            }
            this.f62530b = monitorAction;
            this.f62531c = obj2;
            this.d = 2;
            personalSelectionsInStoreViewModelImpl = personalSelectionsInStoreViewModelImpl;
            if (PersonalSelectionsInStoreViewModelImpl.yc(personalSelectionsInStoreViewModelImpl, selectionTypeUiModelB, str4, str6, str5, str7, list, selectionStoreUiModel, arrayList, this) != coroutineSingletons) {
                obj3 = obj2;
                monitorAction2 = monitorAction;
                obj2 = obj3;
                monitorAction = monitorAction2;
            }
            return coroutineSingletons;
        }
        thA = Result.a(obj2);
        if (thA != null) {
            personalSelectionsInStoreViewModelImpl.f62511a.c("PersonalSelectionsInStoreViewModelImpl", "Unable to retrieve personal selections detail for selectionId=" + str, thA);
            monitorAction.d(new PersonalSelectionsMonitoring.Error.DiscoverInStoreSelectionError(thA));
            personalSelectionsInStoreViewModelImpl.q.setValue(PersonalSelectionsInStoreViewState.Error.f62555a);
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
