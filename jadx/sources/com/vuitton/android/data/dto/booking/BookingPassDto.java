package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.fc;
import defpackage.n00;
import defpackage.xe;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fBS\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingPassDto;", "", "", "title", "surtitle", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "thumbnail", "", "Lcom/vuitton/android/data/dto/booking/BookingInfoDto;", "information", "qrCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingPassDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f44732f = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new xe(23)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageDto f44735c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetImageDto f44736e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingPassDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingPassDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingPassDto> serializer() {
            return BookingPassDto$$serializer.f44737a;
        }
    }

    public /* synthetic */ BookingPassDto(int i2, String str, String str2, AssetImageDto assetImageDto, List list, AssetImageDto assetImageDto2, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i2 & 31)) {
            PluginExceptionsKt.b(i2, 31, BookingPassDto$$serializer.f44737a.getF19838b());
            throw null;
        }
        this.f44733a = str;
        this.f44734b = str2;
        this.f44735c = assetImageDto;
        this.d = list;
        this.f44736e = assetImageDto2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingPassDto)) {
            return false;
        }
        BookingPassDto bookingPassDto = (BookingPassDto) obj;
        return Intrinsics.c(this.f44733a, bookingPassDto.f44733a) && Intrinsics.c(this.f44734b, bookingPassDto.f44734b) && Intrinsics.c(this.f44735c, bookingPassDto.f44735c) && Intrinsics.c(this.d, bookingPassDto.d) && Intrinsics.c(this.f44736e, bookingPassDto.f44736e);
    }

    public final int hashCode() {
        return this.f44736e.hashCode() + n00.a((this.f44735c.hashCode() + fc.b(this.f44733a.hashCode() * 31, 31, this.f44734b)) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingPassDto(title=", this.f44733a, ", surtitle=", this.f44734b, ", thumbnail=");
        sbS.append(this.f44735c);
        sbS.append(", information=");
        sbS.append(this.d);
        sbS.append(", qrCode=");
        sbS.append(this.f44736e);
        sbS.append(")");
        return sbS.toString();
    }

    public BookingPassDto(String str, String str2, AssetImageDto assetImageDto, List<BookingInfoDto> list, AssetImageDto assetImageDto2) {
        str.getClass();
        str2.getClass();
        assetImageDto.getClass();
        list.getClass();
        assetImageDto2.getClass();
        this.f44733a = str;
        this.f44734b = str2;
        this.f44735c = assetImageDto;
        this.d = list;
        this.f44736e = assetImageDto2;
    }
}
