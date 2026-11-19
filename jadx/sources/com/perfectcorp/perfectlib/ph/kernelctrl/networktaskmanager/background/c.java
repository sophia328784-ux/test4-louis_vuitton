package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class c extends GsonBaseResponse {
    private final List<a> templates = Collections.EMPTY_LIST;

    public static final class a {
        public final String tid = "";
        public final String guid = "";
        public final String type = "";
        public final String name = "";
        public final String thumbnail = "";

        @SerializedName("expireddate")
        public final String expiredDate = "";
        public final long lastModified = 0;
        public final long downloadFileSize = 0;

        @SerializedName("usage_type")
        public final String usageType = "";

        @SerializedName("downloadurl")
        public final String downloadURL = "";

        @SerializedName("downloadchecksum")
        public final String downloadCheckSum = "";

        @SerializedName("publishdate")
        public final String publishDate = "";
    }

    public final List a() {
        return Collections.unmodifiableList(this.templates);
    }
}
