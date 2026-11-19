package com.linkplay.core.status;

import android.text.TextUtils;
import com.linkplay.core.model.menubar.MenuBarConstants;

/* JADX INFO: loaded from: classes2.dex */
public enum LPInputSource {
    LPLineIn(MenuBarConstants.MEDIA_TYPE_LINEIN),
    LPBluetooth(MenuBarConstants.MEDIA_TYPE_BLUE_TOOTH),
    LPUSB(MenuBarConstants.MEDIA_TYPE_UDISK),
    LPRadio("FM"),
    LPRCA("RCA"),
    LPHDMI(MenuBarConstants.MEDIA_TYPE_HDMI),
    LPOptical(MenuBarConstants.MEDIA_TYPE_OPTICAL),
    LPWiFi(MenuBarConstants.MEDIA_TYPE_WIFI),
    LPTFCard(MenuBarConstants.MEDIA_TYPE_TFCARD),
    LPXLR(MenuBarConstants.MEDIA_TYPE_XLR);

    private String mode;

    LPInputSource(String str) {
        this.mode = str;
    }

    public static LPInputSource byOrdinal(String str) {
        for (LPInputSource lPInputSource : values()) {
            if (TextUtils.equals(lPInputSource.mode, str)) {
                return lPInputSource;
            }
        }
        return LPWiFi;
    }

    public String getMode() {
        return this.mode;
    }
}
