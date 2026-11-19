package com.vuitton.android.data.dto.linktype;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.serialization.NoSerializedName;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0018\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;", "", "Companion", "AI_COMPANION", "CATEGORY", "EXCLUSIVE_OFFER", "IMMERSIVE_ARTICLE", "MONOGRAM", "PORTAL", "PRODUCT", "PRODUCT_LIST", "PUSH_NOTIFICATION", "SHADE_FINDER", "SPOTLIGHT", "STORY", "WEBVIEW", "OSA", "REPAIR_CREATE", "SEO_LANDING_PAGE", "OTHER", "UNKNOWN", "BOOKING_FORM", "WISHLIST", "WISHLIST_SHARED", "MY_LV", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable(with = LinkTypeDtoSerializer.class)
public final class LinkTypeDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LinkTypeDto[] $VALUES;

    @SerialName
    public static final LinkTypeDto AI_COMPANION;

    @SerialName
    public static final LinkTypeDto BOOKING_FORM;

    @SerialName
    public static final LinkTypeDto CATEGORY;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final LinkTypeDto EXCLUSIVE_OFFER;

    @SerialName
    public static final LinkTypeDto IMMERSIVE_ARTICLE;

    @SerialName
    public static final LinkTypeDto MONOGRAM;

    @SerialName
    public static final LinkTypeDto MY_LV;

    @SerialName
    public static final LinkTypeDto OSA;

    @SerialName
    public static final LinkTypeDto OTHER;

    @SerialName
    public static final LinkTypeDto PORTAL;

    @SerialName
    public static final LinkTypeDto PRODUCT;

    @SerialName
    public static final LinkTypeDto PRODUCT_LIST;

    @SerialName
    public static final LinkTypeDto PUSH_NOTIFICATION;

    @SerialName
    public static final LinkTypeDto REPAIR_CREATE;

    @SerialName
    public static final LinkTypeDto SEO_LANDING_PAGE;

    @SerialName
    public static final LinkTypeDto SHADE_FINDER;

    @SerialName
    public static final LinkTypeDto SPOTLIGHT;

    @SerialName
    public static final LinkTypeDto STORY;

    @NoSerializedName
    public static final LinkTypeDto UNKNOWN;

    @SerialName
    public static final LinkTypeDto WEBVIEW;

    @SerialName
    public static final LinkTypeDto WISHLIST;

    @SerialName
    public static final LinkTypeDto WISHLIST_SHARED;

    /* JADX WARN: Type inference failed for: r0v24, types: [com.vuitton.android.data.dto.linktype.LinkTypeDto$Companion] */
    static {
        LinkTypeDto linkTypeDto = new LinkTypeDto("AI_COMPANION", 0);
        AI_COMPANION = linkTypeDto;
        LinkTypeDto linkTypeDto2 = new LinkTypeDto("CATEGORY", 1);
        CATEGORY = linkTypeDto2;
        LinkTypeDto linkTypeDto3 = new LinkTypeDto("EXCLUSIVE_OFFER", 2);
        EXCLUSIVE_OFFER = linkTypeDto3;
        LinkTypeDto linkTypeDto4 = new LinkTypeDto("IMMERSIVE_ARTICLE", 3);
        IMMERSIVE_ARTICLE = linkTypeDto4;
        LinkTypeDto linkTypeDto5 = new LinkTypeDto("MONOGRAM", 4);
        MONOGRAM = linkTypeDto5;
        LinkTypeDto linkTypeDto6 = new LinkTypeDto("PORTAL", 5);
        PORTAL = linkTypeDto6;
        LinkTypeDto linkTypeDto7 = new LinkTypeDto("PRODUCT", 6);
        PRODUCT = linkTypeDto7;
        LinkTypeDto linkTypeDto8 = new LinkTypeDto("PRODUCT_LIST", 7);
        PRODUCT_LIST = linkTypeDto8;
        LinkTypeDto linkTypeDto9 = new LinkTypeDto("PUSH_NOTIFICATION", 8);
        PUSH_NOTIFICATION = linkTypeDto9;
        LinkTypeDto linkTypeDto10 = new LinkTypeDto("SHADE_FINDER", 9);
        SHADE_FINDER = linkTypeDto10;
        LinkTypeDto linkTypeDto11 = new LinkTypeDto("SPOTLIGHT", 10);
        SPOTLIGHT = linkTypeDto11;
        LinkTypeDto linkTypeDto12 = new LinkTypeDto("STORY", 11);
        STORY = linkTypeDto12;
        LinkTypeDto linkTypeDto13 = new LinkTypeDto("WEBVIEW", 12);
        WEBVIEW = linkTypeDto13;
        LinkTypeDto linkTypeDto14 = new LinkTypeDto("OSA", 13);
        OSA = linkTypeDto14;
        LinkTypeDto linkTypeDto15 = new LinkTypeDto("REPAIR_CREATE", 14);
        REPAIR_CREATE = linkTypeDto15;
        LinkTypeDto linkTypeDto16 = new LinkTypeDto("SEO_LANDING_PAGE", 15);
        SEO_LANDING_PAGE = linkTypeDto16;
        LinkTypeDto linkTypeDto17 = new LinkTypeDto("OTHER", 16);
        OTHER = linkTypeDto17;
        LinkTypeDto linkTypeDto18 = new LinkTypeDto("UNKNOWN", 17);
        UNKNOWN = linkTypeDto18;
        LinkTypeDto linkTypeDto19 = new LinkTypeDto("BOOKING_FORM", 18);
        BOOKING_FORM = linkTypeDto19;
        LinkTypeDto linkTypeDto20 = new LinkTypeDto("WISHLIST", 19);
        WISHLIST = linkTypeDto20;
        LinkTypeDto linkTypeDto21 = new LinkTypeDto("WISHLIST_SHARED", 20);
        WISHLIST_SHARED = linkTypeDto21;
        LinkTypeDto linkTypeDto22 = new LinkTypeDto("MY_LV", 21);
        MY_LV = linkTypeDto22;
        LinkTypeDto[] linkTypeDtoArr = {linkTypeDto, linkTypeDto2, linkTypeDto3, linkTypeDto4, linkTypeDto5, linkTypeDto6, linkTypeDto7, linkTypeDto8, linkTypeDto9, linkTypeDto10, linkTypeDto11, linkTypeDto12, linkTypeDto13, linkTypeDto14, linkTypeDto15, linkTypeDto16, linkTypeDto17, linkTypeDto18, linkTypeDto19, linkTypeDto20, linkTypeDto21, linkTypeDto22};
        $VALUES = linkTypeDtoArr;
        $ENTRIES = EnumEntriesKt.a(linkTypeDtoArr);
        INSTANCE = new Object(null) { // from class: com.vuitton.android.data.dto.linktype.LinkTypeDto.Companion
            public final KSerializer<LinkTypeDto> serializer() {
                return LinkTypeDtoSerializer.f46099a;
            }
        };
    }

    public static LinkTypeDto valueOf(String str) {
        return (LinkTypeDto) Enum.valueOf(LinkTypeDto.class, str);
    }

    public static LinkTypeDto[] values() {
        return (LinkTypeDto[]) $VALUES.clone();
    }
}
