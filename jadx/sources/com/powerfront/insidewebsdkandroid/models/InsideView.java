package com.powerfront.insidewebsdkandroid.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.math.BigDecimal;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class InsideView extends InsideEntity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InsideViewType f43314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f43315c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f43316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f43317f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BigDecimal f43318h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f43319i;

    public InsideView(InsideViewType insideViewType, String str, String str2, String str3, String str4, BigDecimal bigDecimal, String str5, HashMap<String, Object> map, String[] strArr) {
        super(map);
        this.f43314b = insideViewType;
        this.f43315c = str;
        this.d = str2;
        this.f43317f = str3;
        this.g = str4;
        this.f43318h = bigDecimal;
        this.f43319i = str5;
        this.f43316e = strArr;
    }

    public final JSONObject a() {
        HashMap map = new HashMap();
        map.put("type", this.f43314b.toString());
        map.put("name", this.f43315c);
        String str = this.d;
        if (str != null) {
            map.put("category", str);
        }
        String str2 = this.f43317f;
        if (str2 != null) {
            map.put("img", str2);
        }
        String str3 = this.g;
        if (str3 != null) {
            map.put(ConfigurationName.DOWNLOAD_PLUGIN_URL, str3);
        }
        BigDecimal bigDecimal = this.f43318h;
        if (bigDecimal != null) {
            map.put("price", bigDecimal.toString());
        }
        String str4 = this.f43319i;
        if (str4 != null) {
            map.put("sku", str4);
        }
        HashMap map2 = this.f43311a;
        if (!map2.isEmpty()) {
            map.put(DbParams.KEY_DATA, new JSONObject(map2));
        }
        return new JSONObject(map);
    }
}
