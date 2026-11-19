package com.sightcall.universal.screencast;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016R\u0012\u0010\u0004\u001a\u00060\u0005R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/sightcall/universal/screencast/MediaProjectionService;", "Landroid/app/Service;", "<init>", "()V", "binder", "Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;", "onBind", "Landroid/os/IBinder;", "intent", "Landroid/content/Intent;", "LocalBinder", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MediaProjectionService extends Service {
    private final LocalBinder binder = new LocalBinder();

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;", "Landroid/os/Binder;", "<init>", "(Lcom/sightcall/universal/screencast/MediaProjectionService;)V", "getService", "Lcom/sightcall/universal/screencast/MediaProjectionService;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class LocalBinder extends Binder {
        public LocalBinder() {
        }

        /* JADX INFO: renamed from: getService, reason: from getter */
        public final MediaProjectionService getThis$0() {
            return MediaProjectionService.this;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.binder;
    }
}
