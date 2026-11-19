package com.vuitton.android.presentation.screen.account.addresseditor;

import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class AddressEditorViewModelImpl$updateFieldsWithAutocompleteAddressResult$1$3 extends FunctionReferenceImpl implements Function2<FormSectionTypeUiModel, String, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
        String str = (String) obj2;
        formSectionTypeUiModel.getClass();
        str.getClass();
        AddressEditorViewModelImpl.yc((AddressEditorViewModelImpl) this.receiver, formSectionTypeUiModel, str);
        return Unit.f71739a;
    }
}
