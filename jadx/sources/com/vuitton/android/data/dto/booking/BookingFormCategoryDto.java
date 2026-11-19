package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.fc;
import defpackage.pq0;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\tB?\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto;", "", "", b.a.f24015b, "title", "", "Lcom/vuitton/android/data/dto/booking/BookingFormCategoryOptionDto;", "values", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingFormCategoryDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new xe(7))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f44658c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingFormCategoryDto> serializer() {
            return BookingFormCategoryDto$$serializer.f44659a;
        }
    }

    public /* synthetic */ BookingFormCategoryDto(int i2, String str, String str2, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, BookingFormCategoryDto$$serializer.f44659a.getF19838b());
            throw null;
        }
        this.f44656a = str;
        this.f44657b = str2;
        this.f44658c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingFormCategoryDto)) {
            return false;
        }
        BookingFormCategoryDto bookingFormCategoryDto = (BookingFormCategoryDto) obj;
        return Intrinsics.c(this.f44656a, bookingFormCategoryDto.f44656a) && Intrinsics.c(this.f44657b, bookingFormCategoryDto.f44657b) && Intrinsics.c(this.f44658c, bookingFormCategoryDto.f44658c);
    }

    public final int hashCode() {
        return this.f44658c.hashCode() + fc.b(this.f44656a.hashCode() * 31, 31, this.f44657b);
    }

    public final String toString() {
        return a.o(fc.s("BookingFormCategoryDto(id=", this.f44656a, ", title=", this.f44657b, ", values="), this.f44658c, ")");
    }

    public BookingFormCategoryDto(String str, String str2, List<BookingFormCategoryOptionDto> list) {
        pq0.B(str, str2, list);
        this.f44656a = str;
        this.f44657b = str2;
        this.f44658c = list;
    }
}
