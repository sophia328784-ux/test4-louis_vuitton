package com.batch.android;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.batch.android.e.t;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class BatchPermissionActivity extends Activity {
    public static final String ACTION_PERMISSION_RESULT = "com.batch.androidactivity.permission.result";
    public static final String EXTRA_PERMISSION = "permission";
    public static final String EXTRA_REDIRECT_SETTINGS = "should_redirect_settings";
    public static final String EXTRA_RESULT = "result";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f22827c = "BatchPermissionActivity";
    private static final int d = 650;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f22828e = 51;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f22829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f22830b = 0;

    private void a() {
        if (!com.batch.android.e.o.a(this.f22829a, this)) {
            this.f22830b = new Date().getTime();
            requestPermissions(new String[]{this.f22829a}, 51);
            return;
        }
        t.c(f22827c, "Permission " + this.f22829a + " is already granted, not requesting permission.");
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Batch.onCreate(this);
        String stringExtra = getIntent().getStringExtra(EXTRA_PERMISSION);
        this.f22829a = stringExtra;
        if (stringExtra == null) {
            t.c(f22827c, "Cannot start permission activity without extra information");
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        Batch.onDestroy(this);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        PushAutoTrackHelper.onNewIntent(this, intent);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        boolean z;
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 == 51) {
            long time = new Date().getTime();
            boolean z2 = iArr.length > 0 && iArr[0] == 0;
            t.c(f22827c, "Permission " + this.f22829a + ", granted: " + z2);
            if (!z2) {
                z = time - this.f22830b <= 650 && !shouldShowRequestPermissionRationale(this.f22829a);
            }
            Intent intent = new Intent(ACTION_PERMISSION_RESULT);
            intent.putExtra(EXTRA_PERMISSION, this.f22829a);
            intent.putExtra("result", z2);
            intent.putExtra(EXTRA_REDIRECT_SETTINGS, z);
            com.batch.android.n.o.a(this).a(intent);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        Batch.onStart(this);
        a();
    }

    @Override // android.app.Activity
    public void onStop() {
        Batch.onStop(this);
        super.onStop();
    }
}
