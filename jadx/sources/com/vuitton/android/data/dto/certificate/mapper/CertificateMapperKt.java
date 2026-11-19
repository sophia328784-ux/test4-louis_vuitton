package com.vuitton.android.data.dto.certificate.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.certificate.CertificateCapucineDataDto;
import com.vuitton.android.data.dto.certificate.CertificateCapucineDto;
import com.vuitton.android.data.dto.certificate.CertificateDiamondDataDto;
import com.vuitton.android.data.dto.certificate.CertificateDiamondDto;
import com.vuitton.android.data.dto.certificate.CertificateDiamondStoneDto;
import com.vuitton.android.data.dto.certificate.CertificateDto;
import com.vuitton.android.data.dto.certificate.CertificateRubyDataDto;
import com.vuitton.android.data.dto.certificate.CertificateRubyDto;
import com.vuitton.android.data.dto.certificate.CertificateStatusDto;
import com.vuitton.android.data.dto.certificate.CertificateVisionnaireDataDto;
import com.vuitton.android.data.dto.certificate.CertificateVisionnaireDto;
import com.vuitton.android.data.dto.certificate.ProductDto;
import com.vuitton.android.data.dto.certificate.UnknownCertificateDto;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import com.vuitton.android.data.dto.linktype.mapper.LinkTypeMapperKt;
import com.vuitton.foundation.model.domain.model.certificate.CertificateCapucine;
import com.vuitton.foundation.model.domain.model.certificate.CertificateDiamond;
import com.vuitton.foundation.model.domain.model.certificate.CertificateDiamondStone;
import com.vuitton.foundation.model.domain.model.certificate.CertificateRuby;
import com.vuitton.foundation.model.domain.model.certificate.CertificateStatus;
import com.vuitton.foundation.model.domain.model.certificate.CertificateVisionnaire;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f45234a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f45235b;

        static {
            int[] iArr = new int[CertificateStatusDto.values().length];
            try {
                iArr[CertificateStatusDto.LOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CertificateStatusDto.UNLOCKED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CertificateStatusDto.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f45234a = iArr;
            int[] iArr2 = new int[CertificateStatus.values().length];
            try {
                iArr2[CertificateStatus.LOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[CertificateStatus.UNLOCKED.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[CertificateStatus.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            f45235b = iArr2;
        }
    }

    public static final CertificateStatus a(CertificateStatusDto certificateStatusDto) {
        int i2 = WhenMappings.f45234a[certificateStatusDto.ordinal()];
        if (i2 == 1) {
            return CertificateStatus.LOCKED;
        }
        if (i2 == 2) {
            return CertificateStatus.UNLOCKED;
        }
        if (i2 == 3) {
            return CertificateStatus.PENDING;
        }
        v40.g();
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:283:0x02d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:285:0x0010 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r18v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Type inference failed for: r21v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r22v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v39, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v41, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v50, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r3v51 */
    /* JADX WARN: Type inference failed for: r3v52, types: [java.util.ArrayList] */
    public static final ArrayList b(List list) {
        ContributionLink contributionLinkA;
        Object certificateVisionnaire;
        AssetImageDto assetImageDto;
        ContributionLinkLegacyDto contributionLinkLegacyDto;
        LinkTypeDto linkTypeDto;
        AssetImageDto assetImageDto2;
        ?? arrayList;
        List list2;
        AssetDto assetDto;
        AssetVideoDto assetVideoDto;
        List list3;
        AssetImageDto assetImageDto3;
        ?? arrayList2;
        List list4;
        Double d;
        AssetImageDto assetImageDto4;
        list.getClass();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CertificateDto certificateDto = (CertificateDto) it.next();
            certificateDto.getClass();
            Object certificateRuby = null;
            if (certificateDto instanceof CertificateDiamondDto) {
                CertificateDiamondDto certificateDiamondDto = (CertificateDiamondDto) certificateDto;
                String str = certificateDiamondDto.f45174a;
                CertificateDiamondDataDto certificateDiamondDataDto = certificateDiamondDto.f45179h;
                ProductDto productDto = certificateDiamondDto.f45176c;
                String str2 = str == null ? "" : str;
                SkuId.Companion companion = SkuId.INSTANCE;
                String str3 = productDto != null ? productDto.f45221a : null;
                companion.getClass();
                if (str3 == null) {
                    str3 = SkuId.f67932b;
                }
                String str4 = str3;
                String str5 = productDto != null ? productDto.f45222b : null;
                String str6 = str5 == null ? "" : str5;
                CertificateStatus certificateStatusA = a(certificateDiamondDto.g);
                String str7 = certificateDiamondDto.f45178f;
                String str8 = str7 == null ? "" : str7;
                String str9 = certificateDiamondDataDto != null ? certificateDiamondDataDto.f45170e : null;
                String str10 = str9 == null ? "" : str9;
                String str11 = str7 == null ? "" : str7;
                ProductId.Companion companion2 = ProductId.INSTANCE;
                AssetDto assetDto2 = certificateDiamondDto.d;
                String str12 = (assetDto2 == null || (assetImageDto4 = assetDto2.f45236a) == null) ? null : assetImageDto4.f45241b;
                String str13 = str12 == null ? "" : str12;
                String strValueOf = (certificateDiamondDataDto == null || (d = certificateDiamondDataDto.f45167a) == null) ? null : String.valueOf(d.doubleValue());
                String str14 = strValueOf == null ? "" : strValueOf;
                String str15 = certificateDiamondDataDto != null ? certificateDiamondDataDto.f45168b : null;
                String str16 = str15 == null ? "" : str15;
                certificateRuby = certificateDiamondDataDto != null ? certificateDiamondDataDto.f45169c : null;
                ?? r19 = certificateRuby == null ? "" : certificateRuby;
                if (certificateDiamondDataDto == null || (list4 = certificateDiamondDataDto.g) == null) {
                    arrayList2 = EmptyList.f71768b;
                } else {
                    List<CertificateDiamondStoneDto> list5 = list4;
                    arrayList2 = new ArrayList(CollectionsKt.t(list5, 10));
                    for (CertificateDiamondStoneDto certificateDiamondStoneDto : list5) {
                        String str17 = certificateDiamondStoneDto.f45181a;
                        if (str17 == null) {
                            str17 = "";
                        }
                        String str18 = certificateDiamondStoneDto.f45182b;
                        if (str18 == null) {
                            str18 = "";
                        }
                        arrayList2.add(new CertificateDiamondStone(str17, str18));
                    }
                }
                certificateVisionnaire = new CertificateDiamond(str2, str4, str6, certificateStatusA, str8, str10, str11, str13, str14, str16, r19, null, arrayList2, 2048, null);
            } else if (certificateDto instanceof CertificateCapucineDto) {
                CertificateCapucineDto certificateCapucineDto = (CertificateCapucineDto) certificateDto;
                String str19 = certificateCapucineDto.f45159a;
                CertificateCapucineDataDto certificateCapucineDataDto = certificateCapucineDto.f45164h;
                ProductDto productDto2 = certificateCapucineDto.f45161c;
                String str20 = str19 == null ? "" : str19;
                SkuId.Companion companion3 = SkuId.INSTANCE;
                String str21 = productDto2 != null ? productDto2.f45221a : null;
                companion3.getClass();
                if (str21 == null) {
                    str21 = SkuId.f67932b;
                }
                String str22 = productDto2 != null ? productDto2.f45222b : null;
                String str23 = str22 == null ? "" : str22;
                CertificateStatus certificateStatusA2 = a(certificateCapucineDto.g);
                String str24 = str19 == null ? "" : str19;
                String str25 = certificateCapucineDto.f45162e;
                String str26 = str25 == null ? "" : str25;
                String str27 = certificateCapucineDataDto != null ? certificateCapucineDataDto.f45155c : null;
                String str28 = str27 == null ? "" : str27;
                AssetDto assetDto3 = certificateCapucineDto.d;
                String str29 = (assetDto3 == null || (assetImageDto3 = assetDto3.f45236a) == null) ? null : assetImageDto3.f45241b;
                String str30 = str29 == null ? "" : str29;
                String str31 = certificateCapucineDataDto != null ? certificateCapucineDataDto.f45153a : null;
                String str32 = str31 == null ? "" : str31;
                if (certificateCapucineDataDto == null || (list3 = certificateCapucineDataDto.f45156e) == null) {
                    arrayList = EmptyList.f71768b;
                } else {
                    arrayList = new ArrayList();
                    Iterator it2 = list3.iterator();
                    while (it2.hasNext()) {
                        AssetImageDto assetImageDto5 = ((AssetDto) it2.next()).f45236a;
                        String str33 = assetImageDto5 != null ? assetImageDto5.f45241b : null;
                        if (str33 != null) {
                            arrayList.add(str33);
                        }
                    }
                }
                ?? r18 = arrayList;
                if (certificateCapucineDataDto != null && (list2 = certificateCapucineDataDto.d) != null && (assetDto = (AssetDto) CollectionsKt.firstOrNull(list2)) != null && (assetVideoDto = assetDto.f45237b) != null) {
                    certificateRuby = assetVideoDto.f45245b;
                }
                certificateVisionnaire = new CertificateCapucine(str20, str21, str23, certificateStatusA2, str24, str26, str28, str30, str32, r18, certificateRuby == null ? "" : certificateRuby, null);
            } else {
                if (certificateDto instanceof CertificateRubyDto) {
                    CertificateRubyDto certificateRubyDto = (CertificateRubyDto) certificateDto;
                    String str34 = certificateRubyDto.f45197a;
                    ProductDto productDto3 = certificateRubyDto.f45199c;
                    if (str34 == null) {
                        str34 = "";
                    }
                    SkuId.Companion companion4 = SkuId.INSTANCE;
                    String str35 = productDto3 != null ? productDto3.f45221a : null;
                    companion4.getClass();
                    if (str35 == null) {
                        str35 = SkuId.f67932b;
                    }
                    String str36 = str35;
                    String str37 = productDto3 != null ? productDto3.f45222b : null;
                    String str38 = str37 == null ? "" : str37;
                    CertificateStatus certificateStatusA3 = a(certificateRubyDto.g);
                    CertificateRubyDataDto certificateRubyDataDto = certificateRubyDto.f45202h;
                    String str39 = certificateRubyDataDto != null ? certificateRubyDataDto.f45192a : null;
                    if (str39 == null) {
                        str39 = "";
                    }
                    AssetDto assetDto4 = certificateRubyDto.d;
                    String str40 = (assetDto4 == null || (assetImageDto2 = assetDto4.f45236a) == null) ? null : assetImageDto2.f45241b;
                    if (str40 == null) {
                        str40 = "";
                    }
                    String str41 = certificateRubyDto.f45200e;
                    String str42 = str41 == null ? "" : str41;
                    certificateRuby = certificateRubyDataDto != null ? certificateRubyDataDto.f45193b : null;
                    certificateRuby = new CertificateRuby(str34, str36, str38, certificateStatusA3, str39, str40, str42, certificateRuby == null ? "" : certificateRuby, null);
                } else if (certificateDto instanceof CertificateVisionnaireDto) {
                    CertificateVisionnaireDto certificateVisionnaireDto = (CertificateVisionnaireDto) certificateDto;
                    String str43 = certificateVisionnaireDto.f45214a;
                    CertificateVisionnaireDataDto certificateVisionnaireDataDto = certificateVisionnaireDto.f45219h;
                    ProductDto productDto4 = certificateVisionnaireDto.f45216c;
                    String str44 = str43 == null ? "" : str43;
                    SkuId.Companion companion5 = SkuId.INSTANCE;
                    String str45 = productDto4 != null ? productDto4.f45221a : null;
                    companion5.getClass();
                    if (str45 == null) {
                        str45 = SkuId.f67932b;
                    }
                    String str46 = str45;
                    String str47 = productDto4 != null ? productDto4.f45222b : null;
                    String str48 = str47 == null ? "" : str47;
                    CertificateStatus certificateStatusA4 = a(certificateVisionnaireDto.g);
                    String str49 = certificateVisionnaireDataDto != null ? certificateVisionnaireDataDto.f45204a : null;
                    String str50 = str49 == null ? "" : str49;
                    String str51 = certificateVisionnaireDataDto != null ? certificateVisionnaireDataDto.f45205b : null;
                    String str52 = str51 == null ? "" : str51;
                    if (certificateVisionnaireDataDto == null || (contributionLinkLegacyDto = certificateVisionnaireDataDto.f45206c) == null || (linkTypeDto = contributionLinkLegacyDto.f46030a) == null) {
                        contributionLinkA = null;
                    } else {
                        String str53 = contributionLinkLegacyDto.f46031b;
                        if (str53 == null) {
                            str53 = "";
                        }
                        contributionLinkA = LinkTypeMapperKt.a(linkTypeDto, str53, null);
                    }
                    String str54 = certificateVisionnaireDataDto != null ? certificateVisionnaireDataDto.d : null;
                    String str55 = certificateVisionnaireDataDto != null ? certificateVisionnaireDataDto.f45207e : null;
                    String str56 = certificateVisionnaireDataDto != null ? certificateVisionnaireDataDto.f45208f : null;
                    String str57 = certificateVisionnaireDataDto != null ? certificateVisionnaireDataDto.g : null;
                    String str58 = certificateVisionnaireDataDto != null ? certificateVisionnaireDataDto.f45209h : null;
                    String str59 = certificateVisionnaireDataDto != null ? certificateVisionnaireDataDto.f45210i : null;
                    AssetDto assetDto5 = certificateVisionnaireDto.d;
                    String str60 = (assetDto5 == null || (assetImageDto = assetDto5.f45236a) == null) ? null : assetImageDto.f45241b;
                    certificateVisionnaire = new CertificateVisionnaire(str44, str46, str48, certificateStatusA4, str50, str52, contributionLinkA, str54, str55, str56, str57, str58, str59, certificateVisionnaireDataDto != null ? certificateVisionnaireDataDto.f45211j : null, str60 == null ? "" : str60, certificateVisionnaireDto.f45217e, null);
                } else if (!(certificateDto instanceof UnknownCertificateDto)) {
                    v40.g();
                    return null;
                }
                if (certificateRuby != null) {
                    arrayList3.add(certificateRuby);
                }
            }
            certificateRuby = certificateVisionnaire;
            if (certificateRuby != null) {
                arrayList3.add(certificateRuby);
            }
        }
        return arrayList3;
    }

    public static final CertificateStatusDto c(CertificateStatus certificateStatus) {
        int i2 = WhenMappings.f45235b[certificateStatus.ordinal()];
        if (i2 == 1) {
            return CertificateStatusDto.LOCKED;
        }
        if (i2 == 2) {
            return CertificateStatusDto.UNLOCKED;
        }
        if (i2 == 3) {
            return CertificateStatusDto.PENDING;
        }
        v40.g();
        return null;
    }
}
