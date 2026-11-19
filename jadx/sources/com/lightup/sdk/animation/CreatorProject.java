package com.lightup.sdk.animation;

import com.batch.android.s.b;
import com.vuitton.android.R;
import defpackage.a;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class CreatorProject implements Serializable, Comparable<CreatorProject> {
    private static SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    private String id;
    private String imageUrl;
    private int index;
    private Date lastModifiedDate;
    private boolean loop;
    private String name;
    private int triggerIndex;

    public CreatorProject(String str, String str2, int i2, String str3, String str4) {
        this.id = str;
        this.name = str2;
        this.triggerIndex = i2;
        try {
            this.lastModifiedDate = format.parse(str3);
        } catch (ParseException unused) {
        }
        this.imageUrl = str4;
        this.loop = true;
        this.index = -1;
    }

    public static CreatorProject toObject(String str) {
        CreatorProject creatorProject = new CreatorProject();
        try {
            JSONObject jSONObject = new JSONObject(str);
            creatorProject.id = jSONObject.getString(b.a.f24015b);
            creatorProject.name = jSONObject.optString("name");
            creatorProject.triggerIndex = jSONObject.getInt("triggerIndex");
            creatorProject.lastModifiedDate = format.parse(jSONObject.getString("lastModifiedDate"));
            creatorProject.imageUrl = jSONObject.optString("imageUrl");
            creatorProject.index = jSONObject.getInt("index");
            return creatorProject;
        } catch (ParseException | JSONException e2) {
            e2.getMessage();
            return creatorProject;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(CreatorProject creatorProject) {
        return Integer.compare(this.index, creatorProject.index);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CreatorProject.class != obj.getClass()) {
            return false;
        }
        return this.id.equals(((CreatorProject) obj).id);
    }

    public int getDrawableId(String str) {
        str.getClass();
        switch (str) {
            case "ICEBLUE":
                return R.drawable.lightup_iceblue;
            case "PAINT CAN TURQUOISE":
                return R.drawable.lightup_paint_can_turquoise;
            case "PRISM2":
                return R.drawable.lightup_prism2;
            case "PAINT CAN RAINBOW":
                return R.drawable.lightup_paint_can_rainbow;
            case "PAINT CAN GREEN":
                return R.drawable.lightup_paint_can_green;
            case "PAINT CAN ORANGE":
                return R.drawable.lightup_paint_can_orange;
            case "PRISM_KP":
                return R.drawable.lightup_prism_kp;
            case "PAINT CAN PURPLE":
                return R.drawable.lightup_paint_can_purple;
            case "PAINT CAN YELLOW":
                return R.drawable.lightup_paint_can_yellow;
            case "RED DOOR":
                return R.drawable.lightup_red_door;
            case "COLD":
                return R.drawable.lightup_cold;
            case "WARM":
                return R.drawable.lightup_warm;
            case "PRISM":
                return R.drawable.lightup_prism;
            case "WARM RED":
                return R.drawable.lightup_warm_red;
            case "PAINT CAN RED":
                return R.drawable.lightup_paint_can_red;
            case "CLOUDS":
                return R.drawable.lightup_clouds;
            default:
                return R.drawable.lightup_prism;
        }
    }

    public String getId() {
        return this.id;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public int getIndex() {
        return this.index;
    }

    public Date getLastModifiedDate() {
        return this.lastModifiedDate;
    }

    public String getLastModifiedDateAsString() {
        return format.format(this.lastModifiedDate);
    }

    public boolean getLoop() {
        return this.loop;
    }

    public String getName() {
        return this.name;
    }

    public int getTriggerIndex() {
        return this.triggerIndex;
    }

    public int hashCode() {
        return Objects.hash(this.id);
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setIndex(int i2) {
        this.index = i2;
    }

    public void setLastModifiedDate(String str) {
        try {
            this.lastModifiedDate = format.parse(str);
        } catch (ParseException unused) {
        }
    }

    public void setLoop(boolean z) {
        this.loop = z;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTriggerIndex(int i2) {
        this.triggerIndex = i2;
    }

    public String toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(b.a.f24015b, this.id);
            jSONObject.put("name", this.name);
            jSONObject.put("triggerIndex", this.triggerIndex);
            jSONObject.put("lastModifiedDate", format.format(this.lastModifiedDate));
            jSONObject.put("imageUrl", this.imageUrl);
            jSONObject.put("index", this.index);
            return jSONObject.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CreatorProject{id='");
        sb.append(this.id);
        sb.append("', name='");
        sb.append(this.name);
        sb.append("', triggerIndex=");
        sb.append(this.triggerIndex);
        sb.append(", lastModifiedDate=");
        sb.append(this.lastModifiedDate);
        sb.append(", imageUrl='");
        sb.append(this.imageUrl);
        sb.append("', index='");
        return a.i(this.index, "'}", sb);
    }

    public CreatorProject() {
    }

    public CreatorProject(String str, String str2, int i2, boolean z) {
        this.id = str;
        this.name = str2;
        this.triggerIndex = i2;
        this.lastModifiedDate = new Date();
        this.imageUrl = "";
        this.loop = z;
        this.index = -1;
    }

    public int getDrawableId() {
        return getDrawableId(this.name);
    }
}
