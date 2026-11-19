package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.gp0;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;", "", "Companion", "DEFAULT", "FLOOR", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class ProductBackgroundDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProductBackgroundDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final ProductBackgroundDto DEFAULT;

    @SerialName
    public static final ProductBackgroundDto FLOOR;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductBackgroundDto> serializer() {
            return (KSerializer) ProductBackgroundDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        ProductBackgroundDto productBackgroundDto = new ProductBackgroundDto("DEFAULT", 0);
        DEFAULT = productBackgroundDto;
        ProductBackgroundDto productBackgroundDto2 = new ProductBackgroundDto("FLOOR", 1);
        FLOOR = productBackgroundDto2;
        ProductBackgroundDto[] productBackgroundDtoArr = {productBackgroundDto, productBackgroundDto2};
        $VALUES = productBackgroundDtoArr;
        $ENTRIES = EnumEntriesKt.a(productBackgroundDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new gp0(13));
    }

    public static ProductBackgroundDto valueOf(String str) {
        return (ProductBackgroundDto) Enum.valueOf(ProductBackgroundDto.class, str);
    }

    public static ProductBackgroundDto[] values() {
        return (ProductBackgroundDto[]) $VALUES.clone();
    }
}
