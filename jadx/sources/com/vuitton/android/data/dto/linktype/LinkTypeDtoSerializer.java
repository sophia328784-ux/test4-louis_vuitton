package com.vuitton.android.data.dto.linktype;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.v40;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/LinkTypeDtoSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LinkTypeDtoSerializer implements KSerializer<LinkTypeDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinkTypeDtoSerializer f46099a = new LinkTypeDtoSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f46100b = SerialDescriptorsKt.a("LinkTypeDto", PrimitiveKind.STRING.f75546a);

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46101a;

        static {
            int[] iArr = new int[LinkTypeDto.values().length];
            try {
                iArr[LinkTypeDto.AI_COMPANION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LinkTypeDto.CATEGORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LinkTypeDto.EXCLUSIVE_OFFER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LinkTypeDto.IMMERSIVE_ARTICLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LinkTypeDto.MONOGRAM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LinkTypeDto.PORTAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[LinkTypeDto.PRODUCT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[LinkTypeDto.PRODUCT_LIST.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[LinkTypeDto.PUSH_NOTIFICATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[LinkTypeDto.SHADE_FINDER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[LinkTypeDto.SPOTLIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[LinkTypeDto.STORY.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[LinkTypeDto.WEBVIEW.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[LinkTypeDto.OSA.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[LinkTypeDto.REPAIR_CREATE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[LinkTypeDto.SEO_LANDING_PAGE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[LinkTypeDto.OTHER.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[LinkTypeDto.UNKNOWN.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[LinkTypeDto.BOOKING_FORM.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[LinkTypeDto.WISHLIST.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[LinkTypeDto.WISHLIST_SHARED.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[LinkTypeDto.MY_LV.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            f46101a = iArr;
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return f46100b;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        String strX = decoder.x();
        switch (strX.hashCode()) {
            case -1842816834:
                if (strX.equals("push-notification")) {
                    return LinkTypeDto.PUSH_NOTIFICATION;
                }
                break;
            case -1731215449:
                if (strX.equals("ai-companion")) {
                    return LinkTypeDto.AI_COMPANION;
                }
                break;
            case -982480788:
                if (strX.equals("portal")) {
                    return LinkTypeDto.PORTAL;
                }
                break;
            case -968641083:
                if (strX.equals("wishlist")) {
                    return LinkTypeDto.WISHLIST;
                }
                break;
            case -919958188:
                if (strX.equals("spotlight")) {
                    return LinkTypeDto.SPOTLIGHT;
                }
                break;
            case -657214789:
                if (strX.equals("my-monogram")) {
                    return LinkTypeDto.MONOGRAM;
                }
                break;
            case -309474065:
                if (strX.equals("product")) {
                    return LinkTypeDto.PRODUCT;
                }
                break;
            case -309425751:
                if (strX.equals("profile")) {
                    return LinkTypeDto.MY_LV;
                }
                break;
            case -78270675:
                if (strX.equals("my-appointment/create")) {
                    return LinkTypeDto.OSA;
                }
                break;
            case 50511102:
                if (strX.equals("category")) {
                    return LinkTypeDto.CATEGORY;
                }
                break;
            case 106069776:
                if (strX.equals("other")) {
                    return LinkTypeDto.OTHER;
                }
                break;
            case 898462257:
                if (strX.equals("my-care-service/create")) {
                    return LinkTypeDto.REPAIR_CREATE;
                }
                break;
            case 954738677:
                if (strX.equals("seo-landing-page")) {
                    return LinkTypeDto.SEO_LANDING_PAGE;
                }
                break;
            case 968147644:
                if (strX.equals("product-list")) {
                    return LinkTypeDto.PRODUCT_LIST;
                }
                break;
            case 1224424441:
                if (strX.equals("webview")) {
                    return LinkTypeDto.WEBVIEW;
                }
                break;
            case 1313517503:
                if (strX.equals("native-story")) {
                    return LinkTypeDto.STORY;
                }
                break;
            case 1755166662:
                if (strX.equals("shade-finder")) {
                    return LinkTypeDto.SHADE_FINDER;
                }
                break;
            case 1819242468:
                if (strX.equals("immersive-article")) {
                    return LinkTypeDto.IMMERSIVE_ARTICLE;
                }
                break;
            case 1850963384:
                if (strX.equals("booking-form")) {
                    return LinkTypeDto.BOOKING_FORM;
                }
                break;
            case 1945848173:
                if (strX.equals("wishlist-shared")) {
                    return LinkTypeDto.WISHLIST_SHARED;
                }
                break;
            case 2087714413:
                if (strX.equals("exclusive-offer")) {
                    return LinkTypeDto.EXCLUSIVE_OFFER;
                }
                break;
        }
        return LinkTypeDto.UNKNOWN;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        String str;
        LinkTypeDto linkTypeDto = (LinkTypeDto) obj;
        linkTypeDto.getClass();
        switch (WhenMappings.f46101a[linkTypeDto.ordinal()]) {
            case 1:
                str = "ai-companion";
                break;
            case 2:
                str = "category";
                break;
            case 3:
                str = "exclusive-offer";
                break;
            case 4:
                str = "immersive-article";
                break;
            case 5:
                str = "my-monogram";
                break;
            case 6:
                str = "portal";
                break;
            case 7:
                str = "product";
                break;
            case 8:
                str = "product-list";
                break;
            case 9:
                str = "push-notification";
                break;
            case 10:
                str = "shade-finder";
                break;
            case 11:
                str = "spotlight";
                break;
            case 12:
                str = "native-story";
                break;
            case 13:
                str = "webview";
                break;
            case 14:
                str = "my-appointment/create";
                break;
            case 15:
                str = "my-care-service/create";
                break;
            case 16:
                str = "seo-landing-page";
                break;
            case 17:
                str = "other";
                break;
            case 18:
                str = "unknown";
                break;
            case 19:
                str = "booking-form";
                break;
            case 20:
                str = "wishlist";
                break;
            case 21:
                str = "wishlist-shared";
                break;
            case 22:
                str = "profile";
                break;
            default:
                v40.g();
                return;
        }
        encoder.E(str);
    }
}
