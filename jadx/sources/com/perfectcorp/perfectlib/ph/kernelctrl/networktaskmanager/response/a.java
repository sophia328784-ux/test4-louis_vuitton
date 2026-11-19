package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends GsonBaseResponse {
    private final List<C0170a> result = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.a$a, reason: collision with other inner class name */
    public static final class C0170a {

        @SerializedName("guid")
        public final String skuSetId = "";
        public final String type = "";
        public final Long lastModified = 0L;
    }

    public final List a() {
        return Collections.unmodifiableList(this.result);
    }
}
