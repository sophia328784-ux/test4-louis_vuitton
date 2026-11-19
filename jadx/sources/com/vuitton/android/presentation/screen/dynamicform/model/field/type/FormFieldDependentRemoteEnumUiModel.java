package com.vuitton.android.presentation.screen.dynamicform.model.field.type;

import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModelKt;
import defpackage.n00;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;", "dependOnFieldWithSectionType", "", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;", "enumValueList", "selectedEnumValue", "<init>", "(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldDependentRemoteEnumUiModel implements FormFieldTypeUiModel.EnumBasedFormField {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormSectionTypeUiModel f57509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f57510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormEnumValueUiModel f57511c;

    public FormFieldDependentRemoteEnumUiModel(FormSectionTypeUiModel formSectionTypeUiModel, List<FormEnumValueUiModel> list, FormEnumValueUiModel formEnumValueUiModel) {
        formSectionTypeUiModel.getClass();
        list.getClass();
        this.f57509a = formSectionTypeUiModel;
        this.f57510b = list;
        this.f57511c = formEnumValueUiModel;
    }

    public static FormFieldDependentRemoteEnumUiModel g(FormFieldDependentRemoteEnumUiModel formFieldDependentRemoteEnumUiModel, ArrayList arrayList, FormEnumValueUiModel formEnumValueUiModel, int i2) {
        FormSectionTypeUiModel formSectionTypeUiModel = formFieldDependentRemoteEnumUiModel.f57509a;
        List list = arrayList;
        if ((i2 & 2) != 0) {
            list = formFieldDependentRemoteEnumUiModel.f57510b;
        }
        formSectionTypeUiModel.getClass();
        list.getClass();
        return new FormFieldDependentRemoteEnumUiModel(formSectionTypeUiModel, list, formEnumValueUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    /* JADX INFO: renamed from: a, reason: from getter */
    public final List getF57510b() {
        return this.f57510b;
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    public final Integer c() {
        return b(this.f57510b);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    /* JADX INFO: renamed from: e, reason: from getter */
    public final FormEnumValueUiModel getF57511c() {
        return this.f57511c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldDependentRemoteEnumUiModel)) {
            return false;
        }
        FormFieldDependentRemoteEnumUiModel formFieldDependentRemoteEnumUiModel = (FormFieldDependentRemoteEnumUiModel) obj;
        return this.f57509a == formFieldDependentRemoteEnumUiModel.f57509a && Intrinsics.c(this.f57510b, formFieldDependentRemoteEnumUiModel.f57510b) && Intrinsics.c(this.f57511c, formFieldDependentRemoteEnumUiModel.f57511c);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel
    public final FormFieldTypeUiModel f(Object obj) {
        if (obj instanceof FormEnumValueUiModel) {
            return g(this, null, FormEnumValueUiModelKt.b((FormEnumValueUiModel) obj), 3);
        }
        return null;
    }

    public final int hashCode() {
        int iA = n00.a(this.f57509a.hashCode() * 31, 31, this.f57510b);
        FormEnumValueUiModel formEnumValueUiModel = this.f57511c;
        return iA + (formEnumValueUiModel == null ? 0 : formEnumValueUiModel.hashCode());
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    public final boolean isEnabled() {
        return true;
    }

    public final String toString() {
        return "FormFieldDependentRemoteEnumUiModel(dependOnFieldWithSectionType=" + this.f57509a + ", enumValueList=" + this.f57510b + ", selectedEnumValue=" + this.f57511c + ")";
    }
}
