package com.sensorsdata.analytics.android.sdk.dialog;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPIEmptyImplementation;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;

/* JADX INFO: loaded from: classes3.dex */
public class SchemeActivity extends Activity {
    public static final String SCHEME_ACTIVITY_SIGN = "#*#scheme_activity_sign#*#";
    private static final String TAG = "SA.SchemeActivity";
    public static boolean isPopWindow = false;
    private boolean isStartApp = false;

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SALog.i(TAG, "onCreate");
        try {
            requestWindowFeature(1);
            setTheme(R.style.Theme.DeviceDefault.Light);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        if (SensorsDataAPI.sharedInstance() instanceof SensorsDataAPIEmptyImplementation) {
            SALog.i(TAG, "onCreate SensorsDataAPIEmptyImplementation");
            SensorsDataDialogUtils.startLaunchActivity(this);
        } else {
            SALog.i(TAG, "onCreate handleSchemeUrl");
            SensorsDataUtils.handleSchemeUrl(this, getIntent());
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        try {
            SALog.i(TAG, "onNewIntent intent = " + intent);
            if (SensorsDataAPI.sharedInstance() instanceof SensorsDataAPIEmptyImplementation) {
                SALog.i(TAG, "onNewIntent SensorsDataAPIEmptyImplementation");
                SensorsDataDialogUtils.startLaunchActivity(this);
            } else {
                SALog.i(TAG, "onNewIntent handleSchemeUrl");
                SensorsDataUtils.handleSchemeUrl(this, getIntent());
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        SALog.i(TAG, "onPause");
        if (isPopWindow) {
            isPopWindow = false;
            this.isStartApp = true;
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        SALog.i(TAG, "onResume");
        if (this.isStartApp) {
            this.isStartApp = false;
            SensorsDataDialogUtils.startLaunchActivity(this);
        }
    }
}
