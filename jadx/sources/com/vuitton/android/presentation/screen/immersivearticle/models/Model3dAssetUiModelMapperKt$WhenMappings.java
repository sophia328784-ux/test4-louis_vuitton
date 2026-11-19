package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.vuitton.foundation.model.domain.model.immersivearticle.Model3dAssetName;
import com.vuitton.foundation.model.domain.model.immersivearticle.Model3dAssetType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class Model3dAssetUiModelMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f58810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f58811b;

    static {
        int[] iArr = new int[Model3dAssetType.values().length];
        try {
            iArr[Model3dAssetType.IMAGE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[Model3dAssetType.ASSET_ANDROID_3D.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[Model3dAssetType.ASSET_IOS_3D.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        f58810a = iArr;
        int[] iArr2 = new int[Model3dAssetName.values().length];
        try {
            iArr2[Model3dAssetName.LD_R.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[Model3dAssetName.BACKGROUND_3D.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        f58811b = iArr2;
    }
}
