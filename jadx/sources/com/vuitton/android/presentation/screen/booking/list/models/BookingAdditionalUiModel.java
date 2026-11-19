package com.vuitton.android.presentation.screen.booking.list.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;", b.a.f24015b, "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "contributionLink", "", "title", "description", "imageUrl", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingAdditionalUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContributionLinkUiModel f54604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f54605c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f54606e;

    public BookingAdditionalUiModel(String str, ContributionLinkUiModel contributionLinkUiModel, String str2, String str3, String str4, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        contributionLinkUiModel.getClass();
        str2.getClass();
        str4.getClass();
        this.f54603a = str;
        this.f54604b = contributionLinkUiModel;
        this.f54605c = str2;
        this.d = str3;
        this.f54606e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingAdditionalUiModel)) {
            return false;
        }
        BookingAdditionalUiModel bookingAdditionalUiModel = (BookingAdditionalUiModel) obj;
        String str = bookingAdditionalUiModel.f54603a;
        ExperienceId.Companion companion = ExperienceId.INSTANCE;
        return this.f54603a.equals(str) && this.f54604b.equals(bookingAdditionalUiModel.f54604b) && this.f54605c.equals(bookingAdditionalUiModel.f54605c) && Intrinsics.c(this.d, bookingAdditionalUiModel.d) && this.f54606e.equals(bookingAdditionalUiModel.f54606e);
    }

    public final int hashCode() {
        ExperienceId.Companion companion = ExperienceId.INSTANCE;
        int iB = fc.b((this.f54604b.hashCode() + (this.f54603a.hashCode() * 31)) * 31, 31, this.f54605c);
        String str = this.d;
        return this.f54606e.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        ExperienceId.Companion companion = ExperienceId.INSTANCE;
        StringBuilder sb = new StringBuilder("BookingAdditionalUiModel(id=");
        sb.append(this.f54603a);
        sb.append(", contributionLink=");
        sb.append(this.f54604b);
        sb.append(", title=");
        cj.C(sb, this.f54605c, ", description=", this.d, ", imageUrl=");
        return n00.r(this.f54606e, ")", sb);
    }
}
