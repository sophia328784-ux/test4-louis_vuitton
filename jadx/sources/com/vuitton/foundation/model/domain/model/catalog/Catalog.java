package com.vuitton.foundation.model.domain.model.catalog;

import com.vuitton.foundation.model.domain.model.common.Asset;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;", "", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "", "Lcom/vuitton/foundation/model/domain/model/catalog/Section;", "sections", "<init>", "(Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Catalog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Asset f67007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67008b;

    public Catalog(Asset asset, List<Section> list) {
        asset.getClass();
        list.getClass();
        this.f67007a = asset;
        this.f67008b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Catalog)) {
            return false;
        }
        Catalog catalog = (Catalog) obj;
        return Intrinsics.c(this.f67007a, catalog.f67007a) && Intrinsics.c(this.f67008b, catalog.f67008b);
    }

    public final int hashCode() {
        return this.f67008b.hashCode() + (this.f67007a.hashCode() * 31);
    }

    public final String toString() {
        return "Catalog(asset=" + this.f67007a + ", sections=" + this.f67008b + ")";
    }
}
