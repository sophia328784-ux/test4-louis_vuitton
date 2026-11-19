package lv.nfc.reader.data.models;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class LVTagResult implements Serializable {
    private String cxid;
    private String longSku;
    private String sku;

    public String getCxid() {
        return this.cxid;
    }

    public String getLongSku() {
        return this.longSku;
    }

    public String getSku() {
        return this.sku;
    }
}
