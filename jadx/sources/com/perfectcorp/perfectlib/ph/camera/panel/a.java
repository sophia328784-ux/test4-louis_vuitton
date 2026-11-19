package com.perfectcorp.perfectlib.ph.camera.panel;

import com.perfectcorp.common.network.DownloadKey;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.c;
import com.perfectcorp.perfectlib.ymk.clflurry.MCSDKDownloadLookEvent;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static c.C0166c a(b bVar) {
        c.C0166c c0166cA = c.C0166c.a(bVar);
        c0166cA.n = true;
        c0166cA.f41462b = true;
        String str = bVar.d;
        c0166cA.f41461a = new DownloadKey.Guid(str);
        c0166cA.f41464e = DownloadStateMonitors.a(bVar.f41232j, MCSDKDownloadLookEvent.Source.CAM, str);
        return c0166cA;
    }
}
