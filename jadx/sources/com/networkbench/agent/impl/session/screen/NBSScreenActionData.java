package com.networkbench.agent.impl.session.screen;

import com.networkbench.agent.impl.g.a.h;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.ArrayList;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class NBSScreenActionData extends HarvestableArray {
    private static final String TAG = "NBSGestureDetector";
    String frameID;
    h gesture;
    public float scale;

    public NBSScreenActionData(String str, h hVar) {
        this.frameID = str;
        this.gesture = hVar;
    }

    private JsonArray getPathArray(ArrayList<NBSActionPath> arrayList) {
        JsonArray jsonArray = new JsonArray();
        for (NBSActionPath nBSActionPath : arrayList) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.add("time", new JsonPrimitive((Number) Long.valueOf(r.u().e(nBSActionPath.time))));
            jsonObject.add("x", new JsonPrimitive((Number) Float.valueOf(nBSActionPath.x * this.scale)));
            jsonObject.add("y", new JsonPrimitive((Number) Float.valueOf(nBSActionPath.y * this.scale)));
            jsonArray.add(jsonObject);
        }
        return jsonArray;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        if (this.gesture != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.add("frameId", new JsonPrimitive(this.frameID));
            jsonObject.add("path", getPathArray(reTranslationScreenData(this.gesture)));
            jsonArray.add(jsonObject);
            for (int i2 = 0; i2 < this.gesture.f37172a.size(); i2++) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.add("frameId", new JsonPrimitive(this.frameID));
                jsonObject2.add("path", getPathArray(reTranslationScreenData(this.gesture.f37172a.poll())));
                jsonArray.add(jsonObject2);
            }
        }
        return jsonArray;
    }

    public ArrayList reTranslationScreenData(h hVar) {
        ArrayList arrayList = new ArrayList();
        if (hVar != null) {
            LinkedList<NBSMotionEvent> linkedListE = hVar.e();
            for (int i2 = 0; i2 < linkedListE.size(); i2++) {
                arrayList.add(new NBSActionPath(linkedListE.get(i2)));
            }
        }
        return arrayList;
    }
}
