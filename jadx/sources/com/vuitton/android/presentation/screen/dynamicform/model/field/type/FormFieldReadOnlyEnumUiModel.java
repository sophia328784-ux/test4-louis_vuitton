package com.vuitton.android.presentation.screen.dynamicform.model.field.type;

import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyEnumUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;", "selectedEnumValue", "<init>", "(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldReadOnlyEnumUiModel implements FormFieldTypeUiModel.EnumBasedFormField {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormEnumValueUiModel f57517a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f57518b;

    public FormFieldReadOnlyEnumUiModel(FormEnumValueUiModel formEnumValueUiModel) {
        formEnumValueUiModel.getClass();
        this.f57517a = formEnumValueUiModel;
        this.f57518b = CollectionsKt.O(formEnumValueUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    /* JADX INFO: renamed from: a, reason: from getter */
    public final List getF57518b() {
        return this.f57518b;
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    public final Integer c() {
        return b(this.f57518b);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    /* JADX INFO: renamed from: e, reason: from getter */
    public final FormEnumValueUiModel getF57517a() {
        return this.f57517a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FormFieldReadOnlyEnumUiModel) && Intrinsics.c(this.f57517a, ((FormFieldReadOnlyEnumUiModel) obj).f57517a);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel
    public final FormFieldTypeUiModel f(Object obj) {
        if (obj instanceof FormEnumValueUiModel) {
            return new FormFieldReadOnlyEnumUiModel((FormEnumValueUiModel) obj);
        }
        return null;
    }

    public final int hashCode() {
        return this.f57517a.hashCode();
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel.EnumBasedFormField
    public final boolean isEnabled() {
        return false;
    }

    public final String toString() {
        return "FormFieldReadOnlyEnumUiModel(selectedEnumValue=" + this.f57517a + ")";
    }
}
