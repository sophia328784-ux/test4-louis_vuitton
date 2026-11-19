package com.powerfront.insidewebsdkandroid.models;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.LinkedHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class InsideCart extends InsideEntity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BigDecimal f43302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f43303c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f43304e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f43305f;

    public InsideCart(String str, HashMap<String, Object> map) {
        super(map);
        this.f43302b = new BigDecimal(0);
        this.f43303c = false;
        this.d = false;
        this.f43304e = null;
        new HashMap();
        this.f43305f = new LinkedHashMap();
        this.d = false;
    }

    public final void a(String str) {
        this.f43311a.put("currency", str);
    }

    public final JSONObject b() {
        HashMap map = new HashMap();
        map.put("orderId", "auto");
        map.put("update", Boolean.FALSE);
        map.put("orderTotal", this.f43302b);
        map.put("complete", Boolean.valueOf(this.f43303c));
        String str = this.f43304e;
        if (str != null) {
            map.put("newOrderId", str);
        }
        HashMap map2 = this.f43311a;
        if (!map2.isEmpty()) {
            map.put(DbParams.KEY_DATA, new JSONObject(map2));
        }
        return new JSONObject(map);
    }
}
