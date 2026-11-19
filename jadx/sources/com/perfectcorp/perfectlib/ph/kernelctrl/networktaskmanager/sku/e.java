package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class e extends GsonBaseResponse {
    private final List<a> products = Collections.EMPTY_LIST;

    public static final class a {
        private final String productGUID = "";
        private final long lastModified = -1;

        public final String a() {
            return this.productGUID;
        }

        public final long b() {
            return this.lastModified;
        }
    }

    public final List a() {
        return this.products;
    }
}
