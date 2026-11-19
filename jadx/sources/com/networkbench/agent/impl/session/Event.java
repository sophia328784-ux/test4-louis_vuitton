package com.networkbench.agent.impl.session;

import com.batch.android.v0.l;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.k.b;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.networkbench.com.google.gson.reflect.TypeToken;
import java.util.Map;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public class Event extends HarvestableObject implements SpanFormat {
    String name;
    b nbsSeriesData;
    String session_id;
    long timestamp;
    int type;
    String video_id = "";
    JsonObject attributesJson = new JsonObject();

    public Event(String str, int i2, Map<String, Object> map) {
        this.session_id = "";
        try {
            this.session_id = NBSBitmapBeansControl.getInstance().getSessionId();
            createEventData(str, i2, map);
        } catch (Throwable unused) {
        }
    }

    private void addSeriesData(JsonObject jsonObject, b bVar) {
        jsonObject.add("view_id", new JsonPrimitive(bVar.f37422b));
        jsonObject.add("action_id", new JsonPrimitive(bVar.f37423c));
        jsonObject.add("view_name", new JsonPrimitive(bVar.d));
        jsonObject.add("view_features", new JsonPrimitive(bVar.f37425f));
        jsonObject.add("action_features", new JsonPrimitive(bVar.f37424e));
    }

    private void createEventData(String str, int i2, Map<String, Object> map) {
        this.video_id = NBSBitmapBeansControl.getInstance().getBitmapBeans().getVideoId();
        this.timestamp = System.currentTimeMillis();
        this.name = str;
        this.type = i2;
        this.nbsSeriesData = ak.p();
        if (map != null && map.size() > 0) {
            try {
                this.attributesJson = (JsonObject) new Gson().toJsonTree(map, new TypeToken<Map>() { // from class: com.networkbench.agent.impl.session.Event.1
                }.getType());
            } catch (Throwable unused) {
                this.attributesJson = new JsonObject();
            }
        }
        if (this.attributesJson.toString().length() > ConfigurationName.MAX_METADATA_LENGTH) {
            this.attributesJson = metaDataOverFlowJsonValue();
        }
        if (this.attributesJson.toString().length() > ConfigurationName.MAX_METADATA_LENGTH) {
            this.attributesJson = metaDataOverFlowJsonValue();
        }
    }

    private JsonObject metaDataOverFlowJsonValue() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("error", new JsonPrimitive(ConfigurationName.META_ERROR_DEFAULT_VALUE));
        return jsonObject;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        try {
            jsonObject.add("session_id", new JsonPrimitive(this.session_id));
            jsonObject.add("video_id", new JsonPrimitive(this.video_id));
            jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().e(this.timestamp))));
            jsonObject.add("name", new JsonPrimitive(this.name));
            jsonObject.add("type", new JsonPrimitive((Number) Integer.valueOf(this.type)));
            jsonObject.add(l.f24145h, this.attributesJson);
            addSeriesData(jsonObject, this.nbsSeriesData);
        } catch (Throwable unused) {
        }
        return jsonObject;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return false;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        return MvelScriptManager.VAR_EVENT + asJsonObject().toString();
    }

    public JsonObject getAttributes() {
        return this.attributesJson;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
    }

    public void setSession_id(String str) {
        this.session_id = str;
    }

    public String toString() {
        return "Event{session_id='" + this.session_id + "', video_id='" + this.video_id + "', timestamp=" + this.timestamp + ", name='" + this.name + "', type=" + this.type + ", attributes=" + this.attributesJson + '}';
    }

    public Event(String str, int i2, Map<String, Object> map, String str2) {
        this.session_id = "";
        try {
            this.session_id = str2;
            createEventData(str, i2, map);
        } catch (Throwable unused) {
        }
    }
}
