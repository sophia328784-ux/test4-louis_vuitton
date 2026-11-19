package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.personalselections.PersonalSelectionsMonitoring;
import com.vuitton.android.domain.usecase.personalselections.LikePersonalSelectionsUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorProductState;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionPLPProductUiModel;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSelectionsInteraction;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.md;
import java.util.Iterator;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl$postInteraction$1", f = "PersonalSelectionsCurationAdvisorViewModelImpl.kt", l = {225}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsCurationAdvisorViewModelImpl$postInteraction$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PersonalSelectionsCurationAdvisorViewModelImpl f62453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f62454c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MonitorAction f62455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f62456f;
    public final /* synthetic */ PersonalSelectionsCurationAdvisorViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f62457h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsCurationAdvisorViewModelImpl$postInteraction$1(PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.g = personalSelectionsCurationAdvisorViewModelImpl;
        this.f62457h = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsCurationAdvisorViewModelImpl$postInteraction$1(this.g, this.f62457h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsCurationAdvisorViewModelImpl$postInteraction$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        String str2;
        Object obj2;
        PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl;
        MonitorAction monitorAction;
        String str3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62456f;
        Object obj3 = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl2 = this.g;
            Object value = personalSelectionsCurationAdvisorViewModelImpl2.v.getValue();
            value.getClass();
            Iterator it = ((PersonalSelectionsCurationAdvisorProductState.Success) value).f62503b.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                str = this.f62457h;
                if (!zHasNext) {
                    break;
                }
                Object next = it.next();
                String str4 = ((SelectionPLPProductUiModel) next).f62579a;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                if (str4.equals(str)) {
                    obj3 = next;
                    break;
                }
            }
            SelectionPLPProductUiModel selectionPLPProductUiModel = (SelectionPLPProductUiModel) obj3;
            if (selectionPLPProductUiModel != null) {
                str2 = selectionPLPProductUiModel.f62581c;
                PersonalSelectionsCurationAdvisorViewModelImpl.Ac(personalSelectionsCurationAdvisorViewModelImpl2, str, str2, Boolean.TRUE);
                DynatraceMonitorAction dynatraceMonitorActionA = personalSelectionsCurationAdvisorViewModelImpl2.f62429c.a(personalSelectionsCurationAdvisorViewModelImpl2.o, PersonalSelectionsMonitoring.Action.PersonalSelectionLike.f48984a);
                dynatraceMonitorActionA.c(str, "sku");
                dynatraceMonitorActionA.c(str2, "interactionToken");
                LikePersonalSelectionsUseCase likePersonalSelectionsUseCase = personalSelectionsCurationAdvisorViewModelImpl2.l;
                SkuIdUiModel.f61763c.getClass();
                SkuId.Companion companion2 = SkuId.INSTANCE;
                this.f62453b = personalSelectionsCurationAdvisorViewModelImpl2;
                this.f62454c = str;
                this.d = str2;
                this.f62455e = dynatraceMonitorActionA;
                this.f62456f = 1;
                Object objA = likePersonalSelectionsUseCase.a(str2, str, this);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj2 = objA;
                personalSelectionsCurationAdvisorViewModelImpl = personalSelectionsCurationAdvisorViewModelImpl2;
                monitorAction = dynatraceMonitorActionA;
                str3 = str;
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        monitorAction = this.f62455e;
        str2 = this.d;
        str3 = this.f62454c;
        personalSelectionsCurationAdvisorViewModelImpl = this.f62453b;
        ResultKt.b(obj);
        obj2 = ((Result) obj).f71708b;
        Result.Companion companion3 = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            PersonalSelectionsCurationAdvisorViewModelImpl.Ac(personalSelectionsCurationAdvisorViewModelImpl, str3, ((PersonalSelectionsInteraction) obj2).f67799a, Boolean.TRUE);
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            PersonalSelectionsCurationAdvisorViewModelImpl.Ac(personalSelectionsCurationAdvisorViewModelImpl, str3, str2, Boolean.FALSE);
            monitorAction.d(new PersonalSelectionsMonitoring.Error.PersonalSelectionLikeError(thA));
            PersonalSelectionsCurationAdvisorViewModelImpl.zc(personalSelectionsCurationAdvisorViewModelImpl);
            personalSelectionsCurationAdvisorViewModelImpl.f62428b.c("PersonalSelectionsDetailViewModelImpl", "Unable to post interaction", thA);
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
