package com.vuitton.android.presentation.screen.authentication.common.validation;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordValidationState;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.customvalidation.FieldValidationRule;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.tx;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FormPasswordValidationRules {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53491a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.CONFIRM_PASSWORD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.NEW_PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f53491a = iArr;
        }
    }

    @Inject
    public FormPasswordValidationRules() {
    }

    public static FieldValidationRule a(final Function0 function0, final PasswordUiModel passwordUiModel, FormSectionTypeUiModel formSectionTypeUiModel) {
        passwordUiModel.getClass();
        formSectionTypeUiModel.getClass();
        int i2 = WhenMappings.f53491a[formSectionTypeUiModel.ordinal()];
        final int i3 = 0;
        final int i4 = 1;
        if (i2 == 1) {
            return new FieldValidationRule(new Function1() { // from class: h00
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean zB;
                    int i5 = i3;
                    PasswordUiModel passwordUiModel2 = passwordUiModel;
                    Function0 function1 = function0;
                    FormSectionTypeUiModel formSectionTypeUiModel2 = (FormSectionTypeUiModel) obj;
                    switch (i5) {
                        case 0:
                            formSectionTypeUiModel2.getClass();
                            FormUiModel formUiModel = (FormUiModel) function1.mo47invoke();
                            FormUiModel.Companion companion = FormUiModel.f57485b;
                            String strE = formUiModel.e(formSectionTypeUiModel2, true);
                            passwordUiModel2.d(formUiModel.e(FormSectionTypeUiModel.NEW_PASSWORD, true));
                            ((SnapshotMutableStateImpl) passwordUiModel2.f53494c).setValue(strE);
                            passwordUiModel2.a();
                            zB = !((PasswordValidationState) ((SnapshotMutableStateImpl) passwordUiModel2.d).getF10755b()).f53495a;
                            break;
                        case 1:
                            formSectionTypeUiModel2.getClass();
                            FormUiModel formUiModel2 = (FormUiModel) function1.mo47invoke();
                            FormUiModel.Companion companion2 = FormUiModel.f57485b;
                            passwordUiModel2.d(formUiModel2.e(formSectionTypeUiModel2, true));
                            zB = passwordUiModel2.b();
                            break;
                        default:
                            formSectionTypeUiModel2.getClass();
                            FormUiModel formUiModel3 = (FormUiModel) function1.mo47invoke();
                            FormUiModel.Companion companion3 = FormUiModel.f57485b;
                            passwordUiModel2.d(formUiModel3.e(formSectionTypeUiModel2, true));
                            zB = StringKtExtKt.g((String) ((SnapshotMutableStateImpl) passwordUiModel2.f53493b).getF10755b());
                            break;
                    }
                    return Boolean.valueOf(zB);
                }
            }, new tx(19), null, 4, null);
        }
        final int i5 = 2;
        if (i2 == 2) {
            return new FieldValidationRule(new Function1() { // from class: h00
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean zB;
                    int i6 = i4;
                    PasswordUiModel passwordUiModel2 = passwordUiModel;
                    Function0 function1 = function0;
                    FormSectionTypeUiModel formSectionTypeUiModel2 = (FormSectionTypeUiModel) obj;
                    switch (i6) {
                        case 0:
                            formSectionTypeUiModel2.getClass();
                            FormUiModel formUiModel = (FormUiModel) function1.mo47invoke();
                            FormUiModel.Companion companion = FormUiModel.f57485b;
                            String strE = formUiModel.e(formSectionTypeUiModel2, true);
                            passwordUiModel2.d(formUiModel.e(FormSectionTypeUiModel.NEW_PASSWORD, true));
                            ((SnapshotMutableStateImpl) passwordUiModel2.f53494c).setValue(strE);
                            passwordUiModel2.a();
                            zB = !((PasswordValidationState) ((SnapshotMutableStateImpl) passwordUiModel2.d).getF10755b()).f53495a;
                            break;
                        case 1:
                            formSectionTypeUiModel2.getClass();
                            FormUiModel formUiModel2 = (FormUiModel) function1.mo47invoke();
                            FormUiModel.Companion companion2 = FormUiModel.f57485b;
                            passwordUiModel2.d(formUiModel2.e(formSectionTypeUiModel2, true));
                            zB = passwordUiModel2.b();
                            break;
                        default:
                            formSectionTypeUiModel2.getClass();
                            FormUiModel formUiModel3 = (FormUiModel) function1.mo47invoke();
                            FormUiModel.Companion companion3 = FormUiModel.f57485b;
                            passwordUiModel2.d(formUiModel3.e(formSectionTypeUiModel2, true));
                            zB = StringKtExtKt.g((String) ((SnapshotMutableStateImpl) passwordUiModel2.f53493b).getF10755b());
                            break;
                    }
                    return Boolean.valueOf(zB);
                }
            }, new Function0() { // from class: i00
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    String str;
                    int i6 = i3;
                    PasswordUiModel passwordUiModel2 = passwordUiModel;
                    switch (i6) {
                        case 0:
                            String str2 = (String) ((SnapshotMutableStateImpl) passwordUiModel2.f53492a).getF10755b();
                            if (str2 != null) {
                                str = StringKtExtKt.g(str2) ? str2 : null;
                                if (str != null) {
                                    return new StringResourceUiModel.Text(str);
                                }
                            }
                            return StringResourceUiModel.Empty.f51825b;
                        default:
                            String str3 = (String) ((SnapshotMutableStateImpl) passwordUiModel2.f53492a).getF10755b();
                            if (str3 != null) {
                                str = StringKtExtKt.g(str3) ? str3 : null;
                                if (str != null) {
                                    return new StringResourceUiModel.Text(str);
                                }
                            }
                            return StringResourceUiModel.Empty.f51825b;
                    }
                }
            }, null, 4, null);
        }
        if (i2 != 3) {
            return null;
        }
        return new FieldValidationRule(new Function1() { // from class: h00
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean zB;
                int i6 = i5;
                PasswordUiModel passwordUiModel2 = passwordUiModel;
                Function0 function1 = function0;
                FormSectionTypeUiModel formSectionTypeUiModel2 = (FormSectionTypeUiModel) obj;
                switch (i6) {
                    case 0:
                        formSectionTypeUiModel2.getClass();
                        FormUiModel formUiModel = (FormUiModel) function1.mo47invoke();
                        FormUiModel.Companion companion = FormUiModel.f57485b;
                        String strE = formUiModel.e(formSectionTypeUiModel2, true);
                        passwordUiModel2.d(formUiModel.e(FormSectionTypeUiModel.NEW_PASSWORD, true));
                        ((SnapshotMutableStateImpl) passwordUiModel2.f53494c).setValue(strE);
                        passwordUiModel2.a();
                        zB = !((PasswordValidationState) ((SnapshotMutableStateImpl) passwordUiModel2.d).getF10755b()).f53495a;
                        break;
                    case 1:
                        formSectionTypeUiModel2.getClass();
                        FormUiModel formUiModel2 = (FormUiModel) function1.mo47invoke();
                        FormUiModel.Companion companion2 = FormUiModel.f57485b;
                        passwordUiModel2.d(formUiModel2.e(formSectionTypeUiModel2, true));
                        zB = passwordUiModel2.b();
                        break;
                    default:
                        formSectionTypeUiModel2.getClass();
                        FormUiModel formUiModel3 = (FormUiModel) function1.mo47invoke();
                        FormUiModel.Companion companion3 = FormUiModel.f57485b;
                        passwordUiModel2.d(formUiModel3.e(formSectionTypeUiModel2, true));
                        zB = StringKtExtKt.g((String) ((SnapshotMutableStateImpl) passwordUiModel2.f53493b).getF10755b());
                        break;
                }
                return Boolean.valueOf(zB);
            }
        }, new Function0() { // from class: i00
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                String str;
                int i6 = i4;
                PasswordUiModel passwordUiModel2 = passwordUiModel;
                switch (i6) {
                    case 0:
                        String str2 = (String) ((SnapshotMutableStateImpl) passwordUiModel2.f53492a).getF10755b();
                        if (str2 != null) {
                            str = StringKtExtKt.g(str2) ? str2 : null;
                            if (str != null) {
                                return new StringResourceUiModel.Text(str);
                            }
                        }
                        return StringResourceUiModel.Empty.f51825b;
                    default:
                        String str3 = (String) ((SnapshotMutableStateImpl) passwordUiModel2.f53492a).getF10755b();
                        if (str3 != null) {
                            str = StringKtExtKt.g(str3) ? str3 : null;
                            if (str != null) {
                                return new StringResourceUiModel.Text(str);
                            }
                        }
                        return StringResourceUiModel.Empty.f51825b;
                }
            }
        }, null, 4, null);
    }
}
