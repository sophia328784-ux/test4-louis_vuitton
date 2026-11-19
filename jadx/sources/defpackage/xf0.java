package defpackage;

import com.vuitton.android.presentation.screen.account.addresseditor.validation.PhoneValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.EmailValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import com.vuitton.android.presentation.screen.authentication.common.validation.FormPasswordValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.GenericFieldValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterBirthInfoUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterCredentialsUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterPersonalInfoUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterRegistrationAddressUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.customvalidation.FieldValidationRule;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xf0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewModelImpl f81122c;

    public /* synthetic */ xf0(NativeRegisterViewModelImpl nativeRegisterViewModelImpl, int i2) {
        this.f81121b = i2;
        this.f81122c = nativeRegisterViewModelImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81121b;
        final int i3 = 1;
        final NativeRegisterViewModelImpl nativeRegisterViewModelImpl = this.f81122c;
        switch (i2) {
            case 0:
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel.getClass();
                if (NativeRegisterViewModelImpl.WhenMappings.f53723b[formSectionTypeUiModel.ordinal()] == 1) {
                    EmailValidationRules emailValidationRules = nativeRegisterViewModelImpl.g;
                    emailValidationRules.getClass();
                    return new FieldValidationRule(new ck(emailValidationRules, 19), new ss(emailValidationRules, 8), null, 4, null);
                }
                FormPasswordValidationRules formPasswordValidationRules = nativeRegisterViewModelImpl.f53716i;
                PasswordUiModel passwordUiModel = ((NativeRegisterCredentialsUiModel) nativeRegisterViewModelImpl.E.getValue()).f53952b;
                final int i4 = 0;
                Function0 function0 = new Function0() { // from class: yf0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i5 = i4;
                        NativeRegisterViewModelImpl nativeRegisterViewModelImpl2 = nativeRegisterViewModelImpl;
                        switch (i5) {
                            case 0:
                                return (FormUiModel) nativeRegisterViewModelImpl2.m.getF57468c().getValue();
                            case 1:
                                return (FormUiModel) nativeRegisterViewModelImpl2.l.getF57468c().getValue();
                            default:
                                return (FormUiModel) nativeRegisterViewModelImpl2.l.getF57468c().getValue();
                        }
                    }
                };
                formPasswordValidationRules.getClass();
                return FormPasswordValidationRules.a(function0, passwordUiModel, formSectionTypeUiModel);
            case 1:
                MutableStateFlow mutableStateFlow = nativeRegisterViewModelImpl.I;
                GenericFieldValidationRules genericFieldValidationRules = nativeRegisterViewModelImpl.f53717j;
                FormSectionTypeUiModel formSectionTypeUiModel2 = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel2.getClass();
                switch (NativeRegisterViewModelImpl.WhenMappings.f53723b[formSectionTypeUiModel2.ordinal()]) {
                    case 13:
                        FieldErrorUiModel fieldErrorUiModel = ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow.getValue()).f53993b;
                        genericFieldValidationRules.getClass();
                        return GenericFieldValidationRules.a(fieldErrorUiModel);
                    case 14:
                        FieldErrorUiModel fieldErrorUiModel2 = ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow.getValue()).f53994c;
                        genericFieldValidationRules.getClass();
                        return GenericFieldValidationRules.a(fieldErrorUiModel2);
                    case 15:
                        FieldErrorUiModel fieldErrorUiModel3 = ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow.getValue()).d;
                        genericFieldValidationRules.getClass();
                        return GenericFieldValidationRules.a(fieldErrorUiModel3);
                    case 16:
                        FieldErrorUiModel fieldErrorUiModel4 = ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow.getValue()).f53995e;
                        genericFieldValidationRules.getClass();
                        return GenericFieldValidationRules.a(fieldErrorUiModel4);
                    case 17:
                        FieldErrorUiModel fieldErrorUiModel5 = ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow.getValue()).f53996f;
                        genericFieldValidationRules.getClass();
                        return GenericFieldValidationRules.a(fieldErrorUiModel5);
                    case 18:
                        FieldErrorUiModel fieldErrorUiModel6 = ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow.getValue()).g;
                        genericFieldValidationRules.getClass();
                        return GenericFieldValidationRules.a(fieldErrorUiModel6);
                    default:
                        return null;
                }
            case 2:
                MutableStateFlow mutableStateFlow2 = nativeRegisterViewModelImpl.F;
                GenericFieldValidationRules genericFieldValidationRules2 = nativeRegisterViewModelImpl.f53717j;
                FormSectionTypeUiModel formSectionTypeUiModel3 = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel3.getClass();
                switch (NativeRegisterViewModelImpl.WhenMappings.f53723b[formSectionTypeUiModel3.ordinal()]) {
                    case 4:
                        FieldErrorUiModel fieldErrorUiModel7 = ((NativeRegisterPersonalInfoUiModel) mutableStateFlow2.getValue()).f53988b;
                        genericFieldValidationRules2.getClass();
                        return GenericFieldValidationRules.a(fieldErrorUiModel7);
                    case 5:
                        FieldErrorUiModel fieldErrorUiModel8 = ((NativeRegisterPersonalInfoUiModel) mutableStateFlow2.getValue()).f53989c;
                        genericFieldValidationRules2.getClass();
                        return GenericFieldValidationRules.a(fieldErrorUiModel8);
                    case 6:
                        FieldErrorUiModel fieldErrorUiModel9 = ((NativeRegisterPersonalInfoUiModel) mutableStateFlow2.getValue()).d;
                        genericFieldValidationRules2.getClass();
                        return GenericFieldValidationRules.a(fieldErrorUiModel9);
                    case 7:
                        FieldErrorUiModel fieldErrorUiModel10 = ((NativeRegisterPersonalInfoUiModel) mutableStateFlow2.getValue()).f53990e;
                        genericFieldValidationRules2.getClass();
                        return GenericFieldValidationRules.a(fieldErrorUiModel10);
                    case 8:
                        FieldErrorUiModel fieldErrorUiModel11 = ((NativeRegisterPersonalInfoUiModel) mutableStateFlow2.getValue()).f53991f;
                        genericFieldValidationRules2.getClass();
                        return GenericFieldValidationRules.a(fieldErrorUiModel11);
                    default:
                        return null;
                }
            default:
                MutableStateFlow mutableStateFlow3 = nativeRegisterViewModelImpl.G;
                FormSectionTypeUiModel formSectionTypeUiModel4 = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel4.getClass();
                int i5 = NativeRegisterViewModelImpl.WhenMappings.f53723b[formSectionTypeUiModel4.ordinal()];
                if (i5 == 9) {
                    GenericFieldValidationRules genericFieldValidationRules3 = nativeRegisterViewModelImpl.f53717j;
                    FieldErrorUiModel fieldErrorUiModel12 = ((NativeRegisterBirthInfoUiModel) mutableStateFlow3.getValue()).f53947j;
                    genericFieldValidationRules3.getClass();
                    return GenericFieldValidationRules.a(fieldErrorUiModel12);
                }
                PhoneValidationRules phoneValidationRules = nativeRegisterViewModelImpl.f53715h;
                if (i5 == 10) {
                    return phoneValidationRules.a(new Function0() { // from class: yf0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i6 = i3;
                            NativeRegisterViewModelImpl nativeRegisterViewModelImpl2 = nativeRegisterViewModelImpl;
                            switch (i6) {
                                case 0:
                                    return (FormUiModel) nativeRegisterViewModelImpl2.m.getF57468c().getValue();
                                case 1:
                                    return (FormUiModel) nativeRegisterViewModelImpl2.l.getF57468c().getValue();
                                default:
                                    return (FormUiModel) nativeRegisterViewModelImpl2.l.getF57468c().getValue();
                            }
                        }
                    }, formSectionTypeUiModel4, ((NativeRegisterBirthInfoUiModel) mutableStateFlow3.getValue()).f53946i);
                }
                final int i6 = 2;
                return phoneValidationRules.a(new Function0() { // from class: yf0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i7 = i6;
                        NativeRegisterViewModelImpl nativeRegisterViewModelImpl2 = nativeRegisterViewModelImpl;
                        switch (i7) {
                            case 0:
                                return (FormUiModel) nativeRegisterViewModelImpl2.m.getF57468c().getValue();
                            case 1:
                                return (FormUiModel) nativeRegisterViewModelImpl2.l.getF57468c().getValue();
                            default:
                                return (FormUiModel) nativeRegisterViewModelImpl2.l.getF57468c().getValue();
                        }
                    }
                }, formSectionTypeUiModel4, null);
        }
    }
}
