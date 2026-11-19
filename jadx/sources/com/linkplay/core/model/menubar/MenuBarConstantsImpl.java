package com.linkplay.core.model.menubar;

/* JADX INFO: loaded from: classes2.dex */
public class MenuBarConstantsImpl implements MenuBarConstants {
    private static final boolean NO = false;
    private static final int UI8 = 32;
    private static final boolean YES = true;

    public static int convertMediaType2PLM(String str) {
        if (str == null) {
            return -1;
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals(MenuBarConstants.MEDIA_TYPE_LINEIN)) {
            return 1;
        }
        if (lowerCase.equals(MenuBarConstants.MEDIA_TYPE_BLUE_TOOTH)) {
            return 2;
        }
        if (lowerCase.equals(MenuBarConstants.MEDIA_TYPE_LINEIN2_ad)) {
            return 8;
        }
        if (lowerCase.equals(MenuBarConstants.MEDIA_TYPE_RADIO_ad)) {
            return 7;
        }
        if (lowerCase.equals(MenuBarConstants.PLAY_MEDIA_TYPE_UDISK)) {
            return 9999;
        }
        if (lowerCase.equals(MenuBarConstants.PLAY_MEDIA_TYPE_TFCARD)) {
            return MenuBarConstants.PLM_SWITCH_TFCARD;
        }
        if (lowerCase.equals(MenuBarConstants.MEDIA_TYPE_TFCARD)) {
            return 13;
        }
        if (lowerCase.equals(MenuBarConstants.MEDIA_TYPE_OPTICAL)) {
            return 4;
        }
        if (lowerCase.equalsIgnoreCase(MenuBarConstants.MEDIA_TYPE_EXTERNAL_USB)) {
            return 3;
        }
        if (lowerCase.equalsIgnoreCase(MenuBarConstants.MEDIA_TYPE_EXTERNAL_TFCard)) {
            return 13;
        }
        if (lowerCase.equalsIgnoreCase("RCA")) {
            return 5;
        }
        if (lowerCase.equalsIgnoreCase("CO_AXIAL")) {
            return 6;
        }
        if (lowerCase.equalsIgnoreCase(MenuBarConstants.MEDIA_TYPE_XLR)) {
            return 9;
        }
        if (lowerCase.equalsIgnoreCase(MenuBarConstants.MEDIA_TYPE_HDMI)) {
            return 10;
        }
        return lowerCase.equalsIgnoreCase(MenuBarConstants.MEDIA_TYPE_CD) ? 11 : -1;
    }

    public static long hexToLong(String str) {
        long j2;
        try {
            j2 = Long.parseLong(str.replaceAll("^0[x|X]", "").replaceAll("\"", ""), 16);
        } catch (Exception unused) {
            j2 = Long.parseLong("7ffffffe", 16);
        }
        return Long.parseLong("7FFFFFFF", 16) & j2;
    }

    public static boolean supportBTTransmitter(MenuBar menuBar, int i2) {
        if (i2 >= 32) {
            return false;
        }
        int i3 = 1 << i2;
        return (menuBar.cap1 & i3) == i3;
    }

    public static boolean supportCapability(MenuBar menuBar, int i2) {
        if (i2 >= 32) {
            return false;
        }
        int i3 = 1 << i2;
        return (menuBar.capability & i3) == i3;
    }

    public static boolean supportLanguage(MenuBar menuBar, int i2) {
        if (i2 >= 32) {
            return false;
        }
        int i3 = 1 << i2;
        return (menuBar.languages & i3) == i3;
    }

    public static boolean supportPLM(MenuBar menuBar, int i2) {
        if (menuBar.plms < 0 || i2 >= 32 || !supportCapability(menuBar, 19)) {
            return false;
        }
        int i3 = 1 << i2;
        return (menuBar.plms & i3) == i3;
    }

    public static boolean supportSettingTime(MenuBar menuBar, int i2) {
        if (i2 >= 32) {
            return false;
        }
        int i3 = 1 << i2;
        return (menuBar.cap1 & i3) == i3;
    }

    public static boolean supportShutdownTimer(MenuBar menuBar, int i2) {
        if (i2 >= 32) {
            return false;
        }
        int i3 = 1 << i2;
        return (menuBar.capability & i3) == i3;
    }

    public static boolean supportStream(MenuBar menuBar, int i2) {
        if (i2 >= 32) {
            return false;
        }
        int i3 = 1 << i2;
        return (menuBar.streams & i3) == i3;
    }
}
