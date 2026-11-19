package com.linkplay.core.status;

import android.text.TextUtils;
import com.android.wiimu.model.WiimuPendingMask;

/* JADX INFO: loaded from: classes2.dex */
public enum LPPendingMask {
    LP_PENDING_UNMASK(WiimuPendingMask.Unmask),
    LP_PENDING_MASK(WiimuPendingMask.Mask);

    private String status;

    LPPendingMask(String str) {
        this.status = str;
    }

    public static LPPendingMask byOrdinal(String str) {
        if (TextUtils.isEmpty(str)) {
            return LP_PENDING_MASK;
        }
        for (LPPendingMask lPPendingMask : values()) {
            if (lPPendingMask.status.equals(str)) {
                return lPPendingMask;
            }
        }
        return LP_PENDING_MASK;
    }

    public String getStatus() {
        return this.status;
    }
}
