package com.vuitton.android.data.dto.common.editorial;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.wq0;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/RatioDto;", "", "Companion", "RATIO_2X3", "RATIO_4X5", "RATIO_16X9", "RATIO_9X16", "RATIO_1X1", "FULLSCREEN", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class RatioDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RatioDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final RatioDto FULLSCREEN;

    @SerialName
    public static final RatioDto RATIO_16X9;

    @SerialName
    public static final RatioDto RATIO_1X1;

    @SerialName
    public static final RatioDto RATIO_2X3;

    @SerialName
    public static final RatioDto RATIO_4X5;

    @SerialName
    public static final RatioDto RATIO_9X16;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/RatioDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/RatioDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<RatioDto> serializer() {
            return (KSerializer) RatioDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        RatioDto ratioDto = new RatioDto("RATIO_2X3", 0);
        RATIO_2X3 = ratioDto;
        RatioDto ratioDto2 = new RatioDto("RATIO_4X5", 1);
        RATIO_4X5 = ratioDto2;
        RatioDto ratioDto3 = new RatioDto("RATIO_16X9", 2);
        RATIO_16X9 = ratioDto3;
        RatioDto ratioDto4 = new RatioDto("RATIO_9X16", 3);
        RATIO_9X16 = ratioDto4;
        RatioDto ratioDto5 = new RatioDto("RATIO_1X1", 4);
        RATIO_1X1 = ratioDto5;
        RatioDto ratioDto6 = new RatioDto("FULLSCREEN", 5);
        FULLSCREEN = ratioDto6;
        RatioDto[] ratioDtoArr = {ratioDto, ratioDto2, ratioDto3, ratioDto4, ratioDto5, ratioDto6};
        $VALUES = ratioDtoArr;
        $ENTRIES = EnumEntriesKt.a(ratioDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new wq0(4));
    }

    public static RatioDto valueOf(String str) {
        return (RatioDto) Enum.valueOf(RatioDto.class, str);
    }

    public static RatioDto[] values() {
        return (RatioDto[]) $VALUES.clone();
    }
}
