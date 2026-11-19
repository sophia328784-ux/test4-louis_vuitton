package com.dynatrace.android.agent;

import com.dynatrace.android.agent.conf.DataCollectionLevel;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'ACTION_MANUAL' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public final class EventType {
    private static final /* synthetic */ EventType[] $VALUES;
    public static final EventType ACTION_AUTO;
    public static final EventType ACTION_AUTO_LOADING_APP;
    public static final EventType ACTION_MANUAL;
    public static final EventType APP_START;
    public static final EventType CRASH;
    public static final EventType DISPLAY;
    public static final EventType ERROR_EXCEPTION;
    public static final EventType ERROR_INT;
    public static final EventType EVENT_API;
    public static final EventType EVENT_BIZ;
    public static final EventType IDENTIFY_USER;
    public static final EventType NAMED_EVENT;
    public static final EventType PLACEHOLDER;
    public static final EventType RAGE_TAP;
    public static final EventType REDISPLAY;
    public static final EventType SELF_MONITORING_EVENT;
    public static final EventType VALUE_DOUBLE;
    public static final EventType VALUE_INT64;
    public static final EventType VALUE_STRING;
    public static final EventType VISIT_END;
    public static final EventType WEB_REQUEST;
    private DataCollectionLevel dataCollectionLevel;
    private int protocolId;

    static {
        DataCollectionLevel dataCollectionLevel = DataCollectionLevel.PERFORMANCE;
        EventType eventType = new EventType("ACTION_MANUAL", 0, 1, dataCollectionLevel);
        ACTION_MANUAL = eventType;
        EventType eventType2 = new EventType("ACTION_AUTO", 1, 6, dataCollectionLevel);
        ACTION_AUTO = eventType2;
        DataCollectionLevel dataCollectionLevel2 = DataCollectionLevel.OFF;
        EventType eventType3 = new EventType("ACTION_AUTO_LOADING_APP", 2, 6, dataCollectionLevel2);
        ACTION_AUTO_LOADING_APP = eventType3;
        DataCollectionLevel dataCollectionLevel3 = DataCollectionLevel.USER_BEHAVIOR;
        EventType eventType4 = new EventType("NAMED_EVENT", 3, 10, dataCollectionLevel3);
        NAMED_EVENT = eventType4;
        EventType eventType5 = new EventType("VALUE_STRING", 4, 11, dataCollectionLevel3);
        VALUE_STRING = eventType5;
        EventType eventType6 = new EventType("VALUE_INT64", 5, 12, dataCollectionLevel3);
        VALUE_INT64 = eventType6;
        EventType eventType7 = new EventType("VALUE_DOUBLE", 6, 13, dataCollectionLevel3);
        VALUE_DOUBLE = eventType7;
        EventType eventType8 = new EventType("VISIT_END", 7, 19, dataCollectionLevel);
        VISIT_END = eventType8;
        EventType eventType9 = new EventType("APP_START", 8, 20, dataCollectionLevel);
        APP_START = eventType9;
        EventType eventType10 = new EventType("DISPLAY", 9, 21, dataCollectionLevel);
        DISPLAY = eventType10;
        EventType eventType11 = new EventType("REDISPLAY", 10, 22, dataCollectionLevel);
        REDISPLAY = eventType11;
        EventType eventType12 = new EventType("WEB_REQUEST", 11, 30, dataCollectionLevel);
        WEB_REQUEST = eventType12;
        EventType eventType13 = new EventType("ERROR_INT", 12, 40, dataCollectionLevel);
        ERROR_INT = eventType13;
        EventType eventType14 = new EventType("ERROR_EXCEPTION", 13, 42, dataCollectionLevel);
        ERROR_EXCEPTION = eventType14;
        EventType eventType15 = new EventType("CRASH", 14, 50, dataCollectionLevel2);
        CRASH = eventType15;
        EventType eventType16 = new EventType("IDENTIFY_USER", 15, 60, dataCollectionLevel3);
        IDENTIFY_USER = eventType16;
        EventType eventType17 = new EventType("SELF_MONITORING_EVENT", 16, 90, dataCollectionLevel);
        SELF_MONITORING_EVENT = eventType17;
        EventType eventType18 = new EventType("RAGE_TAP", 17, 97, dataCollectionLevel);
        RAGE_TAP = eventType18;
        EventType eventType19 = new EventType("EVENT_API", 18, 98, dataCollectionLevel);
        EVENT_API = eventType19;
        EventType eventType20 = new EventType("EVENT_BIZ", 19, 98, dataCollectionLevel2);
        EVENT_BIZ = eventType20;
        EventType eventType21 = new EventType("PLACEHOLDER", 20, -1, dataCollectionLevel3);
        PLACEHOLDER = eventType21;
        $VALUES = new EventType[]{eventType, eventType2, eventType3, eventType4, eventType5, eventType6, eventType7, eventType8, eventType9, eventType10, eventType11, eventType12, eventType13, eventType14, eventType15, eventType16, eventType17, eventType18, eventType19, eventType20, eventType21};
    }

    public EventType(String str, int i2, int i3, DataCollectionLevel dataCollectionLevel) {
        super(str, i2);
        this.protocolId = i3;
        this.dataCollectionLevel = dataCollectionLevel;
    }

    public static EventType valueOf(String str) {
        return (EventType) Enum.valueOf(EventType.class, str);
    }

    public static EventType[] values() {
        return (EventType[]) $VALUES.clone();
    }

    public final DataCollectionLevel a() {
        return this.dataCollectionLevel;
    }

    public final int b() {
        return this.protocolId;
    }
}
