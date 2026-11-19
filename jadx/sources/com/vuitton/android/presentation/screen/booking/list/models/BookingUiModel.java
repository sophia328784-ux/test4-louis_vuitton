package com.vuitton.android.presentation.screen.booking.list.models;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\b\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u000f¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingId;", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;", "experienceId", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;", "type", "", "title", "surtitle", "subtitle", "landscapeImageUrl", "imageUrl", "address", "", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;", "information", "disclaimer", "cancellationDisclaimer", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;", "actions", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BookingTypeUiModel f54616c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f54617e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f54618f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f54619h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f54620i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f54621j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f54622k;
    public final String l;
    public final List m;

    public BookingUiModel(String str, String str2, BookingTypeUiModel bookingTypeUiModel, String str3, String str4, String str5, String str6, String str7, String str8, List list, String str9, String str10, List list2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        bookingTypeUiModel.getClass();
        str3.getClass();
        str6.getClass();
        str7.getClass();
        list.getClass();
        list2.getClass();
        this.f54614a = str;
        this.f54615b = str2;
        this.f54616c = bookingTypeUiModel;
        this.d = str3;
        this.f54617e = str4;
        this.f54618f = str5;
        this.g = str6;
        this.f54619h = str7;
        this.f54620i = str8;
        this.f54621j = list;
        this.f54622k = str9;
        this.l = str10;
        this.m = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingUiModel)) {
            return false;
        }
        BookingUiModel bookingUiModel = (BookingUiModel) obj;
        String str = bookingUiModel.f54614a;
        BookingId.Companion companion = BookingId.INSTANCE;
        if (!this.f54614a.equals(str)) {
            return false;
        }
        String str2 = bookingUiModel.f54615b;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        return this.f54615b.equals(str2) && this.f54616c == bookingUiModel.f54616c && this.d.equals(bookingUiModel.d) && Intrinsics.c(this.f54617e, bookingUiModel.f54617e) && Intrinsics.c(this.f54618f, bookingUiModel.f54618f) && this.g.equals(bookingUiModel.g) && this.f54619h.equals(bookingUiModel.f54619h) && Intrinsics.c(this.f54620i, bookingUiModel.f54620i) && this.f54621j.equals(bookingUiModel.f54621j) && Intrinsics.c(this.f54622k, bookingUiModel.f54622k) && Intrinsics.c(this.l, bookingUiModel.l) && this.m.equals(bookingUiModel.m);
    }

    public final int hashCode() {
        BookingId.Companion companion = BookingId.INSTANCE;
        int iHashCode = this.f54614a.hashCode() * 31;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        int iB = fc.b((this.f54616c.hashCode() + fc.b(iHashCode, 31, this.f54615b)) * 31, 31, this.d);
        String str = this.f54617e;
        int iHashCode2 = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f54618f;
        int iB2 = fc.b(fc.b((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.g), 31, this.f54619h);
        String str3 = this.f54620i;
        int iA = n00.a((iB2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.f54621j);
        String str4 = this.f54622k;
        int iHashCode3 = (iA + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.l;
        return this.m.hashCode() + ((iHashCode3 + (str5 != null ? str5.hashCode() : 0)) * 31);
    }

    public final String toString() {
        BookingId.Companion companion = BookingId.INSTANCE;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        StringBuilder sbS = fc.s("BookingUiModel(id=", this.f54614a, ", experienceId=", this.f54615b, ", type=");
        sbS.append(this.f54616c);
        sbS.append(", title=");
        sbS.append(this.d);
        sbS.append(", surtitle=");
        cj.C(sbS, this.f54617e, ", subtitle=", this.f54618f, ", landscapeImageUrl=");
        cj.C(sbS, this.g, ", imageUrl=", this.f54619h, ", address=");
        d21.z(this.f54620i, ", information=", ", disclaimer=", sbS, this.f54621j);
        cj.C(sbS, this.f54622k, ", cancellationDisclaimer=", this.l, ", actions=");
        return a.o(sbS, this.m, ")");
    }
}
