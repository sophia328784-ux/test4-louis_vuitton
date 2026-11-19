package com.vuitton.foundation.model.domain.model.common.editorial;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;", "", "", "title", "surtitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class EditorialModuleTitles {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67213b;

    public EditorialModuleTitles(String str, String str2) {
        str.getClass();
        this.f67212a = str;
        this.f67213b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditorialModuleTitles)) {
            return false;
        }
        EditorialModuleTitles editorialModuleTitles = (EditorialModuleTitles) obj;
        return Intrinsics.c(this.f67212a, editorialModuleTitles.f67212a) && Intrinsics.c(this.f67213b, editorialModuleTitles.f67213b);
    }

    public final int hashCode() {
        int iHashCode = this.f67212a.hashCode() * 31;
        String str = this.f67213b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return d21.l("EditorialModuleTitles(title=", this.f67212a, ", surtitle=", this.f67213b, ")");
    }

    public /* synthetic */ EditorialModuleTitles(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2);
    }
}
