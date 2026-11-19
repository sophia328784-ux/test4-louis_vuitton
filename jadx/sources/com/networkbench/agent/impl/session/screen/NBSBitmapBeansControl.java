package com.networkbench.agent.impl.session.screen;

import android.graphics.Point;
import android.text.TextUtils;
import android.view.WindowManager;
import com.networkbench.agent.impl.floatbtnmanager.e;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.c.b;
import com.networkbench.agent.impl.util.c.c;
import com.networkbench.agent.impl.util.r;
import defpackage.n00;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class NBSBitmapBeansControl {
    private static final String TAG = "NBSBitmapBeansControl";
    private static NBSBitmapBeansControl instance;
    NBSBitmapBeans bitmapBeans;
    boolean isRecordEnabled;
    private NBSBitmapBean lastBean;
    private NBSSessionConfig sessionConfig;
    String sessionID;
    volatile long sessionLastRecordTime;
    String video_ID;
    HashMap<String, NBSBitmapBeans> map = new HashMap<>();
    Point point = new Point();
    int sessionIdleTime = 600;

    private NBSBitmapBeansControl(boolean z) {
        this.isRecordEnabled = z;
        initNBSBitmapBeansControl();
    }

    public static NBSBitmapBeansControl getInstance() {
        if (instance == null) {
            synchronized (NBSBitmapBeansControl.class) {
                try {
                    if (instance == null) {
                        instance = new NBSBitmapBeansControl(r.u().l());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private void initNBSBitmapBeansControl() {
        NBSSessionConfig nBSSessionConfig = NBSSessionConfig.getInstance();
        this.sessionConfig = nBSSessionConfig;
        if (nBSSessionConfig == null) {
            Logger.error(TAG, "error get sessionConfig error");
            return;
        }
        setPointXy(this.point);
        this.sessionID = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString();
        this.video_ID = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString();
        this.sessionLastRecordTime = System.currentTimeMillis();
        Point point = this.point;
        this.bitmapBeans = new NBSBitmapBeans(point.x, point.y, this.sessionID, this.video_ID);
        setSessionIdleTime(r.u().g().a());
        this.map.put(this.sessionID, this.bitmapBeans);
    }

    private boolean isSessionNew() {
        return this.sessionIdleTime != 0 && System.currentTimeMillis() - this.sessionLastRecordTime > ((long) (this.sessionIdleTime * 1000));
    }

    private void setPointXy(Point point) {
        ((WindowManager) r.u().J().getSystemService("window")).getDefaultDisplay().getRealSize(point);
    }

    public void addBitmapBean(NBSBitmapBean nBSBitmapBean) {
        try {
            if (TextUtils.isEmpty(nBSBitmapBean.sessionId)) {
                this.bitmapBeans.addBitmapBean(nBSBitmapBean);
                return;
            }
            NBSBitmapBeans nBSBitmapBeans = this.map.get(nBSBitmapBean.sessionId);
            if (nBSBitmapBeans != null) {
                nBSBitmapBeans.addBitmapBean(nBSBitmapBean);
                saveData(nBSBitmapBeans);
            }
        } catch (Throwable unused) {
        }
    }

    public NBSBitmapBeans getBitmapBeans() {
        return this.bitmapBeans;
    }

    public NBSSessionConfig getSessionConfig() {
        return this.sessionConfig;
    }

    public String getSessionId() {
        String str = this.sessionID;
        return str == null ? "" : str;
    }

    public String getSessionIdRefresh() {
        Logger.debug(TAG, "getSessionIdRefresh happened currentSessionId:" + this.sessionID);
        if (isSessionNew()) {
            startNextSession(null);
            Logger.debug(TAG, "startNextSession newSessionId:" + this.sessionID);
        }
        this.sessionLastRecordTime = System.currentTimeMillis();
        String str = this.sessionID;
        return str == null ? "" : str;
    }

    public void saveData(NBSBitmapBeans nBSBitmapBeans) {
        StringBuilder sb = new StringBuilder();
        sb.append(e.a(r.u().J()));
        String strR = n00.r(File.separator, "ReplayData", sb);
        byte[] sendData = nBSBitmapBeans.getSendData(true);
        if (sendData == null) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                File file = new File(strR);
                if (file.length() + ((long) sendData.length) > getSessionConfig().replayCacheSize * 1048576) {
                    return;
                }
                if (!file.exists()) {
                    file.mkdirs();
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(file, nBSBitmapBeans.session_ID + System.currentTimeMillis()));
                try {
                    fileOutputStream2.write(sendData);
                    fileOutputStream2.flush();
                    this.map.remove(nBSBitmapBeans);
                    fileOutputStream2.close();
                    return;
                } catch (Throwable unused) {
                    fileOutputStream = fileOutputStream2;
                }
            } catch (Throwable unused2) {
            }
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
        } catch (IOException unused3) {
        }
    }

    public void setLastBean(NBSBitmapBean nBSBitmapBean) {
        this.lastBean = nBSBitmapBean;
    }

    public void setSessionIdleTime(int i2) {
        if (i2 == 0) {
            this.sessionIdleTime = i2;
        }
        if (i2 < 60) {
            return;
        }
        this.sessionIdleTime = i2;
    }

    public void startNextSession(String str) {
        NBSBitmapBean nBSBitmapBeanCopyNBSBitmapBean;
        final NBSBitmapBean nBSBitmapBean = this.lastBean;
        if (TextUtils.isEmpty(str)) {
            this.sessionID = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString();
        } else {
            this.sessionID = str;
        }
        if (nBSBitmapBean != null) {
            nBSBitmapBeanCopyNBSBitmapBean = nBSBitmapBean.copyNBSBitmapBean();
            nBSBitmapBeanCopyNBSBitmapBean.bitMapPath = e.a(this.sessionID);
        } else {
            nBSBitmapBeanCopyNBSBitmapBean = null;
        }
        final NBSBitmapBeans nBSBitmapBeans = this.bitmapBeans;
        c.a().a(new b("NBSBitmapBeansControl_startNextSession", TAG) { // from class: com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl.1
            @Override // com.networkbench.agent.impl.util.c.b
            public void operation() {
                if (nBSBitmapBean != null) {
                    e.a(new File(nBSBitmapBean.bitMapPath), NBSBitmapBeansControl.this.sessionID);
                }
                NBSBitmapBeansControl.this.saveData(nBSBitmapBeans);
            }
        });
        this.sessionLastRecordTime = System.currentTimeMillis();
        Point point = this.point;
        NBSBitmapBeans nBSBitmapBeans2 = new NBSBitmapBeans(point.x, point.y, this.sessionID, this.video_ID);
        this.bitmapBeans = nBSBitmapBeans2;
        this.map.put(this.sessionID, nBSBitmapBeans2);
        if (!r.u().l() || nBSBitmapBeanCopyNBSBitmapBean == null) {
            return;
        }
        this.bitmapBeans.addBitmapBean(nBSBitmapBeanCopyNBSBitmapBean);
    }
}
