package com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare;

import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonNull;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class e extends GsonBaseResponse {
    public final List<a> productIds = Collections.EMPTY_LIST;

    public static final class a {
        private C0193a parsedPayload;
        private List<String> referencedProductIds;
        public final String productId = "";
        public final JsonElement payload = JsonNull.f42453b;
        public final long lastModified = -1;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.e$a$a, reason: collision with other inner class name */
        public static final class C0193a {
            final String imageUrl = "";
            final List<C0194a> referencedProducts = Collections.EMPTY_LIST;

            /* JADX INFO: renamed from: com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.e$a$a$a, reason: collision with other inner class name */
            public static final class C0194a {
                final long productId = -1;
            }
        }

        public final String a() {
            if (this.parsedPayload == null) {
                this.parsedPayload = (C0193a) GsonHelper.f39260a.h(this.payload, C0193a.class);
            }
            return this.parsedPayload.imageUrl;
        }

        public final List b() {
            if (this.parsedPayload == null) {
                this.parsedPayload = (C0193a) GsonHelper.f39260a.h(this.payload, C0193a.class);
            }
            if (this.referencedProductIds == null) {
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                List<C0193a.C0194a> list = this.parsedPayload.referencedProducts;
                Set set = MoreCollections.f39434a;
                if (list == null) {
                    list = Collections.EMPTY_LIST;
                }
                Iterator<C0193a.C0194a> it = list.iterator();
                while (it.hasNext()) {
                    builder.f(Long.toString(it.next().productId));
                }
                this.referencedProductIds = builder.i();
            }
            return this.referencedProductIds;
        }
    }
}
