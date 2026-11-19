package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends GsonBaseResponse {
    private final List<b> products = Collections.EMPTY_LIST;

    public static final class a {
        private final List<String> itemGuids = Collections.EMPTY_LIST;

        public final List a() {
            return this.itemGuids;
        }
    }

    public static final class b {
        private final String productGUID = "";
        private final a mask = new a();
        private final long lastModified = -1;

        public final String a() {
            return this.productGUID;
        }

        public final a b() {
            return this.mask;
        }

        public final long c() {
            return this.lastModified;
        }
    }

    public final List a() {
        return this.products;
    }
}
