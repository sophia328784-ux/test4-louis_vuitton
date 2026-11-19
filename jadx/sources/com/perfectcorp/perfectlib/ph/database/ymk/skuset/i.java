package com.perfectcorp.perfectlib.ph.database.ymk.skuset;

import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final class i {
    public final String skuSetGuid = "";
    public final String supportedPatternGuid = "";

    @SerializedName("pattern_guid")
    public final String patternGuid = "";
    public final String thumbnail = "";

    @SerializedName("ombre_range")
    public final float ombreRange = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    @SerializedName("ombre_line_offset")
    public final float ombreLineOffset = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    @SerializedName("color_references")
    public final List<a> colorReferences = Collections.EMPTY_LIST;

    public static final class a {

        @SerializedName("palette_guid")
        public final String paletteGuid = "";

        @SerializedName("palette_color_index")
        public final int paletteColorIndex = 0;

        @SerializedName("color_intensity")
        public final int colorIntensity = 0;

        @SerializedName("shine_intensity")
        public final int shineIntensity = 0;

        @SerializedName("shimmer_intensity")
        public final int shimmerIntensity = 0;

        @SerializedName("metallic_intensity")
        public final int metallicIntensity = 0;
    }
}
