package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
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
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cB\u008f\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0010¢\u0006\u0004\b\u0015\u0010\u0016B©\u0001\b\u0010\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0010\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u0015\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingDto;", "", "", b.a.f24015b, "experienceId", "Lcom/vuitton/android/data/dto/booking/BookingTypeDto;", "type", "title", "surtitle", "disclaimer", "cancellationDisclaimer", "address", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "landscapeImage", "squareImage", "subtitle", "", "Lcom/vuitton/android/data/dto/booking/BookingInfoDto;", "information", "Lcom/vuitton/android/data/dto/booking/BookingActionDto;", "actions", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BookingTypeDto f44644c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44645e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44646f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44647h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AssetImageDto f44648i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AssetImageDto f44649j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f44650k;
    public final List l;
    public final List m;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingDto> serializer() {
            return BookingDto$$serializer.f44651a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        n = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new xe(2)), null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new xe(3)), LazyKt.a(lazyThreadSafetyMode, new xe(4))};
    }

    public /* synthetic */ BookingDto(int i2, String str, String str2, BookingTypeDto bookingTypeDto, String str3, String str4, String str5, String str6, String str7, AssetImageDto assetImageDto, AssetImageDto assetImageDto2, String str8, List list, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if (6927 != (i2 & 6927)) {
            PluginExceptionsKt.b(i2, 6927, BookingDto$$serializer.f44651a.getF19838b());
            throw null;
        }
        this.f44642a = str;
        this.f44643b = str2;
        this.f44644c = bookingTypeDto;
        this.d = str3;
        if ((i2 & 16) == 0) {
            this.f44645e = null;
        } else {
            this.f44645e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f44646f = null;
        } else {
            this.f44646f = str5;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str6;
        }
        if ((i2 & 128) == 0) {
            this.f44647h = null;
        } else {
            this.f44647h = str7;
        }
        this.f44648i = assetImageDto;
        this.f44649j = assetImageDto2;
        if ((i2 & 1024) == 0) {
            this.f44650k = null;
        } else {
            this.f44650k = str8;
        }
        this.l = list;
        this.m = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingDto)) {
            return false;
        }
        BookingDto bookingDto = (BookingDto) obj;
        return Intrinsics.c(this.f44642a, bookingDto.f44642a) && Intrinsics.c(this.f44643b, bookingDto.f44643b) && this.f44644c == bookingDto.f44644c && Intrinsics.c(this.d, bookingDto.d) && Intrinsics.c(this.f44645e, bookingDto.f44645e) && Intrinsics.c(this.f44646f, bookingDto.f44646f) && Intrinsics.c(this.g, bookingDto.g) && Intrinsics.c(this.f44647h, bookingDto.f44647h) && Intrinsics.c(this.f44648i, bookingDto.f44648i) && Intrinsics.c(this.f44649j, bookingDto.f44649j) && Intrinsics.c(this.f44650k, bookingDto.f44650k) && Intrinsics.c(this.l, bookingDto.l) && Intrinsics.c(this.m, bookingDto.m);
    }

    public final int hashCode() {
        int iB = fc.b((this.f44644c.hashCode() + fc.b(this.f44642a.hashCode() * 31, 31, this.f44643b)) * 31, 31, this.d);
        String str = this.f44645e;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f44646f;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f44647h;
        int iHashCode4 = (this.f44649j.hashCode() + ((this.f44648i.hashCode() + ((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31)) * 31)) * 31;
        String str5 = this.f44650k;
        return this.m.hashCode() + n00.a((iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31, 31, this.l);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingDto(id=", this.f44642a, ", experienceId=", this.f44643b, ", type=");
        sbS.append(this.f44644c);
        sbS.append(", title=");
        sbS.append(this.d);
        sbS.append(", surtitle=");
        cj.C(sbS, this.f44645e, ", disclaimer=", this.f44646f, ", cancellationDisclaimer=");
        cj.C(sbS, this.g, ", address=", this.f44647h, ", landscapeImage=");
        sbS.append(this.f44648i);
        sbS.append(", squareImage=");
        sbS.append(this.f44649j);
        sbS.append(", subtitle=");
        d21.z(this.f44650k, ", information=", ", actions=", sbS, this.l);
        return a.o(sbS, this.m, ")");
    }

    public BookingDto(String str, String str2, BookingTypeDto bookingTypeDto, String str3, String str4, String str5, String str6, String str7, AssetImageDto assetImageDto, AssetImageDto assetImageDto2, String str8, List<BookingInfoDto> list, List<BookingActionDto> list2) {
        str.getClass();
        str2.getClass();
        bookingTypeDto.getClass();
        str3.getClass();
        assetImageDto.getClass();
        assetImageDto2.getClass();
        list.getClass();
        list2.getClass();
        this.f44642a = str;
        this.f44643b = str2;
        this.f44644c = bookingTypeDto;
        this.d = str3;
        this.f44645e = str4;
        this.f44646f = str5;
        this.g = str6;
        this.f44647h = str7;
        this.f44648i = assetImageDto;
        this.f44649j = assetImageDto2;
        this.f44650k = str8;
        this.l = list;
        this.m = list2;
    }

    public /* synthetic */ BookingDto(String str, String str2, BookingTypeDto bookingTypeDto, String str3, String str4, String str5, String str6, String str7, AssetImageDto assetImageDto, AssetImageDto assetImageDto2, String str8, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, bookingTypeDto, str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : str5, (i2 & 64) != 0 ? null : str6, (i2 & 128) != 0 ? null : str7, assetImageDto, assetImageDto2, (i2 & 1024) != 0 ? null : str8, list, list2);
    }
}
