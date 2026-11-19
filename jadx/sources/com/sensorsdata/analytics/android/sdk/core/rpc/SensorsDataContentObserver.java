package com.sensorsdata.analytics.android.sdk.core.rpc;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPIEmptyImplementation;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.useridentity.LoginIDAndKey;

/* JADX INFO: loaded from: classes3.dex */
public class SensorsDataContentObserver extends ContentObserver {

    public enum State {
        LOGOUT(false, false),
        LOGIN(false, false),
        ENABLE_SDK(false, false),
        DISABLE_SDK(false, false);

        public boolean isDid;
        public boolean isObserverCalled;

        State(boolean z, boolean z2) {
            this.isDid = z;
            this.isObserverCalled = z2;
        }
    }

    public SensorsDataContentObserver() {
        super(new Handler(Looper.getMainLooper()));
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        SAContextManager sAContextManager;
        try {
            if (DbParams.getInstance().getSessionTimeUri().equals(uri)) {
                SensorsDataAPI.sharedInstance().setSessionIntervalTime(DbAdapter.getInstance().getSessionIntervalTime());
                return;
            }
            if (DbParams.getInstance().getLoginIdUri().equals(uri)) {
                String loginIdKey = DbAdapter.getInstance().getLoginIdKey();
                String loginId = DbAdapter.getInstance().getLoginId();
                if ((!TextUtils.isEmpty(loginId) && !loginIdKey.equals(LoginIDAndKey.LOGIN_ID_KEY_DEFAULT)) || !TextUtils.isEmpty(loginId)) {
                    State state = State.LOGIN;
                    if (state.isDid) {
                        state.isDid = false;
                        return;
                    } else {
                        SensorsDataAPI.sharedInstance().loginWithKey(loginIdKey, loginId);
                        return;
                    }
                }
                State state2 = State.LOGOUT;
                if (state2.isDid) {
                    state2.isDid = false;
                    return;
                } else {
                    state2.isObserverCalled = true;
                    SensorsDataAPI.sharedInstance().logout();
                    return;
                }
            }
            if (DbParams.getInstance().getDisableSDKUri().equals(uri)) {
                State state3 = State.DISABLE_SDK;
                if (state3.isDid) {
                    state3.isDid = false;
                    return;
                } else {
                    state3.isObserverCalled = true;
                    SensorsDataAPI.disableSDK();
                    return;
                }
            }
            if (DbParams.getInstance().getEnableSDKUri().equals(uri)) {
                State state4 = State.ENABLE_SDK;
                if (state4.isDid) {
                    state4.isDid = false;
                    return;
                } else {
                    state4.isObserverCalled = true;
                    SensorsDataAPI.enableSDK();
                    return;
                }
            }
            if (DbParams.getInstance().getUserIdentities().equals(uri)) {
                SensorsDataAPI sensorsDataAPISharedInstance = SensorsDataAPI.sharedInstance();
                if ((sensorsDataAPISharedInstance instanceof SensorsDataAPIEmptyImplementation) || (sAContextManager = sensorsDataAPISharedInstance.getSAContextManager()) == null) {
                    return;
                }
                sAContextManager.getUserIdentityAPI().getIdentitiesInstance().updateIdentities();
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }
}
