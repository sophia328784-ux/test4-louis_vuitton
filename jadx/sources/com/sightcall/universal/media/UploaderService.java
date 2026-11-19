package com.sightcall.universal.media;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.SystemClock;
import android.util.TypedValue;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.content.ContextCompat;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sightcall.pratik.extensions.PendingIntents;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.internal.ui.UniversalNotification;
import com.sightcall.universal.internal.ui.UniversalNotificationChannel;
import com.sightcall.universal.internal.util.NotificationBuilderCompat;
import com.sightcall.universal.media.mapper.PictureGroupeV3MapperKt;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.util.UiUtils;
import com.sightcall.universal.util.Utils;
import defpackage.b5;
import defpackage.f31;
import defpackage.w21;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.call.StatusEvent;

/* JADX INFO: loaded from: classes3.dex */
public class UploaderService extends Service {
    Iterator groupIterator;
    private boolean isRunning;
    private Media media;
    private Iterator<Media> mediaIterator;
    List<Metadata> metadataList;
    private ParseMediaTask parserTask;
    private final List<Media> pendingMedia = new ArrayList();
    private final List<Media> succeededMedia = new ArrayList();
    private final List<Media> failedMedia = new ArrayList();
    HashMap<String, GroupDataHolder> groupCounters = new HashMap<>();

