package com.google.android.datatransport.cct.internal;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ComplianceData {

    public static abstract class Builder {
        public abstract ComplianceData a();

        public abstract Builder b(ExternalPrivacyContext externalPrivacyContext);

        public abstract Builder c(ProductIdOrigin productIdOrigin);
    }

    public enum ProductIdOrigin {
        NOT_SET(0),
        EVENT_OVERRIDE(5);

        private static final SparseArray<ProductIdOrigin> valueMap;
        private final int value;

        static {
            ProductIdOrigin productIdOrigin = NOT_SET;
            ProductIdOrigin productIdOrigin2 = EVENT_OVERRIDE;
            SparseArray<ProductIdOrigin> sparseArray = new SparseArray<>();
            valueMap = sparseArray;
            sparseArray.put(0, productIdOrigin);
            sparseArray.put(5, productIdOrigin2);
        }

        ProductIdOrigin(int i2) {
            this.value = i2;
        }
    }

    public static Builder a() {
        return new AutoValue_ComplianceData.Builder();
    }

    public abstract ExternalPrivacyContext b();

    public abstract ProductIdOrigin c();
}
