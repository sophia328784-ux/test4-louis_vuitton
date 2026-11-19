package defpackage;

import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.Recorder;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.SessionReportingCoordinator;
import com.google.firebase.crashlytics.internal.metadata.EventMetadata;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gr0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f69468c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69469e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69470f;

    public /* synthetic */ gr0(Object obj, Object obj2, Object obj3, boolean z, int i2) {
        this.f69467b = i2;
        this.d = obj;
        this.f69469e = obj2;
        this.f69470f = obj3;
        this.f69468c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69467b;
        boolean z = this.f69468c;
        Object obj = this.f69470f;
        Object obj2 = this.f69469e;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                Recorder recorder = (Recorder) obj3;
                SurfaceRequest surfaceRequest = (SurfaceRequest) obj2;
                Timebase timebase = (Timebase) obj;
                SurfaceRequest surfaceRequest2 = recorder.A;
                if (surfaceRequest2 != null && !surfaceRequest2.f1978h.isDone()) {
                    recorder.A.c();
                }
                recorder.l0 = z;
                recorder.A = surfaceRequest;
                recorder.B = timebase;
                recorder.h(surfaceRequest, timebase, true);
                break;
            default:
                Logger.f34483b.a(3);
                ((SessionReportingCoordinator) obj3).f34571b.e((CrashlyticsReport.Session.Event) obj2, ((EventMetadata) obj).f34602a, z);
                break;
        }
    }
}
