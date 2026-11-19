package androidx.camera.camera2.internal;

import android.text.TextUtils;
import androidx.camera.core.Preview;
import androidx.core.util.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Camera2CameraImpl f1820c;
    public final /* synthetic */ ArrayList d;

    public /* synthetic */ k(Camera2CameraImpl camera2CameraImpl, ArrayList arrayList, int i2) {
        this.f1819b = i2;
        this.f1820c = camera2CameraImpl;
        this.d = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() throws Exception {
        Camera2CameraImpl.ErrorTimeoutReopenScheduler.ScheduleNode scheduleNode;
        switch (this.f1819b) {
            case 0:
                Camera2CameraImpl camera2CameraImpl = this.f1820c;
                ArrayList arrayList = this.d;
                Camera2CameraControlImpl camera2CameraControlImpl = camera2CameraImpl.f1443i;
                try {
                    camera2CameraImpl.J(arrayList);
                    return;
                } finally {
                    camera2CameraControlImpl.o();
                }
            default:
                Camera2CameraImpl camera2CameraImpl2 = this.f1820c;
                ArrayList<Camera2CameraImpl.UseCaseInfo> arrayList2 = this.d;
                ArrayList arrayList3 = new ArrayList();
                boolean z = false;
                boolean z2 = false;
                for (Camera2CameraImpl.UseCaseInfo useCaseInfo : arrayList2) {
                    if (camera2CameraImpl2.f1438b.e(((AutoValue_Camera2CameraImpl_UseCaseInfo) useCaseInfo).f1397a)) {
                        AutoValue_Camera2CameraImpl_UseCaseInfo autoValue_Camera2CameraImpl_UseCaseInfo = (AutoValue_Camera2CameraImpl_UseCaseInfo) useCaseInfo;
                        camera2CameraImpl2.f1438b.f2366a.remove(autoValue_Camera2CameraImpl_UseCaseInfo.f1397a);
                        arrayList3.add(autoValue_Camera2CameraImpl_UseCaseInfo.f1397a);
                        if (autoValue_Camera2CameraImpl_UseCaseInfo.f1398b == Preview.class) {
                            z2 = true;
                        }
                    }
                }
                if (arrayList3.isEmpty()) {
                    return;
                }
                camera2CameraImpl2.w("Use cases [" + TextUtils.join(", ", arrayList3) + "] now DETACHED for camera");
                if (z2) {
                    camera2CameraImpl2.f1443i.f1420h.getClass();
                }
                camera2CameraImpl2.s();
                if (camera2CameraImpl2.f1438b.d().isEmpty()) {
                    Camera2CameraControlImpl camera2CameraControlImpl2 = camera2CameraImpl2.f1443i;
                    ZslControlImpl zslControlImpl = camera2CameraControlImpl2.m;
                    boolean z3 = zslControlImpl.d;
                    zslControlImpl.d = false;
                    camera2CameraControlImpl2.w(false);
                } else {
                    camera2CameraImpl2.O();
                    camera2CameraImpl2.N();
                }
                if (!camera2CameraImpl2.f1438b.c().isEmpty()) {
                    camera2CameraImpl2.M();
                    camera2CameraImpl2.F();
                    if (camera2CameraImpl2.f1441f == Camera2CameraImpl.InternalState.OPENED) {
                        camera2CameraImpl2.E();
                        return;
                    }
                    return;
                }
                camera2CameraImpl2.f1443i.o();
                camera2CameraImpl2.F();
                camera2CameraImpl2.f1443i.v(false);
                camera2CameraImpl2.n = camera2CameraImpl2.C();
                camera2CameraImpl2.w("Closing camera.");
                switch (camera2CameraImpl2.f1441f.ordinal()) {
                    case 3:
                    case 4:
                        Preconditions.f(null, camera2CameraImpl2.l == null);
                        camera2CameraImpl2.G(Camera2CameraImpl.InternalState.INITIALIZED);
                        return;
                    case 5:
                    default:
                        camera2CameraImpl2.w("close() ignored due to being in state: " + camera2CameraImpl2.f1441f);
                        return;
                    case 6:
                    case 7:
                    case 8:
                        if (camera2CameraImpl2.f1444j.a() || ((scheduleNode = camera2CameraImpl2.N.f1457a) != null && !scheduleNode.f1460b.get())) {
                            z = true;
                        }
                        camera2CameraImpl2.N.a();
                        camera2CameraImpl2.G(Camera2CameraImpl.InternalState.CLOSING);
                        if (z) {
                            Preconditions.f(null, camera2CameraImpl2.r.isEmpty());
                            camera2CameraImpl2.u();
                            return;
                        }
                        return;
                    case 9:
                    case 10:
                        camera2CameraImpl2.G(Camera2CameraImpl.InternalState.CLOSING);
                        camera2CameraImpl2.t();
                        return;
                }
        }
    }
}
