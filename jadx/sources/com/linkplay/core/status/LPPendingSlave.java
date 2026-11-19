package com.linkplay.core.status;

import android.text.TextUtils;
import com.android.wiimu.model.WiimuPendingSlave;

/* JADX INFO: loaded from: classes2.dex */
public enum LPPendingSlave {
    LP_PENDING_MASTER(WiimuPendingSlave.Master),
    LP_PENDING_SLAVE(WiimuPendingSlave.Slave);

    private String status;

    LPPendingSlave(String str) {
        this.status = str;
    }

    public static LPPendingSlave byOrdinal(String str) {
        if (TextUtils.isEmpty(str)) {
            return LP_PENDING_MASTER;
        }
        for (LPPendingSlave lPPendingSlave : values()) {
            if (lPPendingSlave.status.equals(str)) {
                return lPPendingSlave;
            }
        }
        return LP_PENDING_MASTER;
    }

    public String getStatus() {
        return this.status;
    }
}
