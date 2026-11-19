package com.vuitton.android.presentation.screen.dynamicform.model.field;

import android.content.Context;
import androidx.compose.ui.text.AnnotatedString;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.dynamicform.model.ext.FormFieldTypeUiModelExtKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.customvalidation.FieldValidationRule;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldBooleanUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModelKt;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.d21;
import defpackage.o60;
import defpackage.v40;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FormFieldUiModel extends FormFieldGenericUiModel {
    public static final Companion o = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f57495c;
    public final FormSectionTypeUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormFieldTypeUiModel f57496e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StringResourceUiModel f57497f;
    public AnnotatedString g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Function0 f57498h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final StringResourceUiModel f57499i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FieldValidationRule f57500j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f57501k;
    public final boolean l;
    public final boolean m;
    public final boolean n;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormFieldUiModel(boolean z, FormSectionTypeUiModel formSectionTypeUiModel, FormFieldTypeUiModel formFieldTypeUiModel, StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2, FieldValidationRule fieldValidationRule, String str, boolean z2, boolean z3, boolean z4, int i2) {
        super(z, formSectionTypeUiModel, null);
        str = (i2 & 256) != 0 ? null : str;
        z2 = (i2 & 512) != 0 ? false : z2;
        z3 = (i2 & 1024) != 0 ? true : z3;
        z4 = (i2 & 2048) != 0 ? false : z4;
        this.f57495c = z;
        this.d = formSectionTypeUiModel;
        this.f57496e = formFieldTypeUiModel;
        this.f57497f = stringResourceUiModel;
        this.g = null;
        this.f57498h = null;
        this.f57499i = stringResourceUiModel2;
        this.f57500j = fieldValidationRule;
        this.f57501k = str;
        this.l = z2;
        this.m = z3;
        this.n = z4;
    }

    public static FormFieldUiModel c(FormFieldUiModel formFieldUiModel, boolean z, FormSectionTypeUiModel formSectionTypeUiModel, FormFieldTypeUiModel formFieldTypeUiModel, StringResourceUiModel.WithoutTrailingAsterisk withoutTrailingAsterisk, StringResourceUiModel.ResId resId, FieldValidationRule fieldValidationRule, String str, boolean z2, boolean z3, int i2) {
        if ((i2 & 1) != 0) {
            z = formFieldUiModel.f57495c;
        }
        boolean z4 = z;
        FormSectionTypeUiModel formSectionTypeUiModel2 = (i2 & 2) != 0 ? formFieldUiModel.d : formSectionTypeUiModel;
        FormFieldTypeUiModel formFieldTypeUiModel2 = (i2 & 4) != 0 ? formFieldUiModel.f57496e : formFieldTypeUiModel;
        StringResourceUiModel stringResourceUiModel = (i2 & 8) != 0 ? formFieldUiModel.f57497f : withoutTrailingAsterisk;
        StringResourceUiModel stringResourceUiModel2 = (i2 & 16) != 0 ? formFieldUiModel.f57499i : resId;
        FieldValidationRule fieldValidationRule2 = (i2 & 32) != 0 ? formFieldUiModel.f57500j : fieldValidationRule;
        String str2 = (i2 & 64) != 0 ? formFieldUiModel.f57501k : str;
        boolean z5 = (i2 & 128) != 0 ? formFieldUiModel.l : z2;
        boolean z6 = (i2 & 256) != 0 ? formFieldUiModel.m : z3;
        boolean z7 = (i2 & 512) != 0 ? formFieldUiModel.n : true;
        formFieldUiModel.getClass();
        formSectionTypeUiModel2.getClass();
        formFieldTypeUiModel2.getClass();
        stringResourceUiModel.getClass();
        stringResourceUiModel2.getClass();
        return new FormFieldUiModel(z4, formSectionTypeUiModel2, formFieldTypeUiModel2, stringResourceUiModel, stringResourceUiModel2, fieldValidationRule2, str2, z5, z6, z7, 48);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final FormSectionTypeUiModel getD() {
        return this.d;
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getF57491c() {
        return this.f57495c;
    }

    public final String d(Context context) {
        context.getClass();
        String strA = StringResourceUiModelKt.a(this.f57497f, context);
        return (this.f57495c && this.m) ? d21.j(strA, " *") : strA;
    }

    public final AnnotatedString e(AnnotatedString annotatedString) {
        annotatedString.getClass();
        return (this.f57495c && this.m) ? new AnnotatedString(d21.j(annotatedString.f10420c, " *"), null, 2, null) : annotatedString;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldUiModel)) {
            return false;
        }
        FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj;
        return this.f57495c == formFieldUiModel.f57495c && this.d == formFieldUiModel.d && Intrinsics.c(this.f57496e, formFieldUiModel.f57496e) && Intrinsics.c(this.f57497f, formFieldUiModel.f57497f) && Intrinsics.c(this.f57499i, formFieldUiModel.f57499i) && Intrinsics.c(this.f57500j, formFieldUiModel.f57500j) && Intrinsics.c(this.f57501k, formFieldUiModel.f57501k) && this.l == formFieldUiModel.l && this.n == formFieldUiModel.n;
    }

    public final String f(Context context) {
        Function1 function1;
        Function0 function0;
        context.getClass();
        if (!this.l) {
            return null;
        }
        FieldValidationRule fieldValidationRule = this.f57500j;
        StringResourceUiModel stringResourceUiModel = (fieldValidationRule == null || (function0 = fieldValidationRule.f57503b) == null) ? null : (StringResourceUiModel) function0.mo47invoke();
        if (fieldValidationRule == null || (function1 = fieldValidationRule.f57502a) == null || ((Boolean) function1.invoke(this.d)).booleanValue() || stringResourceUiModel == null || StringResourceUiModelKt.b(stringResourceUiModel)) {
            return (!this.f57495c || FormFieldTypeUiModelExtKt.a(this.f57496e)) ? StringResourceUiModelKt.a(this.f57499i, context) : StringResourceUiModelKt.a(new StringResourceUiModel.ResId(R.string.required_field, null, 2, null), context);
        }
        if (stringResourceUiModel != null) {
            return StringResourceUiModelKt.a(stringResourceUiModel, context);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0022  */
    /* JADX WARN: Code duplicated, block: B:16:0x0027  */
    public final boolean g() throws Throwable {
        Object failure;
        boolean zA;
        Function1 function1;
        FormSectionTypeUiModel formSectionTypeUiModel = this.d;
        FormFieldTypeUiModel formFieldTypeUiModel = this.f57496e;
        try {
            Result.Companion companion = Result.INSTANCE;
            boolean z = formFieldTypeUiModel instanceof FormFieldTypeUiModel.EnumBasedFormField;
            boolean z2 = this.f57495c;
            boolean z3 = false;
            if (z) {
                if (z2) {
                    if (!(FormEnumValueUiModelKt.b(((FormFieldTypeUiModel.EnumBasedFormField) formFieldTypeUiModel).getD()) != null)) {
                        zA = false;
                    }
                }
                zA = true;
            } else if (formFieldTypeUiModel instanceof FormFieldFreeformUiModel) {
                if (!StringsKt.w(((FormFieldFreeformUiModel) formFieldTypeUiModel).f57515b)) {
                    String str = ((FormFieldFreeformUiModel) formFieldTypeUiModel).f57514a;
                    if (str != null) {
                        zA = new Regex(str).a(((FormFieldFreeformUiModel) formFieldTypeUiModel).f57515b);
                    }
                } else if (z2) {
                    zA = false;
                }
                zA = true;
            } else if (formFieldTypeUiModel instanceof FormFieldReadOnlyUiModel) {
                if (z2 && StringsKt.w(((FormFieldReadOnlyUiModel) formFieldTypeUiModel).f57519a)) {
                    zA = false;
                } else {
                    zA = true;
                }
            } else {
                if (!(formFieldTypeUiModel instanceof FormFieldBooleanUiModel)) {
                    throw new NoWhenBranchMatchedException();
                }
                if (!z2 || ((FormFieldBooleanUiModel) formFieldTypeUiModel).f57505a) {
                    zA = true;
                } else {
                    zA = false;
                }
            }
            if (zA) {
                FieldValidationRule fieldValidationRule = this.f57500j;
                if ((fieldValidationRule == null || (function1 = fieldValidationRule.f57502a) == null) ? true : ((Boolean) function1.invoke(formSectionTypeUiModel)).booleanValue()) {
                    z3 = true;
                }
            }
            failure = new Result(Boolean.valueOf(z3));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 != null) {
            LegacyLogger.f66205a.c("FormFieldUiModel", "Error validating form field: " + formSectionTypeUiModel, thA2);
        }
        Boolean bool = Boolean.TRUE;
        if (obj instanceof Result.Failure) {
            obj = bool;
        }
        return ((Boolean) obj).booleanValue();
    }

    public final FormFieldUiModel h(boolean z) {
        Function0 function0;
        FieldValidationRule fieldValidationRule = this.f57500j;
        boolean z2 = (fieldValidationRule == null || (function0 = fieldValidationRule.f57504c) == null || !((Boolean) function0.mo47invoke()).booleanValue()) && !(this.n && this.f57495c) ? !(!FormFieldTypeUiModelExtKt.a(this.f57496e) || g()) : !g();
        return (z || this.l != z2) ? c(this, false, null, null, null, null, null, null, z2, false, 895) : this;
    }

    public final int hashCode() {
        int iHashCode = (this.f57499i.hashCode() + ((this.f57497f.hashCode() + ((this.f57496e.hashCode() + ((this.d.hashCode() + (Boolean.hashCode(this.f57495c) * 31)) * 31)) * 31)) * 31)) * 31;
        FieldValidationRule fieldValidationRule = this.f57500j;
        int iHashCode2 = (iHashCode + (fieldValidationRule != null ? fieldValidationRule.hashCode() : 0)) * 31;
        String str = this.f57501k;
        return Boolean.hashCode(this.n) + o60.b((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31, 31, this.l);
    }

    public final String i(boolean z) {
        String strValueOf;
        FormFieldTypeUiModel formFieldTypeUiModel = this.f57496e;
        if (formFieldTypeUiModel instanceof FormFieldTypeUiModel.EnumBasedFormField) {
            FormFieldTypeUiModel.EnumBasedFormField enumBasedFormField = (FormFieldTypeUiModel.EnumBasedFormField) formFieldTypeUiModel;
            FormEnumValueUiModel formEnumValueUiModelE = enumBasedFormField.getD();
            strValueOf = StringKtExtKt.h(formEnumValueUiModelE != null ? formEnumValueUiModelE.f57525b : null);
            FormEnumValueUiModel formEnumValueUiModelE2 = enumBasedFormField.getD();
            String strH = StringKtExtKt.h(formEnumValueUiModelE2 != null ? formEnumValueUiModelE2.f57524a : null);
            if (!z ? strH != null : strValueOf == null) {
                strValueOf = strH;
            }
        } else if (formFieldTypeUiModel instanceof FormFieldFreeformUiModel) {
            strValueOf = StringKtExtKt.h(((FormFieldFreeformUiModel) formFieldTypeUiModel).f57515b);
        } else if (formFieldTypeUiModel instanceof FormFieldReadOnlyUiModel) {
            strValueOf = StringKtExtKt.h(((FormFieldReadOnlyUiModel) formFieldTypeUiModel).f57519a);
        } else {
            if (!(formFieldTypeUiModel instanceof FormFieldBooleanUiModel)) {
                v40.g();
                return null;
            }
            strValueOf = String.valueOf(((FormFieldBooleanUiModel) formFieldTypeUiModel).f57505a);
        }
        return strValueOf == null ? "" : strValueOf;
    }
}
