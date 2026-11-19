package com.vuitton.android.presentation.screen.dynamicform.model.field.type;

import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModelKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldEnumUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;", "selectedEnumValue", "", "enumValueList", "<init>", "(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldEnumUiModel implements FormFieldTypeUiModel.EnumBasedFormField {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormEnumValueUiModel f57512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f57513b;

    public FormFieldEnumUiModel(FormEnumValueUiModel formEnumValueUiModel, List<FormEnumValueUiModel> list) {
        list.getClass();
        this.f57512a = formEnumValueUiModel;
        this.f57513b = list;
    }

    public static FormFieldEnumUiModel g(FormFieldEnumUiModel formFieldEnumUiModel, FormEnumValueUiModel formEnumValueUiModel, ArrayList arrayList, int i2) {
        if ((i2 & 1) != 0) {
            formEnumValueUiModel = formFieldEnumUiModel.f57512a;
        }
        List list = arrayList;
        if ((i2 & 2) != 0) {
            list = formFieldEnumUiModel.f57513b;
        }
        formFieldEnumUiModel.getClass();
        list.getClass();
        return new FormFieldEnumUiModel(formEnumValueUiModel, list);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    /* JADX INFO: renamed from: a, reason: from getter */
    public final List getF57513b() {
        return this.f57513b;
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    public final Integer c() {
        return b(this.f57513b);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    /* JADX INFO: renamed from: e, reason: from getter */
    public final FormEnumValueUiModel getF57512a() {
        return this.f57512a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldEnumUiModel)) {
            return false;
        }
        FormFieldEnumUiModel formFieldEnumUiModel = (FormFieldEnumUiModel) obj;
        return Intrinsics.c(this.f57512a, formFieldEnumUiModel.f57512a) && Intrinsics.c(this.f57513b, formFieldEnumUiModel.f57513b);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel
    public final FormFieldTypeUiModel f(Object obj) {
        if (obj instanceof FormEnumValueUiModel) {
            return g(this, FormEnumValueUiModelKt.b((FormEnumValueUiModel) obj), null, 2);
        }
        return null;
    }

    public final int hashCode() {
        FormEnumValueUiModel formEnumValueUiModel = this.f57512a;
        return this.f57513b.hashCode() + ((formEnumValueUiModel == null ? 0 : formEnumValueUiModel.hashCode()) * 31);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    public final boolean isEnabled() {
        return true;
    }

    public final String toString() {
        return "FormFieldEnumUiModel(selectedEnumValue=" + this.f57512a + ", enumValueList=" + this.f57513b + ")";
    }
}