    /* JADX INFO: renamed from: com.sightcall.universal.media.UploaderService$1, reason: invalid class name */
    public class AnonymousClass1 extends GroupClient.GroupCallback {
        public AnonymousClass1(Metadata metadata, PictureGroupV3Request pictureGroupV3Request) {
            super(metadata, pictureGroupV3Request);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGroupSuccess$0(List list) {
            UploaderService.this.createGroup();
        }

        @Override // com.sightcall.universal.media.GroupClient.GroupCallback
        public void onGroupFailure() {
            replayRequest(this);
        }

        @Override // com.sightcall.universal.media.GroupClient.GroupCallback
        public void onGroupSuccess(String str, PictureGroupV3Response pictureGroupV3Response) {
            ArrayList arrayList = new ArrayList();
            for (Metadata metadata : UploaderService.this.metadataList) {
                if (metadata.localGroup().equals(str)) {
                    metadata.setUploadToken(pictureGroupV3Response.getData().getAttributes().getUploadToken());
                    metadata.setUploadUrl(pictureGroupV3Response.getData().getAttributes().getUploadUrl());
                    arrayList.add(metadata);
                }
            }
            new OverwriteMetadataTask(UploaderService.this.getApplicationContext(), arrayList, new OverwriteMetadataTask.Callback() { // from class: com.sightcall.universal.media.b
                @Override // com.sightcall.universal.media.UploaderService.OverwriteMetadataTask.Callback
                public final void postSave(List list) {
                    this.f43329a.lambda$onGroupSuccess$0(list);
                }
            }).execute(new Void[0]);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.universal.media.UploaderService$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$scenario$Scenario$Status;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Call$Status;

        static {
            int[] iArr = new int[Call.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Call$Status = iArr;
            try {
                iArr[Call.Status.CREATING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            int[] iArr2 = new int[Scenario.Status.values().length];
            $SwitchMap$com$sightcall$universal$scenario$Scenario$Status = iArr2;
            try {
                iArr2[Scenario.Status.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public class GroupDataHolder {
        int count = 0;
        Metadata metadata;

        public GroupDataHolder(Metadata metadata) {
            this.metadata = metadata;
        }

        public int getCount() {
            return this.count;
        }

        public void increment() {
            this.count++;
        }
    }

    public static class OverwriteMetadataTask extends SaveMetadataListTask {
        private final Callback callback;

        public interface Callback {
            void postSave(List<Metadata> list);
        }

        public OverwriteMetadataTask(Context context, List<Metadata> list, Callback callback) {
            super(context, list);
            this.callback = callback;
        }

        @Override // com.sightcall.universal.media.SaveMetadataListTask, android.os.AsyncTask
        public void onPostExecute(List<Metadata> list) {
            super.onPostExecute(list);
            this.callback.postSave(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bootstrap() {
        this.isRunning = true;
        trigger();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createGroup() {
        if (!this.groupIterator.hasNext()) {
            startSending();
            return;
        }
        GroupDataHolder groupDataHolder = (GroupDataHolder) ((Map.Entry) this.groupIterator.next()).getValue();
        PictureGroupV3Request pictureGroupV3RequestCreatePictureGroupV3Request = PictureGroupeV3MapperKt.createPictureGroupV3Request(groupDataHolder.metadata, groupDataHolder.count);
        Metadata metadata = groupDataHolder.metadata;
        GroupClient.createGroup(metadata, pictureGroupV3RequestCreatePictureGroupV3Request, new AnonymousClass1(metadata, pictureGroupV3RequestCreatePictureGroupV3Request));
        this.groupIterator.remove();
    }

    private void doParse() {
        ParseMediaTask parseMediaTask = new ParseMediaTask(this, this.media);
        this.parserTask = parseMediaTask;
        parseMediaTask.execute(new Void[0]);
    }

    private static long getTotalLength(List<Media> list) {
        Iterator<Media> it = list.iterator();
        long jLengthInBytes = 0;
        while (it.hasNext()) {
            jLengthInBytes += it.next().lengthInBytes();
        }
        return jLengthInBytes;
    }

    private void interrupt(boolean z) {
        Notification.UPLOADING.cancel(this);
        this.isRunning = false;
        this.media = null;
        ParseMediaTask parseMediaTask = this.parserTask;
        if (parseMediaTask != null) {
            parseMediaTask.cancel(true);
            this.parserTask = null;
        }
        if (z) {
            stopSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onParseFail$0(Media media, Context context) {
        media.renameTo(MediaStorage.getFailureDirectory(context));
        Rtcc.instance().bus().post(new MediaUploadEvent(media, null, MediaUploadEvent.Status.FAILURE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onUploadError$1(Media media, Context context, Metadata metadata) {
        media.renameTo(MediaStorage.getFailureDirectory(context));
        Rtcc.instance().bus().post(new MediaUploadEvent(media, metadata, MediaUploadEvent.Status.FAILURE));
    }

    private void notifyCorruptedMedia(Media media) {
        Notification notification = Notification.CORRUPTED_UPLOAD;
        NotificationCompat$Builder notificationCompat$BuilderBuilder = notification.builder(this);
        String name = media.image().getName();
        notificationCompat$BuilderBuilder.getClass();
        notificationCompat$BuilderBuilder.f11911f = NotificationCompat$Builder.e(name);
        notification.notify(this, media.image().getName(), notificationCompat$BuilderBuilder.c());
    }

    private void notifyFailedUploads() {
        if (this.failedMedia.isEmpty()) {
            return;
        }
        Notification notification = Notification.FAILED_UPLOADS;
        NotificationCompat$Builder notificationCompat$BuilderBuilder = notification.builder(this);
        NotificationBuilderCompat.setContentInfo(notificationCompat$BuilderBuilder, this.failedMedia.size() + " • " + Utils.bytes2size(getTotalLength(this.failedMedia)));
        notification.notify(this, notificationCompat$BuilderBuilder.c());
    }

    private void notifyPendingMedia(Media media) {
        File fileImage = media.image();
        int iRound = Math.round(TypedValue.applyDimension(1, 64.0f, getResources().getDisplayMetrics()));
        Notification notification = Notification.UPLOADING;
        NotificationCompat$Builder notificationCompat$BuilderBuilder = notification.builder(this);
        notificationCompat$BuilderBuilder.h(UiUtils.extractThumbnail(fileImage, iRound, iRound));
        notificationCompat$BuilderBuilder.f11911f = NotificationCompat$Builder.e(fileImage.getName() + " • " + Utils.bytes2size(fileImage.length()));
        NotificationBuilderCompat.setContentInfo(notificationCompat$BuilderBuilder, (this.pendingMedia.indexOf(media) + 1) + "/" + this.pendingMedia.size());
        notification.notify(this, notificationCompat$BuilderBuilder.c());
    }

    private void notifySucceededUploads() {
        if (this.succeededMedia.isEmpty()) {
            return;
        }
        Notification notification = Notification.SUCCEEDED_UPLOADS;
        NotificationCompat$Builder notificationCompat$BuilderBuilder = notification.builder(this);
        NotificationBuilderCompat.setContentInfo(notificationCompat$BuilderBuilder, this.succeededMedia.size() + " • " + Utils.bytes2size(getTotalLength(this.succeededMedia)));
        notification.notify(this, notificationCompat$BuilderBuilder.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static PendingIntent retryPendingIntent(Context context, int i2) {
        Context applicationContext = context.getApplicationContext();
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) UploaderService.class);
        PushAutoTrackHelper.hookIntentGetService(applicationContext, i2, intent, 134217728);
        PendingIntent service = PendingIntent.getService(applicationContext, i2, intent, 134217728);
        PushAutoTrackHelper.hookPendingIntentGetService(service, applicationContext, i2, intent, 134217728);
        return service;
    }

    public static void setupAlarm(Context context) {
        ((AlarmManager) context.getSystemService("alarm")).set(2, SystemClock.elapsedRealtime() + 60000, PendingIntents.getCompatPendingIntentBroadcast(context, 0, new Intent(context, (Class<?>) UploadReceiver.class), 0));
    }

    public static void start(Context context) {
        Intent intent = new Intent(context, (Class<?>) UploaderService.class);
        if (SdkUtilsKt.isAtLeastSdk26()) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    private void startSending() {
        this.pendingMedia.addAll(Universal.media().uploads());
        this.mediaIterator = this.pendingMedia.iterator();
        Universal.uiHandler().post(new f31(this, 4));
    }

    public static void stop(Context context) {
        context.stopService(new Intent(context, (Class<?>) UploaderService.class));
    }

    private synchronized void trigger() {
        if (this.isRunning && this.media == null) {
            if (!this.mediaIterator.hasNext()) {
                notifySucceededUploads();
                notifyFailedUploads();
                interrupt(true);
            } else {
                Media next = this.mediaIterator.next();
                this.media = next;
                notifyPendingMedia(next);
                doParse();
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    @Event
    public void onCallStatusEvent(StatusEvent statusEvent) {
        if (AnonymousClass2.$SwitchMap$net$rtccloud$sdk$Call$Status[statusEvent.status().ordinal()] != 1) {
            return;
        }
        interrupt(true);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Universal.register(this);
        UniversalNotificationChannel.MEDIA_UPLOADER.create(this);
        Notification notification = Notification.UPLOADING;
        startForeground(notification.id(), notification.builder(this).c());
        Notification.NO_CONNECTIVITY.cancel(this);
        Notification.FAILED_UPLOADS.cancel(this);
        Notification.SUCCEEDED_UPLOADS.cancel(this);
        new ParseMetadataTask(this, Universal.media().uploads()).execute(new Void[0]);
    }

    @Override // android.app.Service
    public void onDestroy() {
        Universal.unregister(this);
        interrupt(false);
        super.onDestroy();
    }

    public void onParseCancel(Media media, ParseMediaTask.Result result) {
        if (this.media != media) {
            return;
        }
        this.parserTask = null;
        Rtcc.instance().bus().post(new MediaUploadEvent(media, result != null ? result.metadata : null, MediaUploadEvent.Status.CANCELLED));
    }

    public void onParseFail(Media media) {
        if (this.media != media) {
            return;
        }
        notifyCorruptedMedia(media);
        this.mediaIterator.remove();
        this.parserTask = null;
        this.media = null;
        AsyncTask.execute(new w21(media, getApplicationContext(), 9));
        trigger();
    }

    public void onParseMetadataCancel(List<Metadata> list) {
        Logger.INSTANCE.e("onParseMetadataCancel " + list);
    }

    public void onParseMetadataFail() {
        Logger.INSTANCE.e("onParseMetadataFail");
    }

    public void onParseMetadataSuccess(List<Metadata> list) {
        this.metadataList = list;
        String string = UUID.randomUUID().toString();
        for (Metadata metadata : list) {
            if (metadata.localGroup == null) {
                metadata.localGroup = string;
            }
            if (metadata.cloudGroup() == null) {
                if (this.groupCounters.get(metadata.localGroup()) == null) {
                    this.groupCounters.put(metadata.localGroup(), new GroupDataHolder(metadata));
                }
                this.groupCounters.get(metadata.localGroup()).increment();
            }
        }
        this.groupIterator = this.groupCounters.entrySet().iterator();
        createGroup();
    }

    public void onParseSuccess(Media media, ParseMediaTask.Result result) {
        if (this.media != media) {
            return;
        }
        this.parserTask = null;
        Rtcc.instance().bus().post(new MediaUploadEvent(media, result.metadata, MediaUploadEvent.Status.UPLOADING));
        Metadata metadata = result.metadata;
        Media media2 = this.media;
        UploaderClient.upload(metadata, media2, new UploaderClient.UploaderCallback(this, media2, metadata));
    }

    @Event
    public void onScenarioStatusEvent(Scenario.StatusEvent statusEvent) {
        if (AnonymousClass2.$SwitchMap$com$sightcall$universal$scenario$Scenario$Status[statusEvent.status().ordinal()] != 1) {
            return;
        }
        interrupt(true);
    }

    public void onUploadError(Media media, Metadata metadata) {
        AsyncTask.execute(new b5(media, getApplicationContext(), metadata, 20));
    }

    public void onUploadFailure(Media media, Metadata metadata) {
        Media media2 = this.media;
        if (media2 != media) {
            return;
        }
        this.failedMedia.add(media2);
        this.media = null;
        Rtcc.instance().bus().post(new MediaUploadEvent(media, metadata, MediaUploadEvent.Status.RESCHEDULED));
        trigger();
    }

    public void onUploadSuccess(Media media, Metadata metadata) {
        Media media2 = this.media;
        if (media2 != media) {
            return;
        }
        this.succeededMedia.add(media2);
        this.media = null;
        Rtcc.instance().bus().post(new MediaUploadEvent(media, metadata, MediaUploadEvent.Status.SUCCESS));
        trigger();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class Notification {
        private final int id;
        public static final Notification UPLOADING = new AnonymousClass1(R.id.universal_media_uploader_uploading_notification_id);
        public static final Notification CORRUPTED_UPLOAD = new AnonymousClass2(R.id.universal_media_uploader_corrupted_notification_id);
        public static final Notification SUCCEEDED_UPLOADS = new AnonymousClass3(R.id.universal_media_uploader_success_notification_id);
        public static final Notification FAILED_UPLOADS = new AnonymousClass4(R.id.universal_media_uploader_fail_notification_id);
        public static final Notification NO_CONNECTIVITY = new AnonymousClass5(R.id.universal_media_uploader_no_connectivity_notification_id);
        private static final /* synthetic */ Notification[] $VALUES = $values();

        private static /* synthetic */ Notification[] $values() {
            return new Notification[]{UPLOADING, CORRUPTED_UPLOAD, SUCCEEDED_UPLOADS, FAILED_UPLOADS, NO_CONNECTIVITY};
        }

        private Notification(String str, int i2, int i3) {
            super(str, i2);
            this.id = i3;
        }

        private static NotificationManager getNotificationManager(Context context) {
            return (NotificationManager) context.getSystemService("notification");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static NotificationCompat$Builder root(UploaderService uploaderService) {
            NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(uploaderService, UniversalNotificationChannel.MEDIA_UPLOADER.id(uploaderService));
            notificationCompat$Builder.m = 0;
            notificationCompat$Builder.D = ContextCompat.getColor(uploaderService, com.sightcall.graphik.R.color.universal_colorNotification);
            notificationCompat$Builder.h(UniversalNotification.getLargeIcon(uploaderService));
            notificationCompat$Builder.g(16, true);
            notificationCompat$Builder.y = true;
            return notificationCompat$Builder;
        }

        public static Notification valueOf(String str) {
            return (Notification) Enum.valueOf(Notification.class, str);
        }

        public static Notification[] values() {
            return (Notification[]) $VALUES.clone();
        }

        public abstract NotificationCompat$Builder builder(UploaderService uploaderService);

        public void cancel(UploaderService uploaderService) {
            getNotificationManager(uploaderService).cancel(id());
        }

        public int id() {
            return this.id;
        }

        public void notify(UploaderService uploaderService, android.app.Notification notification) {
            NotificationManager notificationManager = getNotificationManager(uploaderService);
            int iId = id();
            notificationManager.notify(iId, notification);
            PushAutoTrackHelper.onNotify(notificationManager, iId, notification);
        }

        /* JADX INFO: renamed from: com.sightcall.universal.media.UploaderService$Notification$1, reason: invalid class name */
        public final enum AnonymousClass1 extends Notification {
            private NotificationCompat$Builder builder;

            public /* synthetic */ AnonymousClass1(int i2) {
                this("UPLOADING", 0, i2);
            }

            @Override // com.sightcall.universal.media.UploaderService.Notification
            public NotificationCompat$Builder builder(UploaderService uploaderService) {
                NotificationCompat$Builder notificationCompat$Builder = this.builder;
                if (notificationCompat$Builder != null) {
                    return notificationCompat$Builder;
                }
                NotificationCompat$Builder notificationCompat$BuilderRoot = Notification.root(uploaderService);
                notificationCompat$BuilderRoot.B = "progress";
                notificationCompat$BuilderRoot.m = 1;
                notificationCompat$BuilderRoot.f11910e = NotificationCompat$Builder.e(uploaderService.getText(R.string.universal_media_uploader_notification_uploading_title));
                notificationCompat$BuilderRoot.s = 0;
                notificationCompat$BuilderRoot.t = 0;
                notificationCompat$BuilderRoot.u = true;
                notificationCompat$BuilderRoot.Q.icon = android.R.drawable.stat_sys_upload;
                notificationCompat$BuilderRoot.g(2, true);
                notificationCompat$BuilderRoot.g(16, false);
                notificationCompat$BuilderRoot.g(8, true);
                this.builder = notificationCompat$BuilderRoot;
                return notificationCompat$BuilderRoot;
            }

            @Override // com.sightcall.universal.media.UploaderService.Notification
            public void cancel(UploaderService uploaderService) {
                uploaderService.stopForeground(true);
            }

            private AnonymousClass1(String str, int i2, int i3) {
                super(str, i2, i3, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.media.UploaderService$Notification$2, reason: invalid class name */
        public final enum AnonymousClass2 extends Notification {
            public /* synthetic */ AnonymousClass2(int i2) {
                this("CORRUPTED_UPLOAD", 1, i2);
            }

            @Override // com.sightcall.universal.media.UploaderService.Notification
            public NotificationCompat$Builder builder(UploaderService uploaderService) {
                NotificationCompat$Builder notificationCompat$BuilderRoot = Notification.root(uploaderService);
                notificationCompat$BuilderRoot.B = "err";
                notificationCompat$BuilderRoot.f11910e = NotificationCompat$Builder.e(uploaderService.getText(R.string.universal_media_uploader_notification_corrupted_title));
                notificationCompat$BuilderRoot.Q.icon = R.drawable.universal_ic_warning_white_24dp;
                return notificationCompat$BuilderRoot;
            }

            private AnonymousClass2(String str, int i2, int i3) {
                super(str, i2, i3, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.media.UploaderService$Notification$3, reason: invalid class name */
        public final enum AnonymousClass3 extends Notification {
            public /* synthetic */ AnonymousClass3(int i2) {
                this("SUCCEEDED_UPLOADS", 2, i2);
            }

            @Override // com.sightcall.universal.media.UploaderService.Notification
            public NotificationCompat$Builder builder(UploaderService uploaderService) {
                NotificationCompat$Builder notificationCompat$BuilderRoot = Notification.root(uploaderService);
                notificationCompat$BuilderRoot.B = "status";
                notificationCompat$BuilderRoot.Q.icon = R.drawable.universal_ic_cloud_done_white_24dp;
                notificationCompat$BuilderRoot.f11910e = NotificationCompat$Builder.e(uploaderService.getText(R.string.universal_media_uploader_notification_succeeded_title));
                return notificationCompat$BuilderRoot;
            }

            @Override // com.sightcall.universal.media.UploaderService.Notification
            public void notify(UploaderService uploaderService, android.app.Notification notification) {
                super.notify(uploaderService, UUID.randomUUID().toString(), notification);
            }

            private AnonymousClass3(String str, int i2, int i3) {
                super(str, i2, i3, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.media.UploaderService$Notification$4, reason: invalid class name */
        public final enum AnonymousClass4 extends Notification {
            public /* synthetic */ AnonymousClass4(int i2) {
                this("FAILED_UPLOADS", 3, i2);
            }

            @Override // com.sightcall.universal.media.UploaderService.Notification
            public NotificationCompat$Builder builder(UploaderService uploaderService) {
                NotificationCompat$Builder notificationCompat$BuilderRoot = Notification.root(uploaderService);
                notificationCompat$BuilderRoot.B = "err";
                notificationCompat$BuilderRoot.Q.icon = R.drawable.universal_ic_warning_white_24dp;
                notificationCompat$BuilderRoot.f11910e = NotificationCompat$Builder.e(uploaderService.getText(R.string.universal_media_uploader_notification_failed_title));
                notificationCompat$BuilderRoot.f11911f = NotificationCompat$Builder.e(uploaderService.getText(R.string.universal_media_uploader_notification_failed_text));
                notificationCompat$BuilderRoot.f11912h = UploaderService.retryPendingIntent(uploaderService, id());
                return notificationCompat$BuilderRoot;
            }

            @Override // com.sightcall.universal.media.UploaderService.Notification
            public void notify(UploaderService uploaderService, android.app.Notification notification) {
                super.notify(uploaderService, UUID.randomUUID().toString(), notification);
            }

            private AnonymousClass4(String str, int i2, int i3) {
                super(str, i2, i3, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.media.UploaderService$Notification$5, reason: invalid class name */
        public final enum AnonymousClass5 extends Notification {
            public /* synthetic */ AnonymousClass5(int i2) {
                this("NO_CONNECTIVITY", 4, i2);
            }

            @Override // com.sightcall.universal.media.UploaderService.Notification
            public NotificationCompat$Builder builder(UploaderService uploaderService) {
                NotificationCompat$Builder notificationCompat$BuilderRoot = Notification.root(uploaderService);
                notificationCompat$BuilderRoot.B = "err";
                notificationCompat$BuilderRoot.Q.icon = R.drawable.universal_ic_cloud_off_white_24dp;
                notificationCompat$BuilderRoot.f11910e = NotificationCompat$Builder.e(uploaderService.getText(R.string.universal_media_uploader_notification_network_title));
                notificationCompat$BuilderRoot.f11911f = NotificationCompat$Builder.e(uploaderService.getText(R.string.universal_media_uploader_notification_network_text));
                notificationCompat$BuilderRoot.f11912h = UploaderService.retryPendingIntent(uploaderService, id());
                return notificationCompat$BuilderRoot;
            }

            private AnonymousClass5(String str, int i2, int i3) {
                super(str, i2, i3, 0);
            }
        }

        public /* synthetic */ Notification(String str, int i2, int i3, int i4) {
            this(str, i2, i3);
        }

        public void cancel(UploaderService uploaderService, String str) {
            getNotificationManager(uploaderService).cancel(str, id());
        }

        public void notify(UploaderService uploaderService, String str, android.app.Notification notification) {
            NotificationManager notificationManager = getNotificationManager(uploaderService);
            int iId = id();
            notificationManager.notify(str, iId, notification);
            PushAutoTrackHelper.onNotify(notificationManager, str, iId, notification);
        }
    }
}
