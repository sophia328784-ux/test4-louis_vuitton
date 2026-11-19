package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.cj;
import defpackage.fc;
import defpackage.xe;
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
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017Bk\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0011B\u007f\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0010\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;", "", "", b.a.f24015b, "title", "surtitle", "description", "additionalInformation", "dateTime", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "Lcom/vuitton/android/data/dto/booking/BookingFormDto;", "form", "Lcom/vuitton/android/data/dto/booking/BookingTypeDto;", "type", "tag", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/booking/BookingFormDto;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/booking/BookingFormDto;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingFormResponseDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Lazy[] f44676k = {null, null, null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new xe(9)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44679c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44681f;
    public final AssetImageDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BookingFormDto f44682h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BookingTypeDto f44683i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44684j;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingFormResponseDto> serializer() {
            return BookingFormResponseDto$$serializer.f44685a;
        }
    }

    public /* synthetic */ BookingFormResponseDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, AssetImageDto assetImageDto, BookingFormDto bookingFormDto, BookingTypeDto bookingTypeDto, String str7, SerializationConstructorMarker serializationConstructorMarker) {
        if (451 != (i2 & 451)) {
            PluginExceptionsKt.b(i2, 451, BookingFormResponseDto$$serializer.f44685a.getF19838b());
            throw null;
        }
        this.f44677a = str;
        this.f44678b = str2;
        if ((i2 & 4) == 0) {
            this.f44679c = null;
        } else {
            this.f44679c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f44680e = null;
        } else {
            this.f44680e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f44681f = null;
        } else {
            this.f44681f = str6;
        }
        this.g = assetImageDto;
        this.f44682h = bookingFormDto;
        this.f44683i = bookingTypeDto;
        if ((i2 & 512) == 0) {
            this.f44684j = null;
        } else {
            this.f44684j = str7;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingFormResponseDto)) {
            return false;
        }
        BookingFormResponseDto bookingFormResponseDto = (BookingFormResponseDto) obj;
        return Intrinsics.c(this.f44677a, bookingFormResponseDto.f44677a) && Intrinsics.c(this.f44678b, bookingFormResponseDto.f44678b) && Intrinsics.c(this.f44679c, bookingFormResponseDto.f44679c) && Intrinsics.c(this.d, bookingFormResponseDto.d) && Intrinsics.c(this.f44680e, bookingFormResponseDto.f44680e) && Intrinsics.c(this.f44681f, bookingFormResponseDto.f44681f) && Intrinsics.c(this.g, bookingFormResponseDto.g) && Intrinsics.c(this.f44682h, bookingFormResponseDto.f44682h) && this.f44683i == bookingFormResponseDto.f44683i && Intrinsics.c(this.f44684j, bookingFormResponseDto.f44684j);
    }

    public final int hashCode() {
        int iB = fc.b(this.f44677a.hashCode() * 31, 31, this.f44678b);
        String str = this.f44679c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44680e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f44681f;
        int iHashCode4 = (this.f44683i.hashCode() + ((this.f44682h.hashCode() + ((this.g.hashCode() + ((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31)) * 31)) * 31)) * 31;
        String str5 = this.f44684j;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingFormResponseDto(id=", this.f44677a, ", title=", this.f44678b, ", surtitle=");
        cj.C(sbS, this.f44679c, ", description=", this.d, ", additionalInformation=");
        cj.C(sbS, this.f44680e, ", dateTime=", this.f44681f, ", image=");
        sbS.append(this.g);
        sbS.append(", form=");
        sbS.append(this.f44682h);
        sbS.append(", type=");
        sbS.append(this.f44683i);
        sbS.append(", tag=");
        sbS.append(this.f44684j);
        sbS.append(")");
        return sbS.toString();
    }

    public BookingFormResponseDto(String str, String str2, String str3, String str4, String str5, String str6, AssetImageDto assetImageDto, BookingFormDto bookingFormDto, BookingTypeDto bookingTypeDto, String str7) {
        str.getClass();
        str2.getClass();
        assetImageDto.getClass();
        bookingFormDto.getClass();
        bookingTypeDto.getClass();
        this.f44677a = str;
        this.f44678b = str2;
        this.f44679c = str3;
        this.d = str4;
        this.f44680e = str5;
        this.f44681f = str6;
        this.g = assetImageDto;
        this.f44682h = bookingFormDto;
        this.f44683i = bookingTypeDto;
        this.f44684j = str7;
    }

    public /* synthetic */ BookingFormResponseDto(String str, String str2, String str3, String str4, String str5, String str6, AssetImageDto assetImageDto, BookingFormDto bookingFormDto, BookingTypeDto bookingTypeDto, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6, assetImageDto, bookingFormDto, bookingTypeDto, (i2 & 512) != 0 ? null : str7);
    }
}
