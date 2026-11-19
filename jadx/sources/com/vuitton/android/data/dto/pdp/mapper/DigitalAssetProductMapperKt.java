package com.vuitton.android.data.dto.pdp.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.DigitalAssetProductDto;
import com.vuitton.foundation.model.domain.model.product.universal.DigitalAssetProduct;
import com.vuitton.foundation.model.domain.model.product.universal.DigitalAssetProductName;
import com.vuitton.foundation.model.domain.model.product.universal.DigitalAssetProductType;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DigitalAssetProductMapperKt {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x0063  */
    /* JADX WARN: Code duplicated, block: B:92:0x011f  */
    public static final DigitalAssetProduct a(DigitalAssetProductDto digitalAssetProductDto) {
        String lowerCase;
        DigitalAssetProductType digitalAssetProductType;
        DigitalAssetProductName digitalAssetProductName;
        String string;
        String string2;
        digitalAssetProductDto.getClass();
        String str = digitalAssetProductDto.f46191b;
        if (str == null) {
            str = "";
        }
        String str2 = digitalAssetProductDto.f46192c;
        String str3 = str2 != null ? str2 : "";
        String str4 = digitalAssetProductDto.f46190a;
        String lowerCase2 = null;
        if (str4 == null || (string2 = StringsKt.a0(str4).toString()) == null) {
            lowerCase = null;
        } else {
            lowerCase = string2.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        }
        if (lowerCase != null) {
            switch (lowerCase) {
                case "3d-asset-ios":
                    digitalAssetProductType = DigitalAssetProductType.ASSET_IOS_3D;
                    break;
                case "image":
                    digitalAssetProductType = DigitalAssetProductType.IMAGE;
                    break;
                case "video":
                    digitalAssetProductType = DigitalAssetProductType.VIDEO;
                    break;
                case "3d-asset-android":
                    digitalAssetProductType = DigitalAssetProductType.ASSET_ANDROID_3D;
                    break;
                default:
                    digitalAssetProductType = DigitalAssetProductType.UNKNOWN;
                    break;
            }
        } else {
            digitalAssetProductType = DigitalAssetProductType.UNKNOWN;
        }
        String str5 = digitalAssetProductDto.d;
        if (str5 != null && (string = StringsKt.a0(str5).toString()) != null) {
            lowerCase2 = string.toLowerCase(Locale.ROOT);
            lowerCase2.getClass();
        }
        if (lowerCase2 != null) {
            switch (lowerCase2) {
                case "3d-bottom-front-view":
                    digitalAssetProductName = DigitalAssetProductName.BOTTOM_FRONT_VIEW_3D;
                    break;
                case "3d-front-view":
                    digitalAssetProductName = DigitalAssetProductName.FRONT_VIEW_3D;
                    break;
                case "3d-bottom-back-view":
                    digitalAssetProductName = DigitalAssetProductName.BOTTOM_BACK_VIEW_3D;
                    break;
                case "3d-drop-video":
                    digitalAssetProductName = DigitalAssetProductName.DROP_VIDEO_3D;
                    break;
                case "background3d":
                    digitalAssetProductName = DigitalAssetProductName.BACKGROUND_3D;
                    break;
                case "3d-back-view":
                    digitalAssetProductName = DigitalAssetProductName.BACK_VIEW_3D;
                    break;
                case "ld-r":
                    digitalAssetProductName = DigitalAssetProductName.LD_R;
                    break;
                case "3d-detail-view":
                    digitalAssetProductName = DigitalAssetProductName.DETAIL_VIEW_3D;
                    break;
                case "3d-side-view":
                    digitalAssetProductName = DigitalAssetProductName.SIDE_VIEW_3D;
                    break;
                case "3d-drop":
                    digitalAssetProductName = DigitalAssetProductName.DROP_3D;
                    break;
                case "3d-closeup-view":
                    digitalAssetProductName = DigitalAssetProductName.CLOSE_UP_VIEW_3D;
                    break;
                case "3d-bottom-view":
                    digitalAssetProductName = DigitalAssetProductName.BOTTOM_VIEW_3D;
                    break;
                default:
                    digitalAssetProductName = DigitalAssetProductName.UNKNOWN;
                    break;
            }
        } else {
            digitalAssetProductName = DigitalAssetProductName.UNKNOWN;
        }
        return new DigitalAssetProduct(digitalAssetProductType, str, str3, digitalAssetProductName);
    }
}
