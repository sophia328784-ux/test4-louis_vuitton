package com.vuitton.android.presentation.screen.dynamicform.model.field.type.value;

import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumDependentValueUiModel;", "", "", "dependencyValue", "", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;", "enumValueList", "selectedEnumValue", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormEnumDependentValueUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f57521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f57522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormEnumValueUiModel f57523c;

    public FormEnumDependentValueUiModel(String str, List<FormEnumValueUiModel> list, FormEnumValueUiModel formEnumValueUiModel) {
        str.getClass();
        list.getClass();
        this.f57521a = str;
        this.f57522b = list;
        this.f57523c = formEnumValueUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormEnumDependentValueUiModel)) {
            return false;
        }
        FormEnumDependentValueUiModel formEnumDependentValueUiModel = (FormEnumDependentValueUiModel) obj;
        return Intrinsics.c(this.f57521a, formEnumDependentValueUiModel.f57521a) && Intrinsics.c(this.f57522b, formEnumDependentValueUiModel.f57522b) && Intrinsics.c(this.f57523c, formEnumDependentValueUiModel.f57523c);
    }

    public final int hashCode() {
        int iA = n00.a(this.f57521a.hashCode() * 31, 31, this.f57522b);
        FormEnumValueUiModel formEnumValueUiModel = this.f57523c;
        return iA + (formEnumValueUiModel == null ? 0 : formEnumValueUiModel.hashCode());
    }

    public final String toString() {
        StringBuilder sbT = d21.t("FormEnumDependentValueUiModel(dependencyValue=", this.f57521a, ", enumValueList=", this.f57522b, ", selectedEnumValue=");
        sbT.append(this.f57523c);
        sbT.append(")");
        return sbT.toString();
    }
}
