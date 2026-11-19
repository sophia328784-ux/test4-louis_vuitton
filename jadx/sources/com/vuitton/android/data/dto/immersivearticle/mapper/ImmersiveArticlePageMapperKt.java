package com.vuitton.android.data.dto.immersivearticle.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleCtaDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleFontDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductDisplayStyleDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductImageStyleDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleSizeCardDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleTextModuleTypeDto;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleThemeDto;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import com.vuitton.android.data.dto.linktype.mapper.LinkTypeMapperKt;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleCta;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleFont;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleSizeCard;
import com.vuitton.foundation.model.domain.model.immersivearticle.SectionTheme;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticlePageMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f45980a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f45981b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f45982c;
        public static final /* synthetic */ int[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ int[] f45983e;

        static {
            int[] iArr = new int[ImmersiveArticleFontDto.values().length];
            try {
                iArr[ImmersiveArticleFontDto.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ImmersiveArticleFontDto.HANLEY_PRO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ImmersiveArticleFontDto.ANGLAISE_F.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ImmersiveArticleFontDto.COND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f45980a = iArr;
            int[] iArr2 = new int[ImmersiveArticleTextModuleTypeDto.values().length];
            try {
                iArr2[ImmersiveArticleTextModuleTypeDto.CITATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[ImmersiveArticleTextModuleTypeDto.PARAGRAPH.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            f45981b = iArr2;
            int[] iArr3 = new int[ImmersiveArticleProductImageStyleDto.values().length];
            try {
                iArr3[ImmersiveArticleProductImageStyleDto.REGULAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[ImmersiveArticleProductImageStyleDto.MARIE_LOUISE.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            f45982c = iArr3;
            int[] iArr4 = new int[ImmersiveArticleProductDisplayStyleDto.values().length];
            try {
                iArr4[ImmersiveArticleProductDisplayStyleDto.FULL_DETAILS.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr4[ImmersiveArticleProductDisplayStyleDto.IMAGE_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            d = iArr4;
            int[] iArr5 = new int[ImmersiveArticleSizeCardDto.values().length];
            try {
                iArr5[ImmersiveArticleSizeCardDto.FULLSCREEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr5[ImmersiveArticleSizeCardDto.RATIO_16_9.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr5[ImmersiveArticleSizeCardDto.RATIO_9_16.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr5[ImmersiveArticleSizeCardDto.RATIO_2_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr5[ImmersiveArticleSizeCardDto.RATIO_4_5.ordinal()] = 5;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr5[ImmersiveArticleSizeCardDto.RATIO_1_1.ordinal()] = 6;
            } catch (NoSuchFieldError unused16) {
            }
            f45983e = iArr5;
        }
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public static final com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticlePage a(com.vuitton.android.data.dto.immersivearticle.ImmersiveArticlePageDto r47) {
        /*
            Method dump skipped, instruction units count: 2455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.dto.immersivearticle.mapper.ImmersiveArticlePageMapperKt.a(com.vuitton.android.data.dto.immersivearticle.ImmersiveArticlePageDto):com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticlePage");
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0023  */
    /* JADX WARN: Code duplicated, block: B:16:0x002a  */
    public static final ImmersiveArticleCta b(ImmersiveArticleCtaDto immersiveArticleCtaDto) {
        ContributionLink url;
        String str = immersiveArticleCtaDto.f45812a;
        ImmersiveArticleThemeDto immersiveArticleThemeDto = immersiveArticleCtaDto.f45815e;
        SectionTheme sectionTheme = immersiveArticleThemeDto != null ? new SectionTheme(immersiveArticleThemeDto.f45941a, immersiveArticleThemeDto.f45942b) : null;
        LinkTypeDto linkTypeDto = immersiveArticleCtaDto.f45814c;
        if (linkTypeDto == null) {
            String str2 = immersiveArticleCtaDto.d;
            url = new ContributionLink.Url(str2 != null ? str2 : "");
        } else {
            String str3 = immersiveArticleCtaDto.f45813b;
            if (str3 == null) {
                str3 = "";
            }
            url = LinkTypeMapperKt.a(linkTypeDto, str3, null);
            if (url == null) {
                String str4 = immersiveArticleCtaDto.d;
                url = new ContributionLink.Url(str4 != null ? str4 : "");
            }
        }
        return new ImmersiveArticleCta(str, url, sectionTheme);
    }

    public static final ImmersiveArticleFont c(ImmersiveArticleFontDto immersiveArticleFontDto) {
        int i2 = WhenMappings.f45980a[immersiveArticleFontDto.ordinal()];
        if (i2 == 1) {
            return ImmersiveArticleFont.DEFAULT;
        }
        if (i2 == 2) {
            return ImmersiveArticleFont.HANLEY_PRO;
        }
        if (i2 == 3) {
            return ImmersiveArticleFont.ANGLAISE_F;
        }
        if (i2 == 4) {
            return ImmersiveArticleFont.COND;
        }
        v40.g();
        return null;
    }

    public static final ImmersiveArticleSizeCard d(ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto) {
        switch (WhenMappings.f45983e[immersiveArticleSizeCardDto.ordinal()]) {
            case 1:
                return ImmersiveArticleSizeCard.FULLSCREEN;
            case 2:
                return ImmersiveArticleSizeCard.RATIO_16_9;
            case 3:
                return ImmersiveArticleSizeCard.RATIO_9_16;
            case 4:
                return ImmersiveArticleSizeCard.RATIO_2_3;
            case 5:
                return ImmersiveArticleSizeCard.RATIO_4_5;
            case 6:
                return ImmersiveArticleSizeCard.RATIO_1_1;
            default:
                v40.g();
                return null;
        }
    }
}
