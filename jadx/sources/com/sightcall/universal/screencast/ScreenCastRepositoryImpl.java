package com.sightcall.universal.screencast;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.core.app.NotificationCompat$Builder;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.R;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\u0012\u001a\u00020\t2\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007H\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\bH\u0016J\b\u0010\u0015\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;", "Lcom/sightcall/universal/screencast/ScreenCastRepository;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "onServiceReady", "Lkotlin/Function1;", "Landroid/app/Service;", "", "connectionService", "Landroid/content/ServiceConnection;", "isServiceBound", "", "notificationManager", "Landroid/app/NotificationManager;", "serviceInstance", "Lcom/sightcall/universal/screencast/MediaProjectionService;", "bindService", "startService", "service", "unBindService", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ScreenCastRepositoryImpl implements ScreenCastRepository {
    private static final String NOTIFICATION_CHANNEL_ID = "9999";
    private static final String NOTIFICATION_CHANNEL_NAME = "Screen Cast";
    private ServiceConnection connectionService;
    private final Context context;
    private boolean isServiceBound;
    private NotificationManager notificationManager;
    private Function1<? super Service, Unit> onServiceReady;
    private MediaProjectionService serviceInstance;

    @Inject
    public ScreenCastRepositoryImpl(Context context) {
        context.getClass();
        this.context = context;
    }

    @Override // com.sightcall.universal.screencast.ScreenCastRepository
    public void bindService(final Function1<? super Service, Unit> onServiceReady) {
        onServiceReady.getClass();
        if (this.isServiceBound) {
            unBindService();
        }
        this.connectionService = new ServiceConnection() { // from class: com.sightcall.universal.screencast.ScreenCastRepositoryImpl.bindService.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name, IBinder service) {
                ScreenCastRepositoryImpl screenCastRepositoryImpl = ScreenCastRepositoryImpl.this;
                service.getClass();
                MediaProjectionService.LocalBinder localBinder = (MediaProjectionService.LocalBinder) service;
                screenCastRepositoryImpl.serviceInstance = localBinder.getThis$0();
                onServiceReady.invoke(localBinder.getThis$0());
                ScreenCastRepositoryImpl.this.isServiceBound = true;
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name) {
                Logger.INSTANCE.getTag();
                ScreenCastRepositoryImpl.this.isServiceBound = false;
                ScreenCastRepositoryImpl.this.connectionService = null;
            }
        };
        Intent intent = new Intent(this.context, (Class<?>) MediaProjectionService.class);
        Context context = this.context;
        ServiceConnection serviceConnection = this.connectionService;
        serviceConnection.getClass();
        if (context.bindService(intent, serviceConnection, 1)) {
            this.onServiceReady = onServiceReady;
        } else {
            this.isServiceBound = false;
            this.connectionService = null;
        }
    }

    @Override // com.sightcall.universal.screencast.ScreenCastRepository
    public void startService(Service service) {
        service.getClass();
        NotificationChannel notificationChannel = new NotificationChannel(NOTIFICATION_CHANNEL_ID, NOTIFICATION_CHANNEL_NAME, 3);
        Object systemService = this.context.getSystemService("notification");
        systemService.getClass();
        NotificationManager notificationManager = (NotificationManager) systemService;
        this.notificationManager = notificationManager;
        notificationManager.createNotificationChannel(notificationChannel);
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(this.context, NOTIFICATION_CHANNEL_ID);
        notificationCompat$Builder.E = 1;
        notificationCompat$Builder.Q.icon = R.drawable.universal_ic_call_status_screencast_0;
        notificationCompat$Builder.g(16, true);
        notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(NOTIFICATION_CHANNEL_NAME);
        Notification notificationC = notificationCompat$Builder.c();
        notificationC.getClass();
        if (SdkUtilsKt.isAtLeastSdk29()) {
            service.startForeground(Integer.parseInt(NOTIFICATION_CHANNEL_ID), notificationC, 32);
        } else {
            service.startForegroundService(new Intent(this.context, (Class<?>) MediaProjectionService.class));
        }
    }

    @Override // com.sightcall.universal.screencast.ScreenCastRepository
    public void unBindService() {
        ServiceConnection serviceConnection;
        MediaProjectionService mediaProjectionService = this.serviceInstance;
        if (mediaProjectionService != null) {
            mediaProjectionService.stopForeground(1);
        }
        if (this.isServiceBound && (serviceConnection = this.connectionService) != null) {
            this.context.unbindService(serviceConnection);
            this.isServiceBound = false;
            this.connectionService = null;
        }
        NotificationManager notificationManager = this.notificationManager;
        if (notificationManager != null) {
            notificationManager.cancel(Integer.parseInt(NOTIFICATION_CHANNEL_ID));
        }
    }
}
