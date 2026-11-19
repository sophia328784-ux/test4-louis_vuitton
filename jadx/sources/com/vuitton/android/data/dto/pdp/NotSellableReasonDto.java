package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.mg0;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;", "", "Companion", "NOT_ECOMMERCE", "MANDATORY_CUSTOMIZATION", "WEB_ONLY", "UNAVAILABLE", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class NotSellableReasonDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NotSellableReasonDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final NotSellableReasonDto MANDATORY_CUSTOMIZATION;

    @SerialName
    public static final NotSellableReasonDto NOT_ECOMMERCE;

    @SerialName
    public static final NotSellableReasonDto UNAVAILABLE;

    @SerialName
    public static final NotSellableReasonDto WEB_ONLY;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<NotSellableReasonDto> serializer() {
            return (KSerializer) NotSellableReasonDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        NotSellableReasonDto notSellableReasonDto = new NotSellableReasonDto("NOT_ECOMMERCE", 0);
        NOT_ECOMMERCE = notSellableReasonDto;
        NotSellableReasonDto notSellableReasonDto2 = new NotSellableReasonDto("MANDATORY_CUSTOMIZATION", 1);
        MANDATORY_CUSTOMIZATION = notSellableReasonDto2;
        NotSellableReasonDto notSellableReasonDto3 = new NotSellableReasonDto("WEB_ONLY", 2);
        WEB_ONLY = notSellableReasonDto3;
        NotSellableReasonDto notSellableReasonDto4 = new NotSellableReasonDto("UNAVAILABLE", 3);
        UNAVAILABLE = notSellableReasonDto4;
        NotSellableReasonDto[] notSellableReasonDtoArr = {notSellableReasonDto, notSellableReasonDto2, notSellableReasonDto3, notSellableReasonDto4};
        $VALUES = notSellableReasonDtoArr;
        $ENTRIES = EnumEntriesKt.a(notSellableReasonDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(1));
    }

    public static NotSellableReasonDto valueOf(String str) {
        return (NotSellableReasonDto) Enum.valueOf(NotSellableReasonDto.class, str);
    }

    public static NotSellableReasonDto[] values() {
        return (NotSellableReasonDto[]) $VALUES.clone();
    }
}
