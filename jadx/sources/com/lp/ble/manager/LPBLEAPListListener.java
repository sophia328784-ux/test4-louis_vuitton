package com.lp.ble.manager;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface LPBLEAPListListener {
    void onFailed(Exception exc);

    void onSuccess(List<ApItem> list);
}
