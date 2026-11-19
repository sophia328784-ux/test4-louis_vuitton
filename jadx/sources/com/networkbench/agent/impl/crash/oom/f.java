package com.networkbench.agent.impl.crash.oom;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConnectionInterface;
import com.networkbench.agent.impl.harvest.HarvestURLConnection;
import com.networkbench.agent.impl.harvest.a.l;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36692a = "OOMSenderRunnable";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36694c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HarvestConnectionInterface f36695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private File f36696f;

    public f(String str, String str2, com.networkbench.agent.impl.j.d dVar, String str3, File file) throws com.networkbench.agent.impl.util.d {
        if (str == null || TextUtils.isEmpty(str2)) {
            throw new com.networkbench.agent.impl.util.d("error param in anrSender");
        }
        this.f36693b = str;
        this.f36694c = str2;
        this.d = str3;
        this.f36696f = file;
        this.f36695e = new HarvestURLConnection(ak.i(), NBSAgent.getDeviceInformation().initUserHeaderValue(), r.u().z());
    }

    private boolean a() {
        File file = new File(this.f36696f.getAbsolutePath().replace(".json", ".content"));
        if (file.exists()) {
            file.delete();
        }
        return this.f36696f.delete();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Logger.info(f36692a, "send oom content:" + this.f36693b);
            com.networkbench.agent.impl.harvest.d.c cVarSendDataStr = this.f36695e.sendDataStr(this.f36693b, l.a(com.networkbench.agent.impl.harvest.a.r.CRASH_DATA, this.f36694c, r.u().Q()));
            if (cVarSendDataStr.e()) {
                Harvest.getInstance().getHarvester().doDisabledTimeout(cVarSendDataStr.a());
            }
            if (cVarSendDataStr.h()) {
                Logger.debug(f36692a, "harvestResponse.isOK(), delete file result is:" + a());
                return;
            }
            Harvest.getInstance().getHarvester().processError(cVarSendDataStr);
            if (cVarSendDataStr.j().s == 464 || cVarSendDataStr.j().s == -1 || cVarSendDataStr.j().s == 460 || cVarSendDataStr.j().s == 462) {
                Logger.debug(f36692a, "harvestResponse  code  : " + cVarSendDataStr.j().s + ", delete file result is:" + a());
            }
        } catch (Throwable unused) {
        }
    }
}
