package com.vuitton.foundation.model.domain.model.portal;

import com.vuitton.foundation.model.domain.model.common.Asset;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/portal/PortalData;", "", "", "title", "surtitle", "description", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;", "cta", "Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;", "teaser", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PortalData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67872c;
    public final Asset d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PortalCta f67873e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PortalTeaser f67874f;

    public PortalData(String str, String str2, String str3, Asset asset, PortalCta portalCta, PortalTeaser portalTeaser) {
        asset.getClass();
        this.f67870a = str;
        this.f67871b = str2;
        this.f67872c = str3;
        this.d = asset;
        this.f67873e = portalCta;
        this.f67874f = portalTeaser;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PortalData)) {
            return false;
        }
        PortalData portalData = (PortalData) obj;
        return Intrinsics.c(this.f67870a, portalData.f67870a) && Intrinsics.c(this.f67871b, portalData.f67871b) && Intrinsics.c(this.f67872c, portalData.f67872c) && Intrinsics.c(this.d, portalData.d) && Intrinsics.c(this.f67873e, portalData.f67873e) && Intrinsics.c(this.f67874f, portalData.f67874f);
    }

    public final int hashCode() {
        String str = this.f67870a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67871b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67872c;
        int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31)) * 31;
        PortalCta portalCta = this.f67873e;
        int iHashCode4 = (iHashCode3 + (portalCta == null ? 0 : portalCta.hashCode())) * 31;
        PortalTeaser portalTeaser = this.f67874f;
        return iHashCode4 + (portalTeaser != null ? portalTeaser.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PortalData(title=", this.f67870a, ", surtitle=", this.f67871b, ", description=");
        sbS.append(this.f67872c);
        sbS.append(", asset=");
        sbS.append(this.d);
        sbS.append(", cta=");
        sbS.append(this.f67873e);
        sbS.append(", teaser=");
        sbS.append(this.f67874f);
        sbS.append(")");
        return sbS.toString();
    }
}
