package com.batch.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.activity.result.ActivityResultCaller;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.batch.android.n.t;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;

/* JADX INFO: loaded from: classes.dex */
public class MessagingActivity extends FragmentActivity implements com.batch.android.c0.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f22850c = "MessagingActivity";
    private static final String d = "ROTATED";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f22851e = "IS_MEP";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f22852f = "batchMessage";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f22853a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BroadcastReceiver f22854b = new a();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (intent == null || !com.batch.android.v0.g.f24104j.equalsIgnoreCase(intent.getAction())) {
                return;
            }
            MessagingActivity.this.finish();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean a(BatchMessage batchMessage) {
        if (batchMessage == null) {
            return false;
        }
        try {
            DialogFragment dialogFragmentB = t.a().b(this, batchMessage, batchMessage.c());
            if (!(dialogFragmentB instanceof com.batch.android.c0.e)) {
                com.batch.android.e.t.a(f22850c, "Unknown error while showing Batch Message (code -1)");
                return false;
            }
            ((com.batch.android.c0.e) dialogFragmentB).a(this);
            dialogFragmentB.show(getSupportFragmentManager(), f22852f);
            return true;
        } catch (BatchMessagingException e2) {
            com.batch.android.e.t.a(f22850c, "Unknown error while showing Batch Message (code -2)", e2);
            return false;
        }
    }

    public static void startActivityForMessage(Context context, BatchMessage batchMessage) {
        boolean zC;
        if (batchMessage == null) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) MessagingActivity.class);
        intent.addFlags(268435456);
        batchMessage.writeToIntent(intent);
        try {
            zC = com.batch.android.i0.b.f(batchMessage.c()).c();
        } catch (com.batch.android.i0.c unused) {
            com.batch.android.e.t.c(f22850c, "Error while parsing the payload message");
            zC = true;
        }
        intent.putExtra(f22851e, zC);
        context.startActivity(intent);
        if (zC) {
            LocalBroadcastManager.a(context).c(new Intent(com.batch.android.v0.g.f24104j));
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.com_batchsdk_window_stub);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean zA = false;
        if (bundle == null || !bundle.getBoolean(d, false)) {
            Intent intent = getIntent();
            if (intent != null) {
                this.f22853a = intent.getBooleanExtra(f22851e, true);
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    try {
                        zA = a(BatchMessage.getMessageForBundle(extras));
                    } catch (BatchPushPayload.ParsingException e2) {
                        com.batch.android.e.t.c(f22850c, e2);
                    }
                }
            }
            if (!zA) {
                finish();
            }
        } else {
            ActivityResultCaller activityResultCallerG = getSupportFragmentManager().G(f22852f);
            if (activityResultCallerG instanceof com.batch.android.c0.e) {
                ((com.batch.android.c0.e) activityResultCallerG).a(this);
            }
        }
        if (this.f22853a) {
            LocalBroadcastManager.a(this).b(this.f22854b, new IntentFilter(com.batch.android.v0.g.f24104j));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Batch.onDestroy(this);
        if (this.f22853a) {
            LocalBroadcastManager.a(this).d(this.f22854b);
        }
        super.onDestroy();
    }

    @Override // com.batch.android.c0.c
    public void onDialogDismiss(DialogFragment dialogFragment) {
        if (isChangingConfigurations()) {
            return;
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(d, true);
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        Batch.onStart(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        Batch.onStop(this);
        super.onStop();
    }
}
