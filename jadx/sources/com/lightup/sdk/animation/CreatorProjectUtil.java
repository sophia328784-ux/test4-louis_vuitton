package com.lightup.sdk.animation;

import com.batch.android.s.b;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class CreatorProjectUtil {
    public static ArrayList<CreatorProject> fromJsonToArrayList(String str) {
        ArrayList<CreatorProject> arrayList = new ArrayList<>();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                CreatorProject creatorProject = new CreatorProject();
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                creatorProject.setId(jSONObject.getString(b.a.f24015b));
                creatorProject.setName(jSONObject.getString("name"));
                creatorProject.setLastModifiedDate(jSONObject.getString("modifiedAt"));
                creatorProject.setTriggerIndex(jSONObject.optInt("triggerIndex"));
                creatorProject.setImageUrl(jSONObject.optString("imageUrl"));
                creatorProject.setLoop(true);
                creatorProject.setIndex(jSONObject.optInt("index"));
                arrayList.add(creatorProject);
            }
            return arrayList;
        } catch (JSONException e2) {
            e2.getMessage();
            return arrayList;
        }
    }

    public static JSONArray toJsonArray(ArrayList<CreatorProject> arrayList) {
        JSONArray jSONArray = new JSONArray();
        for (CreatorProject creatorProject : arrayList) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(b.a.f24015b, creatorProject.getId());
                jSONObject.put("name", creatorProject.getName());
                jSONObject.put("triggerIndex", creatorProject.getTriggerIndex());
                jSONObject.put("modifiedAt", creatorProject.getLastModifiedDateAsString());
                jSONObject.put("imageUrl", creatorProject.getImageUrl());
                jSONObject.put("loop", creatorProject.getLoop());
                jSONObject.put("index", creatorProject.getIndex());
                jSONArray.put(jSONObject);
            } catch (JSONException e2) {
                e2.getMessage();
            }
        }
        return jSONArray;
    }
}
