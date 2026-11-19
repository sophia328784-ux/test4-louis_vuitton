package com.lightup.sdk.device.messages;

import com.lightup.sdk.device.model.device.DeviceType;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'SMARTPHONE_TO_DEVICE_UNLOCK' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public final class MessageInfo {
    private static final /* synthetic */ MessageInfo[] $VALUES;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_ACTION_BUTTON;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_BATTERY_LEVEL;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_BATTERY_STATUS;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_CALIB_VALUE;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_DATA_UPLOAD_STATUS;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_DEVICE_INFO;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_DOWNLOAD_ACK;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_GENERIC_ACK;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_HEAT_TIMED_ACTIVE;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_INFOS;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_LEVEL_STATUS;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_OH_BABE;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_POWER_OFF;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_ACK;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_REQUEST;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_DONE;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_KO;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_PAGE_REQUEST;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_REQUEST;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_VALIDATING;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_REGISTER;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_REQUEST_PLAY;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_SEND_COLOR_ZONE_STATUS;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_SEND_STATUS;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_STATUS;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_SYNC_REQ;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_UPLOAD_BLOCK;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_UPLOAD_DATA;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_UPLOAD_PAGE_DONE;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_UPLOAD_START;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_UPLOAD_STATUS;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_WALK_DATA_STATUS;
    public static final MessageInfo DEVICE_TO_SMARTPHONE_WALK_STATS;
    public static final MessageInfo SMARTPHONE_AND_DEVICE_WALKING_INFO;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_ACTION_BUTTON_ACK;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_DATA_UPLOAD_REQUIRED;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_DOWNLOAD_DATA;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_DOWNLOAD_START;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_DOWNLOAD_STATUS;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_FLUSH_SPEED_DATA;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_FLUSH_WALK_DATA;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_GET_COLOR_ZONE_STATUS;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_GET_DEVICE_INFO;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_GET_INFO;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_GET_WALK_DATA;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_GET_WALK_STATS;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_GO_TO_BOOTLOADER;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_GO_TO_OFF;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_HAS_WALK_DATA;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_LOCK;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_MODE_DOWNLOAD_START;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_OPEN_FOR_PAIRING;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_OPEN_SET_MODE;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_PING;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_PREVIEW;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_DATA;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_START;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_STATUS;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_COMPLETE;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_PAGE_DATA;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_REQUIRED;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_START;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_REGISTER_ACK;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_RESET_WALK_STATS;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SEND_TRIGGER;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_ACTIVE_MODE;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_COLOR_ZONE;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_CONFIG_X408;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_CURRENT_HEAT;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_DEVICE_CONFIG;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_EPOCH;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_GLOBAL_DIMMING;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_HEAT_CONFIG;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_HEAT_LEVEL;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_HEAT_TIMED;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_LEDS_COLOR;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_MAX_TRIG;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_NAME;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_TWIN_MODE;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_UUID;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_VIBATION;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SET_WALKING_MODE;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_START_CALIB;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_START_HEAT;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_START_RECORDING;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_START_RETRIEVING_SPEED_DATA;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_START_WALK;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_STOP;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_STOP_CALIB;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_STOP_HEAT;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_STOP_RECORDING;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_STOP_WALK;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_STREAMING_DATA;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_STREAM_FRAME;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_SYNC_INFO;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_TRIGGER_ANIMATION;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_TRIG_COLOR_ZONE;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_UNLOCK;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_UPLOAD_PAGE_ACK;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_UPLOAD_REQ;
    public static final MessageInfo SMARTPHONE_TO_DEVICE_VIBRATION;
    private final DeviceType deviceType;
    private final byte messageId;
    private boolean paginated;
    private int payloadSize;
    private int size;

    static {
        DeviceType deviceType = DeviceType.GENERIC_DEVICE_TYPE;
        MessageInfo messageInfo = new MessageInfo("SMARTPHONE_TO_DEVICE_UNLOCK", 0, deviceType, (byte) 0, 18);
        SMARTPHONE_TO_DEVICE_UNLOCK = messageInfo;
        MessageInfo messageInfo2 = new MessageInfo("DEVICE_TO_SMARTPHONE_REGISTER", 1, deviceType, (byte) 1, 11);
        DEVICE_TO_SMARTPHONE_REGISTER = messageInfo2;
        MessageInfo messageInfo3 = new MessageInfo("SMARTPHONE_TO_DEVICE_REGISTER_ACK", 2, deviceType, (byte) 2, 0);
        SMARTPHONE_TO_DEVICE_REGISTER_ACK = messageInfo3;
        MessageInfo messageInfo4 = new MessageInfo("DEVICE_TO_SMARTPHONE_SYNC_REQ", 3, deviceType, (byte) 3, 16);
        DEVICE_TO_SMARTPHONE_SYNC_REQ = messageInfo4;
        MessageInfo messageInfo5 = new MessageInfo("SMARTPHONE_TO_DEVICE_SYNC_INFO", 4, deviceType, (byte) 4, 16);
        SMARTPHONE_TO_DEVICE_SYNC_INFO = messageInfo5;
        MessageInfo messageInfo6 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_EPOCH", 5, deviceType, (byte) 14, 4);
        SMARTPHONE_TO_DEVICE_SET_EPOCH = messageInfo6;
        MessageInfo messageInfo7 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_NAME", 6, deviceType, (byte) 5, 11);
        SMARTPHONE_TO_DEVICE_SET_NAME = messageInfo7;
        MessageInfo messageInfo8 = new MessageInfo("DEVICE_TO_SMARTPHONE_BATTERY_LEVEL", 7, deviceType, (byte) 6, 1);
        DEVICE_TO_SMARTPHONE_BATTERY_LEVEL = messageInfo8;
        MessageInfo messageInfo9 = new MessageInfo("DEVICE_TO_SMARTPHONE_UPLOAD_START", 8, deviceType, (byte) 7, 4);
        DEVICE_TO_SMARTPHONE_UPLOAD_START = messageInfo9;
        MessageInfo messageInfo10 = new MessageInfo("SMARTPHONE_TO_DEVICE_UPLOAD_REQ", 9, deviceType, (byte) 8, 0);
        SMARTPHONE_TO_DEVICE_UPLOAD_REQ = messageInfo10;
        MessageInfo messageInfo11 = new MessageInfo("DEVICE_TO_SMARTPHONE_UPLOAD_BLOCK", 10, deviceType, (byte) 9);
        DEVICE_TO_SMARTPHONE_UPLOAD_BLOCK = messageInfo11;
        MessageInfo messageInfo12 = new MessageInfo("DEVICE_TO_SMARTPHONE_UPLOAD_PAGE_DONE", 11, deviceType, (byte) 10, 2);
        DEVICE_TO_SMARTPHONE_UPLOAD_PAGE_DONE = messageInfo12;
        MessageInfo messageInfo13 = new MessageInfo("SMARTPHONE_TO_DEVICE_UPLOAD_PAGE_ACK", 12, deviceType, (byte) 29, 1);
        SMARTPHONE_TO_DEVICE_UPLOAD_PAGE_ACK = messageInfo13;
        MessageInfo messageInfo14 = new MessageInfo("DEVICE_TO_SMARTPHONE_UPLOAD_STATUS", 13, deviceType, (byte) 30, 1);
        DEVICE_TO_SMARTPHONE_UPLOAD_STATUS = messageInfo14;
        MessageInfo messageInfo15 = new MessageInfo("DEVICE_TO_SMARTPHONE_UPLOAD_DATA", 14, deviceType, (byte) 31, 7);
        DEVICE_TO_SMARTPHONE_UPLOAD_DATA = messageInfo15;
        MessageInfo messageInfo16 = new MessageInfo("SMARTPHONE_TO_DEVICE_GO_TO_BOOTLOADER", 15, deviceType, (byte) 11, 5);
        SMARTPHONE_TO_DEVICE_GO_TO_BOOTLOADER = messageInfo16;
        MessageInfo messageInfo17 = new MessageInfo("DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_REQUEST", 16, deviceType, (byte) 12, 1);
        DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_REQUEST = messageInfo17;
        MessageInfo messageInfo18 = new MessageInfo("SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_START", 17, deviceType, (byte) 13, 14);
        SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_START = messageInfo18;
        MessageInfo messageInfo19 = new MessageInfo("SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_DATA", 18, deviceType, (byte) 15);
        SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_DATA = messageInfo19;
        MessageInfo messageInfo20 = new MessageInfo("DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_ACK", 19, deviceType, (byte) 16, 7);
        DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_ACK = messageInfo20;
        MessageInfo messageInfo21 = new MessageInfo("SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_STATUS", 20, deviceType, (byte) 17, 1);
        SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_STATUS = messageInfo21;
        MessageInfo messageInfo22 = new MessageInfo("SMARTPHONE_TO_DEVICE_DOWNLOAD_START", 21, deviceType, (byte) 18, 14);
        SMARTPHONE_TO_DEVICE_DOWNLOAD_START = messageInfo22;
        MessageInfo messageInfo23 = new MessageInfo("SMARTPHONE_TO_DEVICE_DOWNLOAD_DATA", 22, deviceType, (byte) 19);
        SMARTPHONE_TO_DEVICE_DOWNLOAD_DATA = messageInfo23;
        MessageInfo messageInfo24 = new MessageInfo("DEVICE_TO_SMARTPHONE_DOWNLOAD_ACK", 23, deviceType, (byte) 20, 7);
        DEVICE_TO_SMARTPHONE_DOWNLOAD_ACK = messageInfo24;
        MessageInfo messageInfo25 = new MessageInfo("SMARTPHONE_TO_DEVICE_DOWNLOAD_STATUS", 24, deviceType, (byte) 21, 1);
        SMARTPHONE_TO_DEVICE_DOWNLOAD_STATUS = messageInfo25;
        MessageInfo messageInfo26 = new MessageInfo("SMARTPHONE_TO_DEVICE_LOCK", 25, deviceType, (byte) 22, 4);
        SMARTPHONE_TO_DEVICE_LOCK = messageInfo26;
        MessageInfo messageInfo27 = new MessageInfo("DEVICE_TO_SMARTPHONE_POWER_OFF", 26, deviceType, (byte) 23, 1);
        DEVICE_TO_SMARTPHONE_POWER_OFF = messageInfo27;
        MessageInfo messageInfo28 = new MessageInfo("DEVICE_TO_SMARTPHONE_GENERIC_ACK", 27, deviceType, (byte) 24, 1);
        DEVICE_TO_SMARTPHONE_GENERIC_ACK = messageInfo28;
        MessageInfo messageInfo29 = new MessageInfo("SMARTPHONE_TO_DEVICE_PING", 28, deviceType, (byte) 25, 0);
        SMARTPHONE_TO_DEVICE_PING = messageInfo29;
        DeviceType deviceType2 = DeviceType.SHOES_DEVICE_TYPE;
        MessageInfo messageInfo30 = new MessageInfo("SMARTPHONE_TO_DEVICE_PREVIEW", 29, deviceType2, (byte) 48, 20);
        SMARTPHONE_TO_DEVICE_PREVIEW = messageInfo30;
        MessageInfo messageInfo31 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_ACTIVE_MODE", 30, deviceType2, (byte) 49, 1);
        SMARTPHONE_TO_DEVICE_SET_ACTIVE_MODE = messageInfo31;
        MessageInfo messageInfo32 = new MessageInfo("SMARTPHONE_TO_DEVICE_STREAMING_DATA", 31, deviceType2, (byte) 50, 24);
        SMARTPHONE_TO_DEVICE_STREAMING_DATA = messageInfo32;
        MessageInfo messageInfo33 = new MessageInfo("SMARTPHONE_TO_DEVICE_STOP", 32, deviceType2, (byte) 51, 1);
        SMARTPHONE_TO_DEVICE_STOP = messageInfo33;
        MessageInfo messageInfo34 = new MessageInfo("SMARTPHONE_TO_DEVICE_VIBRATION", 33, deviceType2, (byte) 52, 6);
        SMARTPHONE_TO_DEVICE_VIBRATION = messageInfo34;
        MessageInfo messageInfo35 = new MessageInfo("SMARTPHONE_TO_DEVICE_START_WALK", 34, deviceType2, (byte) 53, 0);
        SMARTPHONE_TO_DEVICE_START_WALK = messageInfo35;
        MessageInfo messageInfo36 = new MessageInfo("SMARTPHONE_TO_DEVICE_STOP_WALK", 35, deviceType2, (byte) 54, 0);
        SMARTPHONE_TO_DEVICE_STOP_WALK = messageInfo36;
        MessageInfo messageInfo37 = new MessageInfo("SMARTPHONE_TO_DEVICE_GET_WALK_DATA", 36, deviceType2, (byte) 55, 0);
        SMARTPHONE_TO_DEVICE_GET_WALK_DATA = messageInfo37;
        MessageInfo messageInfo38 = new MessageInfo("SMARTPHONE_TO_DEVICE_FLUSH_WALK_DATA", 37, deviceType2, (byte) 56, 0);
        SMARTPHONE_TO_DEVICE_FLUSH_WALK_DATA = messageInfo38;
        MessageInfo messageInfo39 = new MessageInfo("SMARTPHONE_TO_DEVICE_HAS_WALK_DATA", 38, deviceType2, (byte) 57, 0);
        SMARTPHONE_TO_DEVICE_HAS_WALK_DATA = messageInfo39;
        MessageInfo messageInfo40 = new MessageInfo("DEVICE_TO_SMARTPHONE_WALK_DATA_STATUS", 39, deviceType2, (byte) 58, 8);
        DEVICE_TO_SMARTPHONE_WALK_DATA_STATUS = messageInfo40;
        MessageInfo messageInfo41 = new MessageInfo("DEVICE_TO_SMARTPHONE_OH_BABE", 40, deviceType2, (byte) 59, 0);
        DEVICE_TO_SMARTPHONE_OH_BABE = messageInfo41;
        MessageInfo messageInfo42 = new MessageInfo("SMARTPHONE_TO_DEVICE_MODE_DOWNLOAD_START", 41, deviceType2, (byte) 61, 14);
        SMARTPHONE_TO_DEVICE_MODE_DOWNLOAD_START = messageInfo42;
        MessageInfo messageInfo43 = new MessageInfo("SMARTPHONE_TO_DEVICE_GET_WALK_STATS", 42, deviceType2, (byte) 64, 0);
        SMARTPHONE_TO_DEVICE_GET_WALK_STATS = messageInfo43;
        MessageInfo messageInfo44 = new MessageInfo("SMARTPHONE_TO_DEVICE_RESET_WALK_STATS", 43, deviceType2, (byte) 65, 0);
        SMARTPHONE_TO_DEVICE_RESET_WALK_STATS = messageInfo44;
        MessageInfo messageInfo45 = new MessageInfo("DEVICE_TO_SMARTPHONE_WALK_STATS", 44, deviceType2, (byte) 66, 8);
        DEVICE_TO_SMARTPHONE_WALK_STATS = messageInfo45;
        DeviceType deviceType3 = DeviceType.TRACKER_DEVICE_TYPE;
        MessageInfo messageInfo46 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_UUID", 45, deviceType3, (byte) 49, 16);
        SMARTPHONE_TO_DEVICE_SET_UUID = messageInfo46;
        MessageInfo messageInfo47 = new MessageInfo("SMARTPHONE_TO_DEVICE_GET_DEVICE_INFO", 46, deviceType3, (byte) 50, 0);
        SMARTPHONE_TO_DEVICE_GET_DEVICE_INFO = messageInfo47;
        MessageInfo messageInfo48 = new MessageInfo("SMARTPHONE_TO_DEVICE_START_RETRIEVING_SPEED_DATA", 47, deviceType3, (byte) 51, 0);
        SMARTPHONE_TO_DEVICE_START_RETRIEVING_SPEED_DATA = messageInfo48;
        MessageInfo messageInfo49 = new MessageInfo("SMARTPHONE_TO_DEVICE_FLUSH_SPEED_DATA", 48, deviceType3, (byte) 52, 0);
        SMARTPHONE_TO_DEVICE_FLUSH_SPEED_DATA = messageInfo49;
        MessageInfo messageInfo50 = new MessageInfo("SMARTPHONE_TO_DEVICE_START_RECORDING", 49, deviceType3, (byte) 55, 16);
        SMARTPHONE_TO_DEVICE_START_RECORDING = messageInfo50;
        MessageInfo messageInfo51 = new MessageInfo("SMARTPHONE_TO_DEVICE_STOP_RECORDING", 50, deviceType3, (byte) 56, 0);
        SMARTPHONE_TO_DEVICE_STOP_RECORDING = messageInfo51;
        MessageInfo messageInfo52 = new MessageInfo("SMARTPHONE_TO_DEVICE_START_CALIB", 51, deviceType3, (byte) 57, 16);
        SMARTPHONE_TO_DEVICE_START_CALIB = messageInfo52;
        MessageInfo messageInfo53 = new MessageInfo("SMARTPHONE_TO_DEVICE_STOP_CALIB", 52, deviceType3, (byte) 58, 0);
        SMARTPHONE_TO_DEVICE_STOP_CALIB = messageInfo53;
        MessageInfo messageInfo54 = new MessageInfo("DEVICE_TO_SMARTPHONE_CALIB_VALUE", 53, deviceType3, (byte) 60, 1);
        DEVICE_TO_SMARTPHONE_CALIB_VALUE = messageInfo54;
        MessageInfo messageInfo55 = new MessageInfo("DEVICE_TO_SMARTPHONE_DEVICE_INFO", 54, deviceType3, (byte) 63, 23);
        DEVICE_TO_SMARTPHONE_DEVICE_INFO = messageInfo55;
        DeviceType deviceType4 = DeviceType.GLOVE_DEVICE_TYPE;
        MessageInfo messageInfo56 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_LEDS_COLOR", 55, deviceType4, (byte) 48, 9);
        SMARTPHONE_TO_DEVICE_SET_LEDS_COLOR = messageInfo56;
        MessageInfo messageInfo57 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_VIBATION", 56, deviceType4, (byte) 49, 9);
        SMARTPHONE_TO_DEVICE_SET_VIBATION = messageInfo57;
        MessageInfo messageInfo58 = new MessageInfo("SMARTPHONE_TO_DEVICE_ACTION_BUTTON_ACK", 57, deviceType4, (byte) 50, 1);
        SMARTPHONE_TO_DEVICE_ACTION_BUTTON_ACK = messageInfo58;
        MessageInfo messageInfo59 = new MessageInfo("DEVICE_TO_SMARTPHONE_ACTION_BUTTON", 58, deviceType4, (byte) 51, 2);
        DEVICE_TO_SMARTPHONE_ACTION_BUTTON = messageInfo59;
        DeviceType deviceType5 = DeviceType.HEATING_GLOVES_DEVICE_TYPE;
        MessageInfo messageInfo60 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_HEAT_LEVEL", 59, deviceType5, (byte) 48, 1);
        SMARTPHONE_TO_DEVICE_SET_HEAT_LEVEL = messageInfo60;
        MessageInfo messageInfo61 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_HEAT_CONFIG", 60, deviceType5, (byte) 49, 3);
        SMARTPHONE_TO_DEVICE_SET_HEAT_CONFIG = messageInfo61;
        MessageInfo messageInfo62 = new MessageInfo("DEVICE_TO_SMARTPHONE_LEVEL_STATUS", 61, deviceType5, (byte) 52, 2);
        DEVICE_TO_SMARTPHONE_LEVEL_STATUS = messageInfo62;
        MessageInfo messageInfo63 = new MessageInfo("DEVICE_TO_SMARTPHONE_STATUS", 62, deviceType5, (byte) 53, 6);
        DEVICE_TO_SMARTPHONE_STATUS = messageInfo63;
        MessageInfo messageInfo64 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_TWIN_MODE", 63, deviceType5, (byte) 54, 1);
        SMARTPHONE_TO_DEVICE_SET_TWIN_MODE = messageInfo64;
        MessageInfo messageInfo65 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_DEVICE_CONFIG", 64, deviceType5, (byte) 55, 9);
        SMARTPHONE_TO_DEVICE_SET_DEVICE_CONFIG = messageInfo65;
        MessageInfo messageInfo66 = new MessageInfo("DEVICE_TO_SMARTPHONE_BATTERY_STATUS", 65, deviceType5, (byte) 56, 6);
        DEVICE_TO_SMARTPHONE_BATTERY_STATUS = messageInfo66;
        MessageInfo messageInfo67 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_HEAT_TIMED", 66, deviceType5, (byte) 57, 9);
        SMARTPHONE_TO_DEVICE_SET_HEAT_TIMED = messageInfo67;
        MessageInfo messageInfo68 = new MessageInfo("DEVICE_TO_SMARTPHONE_HEAT_TIMED_ACTIVE", 67, deviceType5, (byte) 58, 1);
        DEVICE_TO_SMARTPHONE_HEAT_TIMED_ACTIVE = messageInfo68;
        DeviceType deviceType6 = DeviceType.HEATING_BELT_DEVICE_TYPE;
        MessageInfo messageInfo69 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_CURRENT_HEAT", 68, deviceType6, (byte) 49, 3);
        SMARTPHONE_TO_DEVICE_SET_CURRENT_HEAT = messageInfo69;
        MessageInfo messageInfo70 = new MessageInfo("SMARTPHONE_TO_DEVICE_START_HEAT", 69, deviceType6, (byte) 50, 2);
        SMARTPHONE_TO_DEVICE_START_HEAT = messageInfo70;
        MessageInfo messageInfo71 = new MessageInfo("SMARTPHONE_TO_DEVICE_STOP_HEAT", 70, deviceType6, (byte) 51, 0);
        SMARTPHONE_TO_DEVICE_STOP_HEAT = messageInfo71;
        MessageInfo messageInfo72 = new MessageInfo("SMARTPHONE_TO_DEVICE_GET_INFO", 71, deviceType6, (byte) 52, 0);
        SMARTPHONE_TO_DEVICE_GET_INFO = messageInfo72;
        MessageInfo messageInfo73 = new MessageInfo("DEVICE_TO_SMARTPHONE_INFOS", 72, deviceType6, (byte) 53, 15);
        DEVICE_TO_SMARTPHONE_INFOS = messageInfo73;
        DeviceType deviceType7 = DeviceType.STUDIO_DEVICE_TYPE;
        MessageInfo messageInfo74 = new MessageInfo("SMARTPHONE_TO_DEVICE_SEND_TRIGGER", 73, deviceType7, (byte) 48, 2);
        SMARTPHONE_TO_DEVICE_SEND_TRIGGER = messageInfo74;
        MessageInfo messageInfo75 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_GLOBAL_DIMMING", 74, deviceType7, (byte) 49, 2);
        SMARTPHONE_TO_DEVICE_SET_GLOBAL_DIMMING = messageInfo75;
        MessageInfo messageInfo76 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_COLOR_ZONE", 75, deviceType7, (byte) 50, 10);
        SMARTPHONE_TO_DEVICE_SET_COLOR_ZONE = messageInfo76;
        MessageInfo messageInfo77 = new MessageInfo("SMARTPHONE_TO_DEVICE_TRIG_COLOR_ZONE", 76, deviceType7, (byte) 51, 3);
        SMARTPHONE_TO_DEVICE_TRIG_COLOR_ZONE = messageInfo77;
        MessageInfo messageInfo78 = new MessageInfo("SMARTPHONE_TO_DEVICE_GET_COLOR_ZONE_STATUS", 77, deviceType7, (byte) 52, 0);
        SMARTPHONE_TO_DEVICE_GET_COLOR_ZONE_STATUS = messageInfo78;
        MessageInfo messageInfo79 = new MessageInfo("DEVICE_TO_SMARTPHONE_SEND_COLOR_ZONE_STATUS", 78, deviceType7, (byte) 53, 14);
        DEVICE_TO_SMARTPHONE_SEND_COLOR_ZONE_STATUS = messageInfo79;
        MessageInfo messageInfo80 = new MessageInfo("SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_REQUIRED", 79, deviceType, (byte) 32, 4);
        SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_REQUIRED = messageInfo80;
        MessageInfo messageInfo81 = new MessageInfo("DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_REQUEST", 80, deviceType, (byte) 33, 1);
        DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_REQUEST = messageInfo81;
        MessageInfo messageInfo82 = new MessageInfo("SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_START", 81, deviceType, (byte) 34, 14);
        SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_START = messageInfo82;
        MessageInfo messageInfo83 = new MessageInfo("DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_PAGE_REQUEST", 82, deviceType, (byte) 35, 6);
        DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_PAGE_REQUEST = messageInfo83;
        MessageInfo messageInfo84 = new MessageInfo("SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_PAGE_DATA", 83, deviceType, (byte) 36);
        SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_PAGE_DATA = messageInfo84;
        MessageInfo messageInfo85 = new MessageInfo("DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_VALIDATING", 84, deviceType, (byte) 37, 4);
        DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_VALIDATING = messageInfo85;
        MessageInfo messageInfo86 = new MessageInfo("DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_DONE", 85, deviceType, (byte) 38, 0);
        DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_DONE = messageInfo86;
        MessageInfo messageInfo87 = new MessageInfo("SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_COMPLETE", 86, deviceType, (byte) 39, 0);
        SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_COMPLETE = messageInfo87;
        MessageInfo messageInfo88 = new MessageInfo("DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_KO", 87, deviceType, (byte) 40, 1);
        DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_KO = messageInfo88;
        MessageInfo messageInfo89 = new MessageInfo("SMARTPHONE_TO_DEVICE_DATA_UPLOAD_REQUIRED", 88, deviceType, (byte) 41, 4);
        SMARTPHONE_TO_DEVICE_DATA_UPLOAD_REQUIRED = messageInfo89;
        MessageInfo messageInfo90 = new MessageInfo("DEVICE_TO_SMARTPHONE_DATA_UPLOAD_STATUS", 89, deviceType, (byte) 42, 1);
        DEVICE_TO_SMARTPHONE_DATA_UPLOAD_STATUS = messageInfo90;
        DeviceType deviceType8 = DeviceType.LIGHTUP;
        MessageInfo messageInfo91 = new MessageInfo("SMARTPHONE_TO_DEVICE_TRIGGER_ANIMATION", 90, deviceType8, (byte) 48, 2);
        SMARTPHONE_TO_DEVICE_TRIGGER_ANIMATION = messageInfo91;
        MessageInfo messageInfo92 = new MessageInfo("SMARTPHONE_TO_DEVICE_OPEN_FOR_PAIRING", 91, deviceType8, (byte) 49, 0);
        SMARTPHONE_TO_DEVICE_OPEN_FOR_PAIRING = messageInfo92;
        MessageInfo messageInfo93 = new MessageInfo("SMARTPHONE_TO_DEVICE_OPEN_SET_MODE", 92, deviceType8, (byte) 50, 1);
        SMARTPHONE_TO_DEVICE_OPEN_SET_MODE = messageInfo93;
        MessageInfo messageInfo94 = new MessageInfo("DEVICE_TO_SMARTPHONE_SEND_STATUS", 93, deviceType8, (byte) 51, 6);
        DEVICE_TO_SMARTPHONE_SEND_STATUS = messageInfo94;
        MessageInfo messageInfo95 = new MessageInfo("SMARTPHONE_TO_DEVICE_GO_TO_OFF", 94, deviceType8, (byte) 54, 4);
        SMARTPHONE_TO_DEVICE_GO_TO_OFF = messageInfo95;
        MessageInfo messageInfo96 = new MessageInfo("DEVICE_TO_SMARTPHONE_REQUEST_PLAY", 95, deviceType8, (byte) 52, 1);
        DEVICE_TO_SMARTPHONE_REQUEST_PLAY = messageInfo96;
        MessageInfo messageInfo97 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_MAX_TRIG", 96, deviceType8, (byte) 53, 1);
        SMARTPHONE_TO_DEVICE_SET_MAX_TRIG = messageInfo97;
        MessageInfo messageInfo98 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_CONFIG_X408", 97, deviceType8, (byte) 55, 8);
        SMARTPHONE_TO_DEVICE_SET_CONFIG_X408 = messageInfo98;
        MessageInfo messageInfo99 = new MessageInfo("SMARTPHONE_TO_DEVICE_SET_WALKING_MODE", 98, deviceType8, (byte) 56, 15);
        SMARTPHONE_TO_DEVICE_SET_WALKING_MODE = messageInfo99;
        MessageInfo messageInfo100 = new MessageInfo("SMARTPHONE_AND_DEVICE_WALKING_INFO", 99, deviceType8, (byte) 57, 1);
        SMARTPHONE_AND_DEVICE_WALKING_INFO = messageInfo100;
        MessageInfo messageInfo101 = new MessageInfo("SMARTPHONE_TO_DEVICE_STREAM_FRAME", 100, DeviceType.SLEEVE, (byte) 52, 17);
        SMARTPHONE_TO_DEVICE_STREAM_FRAME = messageInfo101;
        $VALUES = new MessageInfo[]{messageInfo, messageInfo2, messageInfo3, messageInfo4, messageInfo5, messageInfo6, messageInfo7, messageInfo8, messageInfo9, messageInfo10, messageInfo11, messageInfo12, messageInfo13, messageInfo14, messageInfo15, messageInfo16, messageInfo17, messageInfo18, messageInfo19, messageInfo20, messageInfo21, messageInfo22, messageInfo23, messageInfo24, messageInfo25, messageInfo26, messageInfo27, messageInfo28, messageInfo29, messageInfo30, messageInfo31, messageInfo32, messageInfo33, messageInfo34, messageInfo35, messageInfo36, messageInfo37, messageInfo38, messageInfo39, messageInfo40, messageInfo41, messageInfo42, messageInfo43, messageInfo44, messageInfo45, messageInfo46, messageInfo47, messageInfo48, messageInfo49, messageInfo50, messageInfo51, messageInfo52, messageInfo53, messageInfo54, messageInfo55, messageInfo56, messageInfo57, messageInfo58, messageInfo59, messageInfo60, messageInfo61, messageInfo62, messageInfo63, messageInfo64, messageInfo65, messageInfo66, messageInfo67, messageInfo68, messageInfo69, messageInfo70, messageInfo71, messageInfo72, messageInfo73, messageInfo74, messageInfo75, messageInfo76, messageInfo77, messageInfo78, messageInfo79, messageInfo80, messageInfo81, messageInfo82, messageInfo83, messageInfo84, messageInfo85, messageInfo86, messageInfo87, messageInfo88, messageInfo89, messageInfo90, messageInfo91, messageInfo92, messageInfo93, messageInfo94, messageInfo95, messageInfo96, messageInfo97, messageInfo98, messageInfo99, messageInfo100, messageInfo101};
    }

    public MessageInfo(String str, int i2, DeviceType deviceType, byte b2, int i3) {
        super(str, i2);
        this.paginated = false;
        this.deviceType = deviceType;
        this.messageId = b2;
        this.payloadSize = i3;
        this.size = i3 + 1;
    }

    public static MessageInfo a(DeviceType deviceType, byte b2) {
        for (MessageInfo messageInfo : values()) {
            if ((DeviceType.GENERIC_DEVICE_TYPE.equals(messageInfo.deviceType) || deviceType.equals(messageInfo.deviceType)) && messageInfo.messageId == b2) {
                return messageInfo;
            }
        }
        return null;
    }

    public static boolean e(byte[] bArr) {
        byte b2 = bArr[0];
        return b2 == SMARTPHONE_TO_DEVICE_UNLOCK.messageId || b2 == SMARTPHONE_TO_DEVICE_SYNC_INFO.messageId || b2 == SMARTPHONE_TO_DEVICE_REGISTER_ACK.messageId || b2 == SMARTPHONE_TO_DEVICE_LOCK.messageId || b2 == SMARTPHONE_TO_DEVICE_GO_TO_BOOTLOADER.messageId || b2 == SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_START.messageId || b2 == SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_DATA.messageId || b2 == SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_STATUS.messageId || b2 == SMARTPHONE_TO_DEVICE_SET_DEVICE_CONFIG.messageId || b2 == SMARTPHONE_TO_DEVICE_PING.messageId || b2 == SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_REQUIRED.messageId || b2 == SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_START.messageId || b2 == SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_PAGE_DATA.messageId || b2 == SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_COMPLETE.messageId || b2 == SMARTPHONE_TO_DEVICE_SET_CONFIG_X408.messageId;
    }

    public static boolean f(byte[] bArr) {
        byte b2 = bArr[0];
        return (b2 == DEVICE_TO_SMARTPHONE_REGISTER.messageId || b2 == DEVICE_TO_SMARTPHONE_SYNC_REQ.messageId) ? false : true;
    }

    public static MessageInfo valueOf(String str) {
        return (MessageInfo) Enum.valueOf(MessageInfo.class, str);
    }

    public static MessageInfo[] values() {
        return (MessageInfo[]) $VALUES.clone();
    }

    public final byte b() {
        return this.messageId;
    }

    public final int c() {
        return this.payloadSize;
    }

    public final int d() {
        return this.size;
    }

    public MessageInfo(String str, int i2, DeviceType deviceType, byte b2) {
        super(str, i2);
        this.deviceType = deviceType;
        this.messageId = b2;
        this.size = 1;
        this.paginated = true;
    }
}
