package com.vuitton.android.presentation.screen.osa.form.contactinformation.components;

import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OsaContactFormComposableKt$OsaContactFormComposable$6$1 extends FunctionReferenceImpl implements Function1<FormSectionTypeUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
        formSectionTypeUiModel.getClass();
        ((OsaContactFormViewModel) this.receiver).j1(formSectionTypeUiModel);
        return Unit.f71739a;
    }
}
