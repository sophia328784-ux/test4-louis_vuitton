package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleTrackingUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58789a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f58790b;

        static {
            int[] iArr = new int[ImmersiveArticleType.values().length];
            try {
                iArr[ImmersiveArticleType.IMMERSIVE_ARTICLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ImmersiveArticleType.SEO_LANDING_PAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f58789a = iArr;
            int[] iArr2 = new int[SeekDirection.values().length];
            try {
                iArr2[SeekDirection.PLUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[SeekDirection.LESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f58790b = iArr2;
        }
    }

    public static final AdditionalProperty.ContentType a(ImmersiveArticleType immersiveArticleType) {
        String str;
        int i2 = WhenMappings.f58789a[immersiveArticleType.ordinal()];
        if (i2 == 1) {
            str = "feed_article";
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            str = "recommendation";
        }
        return new AdditionalProperty.ContentType(str);
    }

    public static String b(ImmersiveArticleType immersiveArticleType, String str) {
        int i2 = WhenMappings.f58789a[immersiveArticleType.ordinal()];
        if (i2 == 1) {
            return "fashion_show_article";
        }
        if (i2 == 2) {
            return str;
        }
        v40.g();
        return null;
    }

    public static final String c(ImmersiveArticleType immersiveArticleType, String str) {
        int i2 = WhenMappings.f58789a[immersiveArticleType.ordinal()];
        if (i2 == 1) {
            return str;
        }
        if (i2 == 2) {
            return "recommendation";
        }
        v40.g();
        return null;
    }

    public static final String d(ImmersiveArticleType immersiveArticleType) {
        int i2 = WhenMappings.f58789a[immersiveArticleType.ordinal()];
        if (i2 == 1) {
            return "immersive_article";
        }
        if (i2 == 2) {
            return "recommendation";
        }
        v40.g();
        return null;
    }

    public static final String e(ImmersiveArticleType immersiveArticleType, String str) {
        int i2 = WhenMappings.f58789a[immersiveArticleType.ordinal()];
        if (i2 == 1) {
            return str;
        }
        if (i2 == 2) {
            return "seo_landing_page";
        }
        v40.g();
        return null;
    }
}
