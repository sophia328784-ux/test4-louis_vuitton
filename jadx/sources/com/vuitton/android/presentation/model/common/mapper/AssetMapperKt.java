package com.vuitton.android.presentation.model.common.mapper;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.ScaleUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.Scale;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssetMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51800a;

        static {
            int[] iArr = new int[Scale.values().length];
            try {
                iArr[Scale.FIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Scale.FILL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f51800a = iArr;
        }
    }

    public static final AssetImageUiModel a(AssetImage assetImage) {
        ScaleUiModel scaleUiModel;
        assetImage.getClass();
        String str = assetImage.f67108a;
        Scale scale = assetImage.f67110c;
        ScaleUiModel scaleUiModel2 = null;
        if (scale != null) {
            int i2 = WhenMappings.f51800a[scale.ordinal()];
            if (i2 == 1) {
                scaleUiModel = ScaleUiModel.FIT;
            } else {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                scaleUiModel = ScaleUiModel.FILL;
            }
            scaleUiModel2 = scaleUiModel;
        }
        return new AssetImageUiModel(str, scaleUiModel2, assetImage.d);
    }

    public static final AssetUiModel b(Asset asset) {
        asset.getClass();
        AssetImage assetImage = asset.f67106a;
        AssetImageUiModel assetImageUiModelA = assetImage != null ? a(assetImage) : null;
        AssetVideo assetVideo = asset.f67107b;
        return new AssetUiModel(assetImageUiModelA, assetVideo != null ? c(assetVideo) : null);
    }

    public static final AssetVideoUiModel c(AssetVideo assetVideo) {
        assetVideo.getClass();
        VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
        String str = assetVideo.f67111a;
        companion.getClass();
        return new AssetVideoUiModel(str, assetVideo.f67112b, assetVideo.f67113c, assetVideo.d, assetVideo.f67114e, assetVideo.f67115f, assetVideo.g, null);
    }
}
