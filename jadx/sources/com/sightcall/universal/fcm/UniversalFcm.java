package com.sightcall.universal.fcm;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat$Builder;
import com.google.firebase.messaging.RemoteMessage;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.pratik.extensions.PendingIntents;
import com.sightcall.universal.R;
import com.sightcall.universal.fcm.messages.Code;
import com.sightcall.universal.fcm.messages.GuestReady;
import com.sightcall.universal.fcm.messages.Ping;
import com.sightcall.universal.fcm.messages.Test;
import com.sightcall.universal.internal.ui.UniversalNotificationChannel;
import com.sightcall.universal.model.Moshi;
import com.sightcall.universal.preferences.StringPreference;
import com.sightcall.universal.util.Lazy;
import defpackage.d21;
import java.util.HashMap;
import java.util.Map;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.EventBus;
import net.rtccloud.sdk.util.OldLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalFcm {
    private static final OldLogger logger = OldLogger.get("FCM");
    private final Context context;
    private final Lazy<Map<String, Class<?>>> LUT = new Lazy<Map<String, Class<?>>>() { // from class: com.sightcall.universal.fcm.UniversalFcm.1
        @Override // com.sightcall.universal.util.Lazy
        public Map<String, Class<?>> init() {
            HashMap map = new HashMap();
            map.put(Ping.KEY, Ping.class);
            map.put(Test.KEY, Test.class);
            map.put(GuestReady.KEY, GuestReady.class);
            map.put(Code.Created.KEY, Code.Created.class);
            map.put(Code.Resent.KEY, Code.Resent.class);
            map.put(Code.Destroyed.KEY, Code.Destroyed.class);
            return map;
        }
    };
    private final Lazy<StringPreference> token = new Lazy<StringPreference>() { // from class: com.sightcall.universal.fcm.UniversalFcm.2
        private static final String KEY_TOKEN = "token";
        private static final String SHARED_PREFERENCES_NAME = "universal_fcm";

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.sightcall.universal.util.Lazy
        public StringPreference init() {
            return new StringPreference(UniversalFcm.this.context.getApplicationContext().getSharedPreferences(SHARED_PREFERENCES_NAME, 0), KEY_TOKEN) { // from class: com.sightcall.universal.fcm.UniversalFcm.2.1
                @Override // com.sightcall.universal.preferences.StringPreference
                public void set(String str) {
                    String str2 = get();
                    super.set(str);
                    if (TextUtils.equals(str2, str)) {
                        return;
                    }
                    Rtcc.instance().bus().post(new FcmTokenUpdateEvent(str));
                }
            };
        }
    };

    public UniversalFcm(Context context) {
        this.context = context;
    }

    private void fireNotification(Context context, Notification notification) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager != null) {
            int iId = UniversalNotificationChannel.DEFAULT_HIGH.id();
            notificationManager.notify(iId, notification);
            PushAutoTrackHelper.onNotify(notificationManager, iId, notification);
        }
    }

    private void setupNotification(Context context, String str, String str2, JSONObject jSONObject, String str3) {
        String packageName = context.getPackageName();
        Intent intent = new Intent();
        intent.putExtra(DbParams.KEY_DATA, jSONObject.toString());
        if (str3.equals("upload_file")) {
            intent.setComponent(new ComponentName(packageName, d21.j(packageName, ".offline.OfflineMediaActivity")));
            intent.setAction(context.getString(R.string.universal_feature_offline));
        } else if (str3.equals("smart_ocr")) {
            intent.setComponent(new ComponentName(packageName, d21.j(packageName, ".OCR.liveOCR.PickModelActivity")));
            intent.setAction(context.getString(R.string.universal_feature_ocr));
        } else if (str3.equals("ar_overlay")) {
            intent.setComponent(new ComponentName("com.sightcall.agent", "com.sightcall.features.agent.arflow.liveQR.PickARModelActivity"));
            intent.setAction(context.getString(R.string.universal_feature_ar));
        } else if (str3.equals("video_session")) {
            intent.setComponent(new ComponentName(packageName, d21.j(packageName, ".StartActivity")));
            intent.setAction(context.getString(R.string.universal_feature_start));
        }
        PendingIntent compatPendingIntentActivity = PendingIntents.getCompatPendingIntentActivity(context, 0, intent, 1207959552);
        UniversalNotificationChannel universalNotificationChannel = UniversalNotificationChannel.DEFAULT_HIGH;
        universalNotificationChannel.create(context);
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, universalNotificationChannel.id(context));
        notificationCompat$Builder.m = -1;
        notificationCompat$Builder.B = "msg";
        notificationCompat$Builder.Q.icon = R.drawable.universal_ic_send_24dp;
        notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(str);
        notificationCompat$Builder.g(16, true);
        notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(str2);
        notificationCompat$Builder.g(2, false);
        notificationCompat$Builder.g(8, true);
        notificationCompat$Builder.f11912h = compatPendingIntentActivity;
        fireNotification(context, notificationCompat$Builder.c());
    }

    public void onMessageReceived(RemoteMessage remoteMessage) {
        long jLongValue;
        OldLogger oldLogger = logger;
        Object obj = remoteMessage.f35272b.get("google.sent_time");
        if (obj instanceof Long) {
            jLongValue = ((Long) obj).longValue();
        } else if (obj instanceof String) {
            try {
                jLongValue = Long.parseLong((String) obj);
            } catch (NumberFormatException unused) {
                jLongValue = 0;
            }
        } else {
            jLongValue = 0;
        }
        oldLogger.i("onMessageReceived(%s) @ %d", remoteMessage, Long.valueOf(jLongValue));
        JSONObject jSONObject = new JSONObject();
        boolean z = false;
        String string = "";
        for (Map.Entry entry : remoteMessage.W1().entrySet()) {
            if (entry.getKey().toString().equals("feature")) {
                string = entry.getValue().toString();
                z = true;
            }
        }
        if (!z) {
            EventBus eventBusBus = Rtcc.instance().bus();
            eventBusBus.post(remoteMessage);
            for (Map.Entry entry2 : remoteMessage.W1().entrySet()) {
                logger.d("[%s] -> %s", entry2.getKey(), entry2.getValue());
                Class<?> cls = this.LUT.get().get(entry2.getKey());
                if (cls != null) {
                    try {
                        Object objFromJson = Moshi.adapter(cls).fromJson((String) entry2.getValue());
                        if (objFromJson != null) {
                            eventBusBus.post(objFromJson);
                        }
                    } catch (Exception e2) {
                        logger.e(e2);
                    }
                }
            }
            return;
        }
        String str = "";
        String str2 = str;
        for (Map.Entry entry3 : remoteMessage.W1().entrySet()) {
            String str3 = (String) entry3.getKey();
            String str4 = (String) entry3.getValue();
            if (str3.equals("text")) {
                str2 = str4;
            } else if (str3.equals("title")) {
                str = str4;
            } else {
                try {
                    jSONObject.put(str3, str4);
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
            }
        }
        setupNotification(this.context, str, str2, jSONObject, string);
    }

    public void onNewToken(String str) {
        String str2 = token();
        logger.d("Token has been automatically %s:\n[%s] -> [%s]", TextUtils.isEmpty(str2) ? "fetched" : "refreshed", str2, str);
        this.token.get().set(str);
    }

    public String senderId() {
        return this.context.getString(R.string.universal_feature_fcm_sender_id);
    }

    public String token() {
        return this.token.get().get();
    }
}
