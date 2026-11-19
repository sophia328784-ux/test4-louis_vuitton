package com.vuitton.foundation.model.domain.model.common.editorial;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;", "", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;", "titles", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class EditorialModuleSlide {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EditorialModuleTitles f67206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Asset f67207c;
    public final ContributionLink d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Targeting f67208e;

    public EditorialModuleSlide(String str, EditorialModuleTitles editorialModuleTitles, Asset asset, ContributionLink contributionLink, Targeting targeting) {
        str.getClass();
        asset.getClass();
        contributionLink.getClass();
        this.f67205a = str;
        this.f67206b = editorialModuleTitles;
        this.f67207c = asset;
        this.d = contributionLink;
        this.f67208e = targeting;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditorialModuleSlide)) {
            return false;
        }
        EditorialModuleSlide editorialModuleSlide = (EditorialModuleSlide) obj;
        return Intrinsics.c(this.f67205a, editorialModuleSlide.f67205a) && Intrinsics.c(this.f67206b, editorialModuleSlide.f67206b) && Intrinsics.c(this.f67207c, editorialModuleSlide.f67207c) && Intrinsics.c(this.d, editorialModuleSlide.d) && Intrinsics.c(this.f67208e, editorialModuleSlide.f67208e);
    }

    public final int hashCode() {
        int iHashCode = this.f67205a.hashCode() * 31;
        EditorialModuleTitles editorialModuleTitles = this.f67206b;
        int iHashCode2 = (this.d.hashCode() + ((this.f67207c.hashCode() + ((iHashCode + (editorialModuleTitles == null ? 0 : editorialModuleTitles.hashCode())) * 31)) * 31)) * 31;
        Targeting targeting = this.f67208e;
        return iHashCode2 + (targeting != null ? targeting.f67220a.hashCode() : 0);
    }

    public final String toString() {
        return "EditorialModuleSlide(id=" + this.f67205a + ", titles=" + this.f67206b + ", asset=" + this.f67207c + ", link=" + this.d + ", targeting=" + this.f67208e + ")";
    }

    public /* synthetic */ EditorialModuleSlide(String str, EditorialModuleTitles editorialModuleTitles, Asset asset, ContributionLink contributionLink, Targeting targeting, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : editorialModuleTitles, asset, contributionLink, (i2 & 16) != 0 ? null : targeting);
    }
}
