package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkDto;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bBM\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;", "", "", b.a.f24015b, "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;", "contributionLink", "title", "description", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingAdditionalDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContributionLinkDto f44625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44626c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetImageDto f44627e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingAdditionalDto> serializer() {
            return BookingAdditionalDto$$serializer.f44628a;
        }
    }

    public /* synthetic */ BookingAdditionalDto(int i2, String str, ContributionLinkDto contributionLinkDto, String str2, String str3, AssetImageDto assetImageDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (23 != (i2 & 23)) {
            PluginExceptionsKt.b(i2, 23, BookingAdditionalDto$$serializer.f44628a.getF19838b());
            throw null;
        }
        this.f44624a = str;
        this.f44625b = contributionLinkDto;
        this.f44626c = str2;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        this.f44627e = assetImageDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingAdditionalDto)) {
            return false;
        }
        BookingAdditionalDto bookingAdditionalDto = (BookingAdditionalDto) obj;
        return Intrinsics.c(this.f44624a, bookingAdditionalDto.f44624a) && Intrinsics.c(this.f44625b, bookingAdditionalDto.f44625b) && Intrinsics.c(this.f44626c, bookingAdditionalDto.f44626c) && Intrinsics.c(this.d, bookingAdditionalDto.d) && Intrinsics.c(this.f44627e, bookingAdditionalDto.f44627e);
    }

    public final int hashCode() {
        int iB = fc.b((this.f44625b.hashCode() + (this.f44624a.hashCode() * 31)) * 31, 31, this.f44626c);
        String str = this.d;
        return this.f44627e.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BookingAdditionalDto(id=");
        sb.append(this.f44624a);
        sb.append(", contributionLink=");
        sb.append(this.f44625b);
        sb.append(", title=");
        cj.C(sb, this.f44626c, ", description=", this.d, ", image=");
        sb.append(this.f44627e);
        sb.append(")");
        return sb.toString();
    }

    public BookingAdditionalDto(String str, ContributionLinkDto contributionLinkDto, String str2, String str3, AssetImageDto assetImageDto) {
        str.getClass();
        contributionLinkDto.getClass();
        str2.getClass();
        assetImageDto.getClass();
        this.f44624a = str;
        this.f44625b = contributionLinkDto;
        this.f44626c = str2;
        this.d = str3;
        this.f44627e = assetImageDto;
    }

    public /* synthetic */ BookingAdditionalDto(String str, ContributionLinkDto contributionLinkDto, String str2, String str3, AssetImageDto assetImageDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, contributionLinkDto, str2, (i2 & 8) != 0 ? null : str3, assetImageDto);
    }
}
