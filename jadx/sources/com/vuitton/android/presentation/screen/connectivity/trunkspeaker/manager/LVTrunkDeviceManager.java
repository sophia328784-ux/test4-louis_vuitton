package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager;

import android.app.Application;
import com.linkplay.core.app.LPDeviceManagerObserver;
import com.linkplay.core.app.LPDeviceManagerParam;
import com.linkplay.core.clingx.InitUpnpListener;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.core.events.LVEventSender;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.GlobalScope;

/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\tB\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;", "Lcom/linkplay/core/app/LPDeviceManagerObserver;", "Lcom/linkplay/core/clingx/InitUpnpListener;", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Landroid/app/Application;", "application", "<init>", "(Lcom/vuitton/android/core/events/LVEventSender;Landroid/app/Application;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVTrunkDeviceManager implements LPDeviceManagerObserver, InitUpnpListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LVEventSender f56559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Application f56560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LPDeviceManagerParam f56561c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager$Companion;", "", "", "REGISTER_MAINTAIN_MAX_AGE_SECONDS", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public LVTrunkDeviceManager(LVEventSender lVEventSender, Application application) {
        lVEventSender.getClass();
        application.getClass();
        this.f56559a = lVEventSender;
        this.f56560b = application;
    }

    @Override // com.linkplay.core.app.LPDeviceManagerObserver
    public final void LPDeviceOffline(LPDevice lPDevice) {
        lPDevice.getClass();
        a();
    }

    @Override // com.linkplay.core.app.LPDeviceManagerObserver
    public final void LPDeviceOnline(LPDevice lPDevice) {
        lPDevice.getClass();
        a();
    }

    @Override // com.linkplay.core.app.LPDeviceManagerObserver
    public final void LPDeviceUpdate(LPDevice lPDevice) {
        lPDevice.getClass();
        a();
    }

    public final void a() {
        BuildersKt.c(GlobalScope.f74669b, null, null, new LVTrunkDeviceManager$sendEvent$1(this, null), 3);
    }

    @Override // com.linkplay.core.clingx.InitUpnpListener
    public final void initFailed() {
        a();
    }

    @Override // com.linkplay.core.clingx.InitUpnpListener
    public final void initSuccess() {
        a();
    }
}
