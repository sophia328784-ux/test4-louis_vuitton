package com.networkbench.agent.impl.session.screen;

import com.networkbench.agent.impl.g.a.h;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.r;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class NBSScreenShotController {
    private static final String TAG = "NBSScreenShotController";
    protected static final Map<ShotControllerType, NBSScreenShotController> controllersMap;
    protected long lastShotTime;
    private int shotThresold;

    public enum ShotControllerType {
        SCREEN_SHOT_TYPE,
        GESTURE_SHOT_TYPE
    }

    static {
        HashMap map = new HashMap();
        controllersMap = map;
        map.put(ShotControllerType.SCREEN_SHOT_TYPE, new NBSScreenShotController(300));
        map.put(ShotControllerType.GESTURE_SHOT_TYPE, new NBSScreenShotController(0));
    }

    public NBSScreenShotController(int i2) {
        if (i2 > 0) {
            this.shotThresold = i2;
        }
    }

    public static NBSScreenShotController getShotController(ShotControllerType shotControllerType) {
        return controllersMap.get(shotControllerType);
    }

    public NBSBitmapBean doShot(long j2, h hVar, String str) {
        if (r.p != 0 || !r.u().l()) {
            Logger.debug(TAG, " doShot error  isRecord_enabled : " + r.u().l());
            return null;
        }
        if (!NBSBitmapBeansControl.getInstance().getBitmapBeans().isReplayCanCollecion()) {
            Logger.warning(TAG, "replay can not collection");
            return null;
        }
        if (isOverShotThresold(System.currentTimeMillis())) {
            this.lastShotTime = System.currentTimeMillis();
            return realShot(j2, hVar, str);
        }
        Logger.debug(TAG, "current shot time is small than thresold : 300ms , skip shot screen");
        return null;
    }

    public boolean isOverShotThresold(long j2) {
        int i2 = this.shotThresold;
        return i2 == 0 || j2 - this.lastShotTime > ((long) i2);
    }

    public NBSBitmapBean realShot(long j2, h hVar, String str) {
        Logger.debug(TAG, "do shot begin");
        return NBSScreenRecordTimer.storeBitmap(j2, hVar, str);
    }
}
