package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.xe;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto;", "", "Companion", "TEXT", "ADDRESS", "PHONE", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class BookingInfoTypeDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BookingInfoTypeDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    @SerialName
    public static final BookingInfoTypeDto ADDRESS;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final BookingInfoTypeDto PHONE;

    @SerialName
    public static final BookingInfoTypeDto TEXT;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingInfoTypeDto> serializer() {
            return (KSerializer) BookingInfoTypeDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        BookingInfoTypeDto bookingInfoTypeDto = new BookingInfoTypeDto("TEXT", 0);
        TEXT = bookingInfoTypeDto;
        BookingInfoTypeDto bookingInfoTypeDto2 = new BookingInfoTypeDto("ADDRESS", 1);
        ADDRESS = bookingInfoTypeDto2;
        BookingInfoTypeDto bookingInfoTypeDto3 = new BookingInfoTypeDto("PHONE", 2);
        PHONE = bookingInfoTypeDto3;
        BookingInfoTypeDto[] bookingInfoTypeDtoArr = {bookingInfoTypeDto, bookingInfoTypeDto2, bookingInfoTypeDto3};
        $VALUES = bookingInfoTypeDtoArr;
        $ENTRIES = EnumEntriesKt.a(bookingInfoTypeDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new xe(20));
    }

    public static BookingInfoTypeDto valueOf(String str) {
        return (BookingInfoTypeDto) Enum.valueOf(BookingInfoTypeDto.class, str);
    }

    public static BookingInfoTypeDto[] values() {
        return (BookingInfoTypeDto[]) $VALUES.clone();
    }
}
