package com.vuitton.android.data.dto.certificate.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.certificate.CertificateBffBodyDto;
import com.vuitton.android.data.dto.certificate.CertificateCapucineDataDto;
import com.vuitton.android.data.dto.certificate.CertificateCapucineDto;
import com.vuitton.android.data.dto.certificate.CertificateDiamondDataDto;
import com.vuitton.android.data.dto.certificate.CertificateDiamondDto;
import com.vuitton.android.data.dto.certificate.CertificateDto;
import com.vuitton.android.data.dto.certificate.CertificateRubyDataDto;
import com.vuitton.android.data.dto.certificate.CertificateRubyDto;
import com.vuitton.android.data.dto.certificate.CertificateType;
import com.vuitton.android.data.dto.certificate.CertificateVisionnaireDataDto;
import com.vuitton.android.data.dto.certificate.CertificateVisionnaireDto;
import com.vuitton.android.data.dto.certificate.ProductDto;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.foundation.model.domain.model.certificate.Certificate;
import com.vuitton.foundation.model.domain.model.certificate.CertificateBffBody;
import com.vuitton.foundation.model.domain.model.certificate.CertificateCapucine;
import com.vuitton.foundation.model.domain.model.certificate.CertificateDiamond;
import com.vuitton.foundation.model.domain.model.certificate.CertificateRuby;
import com.vuitton.foundation.model.domain.model.certificate.CertificateVisionnaire;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateBodyMapperKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final CertificateBffBodyDto a(CertificateBffBody certificateBffBody) {
        CertificateDto certificateVisionnaireDto;
        certificateBffBody.getClass();
        Certificate certificate = certificateBffBody.f67046a;
        certificate.getClass();
        if (certificate instanceof CertificateRuby) {
            CertificateRuby certificateRuby = (CertificateRuby) certificate;
            String str = certificateRuby.f67072a;
            CertificateRubyDataDto certificateRubyDataDto = new CertificateRubyDataDto(certificateRuby.f67075e, (String) null, certificateRuby.f67073b, 2, (DefaultConstructorMarker) null);
            certificateVisionnaireDto = new CertificateRubyDto(str, CertificateType.RUBY.getValue(), (ProductDto) null, (AssetDto) null, (String) null, (String) null, CertificateMapperKt.c(certificateRuby.d), certificateRubyDataDto, 60, (DefaultConstructorMarker) null);
        } else if (certificate instanceof CertificateDiamond) {
            CertificateDiamond certificateDiamond = (CertificateDiamond) certificate;
            String str2 = certificateDiamond.f67061a;
            CertificateDiamondDataDto certificateDiamondDataDto = new CertificateDiamondDataDto((Double) null, (String) null, (String) null, (String) null, certificateDiamond.f67065f, certificateDiamond.f67062b, (List) null, 79, (DefaultConstructorMarker) null);
            certificateVisionnaireDto = new CertificateDiamondDto(str2, CertificateType.DIAMOND.getValue(), (ProductDto) null, (AssetDto) null, (String) null, (String) null, CertificateMapperKt.c(certificateDiamond.d), certificateDiamondDataDto, 60, (DefaultConstructorMarker) null);
        } else if (certificate instanceof CertificateCapucine) {
            String str3 = null;
            CertificateCapucineDataDto certificateCapucineDataDto = new CertificateCapucineDataDto(str3, (String) null, (String) null, (List) null, (List) null, 31, (DefaultConstructorMarker) null);
            Object[] objArr = 0 == true ? 1 : 0;
            Object[] objArr2 = 0 == true ? 1 : 0;
            Object[] objArr3 = 0 == true ? 1 : 0;
            certificateVisionnaireDto = new CertificateCapucineDto(str3, CertificateType.CAPUCINE.getValue(), (ProductDto) objArr, (AssetDto) objArr2, (String) objArr3, (String) null, CertificateMapperKt.c(((CertificateCapucine) certificate).d), certificateCapucineDataDto, 61, (DefaultConstructorMarker) null);
        } else {
            if (!(certificate instanceof CertificateVisionnaire)) {
                v40.g();
                return null;
            }
            CertificateVisionnaire certificateVisionnaire = (CertificateVisionnaire) certificate;
            String str4 = certificateVisionnaire.f67078a;
            CertificateVisionnaireDataDto certificateVisionnaireDataDto = new CertificateVisionnaireDataDto(certificateVisionnaire.f67081e, (String) null, (ContributionLinkLegacyDto) null, certificateVisionnaire.f67083h, certificateVisionnaire.f67084i, certificateVisionnaire.f67085j, certificateVisionnaire.f67086k, certificateVisionnaire.l, certificateVisionnaire.m, certificateVisionnaire.n, 6, (DefaultConstructorMarker) null);
            Object[] objArr4 = 0 == true ? 1 : 0;
            Object[] objArr5 = 0 == true ? 1 : 0;
            certificateVisionnaireDto = new CertificateVisionnaireDto(str4, CertificateType.VISIONNAIRE.getValue(), (ProductDto) null, (AssetDto) objArr4, (String) objArr5, (String) null, CertificateMapperKt.c(certificateVisionnaire.d), certificateVisionnaireDataDto, 60, (DefaultConstructorMarker) null);
        }
        return new CertificateBffBodyDto(certificateVisionnaireDto, certificateBffBody.f67047b, certificateBffBody.f67048c, certificateBffBody.d, certificateBffBody.f67049e);
    }
}
