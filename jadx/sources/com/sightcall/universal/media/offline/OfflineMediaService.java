package com.sightcall.universal.media.offline;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import androidx.core.app.NotificationCompat$Builder;
import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.pratik.extensions.PendingIntents;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.api.Apis;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.internal.ui.UniversalNotificationChannel;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import net.rtccloud.sdk.Rtcc;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$asRequestBody$1;
import okhttp3.ResponseBody;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
public class OfflineMediaService extends Service {
    private static final String EXTRA_OBJECT_ID = "string_object_id";
    private static final String EXTRA_REFERENCE = "string_reference";
    private static final String EXTRA_SERVICE_CANCEL = "service_is_cancelled";
    private static final String EXTRA_SERVICE_PAUSED = "service_is_paused";
    private static final String EXTRA_SERVICE_RESUME = "service_is_resumed";
    private static final String EXTRA_URI_LIST = "string_uri_list";
    private static final String EXTRA_USECASE = "string_usecase";
    MultipartBody.Part bodyFile;
    MultipartBody.Part bodyName;
    private Call<ResponseBody> call;
    private int fileNumber;
    private Handler handler;
    private String id;
    private Iterator<Uri> iterator;
    private String objectId;
    private String reference;
    private List<Uri> uriList;
    private String url;
    private String usecase;
    private final IBinder binder = new OfflineMediaBinder();
    private boolean isPaused = false;
    private final Callback<ResponseBody> uploadCallback = new Callback<ResponseBody>() { // from class: com.sightcall.universal.media.offline.OfflineMediaService.1
        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseBody> call, Throwable th) {
            OfflineMediaService.this.handler.postDelayed(new Runnable() { // from class: com.sightcall.universal.media.offline.OfflineMediaService.1.2
                @Override // java.lang.Runnable
                public void run() {
                    OfflineMediaService.this.sendFile();
                }
            }, new Random().nextInt(10000) + 1);
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
            if (response.f79449a.r) {
                OfflineMediaService.this.prepareNextFile();
            } else {
                OfflineMediaService.this.handler.postDelayed(new Runnable() { // from class: com.sightcall.universal.media.offline.OfflineMediaService.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        OfflineMediaService.this.sendFile();
                    }
                }, new Random().nextInt(10000) + 1);
            }
        }
    };

    public class OfflineMediaBinder extends Binder {
        public OfflineMediaBinder() {
        }

        public OfflineMediaService getService() {
            return OfflineMediaService.this;
        }
    }

    public static class OfflineNotificationActionReceiver extends BroadcastReceiver {
        public static final String OFFLINE_UPLOAD_CANCEL = "OFFLINE_UPLOAD_CANCEL";
        public static final String OFFLINE_UPLOAD_PAUSE = "OFFLINE_UPLOAD_PAUSE";
        public static final String OFFLINE_UPLOAD_RESUME = "OFFLINE_UPLOAD_RESUME";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            intent.getAction();
            if (intent.getAction() != null) {
                String action = intent.getAction();
                action.getClass();
                switch (action) {
                    case "OFFLINE_UPLOAD_PAUSE":
                        OfflineMediaService.pauseServiceUpload(context);
                        break;
                    case "OFFLINE_UPLOAD_CANCEL":
                        OfflineMediaService.cancelServiceUpload(context);
                        break;
                    case "OFFLINE_UPLOAD_RESUME":
                        OfflineMediaService.resumeServiceUpload(context);
                        break;
                }
            }
        }
    }

    public class Request {
        MultipartBody.Part file;
        MultipartBody.Part name;

        private Request() {
        }
    }

    public static void cancelServiceUpload(Context context) {
        Intent intent = new Intent(context, (Class<?>) OfflineMediaService.class);
        intent.putExtra(EXTRA_SERVICE_CANCEL, true);
        if (SdkUtilsKt.isAtLeastSdk26()) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    private void cancelUpload() {
        this.call.cancel();
        terminateService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createOfflineMediaSession() {
        Agent agent = Universal.agent().get();
        if (agent == null) {
            return;
        }
        get(agent.environment()).createOfflineMediaSession("Token " + Universal.agent().get().token(), new OfflineMediaSession.Request(this.uriList.size(), this.usecase, this.reference, this.objectId)).p(new Callback<ResponseBody>() { // from class: com.sightcall.universal.media.offline.OfflineMediaService.2
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseBody> call, Throwable th) {
                OfflineMediaService.this.handler.postDelayed(new Runnable() { // from class: com.sightcall.universal.media.offline.OfflineMediaService.2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        OfflineMediaService.this.createOfflineMediaSession();
                    }
                }, new Random().nextInt(10000) + 1);
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                okhttp3.Response response2 = response.f79449a;
                Object obj = response.f79450b;
                if (!response2.r || obj == null) {
                    OfflineMediaService.this.handler.postDelayed(new Runnable() { // from class: com.sightcall.universal.media.offline.OfflineMediaService.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            OfflineMediaService.this.createOfflineMediaSession();
                        }
                    }, new Random().nextInt(10000) + 1);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(((ResponseBody) obj).string());
                    OfflineMediaService.this.id = jSONObject.getJSONObject(DbParams.KEY_DATA).getString(b.a.f24015b);
                    OfflineMediaService.this.url = jSONObject.getJSONObject(DbParams.KEY_DATA).getJSONObject(l.f24145h).getString("uploadUrl");
                    OfflineMediaService offlineMediaService = OfflineMediaService.this;
                    offlineMediaService.iterator = offlineMediaService.uriList.iterator();
                    OfflineMediaService.this.fileNumber = 0;
                    OfflineMediaService.this.prepareNextFile();
                } catch (IOException e2) {
                    Universal.logger().e(e2);
                } catch (JSONException e3) {
                    Universal.logger().e(e3);
                }
            }
        });
    }

    private void fireNotification(Context context, Notification notification) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager != null) {
            int iId = UniversalNotificationChannel.OFFLINE_MEDIA_UPLOADER.id();
            notificationManager.notify(iId, notification);
            PushAutoTrackHelper.onNotify(notificationManager, iId, notification);
        }
    }

    private static OfflineMediaApi get(Environment environment) {
        return (OfflineMediaApi) Apis.get(OfflineMediaApi.class, environment);
    }

    private static List<Uri> parseStringToUri(List<String> list) {
        LinkedList linkedList = new LinkedList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            linkedList.add(Uri.parse(it.next()));
        }
        return linkedList;
    }

    private static ArrayList<String> parseUriToString(List<Uri> list) {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Uri> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toString());
        }
        return arrayList;
    }

    public static void pauseServiceUpload(Context context) {
        Intent intent = new Intent(context, (Class<?>) OfflineMediaService.class);
        intent.putExtra(EXTRA_SERVICE_PAUSED, true);
        if (SdkUtilsKt.isAtLeastSdk26()) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    private void pauseUpload() {
        this.isPaused = true;
        fireNotification(this, setupPausingNotification(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareNextFile() {
        MediaType mediaTypeA;
        if (!this.iterator.hasNext()) {
            terminateService();
            return;
        }
        this.fileNumber++;
        fireNotification(this, setupNotification(this));
        Rtcc.instance().bus().post(new OfflineMediaEvent(true, this.uriList.size(), this.fileNumber));
        File file = FileUtils.getFile(this, this.iterator.next());
        String mimeType = FileUtils.getMimeType(file);
        MediaType.f76933e.getClass();
        mimeType.getClass();
        try {
            mediaTypeA = MediaType.Companion.a(mimeType);
        } catch (IllegalArgumentException unused) {
            mediaTypeA = null;
        }
        RequestBody.Companion companion = RequestBody.f76978a;
        companion.getClass();
        file.getClass();
        RequestBody$Companion$asRequestBody$1 requestBody$Companion$asRequestBody$1 = new RequestBody$Companion$asRequestBody$1(mediaTypeA, file);
        String string = Integer.toString(this.fileNumber);
        MultipartBody.Part.f76948c.getClass();
        string.getClass();
        companion.getClass();
        this.bodyName = MultipartBody.Part.Companion.b("name", null, RequestBody.Companion.b(string, null));
        this.bodyFile = MultipartBody.Part.Companion.b("file", file.getName(), requestBody$Companion$asRequestBody$1);
        sendFile();
    }

    public static void resumeServiceUpload(Context context) {
        Intent intent = new Intent(context, (Class<?>) OfflineMediaService.class);
        intent.putExtra(EXTRA_SERVICE_RESUME, true);
        if (SdkUtilsKt.isAtLeastSdk26()) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    private void resumeUpload() {
        this.isPaused = false;
        sendFile();
        fireNotification(this, setupNotification(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFile() {
        if (this.isPaused) {
            fireNotification(this, setupPausedNotification(this));
            return;
        }
        Agent agent = Universal.agent().get();
        if (agent == null) {
            terminateService();
            return;
        }
        Call<ResponseBody> callUploadFile = get(agent.environment()).uploadFile(this.url, "Bearer " + this.id, this.bodyName, this.bodyFile);
        this.call = callUploadFile;
        callUploadFile.p(this.uploadCallback);
    }

    private Notification setupNotification(Context context) {
        String str;
        Intent intent = new Intent(this, (Class<?>) OfflineNotificationActionReceiver.class);
        intent.setAction(OfflineNotificationActionReceiver.OFFLINE_UPLOAD_PAUSE);
        PendingIntent compatPendingIntentBroadcast = PendingIntents.getCompatPendingIntentBroadcast(this, 0, intent, 0);
        Intent intent2 = new Intent(this, (Class<?>) OfflineNotificationActionReceiver.class);
        intent2.setAction(OfflineNotificationActionReceiver.OFFLINE_UPLOAD_CANCEL);
        PendingIntent compatPendingIntentBroadcast2 = PendingIntents.getCompatPendingIntentBroadcast(this, 0, intent2, 0);
        if (this.uriList != null) {
            str = ((Object) context.getText(R.string.universal_offline_media_uploader_notification_uploading_title)) + " " + this.fileNumber + "/" + this.uriList.size();
        } else {
            str = "" + ((Object) context.getText(R.string.universal_offline_media_uploader_notification_uploading_title));
        }
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, UniversalNotificationChannel.OFFLINE_MEDIA_UPLOADER.id(context));
        notificationCompat$Builder.m = -1;
        notificationCompat$Builder.B = "progress";
        notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(str);
        notificationCompat$Builder.Q.icon = android.R.drawable.stat_sys_upload;
        notificationCompat$Builder.g(2, true);
        notificationCompat$Builder.g(8, true);
        notificationCompat$Builder.a(R.drawable.universal_baseline_pause_24, compatPendingIntentBroadcast, getString(R.string.universal_offline_media_pause_action));
        notificationCompat$Builder.a(android.R.drawable.ic_menu_close_clear_cancel, compatPendingIntentBroadcast2, getString(R.string.universal_offline_media_cancel_action));
        return notificationCompat$Builder.c();
    }

    private Notification setupPausedNotification(Context context) {
        Intent intent = new Intent(this, (Class<?>) OfflineNotificationActionReceiver.class);
        intent.setAction(OfflineNotificationActionReceiver.OFFLINE_UPLOAD_RESUME);
        PendingIntent compatPendingIntentBroadcast = PendingIntents.getCompatPendingIntentBroadcast(this, 0, intent, 0);
        Intent intent2 = new Intent(this, (Class<?>) OfflineNotificationActionReceiver.class);
        intent2.setAction(OfflineNotificationActionReceiver.OFFLINE_UPLOAD_CANCEL);
        PendingIntent compatPendingIntentBroadcast2 = PendingIntents.getCompatPendingIntentBroadcast(this, 0, intent2, 0);
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, UniversalNotificationChannel.OFFLINE_MEDIA_UPLOADER.id(context));
        notificationCompat$Builder.m = -1;
        notificationCompat$Builder.B = "progress";
        notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(context.getText(R.string.universal_offline_media_uploader_notification_paused_title));
        notificationCompat$Builder.Q.icon = android.R.drawable.ic_media_pause;
        notificationCompat$Builder.g(2, false);
        notificationCompat$Builder.g(8, true);
        notificationCompat$Builder.a(R.drawable.universal_baseline_pause_24, compatPendingIntentBroadcast, getString(R.string.universal_offline_media_resume_action));
        notificationCompat$Builder.a(android.R.drawable.ic_menu_close_clear_cancel, compatPendingIntentBroadcast2, getString(R.string.universal_offline_media_cancel_action));
        return notificationCompat$Builder.c();
    }

    private Notification setupPausingNotification(Context context) {
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, UniversalNotificationChannel.OFFLINE_MEDIA_UPLOADER.id(context));
        notificationCompat$Builder.m = -1;
        notificationCompat$Builder.B = "progress";
        notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(context.getText(R.string.universal_offline_media_uploader_notification_pausing_title));
        notificationCompat$Builder.Q.icon = android.R.drawable.ic_media_pause;
        notificationCompat$Builder.g(2, true);
        notificationCompat$Builder.g(8, true);
        return notificationCompat$Builder.c();
    }

    public static void start(Context context, String str, String str2, String str3, List<Uri> list) {
        Intent intent = new Intent(context, (Class<?>) OfflineMediaService.class);
        intent.putExtra(EXTRA_USECASE, str);
        intent.putExtra(EXTRA_REFERENCE, str2);
        intent.putExtra(EXTRA_OBJECT_ID, str3);
        intent.putStringArrayListExtra(EXTRA_URI_LIST, parseUriToString(list));
        if (SdkUtilsKt.isAtLeastSdk26()) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    private void terminateService() {
        Rtcc.instance().bus().post(new OfflineMediaEvent(false, this.uriList.size(), this.fileNumber));
        this.handler.removeCallbacksAndMessages(null);
        stopForeground(true);
        stopSelf();
    }

    public int getNumberOfFiles() {
        return this.uriList.size();
    }

    public int getProgress() {
        return this.fileNumber;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        super.onRebind(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        PushAutoTrackHelper.onServiceStartCommand(this, intent, i2, i3);
        super.onStartCommand(intent, i2, i3);
        boolean booleanExtra = intent.getBooleanExtra(EXTRA_SERVICE_PAUSED, false);
        boolean booleanExtra2 = intent.getBooleanExtra(EXTRA_SERVICE_RESUME, false);
        boolean booleanExtra3 = intent.getBooleanExtra(EXTRA_SERVICE_CANCEL, false);
        if (booleanExtra) {
            pauseUpload();
            return 1;
        }
        if (booleanExtra2) {
            resumeUpload();
            return 1;
        }
        if (booleanExtra3) {
            terminateService();
            return 1;
        }
        UniversalNotificationChannel universalNotificationChannel = UniversalNotificationChannel.OFFLINE_MEDIA_UPLOADER;
        universalNotificationChannel.create(this);
        Notification notification = setupNotification(this);
        fireNotification(this, notification);
        startForeground(universalNotificationChannel.id(), notification);
        this.handler = new Handler();
        this.usecase = intent.getStringExtra(EXTRA_USECASE);
        this.reference = intent.getStringExtra(EXTRA_REFERENCE);
        this.objectId = intent.getStringExtra(EXTRA_OBJECT_ID);
        this.uriList = parseStringToUri(intent.getStringArrayListExtra(EXTRA_URI_LIST));
        createOfflineMediaSession();
        return 1;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return true;
    }
}
