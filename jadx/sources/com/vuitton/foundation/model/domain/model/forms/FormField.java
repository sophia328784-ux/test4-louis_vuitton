package com.vuitton.foundation.model.domain.model.forms;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/forms/FormField;", "Lcom/vuitton/foundation/model/domain/model/forms/FormFieldGeneric;", "", "isMandatory", "", "order", "Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;", "sectionType", "Lcom/vuitton/foundation/model/domain/model/forms/FormFieldType;", "type", "<init>", "(ZILcom/vuitton/foundation/model/domain/model/forms/FormSectionType;Lcom/vuitton/foundation/model/domain/model/forms/FormFieldType;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormField extends FormFieldGeneric {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f67587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f67588c;
    public final FormSectionType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormFieldType f67589e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormField(boolean z, int i2, FormSectionType formSectionType, FormFieldType formFieldType) {
        super(z, i2, null);
        formSectionType.getClass();
        formFieldType.getClass();
        this.f67587b = z;
        this.f67588c = i2;
        this.d = formSectionType;
        this.f67589e = formFieldType;
    }

    @Override // com.vuitton.foundation.model.domain.model.forms.FormFieldGeneric
    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getF67588c() {
        return this.f67588c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormField)) {
            return false;
        }
        FormField formField = (FormField) obj;
        return this.f67587b == formField.f67587b && this.f67588c == formField.f67588c && this.d == formField.d && Intrinsics.c(this.f67589e, formField.f67589e);
    }

    public final int hashCode() {
        return this.f67589e.hashCode() + ((this.d.hashCode() + tr.b(this.f67588c, Boolean.hashCode(this.f67587b) * 31, 31)) * 31);
    }

    public final String toString() {
        return "FormField(isMandatory=" + this.f67587b + ", order=" + this.f67588c + ", sectionType=" + this.d + ", type=" + this.f67589e + ")";
    }
}
