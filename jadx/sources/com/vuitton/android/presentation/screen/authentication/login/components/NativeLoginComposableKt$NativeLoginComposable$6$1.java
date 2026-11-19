package com.vuitton.android.presentation.screen.authentication.login.components;

import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class NativeLoginComposableKt$NativeLoginComposable$6$1 extends FunctionReferenceImpl implements Function2<FormSectionTypeUiModel, Object, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
        formSectionTypeUiModel.getClass();
        obj2.getClass();
        ((NativeLoginViewModel) this.receiver).f(formSectionTypeUiModel, obj2);
        return Unit.f71739a;
    }
}
