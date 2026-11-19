package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceData extends HarvestableArray {
    private static final e log = f.a();
    public static String oldUserId;
    public static String userId;
    private String carrier = "";
    private int connectType = 0;
    private String netwrokType = "";
    private double latitude = 0.0d;
    private double longitude = 0.0d;

    private boolean isSame() {
        return r.u().t().equals(oldUserId);
    }

    private String processUserId() {
        String strT = r.u().t();
        userId = strT;
        return strT == null ? "" : strT;
    }

    private void setLocation() {
        if (r.u().q() != null) {
            try {
                this.latitude = r.u().q().a();
                this.longitude = r.u().q().b();
            } catch (Exception e2) {
                log.a("location is not null,but getLatitude() or getLongtitude() occur an error ", e2);
            }
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive(this.carrier));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.connectType)));
        jsonArray.add(new JsonPrimitive(this.netwrokType));
        setLocation();
        jsonArray.add(new JsonPrimitive((Number) Double.valueOf(this.latitude)));
        jsonArray.add(new JsonPrimitive((Number) Double.valueOf(this.longitude)));
        jsonArray.add(new JsonPrimitive(processUserId()));
        return jsonArray;
    }

    public String formatStringInfo() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("carrier", new JsonPrimitive(this.carrier));
        jsonObject.add("connect_type", new JsonPrimitive((Number) Integer.valueOf(this.connectType)));
        jsonObject.add("network_type", new JsonPrimitive(this.netwrokType));
        setLocation();
        jsonObject.add("latitude", new JsonPrimitive((Number) Double.valueOf(this.latitude)));
        jsonObject.add("longitude", new JsonPrimitive((Number) Double.valueOf(this.longitude)));
        jsonObject.add("user_id", new JsonPrimitive(processUserId()));
        return "common" + jsonObject.toString();
    }

    public String getCarrier() {
        return this.carrier;
    }

    public int getConnectType() {
        return this.connectType;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getNetwrokType() {
        return this.netwrokType;
    }

    public void setCarrier(String str) {
        this.carrier = str;
    }

    public void setConnectType(int i2) {
        this.connectType = i2;
    }

    public void setLatitude(double d) {
        this.latitude = d;
    }

    public void setLongitude(double d) {
        this.longitude = d;
    }

    public void setNetwrokType(String str) {
        this.netwrokType = str;
    }
}
