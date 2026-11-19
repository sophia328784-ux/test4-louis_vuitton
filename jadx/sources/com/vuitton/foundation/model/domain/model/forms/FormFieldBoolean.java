package com.vuitton.foundation.model.domain.model.forms;

import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/forms/FormFieldBoolean;", "Lcom/vuitton/foundation/model/domain/model/forms/FormFieldType;", "", "defaultValue", "<init>", "(Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldBoolean extends FormFieldType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f67590a;

    public FormFieldBoolean(boolean z) {
        super(null);
        this.f67590a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FormFieldBoolean) && this.f67590a == ((FormFieldBoolean) obj).f67590a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f67590a);
    }

    public final String toString() {
        return tr.i("FormFieldBoolean(defaultValue=", ")", this.f67590a);
    }
}
