package com.vuitton.foundation.model.domain.model.portal;

import com.vuitton.foundation.model.domain.model.common.Asset;
import defpackage.cj;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;", "", "Ljava/time/Instant;", "eventStartTimeInUTC", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "", "title", "surtitle", "description", "Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;", "cta", "<init>", "(Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PortalTeaser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Instant f67875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Asset f67876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67877c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67878e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PortalCta f67879f;

    public PortalTeaser(Instant instant, Asset asset, String str, String str2, String str3, PortalCta portalCta) {
        asset.getClass();
        this.f67875a = instant;
        this.f67876b = asset;
        this.f67877c = str;
        this.d = str2;
        this.f67878e = str3;
        this.f67879f = portalCta;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PortalTeaser)) {
            return false;
        }
        PortalTeaser portalTeaser = (PortalTeaser) obj;
        return Intrinsics.c(this.f67875a, portalTeaser.f67875a) && Intrinsics.c(this.f67876b, portalTeaser.f67876b) && Intrinsics.c(this.f67877c, portalTeaser.f67877c) && Intrinsics.c(this.d, portalTeaser.d) && Intrinsics.c(this.f67878e, portalTeaser.f67878e) && Intrinsics.c(this.f67879f, portalTeaser.f67879f);
    }

    public final int hashCode() {
        Instant instant = this.f67875a;
        int iHashCode = (this.f67876b.hashCode() + ((instant == null ? 0 : instant.hashCode()) * 31)) * 31;
        String str = this.f67877c;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67878e;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        PortalCta portalCta = this.f67879f;
        return iHashCode4 + (portalCta != null ? portalCta.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PortalTeaser(eventStartTimeInUTC=");
        sb.append(this.f67875a);
        sb.append(", asset=");
        sb.append(this.f67876b);
        sb.append(", title=");
        cj.C(sb, this.f67877c, ", surtitle=", this.d, ", description=");
        sb.append(this.f67878e);
        sb.append(", cta=");
        sb.append(this.f67879f);
        sb.append(")");
        return sb.toString();
    }
}
