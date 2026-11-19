package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends GsonBaseResponse {
    private final List<e> result = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a$a, reason: collision with other inner class name */
    public static final class C0173a {
        public final b data = new b();
        public final d makeup = new d();
    }

    public static final class b {
        public final String name = "";

        @SerializedName("desc")
        public final String description = "";
        public final String thumbnail = "";
    }

    public static final class c {
        public final boolean enabled = false;
        public final boolean animated = false;
        public final int bestDisplayFrame = 0;
        public final String image = "";
        public final String imageUrl = "";
        public final String alignMode = "";
    }

    public static final class d {
        public final List<c> background;
        public final List<c> foreground;

        public d() {
            List<c> list = Collections.EMPTY_LIST;
            this.background = list;
            this.foreground = list;
        }
    }

    public static final class e {
        public final String guid = "";
        public final String type = "";
        public final C0173a payload = null;
        public final String expiredDate = "";
        public final long lastModified = 0;
    }

    public final List a() {
        return Collections.unmodifiableList(this.result);
    }
}
