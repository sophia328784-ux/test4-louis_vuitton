package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends GsonBaseResponse {

    @SerializedName("messagedigest")
    private final String messageDigest = "";
    private final List<a> result = Collections.EMPTY_LIST;

    public static final class a {
        private final String guid = "";
        private final String type = "";
        private final long lastModified = -1;

        public final String a() {
            return this.guid;
        }

        public final long b() {
            return this.lastModified;
        }

        public final String toString() {
            return "guid=" + this.guid + ", type=" + this.type;
        }
    }

    public final String a() {
        String str = this.messageDigest;
        int i2 = Nulls.f42040a;
        return Strings.b(str);
    }

    public final List b() {
        return this.result;
    }
}
