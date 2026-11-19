package com.vuitton.foundation.model.domain.model.search;

import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/search/History;", "", "", "Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;", "items", "<init>", "(Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class History {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f68185a;

    public History(List<? extends HistoryItem> list) {
        list.getClass();
        this.f68185a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof History) && Intrinsics.c(this.f68185a, ((History) obj).f68185a);
    }

    public final int hashCode() {
        return this.f68185a.hashCode();
    }

    public final String toString() {
        return d21.o("History(items=", ")", this.f68185a);
    }
}
