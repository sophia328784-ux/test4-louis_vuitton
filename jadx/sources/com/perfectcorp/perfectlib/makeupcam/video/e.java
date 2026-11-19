package com.perfectcorp.perfectlib.makeupcam.video;

import com.perfectcorp.common.utility.Log;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class e implements com.perfectcorp.perfectlib.makeupcam.video.a.f, com.perfectcorp.perfectlib.makeupcam.video.a.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f41056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile boolean f41057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile a f41058c = a.f41059a;

    public interface a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f41059a = new f();

        void a(long j2);

        void a(Exception exc);
    }

    public e(File file) {
        d dVar = new d(file);
        this.f41056a = dVar;
        com.perfectcorp.perfectlib.makeupcam.video.a aVar = dVar.f41049a;
        aVar.D = this;
        aVar.E = this;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.video.a.f
    public final void a(Exception exc) {
        Log.e("VideoCtrl", "cannotCreateMuxer", exc);
        this.f41058c.a(exc);
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.video.a.f
    public final void b(Exception exc) {
        Log.e("VideoCtrl", "audioIsNotInitialized", exc);
        this.f41058c.a(exc);
        this.f41057b = true;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.video.a.f
    public final void c(IllegalStateException illegalStateException) {
        Log.e("VideoCtrl", "cannotGetVideoOutputBuffer", illegalStateException);
        this.f41058c.a(illegalStateException);
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.video.a.f
    public final void d(Exception exc) {
        Log.e("VideoCtrl", "cannotConfigureVideoEncoder", exc);
        this.f41058c.a(exc);
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.video.a.f
    public final void e(Exception exc) {
        Log.e("VideoCtrl", "cannotConfigureAudioEncoder", exc);
        this.f41058c.a(exc);
    }

    public final void f(String str, int i2, int i3, int i4, int i5) {
        com.perfectcorp.perfectlib.makeupcam.video.a.e eVar = new com.perfectcorp.perfectlib.makeupcam.video.a.e();
        eVar.f41013a = str;
        eVar.d = i2;
        eVar.f41016e = i3;
        eVar.f41014b = i4;
        eVar.f41015c = i5;
        this.f41056a.f41051c = new com.perfectcorp.perfectlib.makeupcam.video.a.d(eVar);
    }

    public final boolean g() {
        com.perfectcorp.perfectlib.makeupcam.video.a.RunnableC0132a runnableC0132a = this.f41056a.f41049a.q;
        return runnableC0132a != null && runnableC0132a.a();
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.video.a.g
    public final void a(long j2) {
        this.f41058c.a(j2);
    }
}
