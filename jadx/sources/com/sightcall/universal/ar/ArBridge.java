package com.sightcall.universal.ar;

import android.app.Activity;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes3.dex */
public interface ArBridge {
    public static final String META_DATA_KEY = "com.sightcall.universal.ar.ArBridge";
    public static final ArBridge NOOP = new ArBridge() { // from class: com.sightcall.universal.ar.ArBridge.1
        private final OldLogger logger = OldLogger.get("ArBridgeNoop");

        @Override // com.sightcall.universal.ar.ArBridge
        public void checkArCoreAvailability() {
            this.logger.w("checkArCoreAvailability()");
        }

        @Override // com.sightcall.universal.ar.ArBridge
        public Class<? extends Activity> getActivityClass() {
            this.logger.w("getActivityClass()");
            return null;
        }

        @Override // com.sightcall.universal.ar.ArBridge
        public ArCoreState getArCoreState() {
            return ArCoreState.UNSUPPORTED;
        }

        @Override // com.sightcall.universal.ar.ArBridge
        public boolean isArCoreUnsupported() {
            this.logger.w("isArCoreUnsupported()");
            return true;
        }

        @Override // com.sightcall.universal.ar.ArBridge
        public void startActivity(Activity activity) {
            this.logger.w("startActivity()");
        }
    };

    void checkArCoreAvailability();

    Class<? extends Activity> getActivityClass();

    ArCoreState getArCoreState();

    boolean isArCoreUnsupported();

    void startActivity(Activity activity);
}
