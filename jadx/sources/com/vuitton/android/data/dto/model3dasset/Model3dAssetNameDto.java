package com.vuitton.android.data.dto.model3dasset;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.dd0;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;", "", "Companion", "LD_R", "BACKGROUND_3D", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class Model3dAssetNameDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Model3dAssetNameDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    @SerialName
    public static final Model3dAssetNameDto BACKGROUND_3D;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final Model3dAssetNameDto LD_R;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Model3dAssetNameDto> serializer() {
            return (KSerializer) Model3dAssetNameDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        Model3dAssetNameDto model3dAssetNameDto = new Model3dAssetNameDto("LD_R", 0);
        LD_R = model3dAssetNameDto;
        Model3dAssetNameDto model3dAssetNameDto2 = new Model3dAssetNameDto("BACKGROUND_3D", 1);
        BACKGROUND_3D = model3dAssetNameDto2;
        Model3dAssetNameDto[] model3dAssetNameDtoArr = {model3dAssetNameDto, model3dAssetNameDto2};
        $VALUES = model3dAssetNameDtoArr;
        $ENTRIES = EnumEntriesKt.a(model3dAssetNameDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(1));
    }

    public static Model3dAssetNameDto valueOf(String str) {
        return (Model3dAssetNameDto) Enum.valueOf(Model3dAssetNameDto.class, str);
    }

    public static Model3dAssetNameDto[] values() {
        return (Model3dAssetNameDto[]) $VALUES.clone();
    }
}
