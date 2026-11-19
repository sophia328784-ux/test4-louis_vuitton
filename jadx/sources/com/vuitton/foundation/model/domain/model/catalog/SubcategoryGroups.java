package com.vuitton.foundation.model.domain.model.catalog;

import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryGroups;", "", "", "title", "", "Lcom/vuitton/foundation/model/domain/model/catalog/Subcategory;", "subcategories", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SubcategoryGroups {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67027b;

    public SubcategoryGroups(String str, List<Subcategory> list) {
        list.getClass();
        this.f67026a = str;
        this.f67027b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubcategoryGroups)) {
            return false;
        }
        SubcategoryGroups subcategoryGroups = (SubcategoryGroups) obj;
        return Intrinsics.c(this.f67026a, subcategoryGroups.f67026a) && Intrinsics.c(this.f67027b, subcategoryGroups.f67027b);
    }

    public final int hashCode() {
        String str = this.f67026a;
        return this.f67027b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return cj.k("SubcategoryGroups(title=", this.f67026a, ", subcategories=", this.f67027b, ")");
    }

    public /* synthetic */ SubcategoryGroups(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, list);
    }
}
