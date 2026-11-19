package com.vuitton.android.presentation.screen.dynamicform.model.field.type;

import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumDependentValueUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModelKt;
import defpackage.n00;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;", "dependOnFieldWithSectionType", "", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumDependentValueUiModel;", "dependentValueList", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;", "enumValueList", "selectedEnumValue", "<init>", "(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldDependentEnumUiModel implements FormFieldTypeUiModel.EnumBasedFormField {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormSectionTypeUiModel f57506a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f57507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f57508c;
    public final FormEnumValueUiModel d;

    public FormFieldDependentEnumUiModel(FormSectionTypeUiModel formSectionTypeUiModel, List<FormEnumDependentValueUiModel> list, List<FormEnumValueUiModel> list2, FormEnumValueUiModel formEnumValueUiModel) {
        formSectionTypeUiModel.getClass();
        list.getClass();
        list2.getClass();
        this.f57506a = formSectionTypeUiModel;
        this.f57507b = list;
        this.f57508c = list2;
        this.d = formEnumValueUiModel;
    }

    public static FormFieldDependentEnumUiModel g(FormFieldDependentEnumUiModel formFieldDependentEnumUiModel, List list, FormEnumValueUiModel formEnumValueUiModel, int i2) {
        FormSectionTypeUiModel formSectionTypeUiModel = formFieldDependentEnumUiModel.f57506a;
        List list2 = formFieldDependentEnumUiModel.f57507b;
        if ((i2 & 4) != 0) {
            list = formFieldDependentEnumUiModel.f57508c;
        }
        formFieldDependentEnumUiModel.getClass();
        formSectionTypeUiModel.getClass();
        list2.getClass();
        list.getClass();
        return new FormFieldDependentEnumUiModel(formSectionTypeUiModel, list2, list, formEnumValueUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    /* JADX INFO: renamed from: a, reason: from getter */
    public final List getF57508c() {
        return this.f57508c;
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    public final Integer c() {
        Object next;
        List list = null;
        FormEnumValueUiModel formEnumValueUiModel = this.d;
        if (formEnumValueUiModel != null) {
            Iterator it = this.f57507b.iterator();
            loop0: while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                List list2 = ((FormEnumDependentValueUiModel) next).f57522b;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (FormEnumValueUiModelKt.a((FormEnumValueUiModel) it2.next(), formEnumValueUiModel)) {
                            break loop0;
                        }
                    }
                }
            }
            FormEnumDependentValueUiModel formEnumDependentValueUiModel = (FormEnumDependentValueUiModel) next;
            if (formEnumDependentValueUiModel != null) {
                list = formEnumDependentValueUiModel.f57522b;
            }
        }
        return b(list);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    /* JADX INFO: renamed from: e, reason: from getter */
    public final FormEnumValueUiModel getD() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldDependentEnumUiModel)) {
            return false;
        }
        FormFieldDependentEnumUiModel formFieldDependentEnumUiModel = (FormFieldDependentEnumUiModel) obj;
        return this.f57506a == formFieldDependentEnumUiModel.f57506a && Intrinsics.c(this.f57507b, formFieldDependentEnumUiModel.f57507b) && Intrinsics.c(this.f57508c, formFieldDependentEnumUiModel.f57508c) && Intrinsics.c(this.d, formFieldDependentEnumUiModel.d);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel
    public final FormFieldTypeUiModel f(Object obj) {
        if (obj instanceof FormEnumValueUiModel) {
            return g(this, null, FormEnumValueUiModelKt.b((FormEnumValueUiModel) obj), 7);
        }
        return null;
    }

    public final int hashCode() {
        int iA = n00.a(n00.a(this.f57506a.hashCode() * 31, 31, this.f57507b), 31, this.f57508c);
        FormEnumValueUiModel formEnumValueUiModel = this.d;
        return iA + (formEnumValueUiModel == null ? 0 : formEnumValueUiModel.hashCode());
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    public final boolean isEnabled() {
        return true;
    }

    public final String toString() {
        return "FormFieldDependentEnumUiModel(dependOnFieldWithSectionType=" + this.f57506a + ", dependentValueList=" + this.f57507b + ", enumValueList=" + this.f57508c + ", selectedEnumValue=" + this.d + ")";
    }
}
