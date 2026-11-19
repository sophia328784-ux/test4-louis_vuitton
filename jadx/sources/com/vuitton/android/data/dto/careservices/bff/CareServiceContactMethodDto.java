package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.lg;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;", "", "Companion", "EMAIL", "PHONE_CALL", "VIDEO_CALL", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class CareServiceContactMethodDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CareServiceContactMethodDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final CareServiceContactMethodDto EMAIL;

    @SerialName
    public static final CareServiceContactMethodDto PHONE_CALL;

    @SerialName
    public static final CareServiceContactMethodDto VIDEO_CALL;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceContactMethodDto> serializer() {
            return (KSerializer) CareServiceContactMethodDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        CareServiceContactMethodDto careServiceContactMethodDto = new CareServiceContactMethodDto("EMAIL", 0);
        EMAIL = careServiceContactMethodDto;
        CareServiceContactMethodDto careServiceContactMethodDto2 = new CareServiceContactMethodDto("PHONE_CALL", 1);
        PHONE_CALL = careServiceContactMethodDto2;
        CareServiceContactMethodDto careServiceContactMethodDto3 = new CareServiceContactMethodDto("VIDEO_CALL", 2);
        VIDEO_CALL = careServiceContactMethodDto3;
        CareServiceContactMethodDto[] careServiceContactMethodDtoArr = {careServiceContactMethodDto, careServiceContactMethodDto2, careServiceContactMethodDto3};
        $VALUES = careServiceContactMethodDtoArr;
        $ENTRIES = EnumEntriesKt.a(careServiceContactMethodDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new lg(14));
    }

    public static CareServiceContactMethodDto valueOf(String str) {
        return (CareServiceContactMethodDto) Enum.valueOf(CareServiceContactMethodDto.class, str);
    }

    public static CareServiceContactMethodDto[] values() {
        return (CareServiceContactMethodDto[]) $VALUES.clone();
    }
}
