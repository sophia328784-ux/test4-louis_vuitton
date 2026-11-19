package androidx.camera.core.streamsharing;

import androidx.camera.core.UseCase;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.Threads;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements SessionConfig.ErrorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ StreamSharing f2671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f2672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2673c;
    public final /* synthetic */ UseCaseConfig d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ StreamSpec f2674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ StreamSpec f2675f;

    public /* synthetic */ b(StreamSharing streamSharing, String str, String str2, UseCaseConfig useCaseConfig, StreamSpec streamSpec, StreamSpec streamSpec2) {
        this.f2671a = streamSharing;
        this.f2672b = str;
        this.f2673c = str2;
        this.d = useCaseConfig;
        this.f2674e = streamSpec;
        this.f2675f = streamSpec2;
    }

    @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
    public final void a(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        StreamSharing streamSharing = this.f2671a;
        if (streamSharing.c() == null) {
            return;
        }
        streamSharing.E();
        streamSharing.D(streamSharing.F(this.f2672b, this.f2673c, this.d, this.f2674e, this.f2675f));
        streamSharing.q();
        VirtualCameraAdapter virtualCameraAdapter = streamSharing.r;
        virtualCameraAdapter.getClass();
        Threads.a();
        Iterator it = virtualCameraAdapter.f2655b.iterator();
        while (it.hasNext()) {
            virtualCameraAdapter.m((UseCase) it.next());
        }
    }
}
