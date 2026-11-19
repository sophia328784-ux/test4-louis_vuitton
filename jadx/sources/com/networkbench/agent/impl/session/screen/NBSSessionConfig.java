package com.networkbench.agent.impl.session.screen;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.af;
import com.networkbench.agent.impl.util.r;
import defpackage.fc;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NBSSessionConfig {
    private static NBSSessionConfig instance;
    public boolean maskImageEnabled;
    public boolean maskInputEnabled;
    public String maskPageBlacklist;
    public boolean maskTextEnabled;
    public String maskViewIdBlacklist;
    public int replay;
    public int replayCacheSize;
    public int replayThreshold;
    public int replayUploadType;

    public NBSSessionConfig(JSONObject jSONObject) {
        this.replayThreshold = 5;
        this.replayUploadType = 0;
        this.replayCacheSize = 10;
        this.replay = 0;
        this.maskInputEnabled = false;
        this.maskTextEnabled = false;
        this.maskImageEnabled = false;
        this.maskPageBlacklist = "";
        this.maskViewIdBlacklist = "";
        try {
            this.replayUploadType = check(jSONObject.getInt(ConfigurationName.REPLAYUPLOADTYPE), this.replayUploadType, 1);
            this.replayCacheSize = check(jSONObject.getInt(ConfigurationName.REPLAYCACHESIZE), this.replayCacheSize, 1024);
            this.replay = check(jSONObject.getInt(ConfigurationName.REPLAYQUALITY), this.replay, 2);
            this.maskInputEnabled = jSONObject.optBoolean(ConfigurationName.MASK_INPUT_ENABLED, this.maskInputEnabled);
            this.maskImageEnabled = jSONObject.optBoolean(ConfigurationName.MASK_IMAGE_ENABLED, this.maskImageEnabled);
            this.maskTextEnabled = jSONObject.optBoolean(ConfigurationName.MASK_TEXT_ENABLED, this.maskTextEnabled);
            this.maskViewIdBlacklist = jSONObject.optString(ConfigurationName.MASK_VIEWID_BLACKLIST, "");
            this.maskPageBlacklist = jSONObject.optString(ConfigurationName.MASK_PAGE_BLACKLIST, "");
            addMaskInfo();
        } catch (Throwable unused) {
        }
    }

    private void addMaskInfo() {
        NBSScreenRecordControl.getInstance().maskConfiguredView(this.maskInputEnabled, this.maskTextEnabled, this.maskImageEnabled);
        NBSScreenRecordControl.getInstance().maskConfigurePageName(this.maskPageBlacklist);
        NBSScreenRecordControl.getInstance().maskConfigureViewIdList(this.maskViewIdBlacklist);
    }

    private int check(int i2, int i3, int i4) {
        return (i2 <= 0 || i2 > i4) ? i3 : i2;
    }

    public static NBSSessionConfig getInstance() throws NullPointerException {
        if (instance == null) {
            synchronized (NBSSessionConfig.class) {
                try {
                    if (instance == null) {
                        new af(r.u().J()).a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public static void initInstance(int i2, int i3, int i4, int i5, Boolean bool, Boolean bool2, Boolean bool3, String str, String str2) {
        if (instance == null) {
            instance = new NBSSessionConfig(i2, i3, i4, i5, bool, bool2, bool3, str, str2);
        }
    }

    public double getReplay() {
        int i2 = this.replay;
        if (i2 != 1) {
            return i2 != 2 ? 0.17d : 0.33d;
        }
        return 0.25d;
    }

    public int getReplayCacheSize() {
        return this.replayCacheSize;
    }

    public int getReplayQuality() {
        return this.replay;
    }

    public int getReplayThreshold() {
        return this.replayThreshold;
    }

    public int getReplayUploadType() {
        return this.replayUploadType;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NBSSessionConfig{replayThreshold=");
        sb.append(this.replayThreshold);
        sb.append(", replay=");
        sb.append(this.replay);
        sb.append(", replayUploadType=");
        sb.append(this.replayUploadType);
        sb.append(", replayCacheSize=");
        sb.append(this.replayCacheSize);
        sb.append(", maskInputEnabled=");
        sb.append(this.maskInputEnabled);
        sb.append(", maskTextEnabled=");
        sb.append(this.maskTextEnabled);
        sb.append(", maskImageEnabled=");
        sb.append(this.maskImageEnabled);
        sb.append(", maskPageBlacklist=");
        sb.append(this.maskPageBlacklist);
        sb.append(", maskViewIdBlacklist=");
        return fc.l(sb, this.maskViewIdBlacklist, '}');
    }

    public NBSSessionConfig() {
        this.replayThreshold = 5;
        this.replayUploadType = 0;
        this.replayCacheSize = 10;
        this.replay = 0;
        this.maskInputEnabled = false;
        this.maskTextEnabled = false;
        this.maskImageEnabled = false;
        this.maskPageBlacklist = "";
        this.maskViewIdBlacklist = "";
    }

    private NBSSessionConfig(int i2, int i3, int i4, int i5, Boolean bool, Boolean bool2, Boolean bool3, String str, String str2) {
        this.maskInputEnabled = false;
        this.maskTextEnabled = false;
        this.maskImageEnabled = false;
        this.maskPageBlacklist = "";
        this.maskViewIdBlacklist = "";
        this.replayThreshold = i2;
        this.replay = i3;
        this.replayUploadType = i4;
        this.replayCacheSize = i5;
        this.maskInputEnabled = bool.booleanValue();
        this.maskTextEnabled = bool2.booleanValue();
        this.maskImageEnabled = bool3.booleanValue();
        this.maskPageBlacklist = str;
        this.maskViewIdBlacklist = str2;
        addMaskInfo();
    }
}
