package com.batch.android.v0;

import android.content.Context;
import com.batch.android.BatchDataCollectionConfig;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.n.c0;
import com.batch.android.n.d0;
import com.batch.android.n.e0;
import com.batch.android.n.w;
import com.batch.android.n.z;
import defpackage.w21;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f24087c = "DataCollection";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BatchDataCollectionConfig f24088a = new BatchDataCollectionConfig();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BatchDataCollectionConfig f24089b;

    private void a(BatchDataCollectionConfig batchDataCollectionConfig) throws JSONException {
        com.batch.android.h.a aVarA;
        com.batch.android.h.a aVarA2;
        Context contextC = z.a().c();
        if (contextC == null) {
            t.c(f24087c, "Context not available yet, caching config");
            this.f24089b = batchDataCollectionConfig;
            return;
        }
        if (com.batch.android.m1.a.a(batchDataCollectionConfig, this.f24088a)) {
            t.c(f24087c, "No change detected for data collection config.");
            this.f24089b = null;
            return;
        }
        JSONObject jSONObject = new JSONObject();
        com.batch.android.h.c cVarA = c0.a(contextC);
        if (batchDataCollectionConfig.isGeoIpEnabled() != null && batchDataCollectionConfig.isGeoIpEnabled() != this.f24088a.isGeoIpEnabled()) {
            jSONObject.put("geoip_resolution", batchDataCollectionConfig.isGeoIpEnabled());
        }
        if (batchDataCollectionConfig.isDeviceBrandEnabled() != null && batchDataCollectionConfig.isDeviceBrandEnabled() != this.f24088a.isDeviceBrandEnabled() && (aVarA2 = cVarA.a(com.batch.android.h.d.DEVICE_BRAND.f23446b)) != null) {
            aVarA2.a(Boolean.TRUE.equals(batchDataCollectionConfig.isDeviceBrandEnabled()));
            if (Boolean.FALSE.equals(batchDataCollectionConfig.isDeviceBrandEnabled())) {
                jSONObject.put(aVarA2.a().f23447c, JSONObject.NULL);
            } else {
                jSONObject.put(aVarA2.a().f23447c, aVarA2.b());
            }
        }
        if (batchDataCollectionConfig.isDeviceModelEnabled() != null && batchDataCollectionConfig.isDeviceModelEnabled() != this.f24088a.isDeviceModelEnabled() && (aVarA = cVarA.a(com.batch.android.h.d.DEVICE_MODEL.f23446b)) != null) {
            aVarA.a(Boolean.TRUE.equals(batchDataCollectionConfig.isDeviceModelEnabled()));
            if (Boolean.FALSE.equals(batchDataCollectionConfig.isDeviceModelEnabled())) {
                jSONObject.put(aVarA.a().f23447c, JSONObject.NULL);
            } else {
                jSONObject.put(aVarA.a().f23447c, aVarA.b());
            }
        }
        a(jSONObject);
        if (batchDataCollectionConfig.isDeviceBrandEnabled() != null) {
            this.f24088a.setDeviceBrandEnabled(Boolean.TRUE.equals(batchDataCollectionConfig.isDeviceBrandEnabled()));
        }
        if (batchDataCollectionConfig.isDeviceModelEnabled() != null) {
            this.f24088a.setDeviceModelEnabled(Boolean.TRUE.equals(batchDataCollectionConfig.isDeviceModelEnabled()));
        }
        if (batchDataCollectionConfig.isGeoIpEnabled() != null) {
            this.f24088a.setGeoIPEnabled(Boolean.TRUE.equals(batchDataCollectionConfig.isGeoIpEnabled()));
        }
        a(contextC, this.f24088a);
        this.f24089b = null;
    }

    private void c(Context context) {
        String strA = w.a(context).a(com.batch.android.e.z.s1);
        if (strA == null) {
            k();
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(strA);
            this.f24088a.setGeoIPEnabled(jSONObject.optBoolean("geoip"));
            this.f24088a.setDeviceBrandEnabled(jSONObject.optBoolean("deviceBrand"));
            this.f24088a.setDeviceModelEnabled(jSONObject.optBoolean("deviceModel"));
        } catch (JSONException e2) {
            t.a(f24087c, "Loading data collection config has failed", e2);
            k();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void b(Context context) {
        List<com.batch.android.h.e> listB = c0.a(context).b();
        ArrayList arrayList = new ArrayList();
        for (com.batch.android.h.e eVar : listB) {
            if (eVar.f() && eVar.c()) {
                arrayList.add(eVar);
            }
        }
        if (arrayList.isEmpty()) {
            t.c(f24087c, "No native detection change");
            return;
        }
        t.c(f24087c, "Some native data has changed, sending it.");
        try {
            a(com.batch.android.h.b.a(arrayList));
        } catch (JSONException e2) {
            t.a(f24087c, "Some natives data has changed but the serialization failed.", e2);
        }
    }

    public static d j() {
        return new d();
    }

    private void k() {
        this.f24088a.setGeoIPEnabled(false);
        this.f24088a.setDeviceBrandEnabled(false);
        this.f24088a.setDeviceModelEnabled(false);
    }

    @Override // com.batch.android.v0.b
    public void b() {
        super.b();
        Context contextC = z.a().c();
        if (contextC != null) {
            d0.a(contextC).submit(new w21(this, contextC, 26));
        }
    }

    @Override // com.batch.android.v0.b
    public String g() {
        return "datacollection";
    }

    @Override // com.batch.android.v0.b
    public int h() {
        return 1;
    }

    public BatchDataCollectionConfig i() {
        BatchDataCollectionConfig batchDataCollectionConfig;
        synchronized (this.f24088a) {
            batchDataCollectionConfig = this.f24088a;
        }
        return batchDataCollectionConfig;
    }

    public void a(BatchDataCollectionConfig.Editor editor) {
        synchronized (this.f24088a) {
            BatchDataCollectionConfig batchDataCollectionConfig = new BatchDataCollectionConfig();
            editor.edit(batchDataCollectionConfig);
            t.c(f24087c, "Updating automatic data collection configuration: ".concat(batchDataCollectionConfig.toString()));
            try {
                a(batchDataCollectionConfig);
            } catch (JSONException e2) {
                t.a(f24087c, "Failed sending data collection changed event", e2);
            }
        }
    }

    @Override // com.batch.android.v0.b
    public void a(Context context) {
        super.a(context);
        synchronized (this.f24088a) {
            c(context);
            if (this.f24089b != null) {
                t.c(f24087c, "Cached data config found, trying to send changes");
                try {
                    a(this.f24089b);
                } catch (JSONException e2) {
                    t.a(f24087c, "Failed sending data collection changed event", e2);
                }
            }
        }
    }

    private void a(JSONObject jSONObject) {
        e0.a().a(com.batch.android.o.g.f23858f, jSONObject);
    }

    private void a(Context context, BatchDataCollectionConfig batchDataCollectionConfig) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("geoip", batchDataCollectionConfig.isGeoIpEnabled());
            jSONObject.put("deviceBrand", batchDataCollectionConfig.isDeviceBrandEnabled());
            jSONObject.put("deviceModel", batchDataCollectionConfig.isDeviceModelEnabled());
            w.a(context).a(com.batch.android.e.z.s1, jSONObject.toString(), true);
        } catch (JSONException e2) {
            t.a(f24087c, "Persisting data collection config has failed", e2);
        }
    }
}
