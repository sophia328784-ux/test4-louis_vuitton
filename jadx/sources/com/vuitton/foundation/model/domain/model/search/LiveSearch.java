package com.vuitton.foundation.model.domain.model.search;

import com.sightcall.universal.agent.Product;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import defpackage.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/search/LiveSearch;", "", "", "Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;", Product.TYPE, "Lcom/vuitton/foundation/model/domain/model/search/LiveSearchType;", "type", "Lcom/vuitton/foundation/model/domain/model/search/Trending;", "trendingList", "<init>", "(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/search/LiveSearchType;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LiveSearch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f68193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LiveSearchType f68194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f68195c;

    public LiveSearch(List<ProductTiny> list, LiveSearchType liveSearchType, List<Trending> list2) {
        list.getClass();
        liveSearchType.getClass();
        this.f68193a = list;
        this.f68194b = liveSearchType;
        this.f68195c = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LiveSearch)) {
            return false;
        }
        LiveSearch liveSearch = (LiveSearch) obj;
        return Intrinsics.c(this.f68193a, liveSearch.f68193a) && this.f68194b == liveSearch.f68194b && Intrinsics.c(this.f68195c, liveSearch.f68195c);
    }

    public final int hashCode() {
        int iHashCode = (this.f68194b.hashCode() + (this.f68193a.hashCode() * 31)) * 31;
        List list = this.f68195c;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LiveSearch(products=");
        sb.append(this.f68193a);
        sb.append(", type=");
        sb.append(this.f68194b);
        sb.append(", trendingList=");
        return a.o(sb, this.f68195c, ")");
    }
}
