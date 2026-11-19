package com.sightcall.universal.internal.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.model.Session;
import java.util.concurrent.TimeUnit;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;

/* JADX INFO: loaded from: classes3.dex */
public class NetworkLostDialog extends BaseDialogFragment {
    private static final String TAG = "NetworkLostDialog";
    protected static long startTime = -1;
    protected final Handler handler = new Handler();
    protected final Runnable progressRunnable = new Runnable() { // from class: com.sightcall.universal.internal.ui.NetworkLostDialog.1
        @Override // java.lang.Runnable
        public void run() {
            NetworkLostDialog networkLostDialog = NetworkLostDialog.this;
            networkLostDialog.updateText(networkLostDialog.getDialog());
            NetworkLostDialog networkLostDialog2 = NetworkLostDialog.this;
            networkLostDialog2.handler.postDelayed(networkLostDialog2.progressRunnable, 1000L);
        }
    };
    private final Runnable timeoutRunnable = new Runnable() { // from class: com.sightcall.universal.internal.ui.NetworkLostDialog.2
        @Override // java.lang.Runnable
        public void run() {
            NetworkLostDialog.this.hangup();
        }
    };

    /* JADX INFO: renamed from: com.sightcall.universal.internal.ui.NetworkLostDialog$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Rtcc$Status;

        static {
            int[] iArr = new int[Rtcc.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Rtcc$Status = iArr;
            try {
                iArr[Rtcc.Status.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.DISCONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.CONNECTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.CONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.NETWORK_LOST.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static NetworkLostDialog newInstance() {
        return new NetworkLostDialog();
    }

    private boolean shouldBeDismissed() {
        Rtcc rtccInstance = Rtcc.instance();
        Call call = rtccInstance.call().get();
        return (call != null && call.status() == Call.Status.ACTIVE && rtccInstance.status() == Rtcc.Status.NETWORK_LOST) ? false : true;
    }

    public static void show(FragmentManager fragmentManager) {
        String str = TAG;
        if (fragmentManager.G(str) == null) {
            FragmentTransaction fragmentTransactionD = fragmentManager.d();
            fragmentTransactionD.b(newInstance(), str);
            fragmentTransactionD.f();
        }
    }

    private long timeout() {
        Session session = Session.get();
        if (session == null) {
            return 0L;
        }
        return TimeUnit.SECONDS.toMillis(session.config().deadPartyTimeout());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateText(Dialog dialog) {
        if (dialog == null) {
            return;
        }
        ((TextView) dialog.findViewById(R.id.universal_network_lost_message)).setText(getString(R.string.universal_call_reconnecting, Integer.valueOf(Math.max(0, (int) ((timeout() - (SystemClock.elapsedRealtime() - startTime)) / 1000)))));
    }

    public void cancelTimeout() {
        this.handler.removeCallbacks(this.timeoutRunnable);
        this.handler.removeCallbacks(this.progressRunnable);
        startTime = -1L;
    }

    public void hangup() {
        Universal.logger().d("NetworkLostDialog.hangup()");
        cancelTimeout();
        dismissAllowingStateLoss();
        Universal.scenario().interrupt();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        int i2 = R.layout.universal_dialog_network_lost;
        AlertController.AlertParams alertParams = builder.f810a;
        alertParams.t = null;
        alertParams.s = i2;
        AlertDialog alertDialogCreate = builder.setPositiveButton(R.string.universal_call_reconnecting_cancel, new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.internal.ui.NetworkLostDialog.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                NetworkLostDialog.this.hangup();
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i3);
            }
        }).a().create();
        alertDialogCreate.show();
        updateText(alertDialogCreate);
        return alertDialogCreate;
    }

    @Event
    public void onRtccStatus(Rtcc.Status status) {
        int i2 = AnonymousClass4.$SwitchMap$net$rtccloud$sdk$Rtcc$Status[status.ordinal()];
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            cancelTimeout();
            dismissAllowingStateLoss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Rtcc.instance().bus().register(this);
        resumeTimeout();
        if (shouldBeDismissed()) {
            cancelTimeout();
            dismissAllowingStateLoss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        pauseTimeout();
        Rtcc.instance().bus().unregister(this);
    }

    public void pauseTimeout() {
        this.handler.removeCallbacks(this.timeoutRunnable);
        this.handler.removeCallbacks(this.progressRunnable);
    }

    public void resumeTimeout() {
        if (startTime == -1) {
            startTime = SystemClock.elapsedRealtime();
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - startTime;
        if (jElapsedRealtime >= timeout()) {
            hangup();
        } else {
            this.handler.postDelayed(this.timeoutRunnable, timeout() - jElapsedRealtime);
            this.handler.post(this.progressRunnable);
        }
    }
}
