package com.android.wiimu.upnp;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface IWiimuActionCallback {
    void failure(Exception exc);

    void success(Map map);
}
