package com.sightcall.universal.screencast;

import android.app.Service;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0006H&J\b\u0010\t\u001a\u00020\u0003H&¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/screencast/ScreenCastRepository;", "", "bindService", "", "onServiceReady", "Lkotlin/Function1;", "Landroid/app/Service;", "startService", "service", "unBindService", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ScreenCastRepository {
    void bindService(Function1<? super Service, Unit> onServiceReady);

    void startService(Service service);

    void unBindService();
}
