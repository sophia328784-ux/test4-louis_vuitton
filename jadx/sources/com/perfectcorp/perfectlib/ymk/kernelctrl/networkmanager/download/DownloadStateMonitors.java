package com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download;

import com.perfectcorp.common.network.DownloadStateMonitor;
import com.perfectcorp.perfectlib.ymk.clflurry.MCSDKDownloadLookEvent;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DownloadStateMonitors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DownloadStateMonitor f41988a = new b();

    public static class a extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f41989b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f41990c;
        public final MCSDKDownloadLookEvent.Source d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f41991e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile boolean f41992f;

        public a(long j2, MCSDKDownloadLookEvent.Source source, String str) {
            this.f41991e = str;
            this.f41990c = j2;
            this.d = source;
        }

        @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors.b, com.perfectcorp.common.network.DownloadStateMonitor
        public final void a() {
            if (this.f41989b == 0) {
                return;
            }
            MCSDKDownloadLookEvent.Builder builder = new MCSDKDownloadLookEvent.Builder(MCSDKDownloadLookEvent.Status.START_DOWNLOAD, this.d);
            builder.b(this.f41990c);
            builder.f41953b = this.f41991e;
            builder.f41955e = (System.nanoTime() - this.f41989b) / 1000000;
            builder.a();
        }

        @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors.b, com.perfectcorp.common.network.DownloadStateMonitor
        public final void b() {
            this.f41989b = System.nanoTime();
        }

        @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors.b, com.perfectcorp.common.network.DownloadStateMonitor
        public final void c() {
            this.f41992f = true;
        }

        @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors.b, com.perfectcorp.common.network.DownloadStateMonitor
        public final void d() {
            if (this.f41989b == 0) {
                return;
            }
            MCSDKDownloadLookEvent.Builder builder = new MCSDKDownloadLookEvent.Builder(MCSDKDownloadLookEvent.Status.COMPLETE_DOWNLOAD, this.d);
            builder.b(this.f41990c);
            builder.f41953b = this.f41991e;
            builder.f41955e = (System.nanoTime() - this.f41989b) / 1000000;
            builder.a();
        }

        @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors.b, com.perfectcorp.common.network.DownloadStateMonitor
        public final void e() {
            if (this.f41992f) {
                return;
            }
            MCSDKDownloadLookEvent.Builder builder = new MCSDKDownloadLookEvent.Builder(MCSDKDownloadLookEvent.Status.FAIL_DOWNLOAD, this.d);
            builder.b(this.f41990c);
            builder.f41953b = this.f41991e;
            builder.a();
        }
    }

    public static class b implements DownloadStateMonitor {
        @Override // com.perfectcorp.common.network.DownloadStateMonitor
        public void a() {
        }

        @Override // com.perfectcorp.common.network.DownloadStateMonitor
        public void b() {
        }

        @Override // com.perfectcorp.common.network.DownloadStateMonitor
        public void c() {
        }

        @Override // com.perfectcorp.common.network.DownloadStateMonitor
        public void d() {
        }

        @Override // com.perfectcorp.common.network.DownloadStateMonitor
        public void e() {
        }
    }

    public static DownloadStateMonitor a(long j2, MCSDKDownloadLookEvent.Source source, String str) {
        return new a(j2, source, str);
    }
}
