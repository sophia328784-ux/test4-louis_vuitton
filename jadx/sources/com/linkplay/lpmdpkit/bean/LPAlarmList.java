package com.linkplay.lpmdpkit.bean;

import com.android.wiimu.model.cling_callback.renderingcontrol.alarm.a;

/* JADX INFO: loaded from: classes2.dex */
public class LPAlarmList extends LPPlayMusicList {
    private String alarmIndex;
    private String alarmName;
    private String context;
    private boolean enable;
    private String repeat = a.f22421e;
    private String time;
    private String trigger;
    private String type;
    private String volume;

    public static class LPAlarmTrigger {
        public static final String LP_ALARM_TRIGGER_EVERYDAY = "EveryDay";
        public static final String LP_ALARM_TRIGGER_EVERYWEEK = "EveryWeek";
        public static final String LP_ALARM_TRIGGER_ONCE = "Once";
    }

    public static class LPAlarmType {
        public static final String LP_ALARM_PLAYKEYMAP = "PlayKeyMap";
        public static final String LP_ALARM_PLAYQUEUE = "PlayQueue";
    }

    public String getAlarmIndex() {
        return this.alarmIndex;
    }

    public String getAlarmName() {
        return this.alarmName;
    }

    public String getContext() {
        return this.context;
    }

    public String getRepeat() {
        return this.repeat;
    }

    public String getTime() {
        return this.time;
    }

    public String getTrigger() {
        return this.trigger;
    }

    public String getType() {
        return this.type;
    }

    public String getVolume() {
        return this.volume;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void setAlarmIndex(String str) {
        this.alarmIndex = str;
    }

    public void setAlarmName(String str) {
        this.alarmName = str;
    }

    public void setContext(String str) {
        this.context = str;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }

    public void setRepeat(String str) {
        this.repeat = str;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public void setTrigger(String str) {
        this.trigger = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setVolume(String str) {
        this.volume = str;
    }
}
