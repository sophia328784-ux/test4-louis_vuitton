package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class c extends GsonBaseResponse {
    private final List<a> products = Collections.EMPTY_LIST;

    public static final class a {
        private final String productGUID = null;
        private final String skuGUID = "";
        private final long productLastModified = -1;

        public final String a() {
            return this.productGUID;
        }

        public final String b() {
            return this.skuGUID;
        }

        public final String toString() {
            MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("GetProductGuidBySkuGuidResponse$Product");
            toStringHelper.b("productGUID", this.productGUID);
            toStringHelper.b("skuGUID", this.skuGUID);
            toStringHelper.b("productLastModified", Long.valueOf(this.productLastModified));
            return toStringHelper.toString();
        }
    }

    public final List a() {
        return this.products;
    }
}
