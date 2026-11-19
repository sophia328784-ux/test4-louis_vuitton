package com.linkplay.core.status;

import com.android.wiimu.model.IWiimuPlayQueueType;

/* JADX INFO: loaded from: classes2.dex */
public enum LPPlayQueueType {
    LP_ALL_QUEUE(IWiimuPlayQueueType.ExtTotalQueue),
    LP_CURRENT_QUEUE(IWiimuPlayQueueType.ExtCurrentQueue),
    LP_USBDISK_QUEUE(IWiimuPlayQueueType.ExtUSBDiskQueue),
    LP_RECENTLY_QUEUE(IWiimuPlayQueueType.ExtRecentlyQueue),
    LP_CUSTOMLIST_QUEUE(IWiimuPlayQueueType.ExtCustomListQueue);

    private String value;

    LPPlayQueueType(String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }
}
