package com.vuitton.android.presentation.screen.authentication.register.components;

import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.register.Step;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$1$1 extends FunctionReferenceImpl implements Function3<Step, FormSectionTypeUiModel, Object, Unit> {
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Step step = (Step) obj;
        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj2;
        step.getClass();
        formSectionTypeUiModel.getClass();
        obj3.getClass();
        ((NativeRegisterViewModel) this.receiver).Fa(step, formSectionTypeUiModel, obj3);
        return Unit.f71739a;
    }
}
