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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto;", "", "Companion", "IMAGE", "ASSET_ANDROID_3D", "ASSET_IOS_3D", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class Model3dAssetTypeDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Model3dAssetTypeDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    @SerialName
    public static final Model3dAssetTypeDto ASSET_ANDROID_3D;

    @SerialName
    public static final Model3dAssetTypeDto ASSET_IOS_3D;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final Model3dAssetTypeDto IMAGE;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Model3dAssetTypeDto> serializer() {
            return (KSerializer) Model3dAssetTypeDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        Model3dAssetTypeDto model3dAssetTypeDto = new Model3dAssetTypeDto("IMAGE", 0);
        IMAGE = model3dAssetTypeDto;
        Model3dAssetTypeDto model3dAssetTypeDto2 = new Model3dAssetTypeDto("ASSET_ANDROID_3D", 1);
        ASSET_ANDROID_3D = model3dAssetTypeDto2;
        Model3dAssetTypeDto model3dAssetTypeDto3 = new Model3dAssetTypeDto("ASSET_IOS_3D", 2);
        ASSET_IOS_3D = model3dAssetTypeDto3;
        Model3dAssetTypeDto[] model3dAssetTypeDtoArr = {model3dAssetTypeDto, model3dAssetTypeDto2, model3dAssetTypeDto3};
        $VALUES = model3dAssetTypeDtoArr;
        $ENTRIES = EnumEntriesKt.a(model3dAssetTypeDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(2));
    }

    public static Model3dAssetTypeDto valueOf(String str) {
        return (Model3dAssetTypeDto) Enum.valueOf(Model3dAssetTypeDto.class, str);
    }

    public static Model3dAssetTypeDto[] values() {
        return (Model3dAssetTypeDto[]) $VALUES.clone();
    }
}
