package com.vuitton.foundation.model.domain.model.forms;

import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/forms/FormEnumDependentValue;", "", "", "dependencyValue", "", "Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;", "enumValueList", "defaultEnumValue", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/forms/FormEnumValue;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormEnumDependentValue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormEnumValue f67584c;

    public FormEnumDependentValue(String str, List<FormEnumValue> list, FormEnumValue formEnumValue) {
        str.getClass();
        list.getClass();
        this.f67582a = str;
        this.f67583b = list;
        this.f67584c = formEnumValue;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormEnumDependentValue)) {
            return false;
        }
        FormEnumDependentValue formEnumDependentValue = (FormEnumDependentValue) obj;
        return Intrinsics.c(this.f67582a, formEnumDependentValue.f67582a) && Intrinsics.c(this.f67583b, formEnumDependentValue.f67583b) && Intrinsics.c(this.f67584c, formEnumDependentValue.f67584c);
    }

    public final int hashCode() {
        int iA = n00.a(this.f67582a.hashCode() * 31, 31, this.f67583b);
        FormEnumValue formEnumValue = this.f67584c;
        return iA + (formEnumValue == null ? 0 : formEnumValue.hashCode());
    }

    public final String toString() {
        StringBuilder sbT = d21.t("FormEnumDependentValue(dependencyValue=", this.f67582a, ", enumValueList=", this.f67583b, ", defaultEnumValue=");
        sbT.append(this.f67584c);
        sbT.append(")");
        return sbT.toString();
    }
}
