package com.vuitton.android.presentation.screen.authentication.common.validation;

import com.vuitton.android.presentation.screen.dynamicform.model.field.customvalidation.FieldValidationRule;
import defpackage.x00;
import defpackage.y00;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GenericFieldValidationRules {
    @Inject
    public GenericFieldValidationRules() {
    }

    public static FieldValidationRule a(FieldErrorUiModel fieldErrorUiModel) {
        fieldErrorUiModel.getClass();
        return new FieldValidationRule(new x00(fieldErrorUiModel, 0), new y00(fieldErrorUiModel, 0), null, 4, null);
    }
}
