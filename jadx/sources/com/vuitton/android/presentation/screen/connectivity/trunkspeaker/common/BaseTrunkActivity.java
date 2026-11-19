package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.activity.result.ActivityResultCaller;
import androidx.core.content.ContextCompat;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.permission.PermissionsActivity;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.views.ToastKt;
import com.vuitton.android.presentation.utils.PermissionUtils;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.rc;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000I\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u001d\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\u0003J-\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0017¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J)\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "J", "", "requestCode", "", "", PermissionsActivity.EXTRA_PERMISSIONS, "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "onResume", "onPause", "", "onSupportNavigateUp", "()Z", "resultCode", "Landroid/content/Intent;", DbParams.KEY_DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "com/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$bluetoothReceiver$1", "p", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$bluetoothReceiver$1;", "bluetoothReceiver", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public abstract class BaseTrunkActivity extends Hilt_BaseTrunkActivity {
    public static final int q = 8;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final BaseTrunkActivity$bluetoothReceiver$1 bluetoothReceiver = new BroadcastReceiver() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.BaseTrunkActivity$bluetoothReceiver$1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            context.getClass();
            intent.getClass();
            if (Intrinsics.c(intent.getAction(), "android.bluetooth.adapter.action.STATE_CHANGED") && intent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE) == 13) {
                BaseTrunkActivity.I(this.f56462a);
            }
        }
    };

    public static final void I(BaseTrunkActivity baseTrunkActivity) {
        baseTrunkActivity.getClass();
        ToastKt.a(baseTrunkActivity);
    }

    public final void J() {
        if (!PermissionUtils.c(this)) {
            PermissionUtils.d(this);
            return;
        }
        if (PermissionUtils.a(this)) {
            for (int i2 = 0; i2 < 2; i2++) {
                String[] strArr = PermissionUtils.f65862a;
                if (ContextCompat.checkSelfPermission(this, strArr[i2]) != 0) {
                    requestPermissions(strArr, 1486);
                    return;
                }
            }
            PermissionUtils.b(this, new BaseTrunkActivity$checkGps$1(this));
        }
    }

    public final void K() {
        List<ActivityResultCaller> listM = getSupportFragmentManager().M();
        listM.getClass();
        for (ActivityResultCaller activityResultCaller : listM) {
            if (activityResultCaller instanceof TrunkSpeakerFragmentInterface) {
                ((TrunkSpeakerFragmentInterface) activityResultCaller).t();
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        int i2 = 0;
        if (requestCode == 2541) {
            if (resultCode == -1) {
                K();
                return;
            } else {
                if (resultCode != 0) {
                    return;
                }
                runOnUiThread(new rc(this, i2));
                return;
            }
        }
        if (requestCode == 2547 && resultCode == -1) {
            while (i2 < 2) {
                String[] strArr = PermissionUtils.f65862a;
                if (ContextCompat.checkSelfPermission(this, strArr[i2]) != 0) {
                    requestPermissions(strArr, 1486);
                    return;
                }
                i2++;
            }
            PermissionUtils.b(this, new BaseTrunkActivity$checkGps$1(this));
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fragment_container);
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        unregisterReceiver(this.bluetoothReceiver);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        permissions.getClass();
        grantResults.getClass();
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == 1486) {
            if (ArraysKt.g(grantResults, 0)) {
                PermissionUtils.b(this, new BaseTrunkActivity$checkGps$1(this));
                return;
            } else {
                runOnUiThread(new rc(this, 1));
                return;
            }
        }
        if (requestCode == 1487 && ArraysKt.g(grantResults, 0) && PermissionUtils.a(this)) {
            for (int i2 = 0; i2 < 2; i2++) {
                String[] strArr = PermissionUtils.f65862a;
                if (ContextCompat.checkSelfPermission(this, strArr[i2]) != 0) {
                    requestPermissions(strArr, 1486);
                    return;
                }
            }
            PermissionUtils.b(this, new BaseTrunkActivity$checkGps$1(this));
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        ContextCompat.registerReceiver(this, this.bluetoothReceiver, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"), 4);
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        if (getSupportFragmentManager().J() > 0) {
            getSupportFragmentManager().V();
            return true;
        }
        finish();
        return true;
    }
}
