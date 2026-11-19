package com.vuitton.foundation.model.domain.model.booking;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;", "", "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "contributionLink", "", "title", "description", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingAdditional {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContributionLink f66687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66688c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetImage f66689e;

    public BookingAdditional(String str, ContributionLink contributionLink, String str2, String str3, AssetImage assetImage, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        contributionLink.getClass();
        str2.getClass();
        assetImage.getClass();
        this.f66686a = str;
        this.f66687b = contributionLink;
        this.f66688c = str2;
        this.d = str3;
        this.f66689e = assetImage;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingAdditional)) {
            return false;
        }
        BookingAdditional bookingAdditional = (BookingAdditional) obj;
        String str = bookingAdditional.f66686a;
        ExperienceId.Companion companion = ExperienceId.INSTANCE;
        return this.f66686a.equals(str) && this.f66687b.equals(bookingAdditional.f66687b) && this.f66688c.equals(bookingAdditional.f66688c) && Intrinsics.c(this.d, bookingAdditional.d) && this.f66689e.equals(bookingAdditional.f66689e);
    }

    public final int hashCode() {
        ExperienceId.Companion companion = ExperienceId.INSTANCE;
        int iB = fc.b((this.f66687b.hashCode() + (this.f66686a.hashCode() * 31)) * 31, 31, this.f66688c);
        String str = this.d;
        return this.f66689e.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        ExperienceId.Companion companion = ExperienceId.INSTANCE;
        StringBuilder sb = new StringBuilder("BookingAdditional(id=");
        sb.append(this.f66686a);
        sb.append(", contributionLink=");
        sb.append(this.f66687b);
        sb.append(", title=");
        cj.C(sb, this.f66688c, ", description=", this.d, ", image=");
        sb.append(this.f66689e);
        sb.append(")");
        return sb.toString();
    }
}
