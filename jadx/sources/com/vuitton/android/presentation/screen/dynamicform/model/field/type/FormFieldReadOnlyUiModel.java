package com.vuitton.android.presentation.screen.dynamicform.model.field.type;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;", "", "displayValue", "", "isEnabled", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldReadOnlyUiModel implements FormFieldTypeUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f57519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f57520b;

    public FormFieldReadOnlyUiModel(String str, boolean z) {
        str.getClass();
        this.f57519a = str;
        this.f57520b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldReadOnlyUiModel)) {
            return false;
        }
        FormFieldReadOnlyUiModel formFieldReadOnlyUiModel = (FormFieldReadOnlyUiModel) obj;
        return Intrinsics.c(this.f57519a, formFieldReadOnlyUiModel.f57519a) && this.f57520b == formFieldReadOnlyUiModel.f57520b;
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel
    public final FormFieldTypeUiModel f(Object obj) {
        if (obj instanceof String) {
            return new FormFieldReadOnlyUiModel((String) obj, this.f57520b);
        }
        return null;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f57520b) + (this.f57519a.hashCode() * 31);
    }

    public final String toString() {
        return d21.m("FormFieldReadOnlyUiModel(displayValue=", this.f57519a, ", isEnabled=", ")", this.f57520b);
    }

    public /* synthetic */ FormFieldReadOnlyUiModel(String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? true : z);
    }
}
