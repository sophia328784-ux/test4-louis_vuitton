package com.sightcall.universal.internal.receiver;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sightcall.pratik.extensions.PendingIntents;
import com.sightcall.universal.Universal;
import com.sightcall.universal.fcm.messages.GuestReady;
import com.sightcall.universal.scenario.steps.ConnectionStep;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalNotificationBroadcastReceiver extends BroadcastReceiver {
    private static final String EXTRA_ACTION = "extra_action";
    private static final String EXTRA_DATA = "extra_data";

    /* JADX INFO: renamed from: com.sightcall.universal.internal.receiver.UniversalNotificationBroadcastReceiver$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$internal$receiver$UniversalNotificationBroadcastReceiver$Action;

        static {
            int[] iArr = new int[Action.values().length];
            $SwitchMap$com$sightcall$universal$internal$receiver$UniversalNotificationBroadcastReceiver$Action = iArr;
            try {
                iArr[Action.GUEST_READY_ACCEPT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$receiver$UniversalNotificationBroadcastReceiver$Action[Action.GUEST_READY_DENY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum Action {
        GUEST_READY_ACCEPT,
        GUEST_READY_DENY;

        public PendingIntent pendingIntent(Context context, Parcelable parcelable) {
            Intent intent = new Intent(context, (Class<?>) UniversalNotificationBroadcastReceiver.class);
            intent.putExtra(UniversalNotificationBroadcastReceiver.EXTRA_ACTION, name());
            intent.putExtra(UniversalNotificationBroadcastReceiver.EXTRA_DATA, parcelable);
            intent.addFlags(268435456);
            intent.addFlags(262144);
            return PendingIntents.getCompatPendingIntentBroadcast(context, name().hashCode(), intent, 1275068416);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        String stringExtra = intent.getStringExtra(EXTRA_ACTION);
        if (stringExtra == null) {
            return;
        }
        try {
            Action actionValueOf = Action.valueOf(stringExtra);
            Parcelable parcelableExtra = intent.getParcelableExtra(EXTRA_DATA);
            int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$internal$receiver$UniversalNotificationBroadcastReceiver$Action[actionValueOf.ordinal()];
            if (i2 == 1) {
                if (parcelableExtra instanceof GuestReady) {
                    Universal.agent().onGuestReadyAccepted((GuestReady) parcelableExtra);
                }
            } else if (i2 == 2 && (parcelableExtra instanceof GuestReady)) {
                ConnectionStep.declined = true;
                Universal.agent().onGuestReadyDenied((GuestReady) parcelableExtra);
            }
        } catch (IllegalArgumentException unused) {
            Universal.logger().e("Unknown action: ".concat(stringExtra));
        }
    }
}
