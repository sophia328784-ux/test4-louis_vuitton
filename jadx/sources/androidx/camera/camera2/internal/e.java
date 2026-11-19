package androidx.camera.camera2.internal;

import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseAttachState;
import androidx.camera.core.impl.UseCaseConfig;
import defpackage.fc;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Camera2CameraImpl f1803c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SessionConfig f1804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ UseCaseConfig f1805f;
    public final /* synthetic */ StreamSpec g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ List f1806h;

    public /* synthetic */ e(Camera2CameraImpl camera2CameraImpl, String str, SessionConfig sessionConfig, UseCaseConfig useCaseConfig, StreamSpec streamSpec, List list, int i2) {
        this.f1802b = i2;
        this.f1803c = camera2CameraImpl;
        this.d = str;
        this.f1804e = sessionConfig;
        this.f1805f = useCaseConfig;
        this.g = streamSpec;
        this.f1806h = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1802b) {
            case 0:
                Camera2CameraImpl camera2CameraImpl = this.f1803c;
                String str = this.d;
                SessionConfig sessionConfig = this.f1804e;
                UseCaseConfig useCaseConfig = this.f1805f;
                StreamSpec streamSpec = this.g;
                List list = this.f1806h;
                camera2CameraImpl.w(fc.h("Use case ", str, " RESET"));
                camera2CameraImpl.f1438b.f(str, sessionConfig, useCaseConfig, streamSpec, list);
                camera2CameraImpl.s();
                camera2CameraImpl.F();
                camera2CameraImpl.M();
                if (camera2CameraImpl.f1441f == Camera2CameraImpl.InternalState.OPENED) {
                    camera2CameraImpl.E();
                }
                break;
            case 1:
                Camera2CameraImpl camera2CameraImpl2 = this.f1803c;
                String str2 = this.d;
                SessionConfig sessionConfig2 = this.f1804e;
                UseCaseConfig useCaseConfig2 = this.f1805f;
                StreamSpec streamSpec2 = this.g;
                List list2 = this.f1806h;
                camera2CameraImpl2.w(fc.h("Use case ", str2, " UPDATED"));
                camera2CameraImpl2.f1438b.f(str2, sessionConfig2, useCaseConfig2, streamSpec2, list2);
                camera2CameraImpl2.M();
                break;
            default:
                Camera2CameraImpl camera2CameraImpl3 = this.f1803c;
                String str3 = this.d;
                SessionConfig sessionConfig3 = this.f1804e;
                UseCaseConfig useCaseConfig3 = this.f1805f;
                StreamSpec streamSpec3 = this.g;
                List list3 = this.f1806h;
                camera2CameraImpl3.w(fc.h("Use case ", str3, " ACTIVE"));
                LinkedHashMap linkedHashMap = camera2CameraImpl3.f1438b.f2366a;
                UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo = (UseCaseAttachState.UseCaseAttachInfo) linkedHashMap.get(str3);
                if (useCaseAttachInfo == null) {
                    useCaseAttachInfo = new UseCaseAttachState.UseCaseAttachInfo(sessionConfig3, useCaseConfig3, streamSpec3, list3);
                    linkedHashMap.put(str3, useCaseAttachInfo);
                }
                useCaseAttachInfo.f2371f = true;
                camera2CameraImpl3.f1438b.f(str3, sessionConfig3, useCaseConfig3, streamSpec3, list3);
                camera2CameraImpl3.M();
                break;
        }
    }
}
