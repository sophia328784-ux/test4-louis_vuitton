package com.vuitton.android.presentation.screen.dynamicform.model.ext;

import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldBooleanUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModelKt;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FormFieldTypeUiModelExtKt {
    /* JADX WARN: Code duplicated, block: B:17:0x0034 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:18:0x0035 A[RETURN] */
    public static final boolean a(FormFieldTypeUiModel formFieldTypeUiModel) {
        formFieldTypeUiModel.getClass();
        if (formFieldTypeUiModel instanceof FormFieldTypeUiModel.EnumBasedFormField) {
            return FormEnumValueUiModelKt.b(((FormFieldTypeUiModel.EnumBasedFormField) formFieldTypeUiModel).getF57512a()) != null;
        }
        if (formFieldTypeUiModel instanceof FormFieldFreeformUiModel) {
            if (StringsKt.w(((FormFieldFreeformUiModel) formFieldTypeUiModel).f57515b)) {
                return false;
            }
            return true;
        }
        if (formFieldTypeUiModel instanceof FormFieldReadOnlyUiModel) {
            if (StringsKt.w(((FormFieldReadOnlyUiModel) formFieldTypeUiModel).f57519a)) {
                return false;
            }
            return true;
        }
        if (formFieldTypeUiModel instanceof FormFieldBooleanUiModel) {
            return true;
        }
        v40.g();
        return false;
    }

    public static final Object b(Object obj) {
        if (obj instanceof Boolean) {
            return obj;
        }
        if (obj instanceof String) {
            return StringKtExtKt.h((String) obj);
        }
        if (!(obj instanceof FormEnumValueUiModel)) {
            return null;
        }
        FormEnumValueUiModel formEnumValueUiModel = (FormEnumValueUiModel) obj;
        if (StringsKt.w(formEnumValueUiModel.f57524a)) {
            return null;
        }
        return formEnumValueUiModel;
    }
}
