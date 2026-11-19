package com.linkplay.core.app;

import android.app.Application;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LPDeviceManagerParam implements Serializable {
    public String appid;
    public Application context;
    public int registerMaintainMaxAgeSeconds = 60;
    public List<String> mdnsServiceTypes = new ArrayList();
}
