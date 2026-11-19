package com.perfectcorp.perfectlib.ph.database.ymk.skuset;

import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final class k {

    @SerializedName("color_references")
    public final List<a> colorReferences;

    @SerializedName("pattern")
    public final List<b> patterns;
    public final String skuSetGuid = "";
    public final String wearingStyleGuid = "";

    @SerializedName("style_guid")
    public final String styleGuid = "";
    public final String thumbnail = "";

    @SerializedName("inner_ratio")
    public final int innerRatio = 0;

    @SerializedName("feather_strength")
    public final int featherStrength = 0;
    public final int gloss = 0;
    public final int transparency = 0;

    @SerializedName("shimmer_color")
    final String shimmerColor = "";

    @SerializedName("shimmer_intensity")
    public final int shimmerIntensity = 0;

    @SerializedName("shimmer_density")
    public final int shimmerDensity = 0;

    @SerializedName("shimmer_granularity")
    public final int shimmerGranularity = 0;
    public final int fullness = 0;
    public final int wrinkless = 0;

    public static final class a {

        @SerializedName("sku_guid")
        public final String skuGuid = "";

        @SerializedName("item_guid")
        public final String itemGuid = "";

        @SerializedName("pattern_guid")
        public final String patternGuid = "";

        @SerializedName("palette_guid")
        public final String paletteGuid = "";

        @SerializedName("palette_color_index")
        public final int paletteColorIndex = 0;

        @SerializedName("color_intensity")
        public final int colorIntensity = 0;
    }

    public static final class b {

        @SerializedName("sku_guid")
        public final String skuGuid = "";

        @SerializedName("item_guid")
        public final String itemGuid = "";

        @SerializedName("pattern_guid")
        public final String patternGuid = "";

        @SerializedName("object_distance_ratio")
        public final float objectDistanceRatio = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        public final String position = "";

        @SerializedName("object_distance_ratio_back")
        public final float objectDistanceRatioBack = Call.Parameters.DEFAULT_CAMERA_ZOOM;

        @SerializedName("object_distance_ratio_palm")
        public final float objectDistanceRatioPalm = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public k() {
        List list = Collections.EMPTY_LIST;
        this.colorReferences = list;
        this.patterns = list;
    }

    public final int a() {
        return TemplateUtils.v(this.shimmerColor);
    }
}
