package com.perfectcorp.perfectlib.ph.database.ymk.sku;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.template.o;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.gson.JsonArray;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import defpackage.e81;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class h {
    public final com.perfectcorp.perfectlib.ph.database.ymk.background.a backgroundInfo;
    public final String content_zip;
    public final String content_zip_md5;
    public final long customerId;
    public final long endDate;
    public final b extraInfo;
    public final String hidden;
    public final boolean hide;
    public final c info;

    @SerializedName("default")
    public final boolean isDefault;
    public final List<d> items;
    public final long lastModified;
    public final String productId;
    public final String skuGUID;
    public final long skuId;
    public final String skuLongName;
    public final String skuName;
    public final String sku_images_dfp_zip;
    public final String sku_images_dfp_zip_md5;
    public final String sku_images_room_zip;
    public final String sku_images_room_zip_md5;
    public final String sourceCustomerId;
    public final String sourceVendor;
    public final long startDate;
    public final int statusCode;
    public final List<Object> subItems;
    public final String subType;
    public final String type;
    public final String vendor;

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f41311b;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f41313e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f41314f;
        public final long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f41315h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f41316i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final String f41317j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final c f41318k;
        public final String l;
        public final String m;
        public final String n;
        public final String o;
        public final String p;
        public final String q;
        public final String r;
        public com.perfectcorp.perfectlib.ph.database.ymk.background.a s;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41310a = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f41312c = -1;

        public a(String str) {
            this.f41311b = "";
            List list = Collections.EMPTY_LIST;
            this.d = list;
            this.f41313e = list;
            this.f41314f = -1;
            this.g = -1L;
            this.f41315h = "";
            this.f41316i = "";
            this.f41317j = "";
            this.f41318k = c.f41319a;
            this.l = "";
            this.m = "";
            this.n = "";
            this.o = "";
            this.p = "";
            this.q = "";
            this.r = "";
            this.f41311b = str;
        }
    }

    public static final class b {
        public final a eyewearInfo = null;

        public static final class a {
            public final List<C0154b> eyewear_items = Collections.EMPTY_LIST;
            public final C0152a eyewear_attributes = new C0152a();

            /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.sku.h$b$a$a, reason: collision with other inner class name */
            public static final class C0152a {
                public final List<C0153a> frames = Collections.EMPTY_LIST;

                /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.sku.h$b$a$a$a, reason: collision with other inner class name */
                public static final class C0153a {
                    public final String frame_id = "";
                    public final String frame_thumbnail = "";
                }
            }

            /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.sku.h$b$a$b, reason: collision with other inner class name */
            public static final class C0154b {
                public final String item_guid = "";
                public final String frame_id = "";
            }
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f41319a = new c();
        public final o.d room = o.d.f41700a;
        public final a extraskuinfo = a.f41320a;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f41320a = new a();
            public final boolean editMode = true;
            public final boolean liveMode = false;

            private a() {
            }
        }

        private c() {
        }
    }

    public static class d {
        public final String itemGUID = "";
        public final String freeSampleURL = "";
        public final String shoppingURL = "";
        public final String moreInfoURL = "";
        public final boolean hot = false;
        public final String shadeId = "";
        public final a info = a.f41321a;
        public final String itemThumbnailURL = "";
        public final String itemDescription = "";
        public final JsonElement customerInfo = null;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f41321a = new a();
            public final C0155a itemContent = C0155a.f41322a;
            public final JsonArray wearingStyle = null;
            public final List<String> pattern = Collections.EMPTY_LIST;

            /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.sku.h$d$a$a, reason: collision with other inner class name */
            public static final class C0155a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final C0155a f41322a = new C0155a();
                public final List<Object> button;

                @SerializedName("color")
                public final List<com.perfectcorp.perfectlib.ph.template.idc.a> colors;
                public final List<o.a> display_color;
                public final List<o.b> image;
                public final List<o.c> input;

                @SerializedName("palette")
                public final List<com.perfectcorp.perfectlib.ph.template.idc.d> palettes;

                @SerializedName("pattern")
                public final List<com.perfectcorp.perfectlib.ph.template.idc.e> patterns;
                public final List<o.g> text;

                private C0155a() {
                    List list = Collections.EMPTY_LIST;
                    this.button = list;
                    this.image = list;
                    this.text = list;
                    this.display_color = list;
                    this.input = list;
                    this.palettes = list;
                    this.colors = list;
                    this.patterns = list;
                }

                public final String a(String str) {
                    try {
                        Optional optionalM = FluentIterable.n(this.image).i(new e81(str, 5)).m();
                        return optionalM.d() ? ((o.b) optionalM.c()).attr_path : "";
                    } catch (Throwable th) {
                        Log.c("SkuMetadata", "[getImagePath]", th);
                        return "";
                    }
                }

                public final String b(String str) {
                    try {
                        Optional optionalM = FluentIterable.n(this.text).i(new e81(str, 4)).m();
                        return optionalM.d() ? ((o.g) optionalM.c()).attr_value : "";
                    } catch (Throwable th) {
                        Log.c("SkuMetadata", "[getTextValue]", th);
                        return "";
                    }
                }

                public final String c(String str) {
                    try {
                        Optional optionalM = FluentIterable.n(this.input).i(new e81(str, 3)).m();
                        return optionalM.d() ? ((o.c) optionalM.c()).attr_hidden : "";
                    } catch (Throwable th) {
                        Log.c("SkuMetadata", "[getInputHidden]", th);
                        return "";
                    }
                }
            }

            public static final class b {
                public final String guid = "";
                public final List<C0156a> pattern = Collections.EMPTY_LIST;

                /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.sku.h$d$a$b$a, reason: collision with other inner class name */
                public static final class C0156a {
                    public final String patternGUID = "";
                    public final String side = "";
                    public final int piercedPosition = 0;
                    public final String nailPosition = "";
                    public final String position = "ring";

                    private C0156a() {
                    }
                }

                private b() {
                }
            }

            private a() {
            }
        }
    }

    public enum e {
        UNKNOWN(-1),
        OK(0),
        NOT_FOUND(1),
        NOT_SUPPORT(2);


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f41327e;

        e(int i2) {
            this.f41327e = i2;
        }

        public static e b(int i2) {
            for (e eVar : values()) {
                if (eVar.f41327e == i2) {
                    return eVar;
                }
            }
            return UNKNOWN;
        }
    }

    public h(a aVar) {
        this.skuId = -1L;
        this.type = aVar.f41310a;
        this.subType = "";
        this.skuName = "";
        this.skuLongName = "";
        this.skuGUID = aVar.f41311b;
        this.vendor = "";
        this.startDate = -1L;
        this.endDate = -1L;
        this.lastModified = aVar.f41312c;
        this.items = aVar.d;
        this.subItems = aVar.f41313e;
        this.statusCode = aVar.f41314f;
        this.customerId = aVar.g;
        this.sourceCustomerId = aVar.f41315h;
        this.sourceVendor = aVar.f41316i;
        this.productId = aVar.f41317j;
        this.hide = false;
        this.info = aVar.f41318k;
        this.extraInfo = null;
        this.isDefault = false;
        this.content_zip = aVar.l;
        this.sku_images_room_zip = aVar.m;
        this.sku_images_dfp_zip = aVar.n;
        this.content_zip_md5 = aVar.o;
        this.sku_images_room_zip_md5 = aVar.p;
        this.sku_images_dfp_zip_md5 = aVar.q;
        this.hidden = aVar.r;
        this.backgroundInfo = aVar.s;
    }

    public final String toString() {
        return this.skuGUID;
    }

    private h() {
        this.skuId = -1L;
        this.type = "";
        this.subType = "";
        this.skuName = "";
        this.skuLongName = "";
        this.skuGUID = "";
        this.vendor = "";
        this.startDate = -1L;
        this.endDate = -1L;
        this.lastModified = -1L;
        List<d> list = Collections.EMPTY_LIST;
        this.items = list;
        this.subItems = list;
        this.statusCode = -1;
        this.customerId = -1L;
        this.sourceCustomerId = "";
        this.sourceVendor = "";
        this.productId = "";
        this.hide = false;
        this.info = c.f41319a;
        this.extraInfo = null;
        this.isDefault = false;
        this.content_zip = "";
        this.sku_images_room_zip = "";
        this.sku_images_dfp_zip = "";
        this.content_zip_md5 = "";
        this.sku_images_room_zip_md5 = "";
        this.sku_images_dfp_zip_md5 = "";
        this.hidden = "";
        this.backgroundInfo = null;
    }
}
