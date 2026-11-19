package com.perfectcorp.perfectlib.hc.database.ymk;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import defpackage.e81;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class ad$i {
    private final String content_zip;
    private final String content_zip_md5;
    private final long customerId;
    private final a extraInfo;
    private final String hidden;
    private final boolean hide;
    private final b info;

    @SerializedName("default")
    private final boolean isDefault;
    private final List<c> items;
    private final String productId;
    private final String sku_images_dfp_zip;
    private final String sku_images_dfp_zip_md5;
    private final String sku_images_room_zip;
    private final String sku_images_room_zip_md5;
    private final String sourceCustomerId;
    private final String sourceVendor;
    private final int statusCode;
    private final List<Object> subItems;
    private final long skuId = -1;
    private final String type = "";
    private final String subType = "";
    private final String skuName = "";
    private final String skuLongName = "";
    private final String skuGUID = "";
    private final String vendor = "";
    private final long startDate = -1;
    private final long endDate = -1;
    private final long lastModified = -1;

    public static final class a {
        private final Map<String, String> shadeFinderV4ItemGuidToneMapping;
        private final Map<String, Object> shadeFinderV4ItemGuidWcldMapping;

        public a() {
            Map<String, String> map = Collections.EMPTY_MAP;
            this.shadeFinderV4ItemGuidToneMapping = map;
            this.shadeFinderV4ItemGuidWcldMapping = map;
        }
    }

    public static final class b {
        public final ad$e$d room = new Object() { // from class: com.perfectcorp.perfectlib.hc.database.ymk.ad$e$d
            public final String attr_version = "";
            public final List<Object> skus = Collections.EMPTY_LIST;
        };
        public final a extraskuinfo = new a();

        public static final class a {
            public final boolean editMode = true;
            public final boolean liveMode = false;
        }
    }

    private ad$i() {
        List<c> list = Collections.EMPTY_LIST;
        this.items = list;
        this.subItems = list;
        this.statusCode = -1;
        this.customerId = -1L;
        this.sourceCustomerId = "";
        this.sourceVendor = "";
        this.productId = "";
        this.hide = false;
        this.info = new b();
        this.extraInfo = new a();
        this.isDefault = false;
        this.content_zip = "";
        this.sku_images_room_zip = "";
        this.sku_images_dfp_zip = "";
        this.content_zip_md5 = "";
        this.sku_images_room_zip_md5 = "";
        this.sku_images_dfp_zip_md5 = "";
        this.hidden = "";
    }

    public static class c {
        public final String itemGUID = "";
        public final String freeSampleURL = "";
        public final String shoppingURL = "";
        public final String moreInfoURL = "";
        public final boolean hot = false;
        public final String shadeId = "";
        public final a info = new a(0);
        public final String itemThumbnailURL = "";
        public final String itemDescription = "";
        public final JsonElement customerInfo = null;

        private c() {
        }

        public static final class a {
            public final C0127a itemContent;

            private a() {
                this.itemContent = new C0127a(0);
            }

            public /* synthetic */ a(int i2) {
                this();
            }

            /* JADX INFO: renamed from: com.perfectcorp.perfectlib.hc.database.ymk.ad$i$c$a$a, reason: collision with other inner class name */
            public static final class C0127a {
                public final List<Object> button;

                @SerializedName("color")
                public final List<Object> colors;
                public final List<ad$e$a> display_color;
                public final List<ad$e$b> image;
                public final List<ad$e$c> input;

                @SerializedName("palette")
                public final List<ad$b> palettes;
                public final List<ad$e$e> text;

                private C0127a() {
                    List list = Collections.EMPTY_LIST;
                    this.button = list;
                    this.image = list;
                    this.text = list;
                    this.display_color = list;
                    this.input = list;
                    this.palettes = list;
                    this.colors = list;
                }

                public final String a(String str) {
                    try {
                        Optional optionalM = FluentIterable.n(this.image).i(new e81(str, 2)).m();
                        return optionalM.d() ? ((ad$e$b) optionalM.c()).attr_path : "";
                    } catch (Throwable th) {
                        Log.c("DatabaseUpgrade_1_21", "[getImage]", th);
                        return "";
                    }
                }

                public final String b(String str) {
                    try {
                        Optional optionalM = FluentIterable.n(this.text).i(new e81(str, 1)).m();
                        return optionalM.d() ? ((ad$e$e) optionalM.c()).attr_value : "";
                    } catch (Throwable th) {
                        Log.c("DatabaseUpgrade_1_21", "[getText]", th);
                        return "";
                    }
                }

                public final String c(String str) {
                    try {
                        Optional optionalM = FluentIterable.n(this.input).i(new e81(str, 0)).m();
                        return optionalM.d() ? ((ad$e$c) optionalM.c()).attr_hidden : "";
                    } catch (Throwable th) {
                        Log.c("DatabaseUpgrade_1_21", "[getInput]", th);
                        return "";
                    }
                }

                public /* synthetic */ C0127a(int i2) {
                    this();
                }
            }
        }
    }
}
