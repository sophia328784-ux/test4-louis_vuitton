package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.ul0;
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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017Ba\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0011B{\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0010\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PreBookDto;", "", "", b.a.f24015b, "experienceId", "Lcom/vuitton/android/data/dto/booking/BookingTypeDto;", "type", "title", "surtitle", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "", "Lcom/vuitton/android/data/dto/booking/BookingInfoDto;", "information", "disclaimer", "expirationDate", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PreBookDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Lazy[] f44750j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BookingTypeDto f44753c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44754e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AssetImageDto f44755f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44756h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f44757i;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PreBookDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/PreBookDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PreBookDto> serializer() {
            return PreBookDto$$serializer.f44758a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f44750j = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new ul0(24)), null, null, null, LazyKt.a(lazyThreadSafetyMode, new ul0(25)), null, null};
    }

    public /* synthetic */ PreBookDto(int i2, String str, String str2, BookingTypeDto bookingTypeDto, String str3, String str4, AssetImageDto assetImageDto, List list, String str5, String str6, SerializationConstructorMarker serializationConstructorMarker) {
        if (111 != (i2 & 111)) {
            PluginExceptionsKt.b(i2, 111, PreBookDto$$serializer.f44758a.getF19838b());
            throw null;
        }
        this.f44751a = str;
        this.f44752b = str2;
        this.f44753c = bookingTypeDto;
        this.d = str3;
        if ((i2 & 16) == 0) {
            this.f44754e = null;
        } else {
            this.f44754e = str4;
        }
        this.f44755f = assetImageDto;
        this.g = list;
        if ((i2 & 128) == 0) {
            this.f44756h = null;
        } else {
            this.f44756h = str5;
        }
        if ((i2 & 256) == 0) {
            this.f44757i = null;
        } else {
            this.f44757i = str6;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreBookDto)) {
            return false;
        }
        PreBookDto preBookDto = (PreBookDto) obj;
        return Intrinsics.c(this.f44751a, preBookDto.f44751a) && Intrinsics.c(this.f44752b, preBookDto.f44752b) && this.f44753c == preBookDto.f44753c && Intrinsics.c(this.d, preBookDto.d) && Intrinsics.c(this.f44754e, preBookDto.f44754e) && Intrinsics.c(this.f44755f, preBookDto.f44755f) && Intrinsics.c(this.g, preBookDto.g) && Intrinsics.c(this.f44756h, preBookDto.f44756h) && Intrinsics.c(this.f44757i, preBookDto.f44757i);
    }

    public final int hashCode() {
        int iB = fc.b((this.f44753c.hashCode() + fc.b(this.f44751a.hashCode() * 31, 31, this.f44752b)) * 31, 31, this.d);
        String str = this.f44754e;
        int iA = n00.a((this.f44755f.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.g);
        String str2 = this.f44756h;
        int iHashCode = (iA + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44757i;
        return iHashCode + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PreBookDto(id=", this.f44751a, ", experienceId=", this.f44752b, ", type=");
        sbS.append(this.f44753c);
        sbS.append(", title=");
        sbS.append(this.d);
        sbS.append(", surtitle=");
        sbS.append(this.f44754e);
        sbS.append(", image=");
        sbS.append(this.f44755f);
        sbS.append(", information=");
        o60.B(", disclaimer=", this.f44756h, ", expirationDate=", sbS, this.g);
        return n00.r(this.f44757i, ")", sbS);
    }

    public PreBookDto(String str, String str2, BookingTypeDto bookingTypeDto, String str3, String str4, AssetImageDto assetImageDto, List<BookingInfoDto> list, String str5, String str6) {
        str.getClass();
        str2.getClass();
        bookingTypeDto.getClass();
        str3.getClass();
        assetImageDto.getClass();
        list.getClass();
        this.f44751a = str;
        this.f44752b = str2;
        this.f44753c = bookingTypeDto;
        this.d = str3;
        this.f44754e = str4;
        this.f44755f = assetImageDto;
        this.g = list;
        this.f44756h = str5;
        this.f44757i = str6;
    }

    public /* synthetic */ PreBookDto(String str, String str2, BookingTypeDto bookingTypeDto, String str3, String str4, AssetImageDto assetImageDto, List list, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, bookingTypeDto, str3, (i2 & 16) != 0 ? null : str4, assetImageDto, list, (i2 & 128) != 0 ? null : str5, (i2 & 256) != 0 ? null : str6);
    }
}
