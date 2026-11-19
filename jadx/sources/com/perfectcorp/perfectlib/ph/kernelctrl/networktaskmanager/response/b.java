package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends GsonBaseResponse {
    private final List<C0171b> result = Collections.EMPTY_LIST;

    public static final class a {

        @SerializedName("sku_guid")
        public final String skuGuid = "";

        @SerializedName("item_guid")
        public final String itemGuid = "";
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b$b, reason: collision with other inner class name */
    public static final class C0171b {
        public final String guid = "";
        public final String type = "";
        public final c payload = null;
        public final String expiredDate = "";
        public final long lastModified = 0;
    }

    public static final class c {
        private final List<a> items;

        @SerializedName("supported_patterns")
        public final List<JsonObject> supportedPatterns;
        public final List<JsonObject> wearingStyle;

        @SerializedName("skuset_id")
        public final String skuSetId = "";
        public final String type = "";
        public final String name = "";
        public final String thumbnail = "";

        @SerializedName("shopping_url")
        public final String shoppingUrl = "";
        public final String vendor = "";

        @SerializedName("customer_id")
        public final String customerId = "";

        @SerializedName("makeup_version")
        public final String makeupVersion = "";
        public final long lastModified = 0;

        public c() {
            List list = Collections.EMPTY_LIST;
            this.items = list;
            this.supportedPatterns = list;
            this.wearingStyle = list;
        }

        public final List a() {
            return Collections.unmodifiableList(this.items);
        }
    }

    public final List a() {
        return Collections.unmodifiableList(this.result);
    }

    public final List b() {
        ArrayList arrayList = new ArrayList();
        Iterator<C0171b> it = this.result.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().payload);
        }
        return arrayList;
    }
}
