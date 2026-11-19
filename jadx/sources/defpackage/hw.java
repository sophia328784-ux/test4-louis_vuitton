package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Range;
import androidx.camera.video.internal.encoder.EncodeException;
import androidx.camera.video.internal.encoder.EncoderCallback;
import androidx.camera.video.internal.encoder.EncoderImpl;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hw implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f69794c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69796f;

    public /* synthetic */ hw(Uploader uploader, TransportContext transportContext, int i2, Runnable runnable) {
        this.f69793b = 2;
        this.f69796f = uploader;
        this.d = transportContext;
        this.f69794c = i2;
        this.f69795e = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69793b;
        Object obj = this.f69795e;
        int i3 = this.f69794c;
        Object obj2 = this.d;
        Object obj3 = this.f69796f;
        switch (i2) {
            case 0:
                Range range = EncoderImpl.H;
                ((EncoderImpl) obj3).k(i3, (String) obj2, (Throwable) obj);
                return;
            case 1:
                Range range2 = EncoderImpl.H;
                ((EncoderCallback) obj3).d(new EncodeException(i3, (String) obj2, (Throwable) obj));
                return;
            default:
                Uploader uploader = (Uploader) obj3;
                TransportContext transportContext = (TransportContext) obj2;
                Runnable runnable = (Runnable) obj;
                SynchronizationGuard synchronizationGuard = uploader.f28073f;
                try {
                    try {
                        EventStore eventStore = uploader.f28071c;
                        Objects.requireNonNull(eventStore);
                        synchronizationGuard.c(new ln0(eventStore, 21));
                        NetworkInfo activeNetworkInfo = ((ConnectivityManager) uploader.f28069a.getSystemService("connectivity")).getActiveNetworkInfo();
                        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                            synchronizationGuard.c(new cv(uploader, transportContext, i3));
                        } else {
                            uploader.a(transportContext, i3);
                        }
                        break;
                    } catch (SynchronizationException unused) {
                        uploader.d.a(transportContext, i3 + 1);
                        break;
                    }
                    return;
                } finally {
                    runnable.run();
                }
        }
    }

    public /* synthetic */ hw(Object obj, int i2, String str, Throwable th, int i3) {
        this.f69793b = i3;
        this.f69796f = obj;
        this.f69794c = i2;
        this.d = str;
        this.f69795e = th;
    }
}
