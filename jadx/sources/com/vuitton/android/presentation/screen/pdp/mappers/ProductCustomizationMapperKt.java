package com.vuitton.android.presentation.screen.pdp.mappers;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationInformationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.product.universal.Configuration;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationConfiguration;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationId;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationIdType;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationInformation;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductCustomizationMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61540a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f61541b;

        static {
            int[] iArr = new int[CustomizationIdTypeUiModel.values().length];
            try {
                iArr[CustomizationIdTypeUiModel.THREEKIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomizationIdTypeUiModel.BASE64.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f61540a = iArr;
            int[] iArr2 = new int[CustomizationIdType.values().length];
            try {
                iArr2[CustomizationIdType.THREEKIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[CustomizationIdType.BASE64.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f61541b = iArr2;
        }
    }

    public static final CustomizationId a(CustomizationIdUiModel customizationIdUiModel) {
        CustomizationIdType customizationIdType;
        customizationIdUiModel.getClass();
        String str = customizationIdUiModel.f61671b;
        int i2 = WhenMappings.f61540a[customizationIdUiModel.f61672c.ordinal()];
        if (i2 == 1) {
            customizationIdType = CustomizationIdType.THREEKIT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            customizationIdType = CustomizationIdType.BASE64;
        }
        return new CustomizationId(str, customizationIdType);
    }

    public static final ConfigurationUiModel b(Configuration configuration) {
        CustomizationIdTypeUiModel customizationIdTypeUiModel;
        String str = configuration.f67955a;
        CustomizationConfiguration customizationConfiguration = configuration.f67956b;
        CustomizationConfigurationUiModel customizationConfigurationUiModelC = customizationConfiguration != null ? c(customizationConfiguration) : null;
        AssetImageUiModel assetImageUiModelA = AssetMapperKt.a(configuration.f67957c);
        String str2 = configuration.d;
        int i2 = WhenMappings.f61541b[configuration.f67958e.ordinal()];
        if (i2 == 1) {
            customizationIdTypeUiModel = CustomizationIdTypeUiModel.THREEKIT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            customizationIdTypeUiModel = CustomizationIdTypeUiModel.BASE64;
        }
        return new ConfigurationUiModel(str, customizationConfigurationUiModelC, assetImageUiModelA, str2, customizationIdTypeUiModel);
    }

    public static final CustomizationConfigurationUiModel c(CustomizationConfiguration customizationConfiguration) {
        CustomizationIdTypeUiModel customizationIdTypeUiModel;
        customizationConfiguration.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str = customizationConfiguration.f67959a;
        companion.getClass();
        CustomizationId customizationId = customizationConfiguration.f67961c;
        String str2 = customizationId.f67963a;
        int i2 = WhenMappings.f61541b[customizationId.f67964b.ordinal()];
        if (i2 == 1) {
            customizationIdTypeUiModel = CustomizationIdTypeUiModel.THREEKIT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            customizationIdTypeUiModel = CustomizationIdTypeUiModel.BASE64;
        }
        CustomizationIdUiModel customizationIdUiModel = new CustomizationIdUiModel(str2, customizationIdTypeUiModel);
        String str3 = customizationConfiguration.f67960b;
        List<CustomizationInformation> list = customizationConfiguration.d;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (CustomizationInformation customizationInformation : list) {
            String str4 = customizationInformation.f67966a;
            String str5 = customizationInformation.f67967b;
            AssetImage assetImage = customizationInformation.f67968c;
            arrayList.add(new CustomizationInformationUiModel(str4, str5, assetImage != null ? AssetMapperKt.a(assetImage) : null, customizationInformation.d));
        }
        return new CustomizationConfigurationUiModel(str, customizationIdUiModel, str3, arrayList, null);
    }
}
