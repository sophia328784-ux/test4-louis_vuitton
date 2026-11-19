package com.vuitton.foundation.model.domain.model.product.universal;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/Highlight;", "", "", b.a.f24015b, "title", "description", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Highlight {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67993c;
    public final AssetImage d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContributionLink f67994e;

    public Highlight(String str, String str2, String str3, AssetImage assetImage, ContributionLink contributionLink) {
        str.getClass();
        str2.getClass();
        assetImage.getClass();
        contributionLink.getClass();
        this.f67991a = str;
        this.f67992b = str2;
        this.f67993c = str3;
        this.d = assetImage;
        this.f67994e = contributionLink;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Highlight)) {
            return false;
        }
        Highlight highlight = (Highlight) obj;
        return Intrinsics.c(this.f67991a, highlight.f67991a) && Intrinsics.c(this.f67992b, highlight.f67992b) && Intrinsics.c(this.f67993c, highlight.f67993c) && Intrinsics.c(this.d, highlight.d) && Intrinsics.c(this.f67994e, highlight.f67994e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f67991a.hashCode() * 31, 31, this.f67992b);
        String str = this.f67993c;
        return this.f67994e.hashCode() + ((this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Highlight(id=", this.f67991a, ", title=", this.f67992b, ", description=");
        sbS.append(this.f67993c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(", link=");
        sbS.append(this.f67994e);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ Highlight(String str, String str2, String str3, AssetImage assetImage, ContributionLink contributionLink, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, assetImage, contributionLink);
    }
}
