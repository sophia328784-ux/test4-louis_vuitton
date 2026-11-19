package com.vuitton.android.presentation.screen.osa.form.contactinformation.components;

import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.models.FormTypeUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OsaContactFormComposableKt$OsaContactFormComposable$5$1 extends FunctionReferenceImpl implements Function3<FormTypeUiModel, FormSectionTypeUiModel, Object, Unit> {
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        FormTypeUiModel formTypeUiModel = (FormTypeUiModel) obj;
        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj2;
        formTypeUiModel.getClass();
        formSectionTypeUiModel.getClass();
        obj3.getClass();
        ((OsaContactFormViewModel) this.receiver).W5(formTypeUiModel, formSectionTypeUiModel, obj3);
        return Unit.f71739a;
    }
}
