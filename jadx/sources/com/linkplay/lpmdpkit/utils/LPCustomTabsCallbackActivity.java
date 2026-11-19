package com.linkplay.lpmdpkit.utils;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.linkplay.lpmdpkit.R;

/* JADX INFO: loaded from: classes2.dex */
public class LPCustomTabsCallbackActivity extends AppCompatActivity {
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Uri data;
        super.onCreate(bundle);
        setContentView(R.layout.activity_lp_custom_tabs_callback);
        Intent intent = getIntent();
        if (intent != null && TextUtils.isEmpty(intent.getStringExtra(LPCustomTabsUtil.LPMS_OPEN_WEB_URL)) && (data = intent.getData()) != null) {
            try {
                LPLogUtil.d(LPLogUtil.LP_MDP_KIT, "CustomTabsCallback data = " + data);
            } catch (Exception unused) {
            }
            LPCustomTabsUtil.handlerCallback(this, data);
        }
        finish();
    }
}
