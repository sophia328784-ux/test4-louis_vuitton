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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;", "", "Companion", "ADD_TO_CALENDAR", "QR_CODE", "CANCEL", "MODIFY", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class BookingActionTypeDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BookingActionTypeDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    @SerialName
    public static final BookingActionTypeDto ADD_TO_CALENDAR;

    @SerialName
    public static final BookingActionTypeDto CANCEL;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final BookingActionTypeDto MODIFY;

    @SerialName
    public static final BookingActionTypeDto QR_CODE;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingActionTypeDto> serializer() {
            return (KSerializer) BookingActionTypeDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        BookingActionTypeDto bookingActionTypeDto = new BookingActionTypeDto("ADD_TO_CALENDAR", 0);
        ADD_TO_CALENDAR = bookingActionTypeDto;
        BookingActionTypeDto bookingActionTypeDto2 = new BookingActionTypeDto("QR_CODE", 1);
        QR_CODE = bookingActionTypeDto2;
        BookingActionTypeDto bookingActionTypeDto3 = new BookingActionTypeDto("CANCEL", 2);
        CANCEL = bookingActionTypeDto3;
        BookingActionTypeDto bookingActionTypeDto4 = new BookingActionTypeDto("MODIFY", 3);
        MODIFY = bookingActionTypeDto4;
        BookingActionTypeDto[] bookingActionTypeDtoArr = {bookingActionTypeDto, bookingActionTypeDto2, bookingActionTypeDto3, bookingActionTypeDto4};
        $VALUES = bookingActionTypeDtoArr;
        $ENTRIES = EnumEntriesKt.a(bookingActionTypeDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new xe(0));
    }

    public static BookingActionTypeDto valueOf(String str) {
        return (BookingActionTypeDto) Enum.valueOf(BookingActionTypeDto.class, str);
    }

    public static BookingActionTypeDto[] values() {
        return (BookingActionTypeDto[]) $VALUES.clone();
    }
}
