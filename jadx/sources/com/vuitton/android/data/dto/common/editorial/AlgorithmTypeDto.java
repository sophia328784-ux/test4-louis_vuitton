package com.vuitton.android.data.dto.common.editorial;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.g5;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;", "", "Companion", "DYNAMIC_YIELD", "MOST_PURCHASED_WITH", "LAST_VIEWED_PRODUCTS", "SKUS", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class AlgorithmTypeDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AlgorithmTypeDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final AlgorithmTypeDto DYNAMIC_YIELD;

    @SerialName
    public static final AlgorithmTypeDto LAST_VIEWED_PRODUCTS;

    @SerialName
    public static final AlgorithmTypeDto MOST_PURCHASED_WITH;

    @SerialName
    public static final AlgorithmTypeDto SKUS;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AlgorithmTypeDto> serializer() {
            return (KSerializer) AlgorithmTypeDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        AlgorithmTypeDto algorithmTypeDto = new AlgorithmTypeDto("DYNAMIC_YIELD", 0);
        DYNAMIC_YIELD = algorithmTypeDto;
        AlgorithmTypeDto algorithmTypeDto2 = new AlgorithmTypeDto("MOST_PURCHASED_WITH", 1);
        MOST_PURCHASED_WITH = algorithmTypeDto2;
        AlgorithmTypeDto algorithmTypeDto3 = new AlgorithmTypeDto("LAST_VIEWED_PRODUCTS", 2);
        LAST_VIEWED_PRODUCTS = algorithmTypeDto3;
        AlgorithmTypeDto algorithmTypeDto4 = new AlgorithmTypeDto("SKUS", 3);
        SKUS = algorithmTypeDto4;
        AlgorithmTypeDto[] algorithmTypeDtoArr = {algorithmTypeDto, algorithmTypeDto2, algorithmTypeDto3, algorithmTypeDto4};
        $VALUES = algorithmTypeDtoArr;
        $ENTRIES = EnumEntriesKt.a(algorithmTypeDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new g5(1));
    }

    public static AlgorithmTypeDto valueOf(String str) {
        return (AlgorithmTypeDto) Enum.valueOf(AlgorithmTypeDto.class, str);
    }

    public static AlgorithmTypeDto[] values() {
        return (AlgorithmTypeDto[]) $VALUES.clone();
    }
}
