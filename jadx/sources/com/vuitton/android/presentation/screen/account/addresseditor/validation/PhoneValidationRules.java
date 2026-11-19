package com.vuitton.android.presentation.screen.account.addresseditor.validation;

import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.customvalidation.FieldValidationRule;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import defpackage.bo0;
import defpackage.x00;
import defpackage.y00;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PhoneValidationRules {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52274a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER_TYPE1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER_TYPE2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER_TYPE3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f52274a = iArr;
        }
    }

    @Inject
    public PhoneValidationRules() {
    }

    public final FieldValidationRule a(Function0 function0, FormSectionTypeUiModel formSectionTypeUiModel, FieldErrorUiModel fieldErrorUiModel) {
        formSectionTypeUiModel.getClass();
        int i2 = WhenMappings.f52274a[formSectionTypeUiModel.ordinal()];
        if (i2 == 1) {
            if (fieldErrorUiModel != null) {
                return new FieldValidationRule(new x00(fieldErrorUiModel, 1), new y00(fieldErrorUiModel, 1), new y00(fieldErrorUiModel, 2));
            }
            return null;
        }
        if (i2 == 2 || i2 == 3 || i2 == 4) {
            return new FieldValidationRule(new bo0(function0, this), null, null, 6, null);
        }
        return null;
    }
}
