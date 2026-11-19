package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor;

import com.vuitton.android.domain.usecase.personalselections.UnlikePersonalSelectionsUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorProductState;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionPLPProductUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl$deleteInteraction$1", f = "PersonalSelectionsCurationAdvisorViewModelImpl.kt", l = {246}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsCurationAdvisorViewModelImpl$deleteInteraction$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PersonalSelectionsCurationAdvisorViewModelImpl f62439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f62440c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f62441e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PersonalSelectionsCurationAdvisorViewModelImpl f62442f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsCurationAdvisorViewModelImpl$deleteInteraction$1(PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f62442f = personalSelectionsCurationAdvisorViewModelImpl;
        this.g = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsCurationAdvisorViewModelImpl$deleteInteraction$1(this.f62442f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsCurationAdvisorViewModelImpl$deleteInteraction$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object obj2;
        PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl;
        String str2;
        String str3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62441e;
        Object obj3 = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl2 = this.f62442f;
            Object value = personalSelectionsCurationAdvisorViewModelImpl2.v.getValue();
            value.getClass();
            Iterator it = ((PersonalSelectionsCurationAdvisorProductState.Success) value).f62503b.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                str = this.g;
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
                String str5 = selectionPLPProductUiModel.f62581c;
                PersonalSelectionsCurationAdvisorViewModelImpl.Ac(personalSelectionsCurationAdvisorViewModelImpl2, str, str5, Boolean.FALSE);
                UnlikePersonalSelectionsUseCase unlikePersonalSelectionsUseCase = personalSelectionsCurationAdvisorViewModelImpl2.n;
                this.f62439b = personalSelectionsCurationAdvisorViewModelImpl2;
                this.f62440c = str;
                this.d = str5;
                this.f62441e = 1;
                Object objA = unlikePersonalSelectionsUseCase.a(str5, this);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj2 = objA;
                personalSelectionsCurationAdvisorViewModelImpl = personalSelectionsCurationAdvisorViewModelImpl2;
                str2 = str5;
                str3 = str;
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        str2 = this.d;
        str3 = this.f62440c;
        personalSelectionsCurationAdvisorViewModelImpl = this.f62439b;
        ResultKt.b(obj);
        obj2 = ((Result) obj).f71708b;
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            PersonalSelectionsCurationAdvisorViewModelImpl.Ac(personalSelectionsCurationAdvisorViewModelImpl, str3, str2, Boolean.TRUE);
            PersonalSelectionsCurationAdvisorViewModelImpl.zc(personalSelectionsCurationAdvisorViewModelImpl);
            personalSelectionsCurationAdvisorViewModelImpl.f62428b.c("PersonalSelectionsDetailViewModelImpl", "Unable to delete interaction", thA);
        }
        return Unit.f71739a;
    }
}
