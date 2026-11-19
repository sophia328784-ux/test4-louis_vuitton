package com.vuitton.android.presentation.screen.dynamicform.model.field.type;

import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;", "", "value", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldBooleanUiModel implements FormFieldTypeUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f57505a;

    public FormFieldBooleanUiModel(boolean z) {
        this.f57505a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FormFieldBooleanUiModel) && this.f57505a == ((FormFieldBooleanUiModel) obj).f57505a;
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel
    public final FormFieldTypeUiModel f(Object obj) {
        if (obj instanceof Boolean) {
            return new FormFieldBooleanUiModel(((Boolean) obj).booleanValue());
        }
        return null;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f57505a);
    }

    public final String toString() {
        return tr.i("FormFieldBooleanUiModel(value=", ")", this.f57505a);
    }
}
