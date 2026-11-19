package com.networkbench.agent.impl.session.screen;

import android.os.Handler;
import android.os.Looper;
import com.networkbench.agent.impl.g.a.h;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.y;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public class NBSScreenRecordTimer implements Runnable {
    private static final String TAG = "NBSScreenRecordTimer";

    public static NBSBitmapBean storeBitmap(long j2, h hVar, String str) {
        NBSBitmapBean nBSBitmapBean = new NBSBitmapBean(j2, hVar);
        nBSBitmapBean.setSessionID(str);
        NBSScreenRecordingUtil.getScreenRecordBitmap(nBSBitmapBean);
        return nBSBitmapBean;
    }

    public static void storeBitmapDelay(long j2) {
        Logger.debug(TAG, "storeBitmapDelay   delayTime :" + j2);
        NBSBitmapBeansControl.getInstance().getSessionIdRefresh();
        if (r.p == 0 && r.u().l()) {
            try {
                new Handler(Looper.getMainLooper()).postDelayed(new y() { // from class: com.networkbench.agent.impl.session.screen.NBSScreenRecordTimer.1
                    @Override // com.networkbench.agent.impl.util.y
                    public void tryCatchRun() {
                        try {
                            NBSScreenShotController.getShotController(NBSScreenShotController.ShotControllerType.SCREEN_SHOT_TYPE).doShot(System.currentTimeMillis(), null, null);
                        } catch (Throwable th) {
                            z81.k(new StringBuilder("NBSScreenRecordTimer  storeBitmapDelay has an error : "), th);
                        }
                    }
                }, j2);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
    }
}
