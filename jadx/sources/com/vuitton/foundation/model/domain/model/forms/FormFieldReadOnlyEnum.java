package com.vuitton.foundation.model.domain.model.forms;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/forms/FormFieldReadOnlyEnum;", "Lcom/vuitton/foundation/model/domain/model/forms/FormFieldType;", "Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;", "enumValue", "<init>", "(Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldReadOnlyEnum extends FormFieldType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormEnumValue f67604a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormFieldReadOnlyEnum(FormEnumValue formEnumValue) {
        super(null);
        formEnumValue.getClass();
        this.f67604a = formEnumValue;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FormFieldReadOnlyEnum) && Intrinsics.c(this.f67604a, ((FormFieldReadOnlyEnum) obj).f67604a);
    }

    public final int hashCode() {
        return this.f67604a.hashCode();
    }

    public final String toString() {
        return "FormFieldReadOnlyEnum(enumValue=" + this.f67604a + ")";
    }
}
