package com.vuitton.foundation.model.domain.model.search;

import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/search/SearchMatch;", "", "", "query", "", "Lcom/vuitton/foundation/model/domain/model/search/AutocompleteDisplay;", "display", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SearchMatch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f68202b;

    public SearchMatch(String str, List<AutocompleteDisplay> list) {
        str.getClass();
        list.getClass();
        this.f68201a = str;
        this.f68202b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchMatch)) {
            return false;
        }
        SearchMatch searchMatch = (SearchMatch) obj;
        return Intrinsics.c(this.f68201a, searchMatch.f68201a) && Intrinsics.c(this.f68202b, searchMatch.f68202b);
    }

    public final int hashCode() {
        return this.f68202b.hashCode() + (this.f68201a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("SearchMatch(query=", this.f68201a, ", display=", this.f68202b, ")");
    }
}
