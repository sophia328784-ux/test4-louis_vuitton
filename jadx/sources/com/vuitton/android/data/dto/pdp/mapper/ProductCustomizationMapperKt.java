package com.vuitton.android.data.dto.pdp.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.pdp.ConfigurationDto;
import com.vuitton.android.data.dto.pdp.CustomizationConfigurationDto;
import com.vuitton.android.data.dto.pdp.CustomizationInformationDto;
import com.vuitton.android.data.dto.pdp.CustomizationTypeDto;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductCustomizationMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46305a;

        static {
            int[] iArr = new int[CustomizationTypeDto.values().length];
            try {
                iArr[CustomizationTypeDto.THREEKIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomizationTypeDto.BASE64.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f46305a = iArr;
        }
    }

    public static final Configuration a(ConfigurationDto configurationDto) {
        CustomizationIdType customizationIdType;
        String str = configurationDto.f46175a;
        CustomizationConfigurationDto customizationConfigurationDto = configurationDto.f46176b;
        CustomizationConfiguration customizationConfigurationB = customizationConfigurationDto != null ? b(customizationConfigurationDto) : null;
        AssetImage assetImageB = AssetMapperKt.b(configurationDto.f46177c);
        String str2 = configurationDto.d;
        int i2 = WhenMappings.f46305a[configurationDto.f46178e.ordinal()];
        if (i2 == 1) {
            customizationIdType = CustomizationIdType.THREEKIT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            customizationIdType = CustomizationIdType.BASE64;
        }
        return new Configuration(str, customizationConfigurationB, assetImageB, str2, customizationIdType);
    }

    public static final CustomizationConfiguration b(CustomizationConfigurationDto customizationConfigurationDto) {
        CustomizationIdType customizationIdType;
        customizationConfigurationDto.getClass();
        String str = customizationConfigurationDto.f46181a;
        String str2 = customizationConfigurationDto.f46183c;
        int i2 = WhenMappings.f46305a[customizationConfigurationDto.d.ordinal()];
        if (i2 == 1) {
            customizationIdType = CustomizationIdType.THREEKIT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            customizationIdType = CustomizationIdType.BASE64;
        }
        CustomizationId customizationId = new CustomizationId(str2, customizationIdType);
        String str3 = customizationConfigurationDto.f46182b;
        List<CustomizationInformationDto> list = customizationConfigurationDto.f46184e;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (CustomizationInformationDto customizationInformationDto : list) {
            String str4 = customizationInformationDto.f46186a;
            String str5 = customizationInformationDto.f46187b;
            AssetImageDto assetImageDto = customizationInformationDto.f46188c;
            arrayList.add(new CustomizationInformation(str4, str5, assetImageDto != null ? AssetMapperKt.b(assetImageDto) : null, customizationInformationDto.d));
        }
        return new CustomizationConfiguration(str, str3, customizationId, arrayList, null);
    }
}
