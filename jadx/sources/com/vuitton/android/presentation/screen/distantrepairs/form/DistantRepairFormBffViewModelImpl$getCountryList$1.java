package com.vuitton.android.presentation.screen.distantrepairs.form;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.account.GetLocaleCountryListUseCase;
import com.vuitton.android.presentation.screen.distantrepairs.models.CountryUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step2StateUIModel;
import com.vuitton.foundation.model.domain.model.profile.Country;
import defpackage.md;
import java.util.ArrayList;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$getCountryList$1", f = "DistantRepairFormBffViewModelImpl.kt", l = {294}, m = "invokeSuspend", v = 2)
final class DistantRepairFormBffViewModelImpl$getCountryList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormBffViewModelImpl f57112c;
    public final /* synthetic */ MonitorAction d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormBffViewModelImpl$getCountryList$1(DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f57112c = distantRepairFormBffViewModelImpl;
        this.d = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairFormBffViewModelImpl$getCountryList$1(this.f57112c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairFormBffViewModelImpl$getCountryList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object value;
        Step2StateUIModel step2StateUIModel;
        ArrayList arrayList;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57111b;
        DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl = this.f57112c;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetLocaleCountryListUseCase getLocaleCountryListUseCase = distantRepairFormBffViewModelImpl.r;
            this.f57111b = 1;
            objA = getLocaleCountryListUseCase.a(this);
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
            MutableStateFlow mutableStateFlow = distantRepairFormBffViewModelImpl.x;
            do {
                value = mutableStateFlow.getValue();
                step2StateUIModel = (Step2StateUIModel) value;
                List<Country> list2 = list;
                arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                for (Country country : list2) {
                    country.getClass();
                    arrayList.add(new CountryUiModel(country.f68160a, country.f68161b, country.f68162c));
                }
            } while (!mutableStateFlow.i(value, Step2StateUIModel.a(step2StateUIModel, null, null, null, null, arrayList, 111)));
            BuildersKt.c(ViewModelKt.a(distantRepairFormBffViewModelImpl), null, null, new DistantRepairFormBffViewModelImpl$retrieveProfile$1(null, distantRepairFormBffViewModelImpl), 3);
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            this.d.d(new CareServicesMonitoring.Error.OpenInitiateRepairFormError(thA));
            distantRepairFormBffViewModelImpl.f57098b.c("DistantRepairFormBffViewModelImpl", "Unable to retrieve country list", thA);
        }
        return Unit.f71739a;
    }
}
