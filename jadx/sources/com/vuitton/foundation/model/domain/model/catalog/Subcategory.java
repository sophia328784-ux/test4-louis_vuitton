package com.vuitton.foundation.model.domain.model.catalog;

import com.batch.android.s.b;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/catalog/Subcategory;", "", "", b.a.f24015b, "title", "Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;", "redirection", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Subcategory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SubcategoryRedirection f67025c;

    public Subcategory(String str, String str2, SubcategoryRedirection subcategoryRedirection) {
        str.getClass();
        str2.getClass();
        this.f67023a = str;
        this.f67024b = str2;
        this.f67025c = subcategoryRedirection;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Subcategory)) {
            return false;
        }
        Subcategory subcategory = (Subcategory) obj;
        return Intrinsics.c(this.f67023a, subcategory.f67023a) && Intrinsics.c(this.f67024b, subcategory.f67024b) && Intrinsics.c(this.f67025c, subcategory.f67025c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f67023a.hashCode() * 31, 31, this.f67024b);
        SubcategoryRedirection subcategoryRedirection = this.f67025c;
        return iB + (subcategoryRedirection == null ? 0 : subcategoryRedirection.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Subcategory(id=", this.f67023a, ", title=", this.f67024b, ", redirection=");
        sbS.append(this.f67025c);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ Subcategory(String str, String str2, SubcategoryRedirection subcategoryRedirection, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : subcategoryRedirection);
    }
}
