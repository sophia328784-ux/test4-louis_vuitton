package com.vuitton.foundation.model.domain.model.catalog;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/catalog/Category;", "", "", b.a.f24015b, "title", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;", "tag", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;", "carousel", "Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;", "redirection", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Category {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Asset f67011c;
    public final CategoryTag d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EditorialModule.CarouselMedium f67012e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CategoryRedirection f67013f;

    public Category(String str, String str2, Asset asset, CategoryTag categoryTag, EditorialModule.CarouselMedium carouselMedium, CategoryRedirection categoryRedirection) {
        str.getClass();
        str2.getClass();
        asset.getClass();
        categoryRedirection.getClass();
        this.f67009a = str;
        this.f67010b = str2;
        this.f67011c = asset;
        this.d = categoryTag;
        this.f67012e = carouselMedium;
        this.f67013f = categoryRedirection;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Category)) {
            return false;
        }
        Category category = (Category) obj;
        return Intrinsics.c(this.f67009a, category.f67009a) && Intrinsics.c(this.f67010b, category.f67010b) && Intrinsics.c(this.f67011c, category.f67011c) && Intrinsics.c(this.d, category.d) && Intrinsics.c(this.f67012e, category.f67012e) && Intrinsics.c(this.f67013f, category.f67013f);
    }

    public final int hashCode() {
        int iHashCode = (this.f67011c.hashCode() + fc.b(this.f67009a.hashCode() * 31, 31, this.f67010b)) * 31;
        CategoryTag categoryTag = this.d;
        int iHashCode2 = (iHashCode + (categoryTag == null ? 0 : categoryTag.f67017a.hashCode())) * 31;
        EditorialModule.CarouselMedium carouselMedium = this.f67012e;
        return this.f67013f.hashCode() + ((iHashCode2 + (carouselMedium != null ? carouselMedium.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Category(id=", this.f67009a, ", title=", this.f67010b, ", asset=");
        sbS.append(this.f67011c);
        sbS.append(", tag=");
        sbS.append(this.d);
        sbS.append(", carousel=");
        sbS.append(this.f67012e);
        sbS.append(", redirection=");
        sbS.append(this.f67013f);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ Category(String str, String str2, Asset asset, CategoryTag categoryTag, EditorialModule.CarouselMedium carouselMedium, CategoryRedirection categoryRedirection, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, asset, (i2 & 8) != 0 ? null : categoryTag, (i2 & 16) != 0 ? null : carouselMedium, categoryRedirection);
    }
}
