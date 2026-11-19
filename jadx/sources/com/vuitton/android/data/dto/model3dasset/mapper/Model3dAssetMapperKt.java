package com.vuitton.android.data.dto.model3dasset.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.model3dasset.Model3dAssetDto;
import com.vuitton.android.data.dto.model3dasset.Model3dAssetNameDto;
import com.vuitton.android.data.dto.model3dasset.Model3dAssetTypeDto;
import com.vuitton.foundation.model.domain.model.immersivearticle.Model3dAsset;
import com.vuitton.foundation.model.domain.model.immersivearticle.Model3dAssetName;
import com.vuitton.foundation.model.domain.model.immersivearticle.Model3dAssetType;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class Model3dAssetMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46107a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f46108b;

        static {
            int[] iArr = new int[Model3dAssetTypeDto.values().length];
            try {
                iArr[Model3dAssetTypeDto.IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Model3dAssetTypeDto.ASSET_ANDROID_3D.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Model3dAssetTypeDto.ASSET_IOS_3D.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f46107a = iArr;
            int[] iArr2 = new int[Model3dAssetNameDto.values().length];
            try {
                iArr2[Model3dAssetNameDto.LD_R.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[Model3dAssetNameDto.BACKGROUND_3D.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            f46108b = iArr2;
        }
    }

    public static final Model3dAsset a(Model3dAssetDto model3dAssetDto) {
        Model3dAssetType model3dAssetType;
        Model3dAssetName model3dAssetName;
        model3dAssetDto.getClass();
        int i2 = WhenMappings.f46107a[model3dAssetDto.f46103a.ordinal()];
        if (i2 == 1) {
            model3dAssetType = Model3dAssetType.IMAGE;
        } else if (i2 == 2) {
            model3dAssetType = Model3dAssetType.ASSET_ANDROID_3D;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            model3dAssetType = Model3dAssetType.ASSET_IOS_3D;
        }
        String str = model3dAssetDto.f46104b;
        int i3 = WhenMappings.f46108b[model3dAssetDto.f46105c.ordinal()];
        if (i3 == 1) {
            model3dAssetName = Model3dAssetName.LD_R;
        } else {
            if (i3 != 2) {
                v40.g();
                return null;
            }
            model3dAssetName = Model3dAssetName.BACKGROUND_3D;
        }
        return new Model3dAsset(model3dAssetType, str, model3dAssetName);
    }
}
