package com.vuitton.android.presentation.screen.dynamicform.model.field.type.value;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FormEnumValueUiModelKt {
    public static final boolean a(FormEnumValueUiModel formEnumValueUiModel, FormEnumValueUiModel formEnumValueUiModel2) {
        formEnumValueUiModel.getClass();
        String str = formEnumValueUiModel.f57525b;
        String str2 = formEnumValueUiModel.f57524a;
        if (str != null && !StringsKt.w(str)) {
            if (Intrinsics.c(formEnumValueUiModel.f57525b, formEnumValueUiModel2 != null ? formEnumValueUiModel2.f57525b : null)) {
                return true;
            }
        }
        if (StringsKt.w(str2)) {
            return false;
        }
        return Intrinsics.c(str2, formEnumValueUiModel2 != null ? formEnumValueUiModel2.f57524a : null);
    }

    public static final FormEnumValueUiModel b(FormEnumValueUiModel formEnumValueUiModel) {
        String str;
        if (formEnumValueUiModel == null) {
            return null;
        }
        if (StringsKt.w(formEnumValueUiModel.f57524a) && ((str = formEnumValueUiModel.f57525b) == null || StringsKt.w(str))) {
            return null;
        }
        return formEnumValueUiModel;
    }
}
