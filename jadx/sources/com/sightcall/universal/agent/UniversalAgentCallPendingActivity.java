package com.sightcall.universal.agent;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Parcelable;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sightcall.pratik.extensions.PendingIntents;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.fcm.messages.GuestReady;
import com.sightcall.universal.internal.ui.UniversalNotification;
import com.sightcall.universal.scenario.steps.ConnectionStep;
import com.sightcall.universal.util.UiUtils;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalAgentCallPendingActivity extends AppCompatActivity {
    public static final String ACTION_ACCEPT = "UniversalAgentCallPendingActivity.ACCEPT";
    public static final String ACTION_ASK = "UniversalAgentCallPendingActivity.ASK";
    public static final String ACTION_DENY = "UniversalAgentCallPendingActivity.DENY";
    private static final String EXTRA_DATA = "extra_data";
    private Parcelable message;
    private static final String BROADCAST_ACTION_FINISH = "UniversalAgentCallPendingActivity.FINISH";
    private static final IntentFilter INTENT_FILTER_FINISH = new IntentFilter(BROADCAST_ACTION_FINISH);
    public boolean timeout = true;
    private final BroadcastReceiver finishReceiver = new BroadcastReceiver() { // from class: com.sightcall.universal.agent.UniversalAgentCallPendingActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (UniversalAgentCallPendingActivity.this.isFinishing()) {
                return;
            }
            Parcelable parcelableExtra = intent.getParcelableExtra(UniversalAgentCallPendingActivity.EXTRA_DATA);
            if ((UniversalAgentCallPendingActivity.this.message instanceof GuestReady) && (parcelableExtra instanceof GuestReady) && ((GuestReady) UniversalAgentCallPendingActivity.this.message).correspondsTo((GuestReady) parcelableExtra)) {
                UniversalAgentCallPendingActivity.this.finish();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void accept() {
        if (this.message instanceof GuestReady) {
            Universal.agent().onGuestReadyAccepted((GuestReady) this.message);
        }
        finish();
    }

    public static PendingIntent ask(Context context, GuestReady guestReady, String str) {
        return askPendingIntent(context, guestReady, str);
    }

    private static PendingIntent askPendingIntent(Context context, Parcelable parcelable, String str) {
        Intent intent = new Intent(context, (Class<?>) UniversalAgentCallPendingActivity.class);
        intent.setAction(str);
        intent.addFlags(268435456);
        intent.addFlags(262144);
        intent.putExtra(EXTRA_DATA, parcelable);
        return PendingIntents.getCompatPendingIntentActivity(context, 0, intent, 1207959552);
    }

    private void cancelReadyNotification() {
        Parcelable parcelable = this.message;
        if (parcelable instanceof GuestReady) {
            UniversalNotification.GUEST_READY.cancel(this, parcelable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deny() {
        if (this.message instanceof GuestReady) {
            ConnectionStep.declined = true;
            Universal.agent().onGuestReadyDenied((GuestReady) this.message);
        }
        finish();
    }

    public static void finish(Context context, Parcelable parcelable) {
        Intent intent = new Intent(BROADCAST_ACTION_FINISH);
        intent.putExtra(EXTRA_DATA, parcelable);
        LocalBroadcastManager.a(context).c(intent);
    }

    private void unlockDevice() {
        if (SdkUtilsKt.isAtLeastSdk27()) {
            setShowWhenLocked(true);
            setTurnScreenOn(true);
            return;
        }
        getWindow().setType(2009);
        getWindow().addFlags(2621569);
        if (SdkUtilsKt.isAtLeastSdk26()) {
            return;
        }
        getWindow().addFlags(4194304);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LocalBroadcastManager.a(this).b(this.finishReceiver, INTENT_FILTER_FINISH);
        Intent intent = getIntent();
        Parcelable parcelableExtra = intent.getParcelableExtra(EXTRA_DATA);
        this.message = parcelableExtra;
        if (!(parcelableExtra instanceof GuestReady)) {
            finish();
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "UniversalAgentCallPendingActivity.DENY":
                deny();
                break;
            case "UniversalAgentCallPendingActivity.ACCEPT":
                accept();
                break;
            case "UniversalAgentCallPendingActivity.ASK":
                unlockDevice();
                if (this.message instanceof GuestReady) {
                    int i2 = R.string.universal_agent_notification_guest_ready_title;
                    int i3 = R.string.universal_agent_notification_guest_ready_text;
                    int i4 = R.string.universal_agent_notification_guest_ready_accept;
                    int i5 = R.string.universal_agent_notification_guest_ready_deny;
                    AlertDialog.Builder builder = new AlertDialog.Builder(this);
                    Drawable drawableUniversalDrawableIcon = UiUtils.universalDrawableIcon(this);
                    AlertController.AlertParams alertParams = builder.f810a;
                    alertParams.d = drawableUniversalDrawableIcon;
                    builder.f(i2);
                    alertParams.g = alertParams.f796a.getText(i3);
                    builder.setPositiveButton(i4, new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.agent.UniversalAgentCallPendingActivity.5
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i6) {
                            UniversalAgentCallPendingActivity.this.accept();
                            UniversalAgentCallPendingActivity.this.timeout = false;
                            SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i6);
                        }
                    }).setNegativeButton(i5, new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.agent.UniversalAgentCallPendingActivity.4
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i6) {
                            UniversalAgentCallPendingActivity.this.deny();
                            UniversalAgentCallPendingActivity.this.timeout = false;
                            SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i6);
                        }
                    }).e(new DialogInterface.OnDismissListener() { // from class: com.sightcall.universal.agent.UniversalAgentCallPendingActivity.3
                        @Override // android.content.DialogInterface.OnDismissListener
                        public void onDismiss(DialogInterface dialogInterface) {
                            UniversalAgentCallPendingActivity universalAgentCallPendingActivity = UniversalAgentCallPendingActivity.this;
                            universalAgentCallPendingActivity.timeout = false;
                            if (universalAgentCallPendingActivity.isFinishing()) {
                                return;
                            }
                            UniversalAgentCallPendingActivity.this.finish();
                        }
                    }).d(new DialogInterface.OnCancelListener() { // from class: com.sightcall.universal.agent.UniversalAgentCallPendingActivity.2
                        @Override // android.content.DialogInterface.OnCancelListener
                        public void onCancel(DialogInterface dialogInterface) {
                            UniversalAgentCallPendingActivity universalAgentCallPendingActivity = UniversalAgentCallPendingActivity.this;
                            universalAgentCallPendingActivity.timeout = false;
                            universalAgentCallPendingActivity.deny();
                        }
                    }).a().g();
                    break;
                } else {
                    return;
                }
                break;
            default:
                finish();
                return;
        }
        new CountDownTimer(60000L, 10000L) { // from class: com.sightcall.universal.agent.UniversalAgentCallPendingActivity.6
            @Override // android.os.CountDownTimer
            public void onFinish() {
                UniversalAgentCallPendingActivity universalAgentCallPendingActivity = UniversalAgentCallPendingActivity.this;
                if (universalAgentCallPendingActivity.timeout) {
                    Toast.makeText(universalAgentCallPendingActivity, R.string.universal_acd_timeout, 1).show();
                    UniversalAgentCallPendingActivity.this.finish();
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
            }
        }.start();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        LocalBroadcastManager.a(this).d(this.finishReceiver);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        cancelReadyNotification();
    }
}
