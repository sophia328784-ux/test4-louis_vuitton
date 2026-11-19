package com.vuitton.android.data.dto.product.stock.shared;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.w9;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;", "", "Companion", "DAY", "WEEK", "MONTH", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class AvailabilityTimeFormatDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AvailabilityTimeFormatDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final AvailabilityTimeFormatDto DAY;

    @SerialName
    public static final AvailabilityTimeFormatDto MONTH;

    @SerialName
    public static final AvailabilityTimeFormatDto WEEK;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AvailabilityTimeFormatDto> serializer() {
            return (KSerializer) AvailabilityTimeFormatDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        AvailabilityTimeFormatDto availabilityTimeFormatDto = new AvailabilityTimeFormatDto("DAY", 0);
        DAY = availabilityTimeFormatDto;
        AvailabilityTimeFormatDto availabilityTimeFormatDto2 = new AvailabilityTimeFormatDto("WEEK", 1);
        WEEK = availabilityTimeFormatDto2;
        AvailabilityTimeFormatDto availabilityTimeFormatDto3 = new AvailabilityTimeFormatDto("MONTH", 2);
        MONTH = availabilityTimeFormatDto3;
        AvailabilityTimeFormatDto[] availabilityTimeFormatDtoArr = {availabilityTimeFormatDto, availabilityTimeFormatDto2, availabilityTimeFormatDto3};
        $VALUES = availabilityTimeFormatDtoArr;
        $ENTRIES = EnumEntriesKt.a(availabilityTimeFormatDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(11));
    }

    public static AvailabilityTimeFormatDto valueOf(String str) {
        return (AvailabilityTimeFormatDto) Enum.valueOf(AvailabilityTimeFormatDto.class, str);
    }

    public static AvailabilityTimeFormatDto[] values() {
        return (AvailabilityTimeFormatDto[]) $VALUES.clone();
    }
}
