package com.vuitton.foundation.model.domain.model.forms;

import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/forms/FormFieldDependentEnum;", "Lcom/vuitton/foundation/model/domain/model/forms/FormFieldType;", "", "dependencyField", "", "Lcom/vuitton/foundation/model/domain/model/forms/FormEnumDependentValue;", "dependentValueList", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldDependentEnum extends FormFieldType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67592b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormFieldDependentEnum(String str, List<FormEnumDependentValue> list) {
        super(null);
        str.getClass();
        list.getClass();
        this.f67591a = str;
        this.f67592b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldDependentEnum)) {
            return false;
        }
        FormFieldDependentEnum formFieldDependentEnum = (FormFieldDependentEnum) obj;
        return Intrinsics.c(this.f67591a, formFieldDependentEnum.f67591a) && Intrinsics.c(this.f67592b, formFieldDependentEnum.f67592b);
    }

    public final int hashCode() {
        return this.f67592b.hashCode() + (this.f67591a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("FormFieldDependentEnum(dependencyField=", this.f67591a, ", dependentValueList=", this.f67592b, ")");
    }
}
