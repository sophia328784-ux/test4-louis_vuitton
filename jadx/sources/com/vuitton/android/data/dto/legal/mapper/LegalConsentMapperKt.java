package com.vuitton.android.data.dto.legal.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.legal.ConsentFeatureDto;
import com.vuitton.android.data.dto.legal.ConsentRequirementDto;
import com.vuitton.android.data.dto.legal.LegalConsentDto;
import com.vuitton.foundation.model.domain.model.legal.ConsentFeature;
import com.vuitton.foundation.model.domain.model.legal.ConsentRequirement;
import com.vuitton.foundation.model.domain.model.legal.LegalConsent;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LegalConsentMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f45993a;

        static {
            int[] iArr = new int[ConsentFeatureDto.values().length];
            try {
                iArr[ConsentFeatureDto.SHADE_FINDER_IMAGE_STORAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f45993a = iArr;
        }
    }

    public static final LegalConsent a(LegalConsentDto legalConsentDto) {
        legalConsentDto.getClass();
        String str = legalConsentDto.f45990a;
        List<ConsentRequirementDto> list = legalConsentDto.f45991b;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (ConsentRequirementDto consentRequirementDto : list) {
            consentRequirementDto.getClass();
            String str2 = consentRequirementDto.f45985a;
            String str3 = consentRequirementDto.f45986b;
            boolean z = consentRequirementDto.f45987c;
            ConsentFeatureDto consentFeatureDto = consentRequirementDto.d;
            ConsentFeature consentFeature = null;
            if (consentFeatureDto != null) {
                if (WhenMappings.f45993a[consentFeatureDto.ordinal()] != 1) {
                    v40.g();
                    return null;
                }
                consentFeature = ConsentFeature.SHADE_FINDER_IMAGE_STORAGE;
            }
            arrayList.add(new ConsentRequirement(str2, str3, z, consentFeature, false, 16, null));
        }
        return new LegalConsent(str, arrayList, null, null, 12, null);
    }
}
