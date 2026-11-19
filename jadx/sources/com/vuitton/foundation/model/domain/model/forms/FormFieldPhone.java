package com.vuitton.foundation.model.domain.model.forms;

import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;", "Lcom/vuitton/foundation/model/domain/model/forms/FormFieldGeneric;", "", "isMandatory", "", "order", "Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;", "sectionType", "maxCount", "minCount", "", "Lcom/vuitton/foundation/model/domain/model/forms/FormField;", "phoneFieldList", "<init>", "(ZILcom/vuitton/foundation/model/domain/model/forms/FormSectionType;IILjava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldPhone extends FormFieldGeneric {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f67600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f67601c;
    public final FormSectionType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f67602e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f67603f;
    public final List g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormFieldPhone(boolean z, int i2, FormSectionType formSectionType, int i3, int i4, List<FormField> list) {
        super(z, i2, null);
        formSectionType.getClass();
        list.getClass();
        this.f67600b = z;
        this.f67601c = i2;
        this.d = formSectionType;
        this.f67602e = i3;
        this.f67603f = i4;
        this.g = list;
    }

    @Override // com.vuitton.foundation.model.domain.model.forms.FormFieldGeneric
    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getF67601c() {
        return this.f67601c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldPhone)) {
            return false;
        }
        FormFieldPhone formFieldPhone = (FormFieldPhone) obj;
        return this.f67600b == formFieldPhone.f67600b && this.f67601c == formFieldPhone.f67601c && this.d == formFieldPhone.d && this.f67602e == formFieldPhone.f67602e && this.f67603f == formFieldPhone.f67603f && Intrinsics.c(this.g, formFieldPhone.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + tr.b(this.f67603f, tr.b(this.f67602e, (this.d.hashCode() + tr.b(this.f67601c, Boolean.hashCode(this.f67600b) * 31, 31)) * 31, 31), 31);
    }

    public final String toString() {
        return "FormFieldPhone(isMandatory=" + this.f67600b + ", order=" + this.f67601c + ", sectionType=" + this.d + ", maxCount=" + this.f67602e + ", minCount=" + this.f67603f + ", phoneFieldList=" + this.g + ")";
    }
}
