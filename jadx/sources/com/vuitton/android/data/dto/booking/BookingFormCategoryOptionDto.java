package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tB?\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormCategoryOptionDto;", "", "", b.a.f24015b, "name", "", "selected", "disabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZ)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingFormCategoryOptionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44660a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f44662c;
    public final boolean d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormCategoryOptionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormCategoryOptionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingFormCategoryOptionDto> serializer() {
            return BookingFormCategoryOptionDto$$serializer.f44663a;
        }
    }

    public /* synthetic */ BookingFormCategoryOptionDto(int i2, String str, String str2, boolean z, boolean z2, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, BookingFormCategoryOptionDto$$serializer.f44663a.getF19838b());
            throw null;
        }
        this.f44660a = str;
        this.f44661b = str2;
        this.f44662c = z;
        this.d = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingFormCategoryOptionDto)) {
            return false;
        }
        BookingFormCategoryOptionDto bookingFormCategoryOptionDto = (BookingFormCategoryOptionDto) obj;
        return Intrinsics.c(this.f44660a, bookingFormCategoryOptionDto.f44660a) && Intrinsics.c(this.f44661b, bookingFormCategoryOptionDto.f44661b) && this.f44662c == bookingFormCategoryOptionDto.f44662c && this.d == bookingFormCategoryOptionDto.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + o60.b(fc.b(this.f44660a.hashCode() * 31, 31, this.f44661b), 31, this.f44662c);
    }

    public final String toString() {
        return pq0.p(fc.s("BookingFormCategoryOptionDto(id=", this.f44660a, ", name=", this.f44661b, ", selected="), this.f44662c, ", disabled=", this.d, ")");
    }

    public BookingFormCategoryOptionDto(String str, String str2, boolean z, boolean z2) {
        str.getClass();
        str2.getClass();
        this.f44660a = str;
        this.f44661b = str2;
        this.f44662c = z;
        this.d = z2;
    }
}
