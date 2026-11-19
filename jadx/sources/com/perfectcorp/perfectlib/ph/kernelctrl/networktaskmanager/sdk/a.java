package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sdk;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a extends GsonBaseResponse {
    private final List<b> result = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sdk.a$a, reason: collision with other inner class name */
    public static final class C0172a {
        public final String skuItemGUID = "";
        public final String shadetId = "";

        private C0172a() {
        }
    }

    public static final class b {
        public final String skuGUID = "";
        public final String productId = "";
        public final List<C0172a> items = Collections.EMPTY_LIST;

        private b() {
        }
    }

    private a() {
    }

    public final List a() {
        return this.result;
    }
}
