package com.vuitton.android.presentation.screen.distantrepairs.form;

import com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step2StateUIModel;
import com.vuitton.android.presentation.screen.dynamicform.mapper.FormUiModelMapperKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.forms.Form;
import defpackage.md;
import java.util.Iterator;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1", f = "DistantRepairFormViewModelImpl.kt", l = {205}, m = "invokeSuspend", v = 2)
final class DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormViewModelImpl f57185c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1(Continuation continuation, DistantRepairFormViewModelImpl distantRepairFormViewModelImpl) {
        super(2, continuation);
        this.f57185c = distantRepairFormViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1(continuation, this.f57185c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object value;
        List list;
        Object next;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57184b;
        DistantRepairFormViewModelImpl distantRepairFormViewModelImpl = this.f57185c;
        String str = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetMainAddressFormUseCase getMainAddressFormUseCase = distantRepairFormViewModelImpl.p;
            InAppDispatch inAppDispatch = distantRepairFormViewModelImpl.s;
            this.f57184b = 1;
            objA = getMainAddressFormUseCase.a(inAppDispatch, null, this);
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
            Object objF = FormUiModelMapperKt.f((Form) objA);
            if (objF instanceof Result.Failure) {
                objF = null;
            }
            FormUiModel formUiModel = (FormUiModel) objF;
            if (formUiModel != null && (list = formUiModel.f57486a) != null) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) next;
                    if ((formFieldGenericUiModel instanceof FormFieldUiModel) && ((FormFieldUiModel) formFieldGenericUiModel).d == FormSectionTypeUiModel.POSTAL_CODE) {
                        break;
                    }
                }
                FormFieldGenericUiModel formFieldGenericUiModel2 = (FormFieldGenericUiModel) next;
                if (formFieldGenericUiModel2 != null) {
                    FormFieldTypeUiModel formFieldTypeUiModel = ((FormFieldUiModel) formFieldGenericUiModel2).f57496e;
                    formFieldTypeUiModel.getClass();
                    str = ((FormFieldFreeformUiModel) formFieldTypeUiModel).f57514a;
                }
            }
            String str2 = str;
            MutableStateFlow mutableStateFlow = distantRepairFormViewModelImpl.w;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, Step2StateUIModel.a((Step2StateUIModel) value, null, null, null, str2, null, 119)));
        }
        return Unit.f71739a;
    }
}
