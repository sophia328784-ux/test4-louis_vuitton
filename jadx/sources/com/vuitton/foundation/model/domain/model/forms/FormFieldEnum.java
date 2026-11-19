package com.vuitton.foundation.model.domain.model.forms;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/forms/FormFieldEnum;", "Lcom/vuitton/foundation/model/domain/model/forms/FormFieldType;", "", "Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;", "enumValueList", "defaultEnumValue", "<init>", "(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldEnum extends FormFieldType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormEnumValue f67596b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormFieldEnum(List<FormEnumValue> list, FormEnumValue formEnumValue) {
        super(null);
        list.getClass();
        this.f67595a = list;
        this.f67596b = formEnumValue;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldEnum)) {
            return false;
        }
        FormFieldEnum formFieldEnum = (FormFieldEnum) obj;
        return Intrinsics.c(this.f67595a, formFieldEnum.f67595a) && Intrinsics.c(this.f67596b, formFieldEnum.f67596b);
    }

    public final int hashCode() {
        int iHashCode = this.f67595a.hashCode() * 31;
        FormEnumValue formEnumValue = this.f67596b;
        return iHashCode + (formEnumValue == null ? 0 : formEnumValue.hashCode());
    }

    public final String toString() {
        return "FormFieldEnum(enumValueList=" + this.f67595a + ", defaultEnumValue=" + this.f67596b + ")";
    }
}
