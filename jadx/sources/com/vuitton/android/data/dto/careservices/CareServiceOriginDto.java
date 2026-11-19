package com.vuitton.android.data.dto.careservices;

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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;", "", "Companion", "AppForm", "Call", "VideoCall", "CSC_CALL", "CSC_APPFORM", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class CareServiceOriginDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CareServiceOriginDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    @SerialName
    public static final CareServiceOriginDto AppForm;

    @SerialName
    public static final CareServiceOriginDto CSC_APPFORM;

    @SerialName
    public static final CareServiceOriginDto CSC_CALL;

    @SerialName
    public static final CareServiceOriginDto Call;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final CareServiceOriginDto VideoCall;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceOriginDto> serializer() {
            return (KSerializer) CareServiceOriginDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        CareServiceOriginDto careServiceOriginDto = new CareServiceOriginDto("AppForm", 0);
        AppForm = careServiceOriginDto;
        CareServiceOriginDto careServiceOriginDto2 = new CareServiceOriginDto("Call", 1);
        Call = careServiceOriginDto2;
        CareServiceOriginDto careServiceOriginDto3 = new CareServiceOriginDto("VideoCall", 2);
        VideoCall = careServiceOriginDto3;
        CareServiceOriginDto careServiceOriginDto4 = new CareServiceOriginDto("CSC_CALL", 3);
        CSC_CALL = careServiceOriginDto4;
        CareServiceOriginDto careServiceOriginDto5 = new CareServiceOriginDto("CSC_APPFORM", 4);
        CSC_APPFORM = careServiceOriginDto5;
        CareServiceOriginDto[] careServiceOriginDtoArr = {careServiceOriginDto, careServiceOriginDto2, careServiceOriginDto3, careServiceOriginDto4, careServiceOriginDto5};
        $VALUES = careServiceOriginDtoArr;
        $ENTRIES = EnumEntriesKt.a(careServiceOriginDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new lg(29));
    }

    public static CareServiceOriginDto valueOf(String str) {
        return (CareServiceOriginDto) Enum.valueOf(CareServiceOriginDto.class, str);
    }

    public static CareServiceOriginDto[] values() {
        return (CareServiceOriginDto[]) $VALUES.clone();
    }
}
