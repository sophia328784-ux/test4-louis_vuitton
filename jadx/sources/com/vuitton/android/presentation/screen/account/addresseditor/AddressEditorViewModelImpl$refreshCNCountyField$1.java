package com.vuitton.android.presentation.screen.account.addresseditor;

import com.vuitton.android.domain.usecase.account.address.GetCNCountyListUseCase;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.model.domain.model.account.address.CNCountyRequestParams;
import defpackage.md;
import java.util.List;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$refreshCNCountyField$1", f = "AddressEditorViewModelImpl.kt", l = {679}, m = "invokeSuspend", v = 2)
final class AddressEditorViewModelImpl$refreshCNCountyField$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressEditorViewModelImpl f52248c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressEditorViewModelImpl$refreshCNCountyField$1(AddressEditorViewModelImpl addressEditorViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f52248c = addressEditorViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddressEditorViewModelImpl$refreshCNCountyField$1(this.f52248c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddressEditorViewModelImpl$refreshCNCountyField$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objA;
        Object value2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52247b;
        AddressEditorViewModelImpl addressEditorViewModelImpl = this.f52248c;
        if (i2 == 0) {
            ResultKt.b(obj);
            MutableStateFlow mutableStateFlow = addressEditorViewModelImpl.z;
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            GetCNCountyListUseCase getCNCountyListUseCase = addressEditorViewModelImpl.o;
            FormUiModel formUiModel = (FormUiModel) addressEditorViewModelImpl.f52213a.getF57468c().getValue();
            FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.STATE;
            FormUiModel.Companion companion = FormUiModel.f57485b;
            CNCountyRequestParams cNCountyRequestParams = new CNCountyRequestParams(formUiModel.e(formSectionTypeUiModel, true), this.d);
            this.f52247b = 1;
            objA = getCNCountyListUseCase.a(cNCountyRequestParams, this);
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
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            addressEditorViewModelImpl.f52213a.d(FormSectionTypeUiModel.COUNTY, (List) objA);
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            defpackage.a.y("Error while getting the list of counties in China : ", thA.getMessage(), addressEditorViewModelImpl.f52214b, "AddressEditorViewModelImpl", null);
        }
        MutableStateFlow mutableStateFlow2 = addressEditorViewModelImpl.z;
        do {
            value2 = mutableStateFlow2.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
        return Unit.f71739a;
    }
}
