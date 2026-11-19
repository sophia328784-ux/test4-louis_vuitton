package androidx.camera.video;

import androidx.camera.video.internal.encoder.EncodeException;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Recorder f2858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CallbackToFutureAdapter.Completer f2859b;

    public /* synthetic */ b(Recorder recorder, CallbackToFutureAdapter.Completer completer) {
        this.f2858a = recorder;
        this.f2859b = completer;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        Throwable th = (Throwable) obj;
        Recorder recorder = this.f2858a;
        if (recorder.Z == null) {
            if (th instanceof EncodeException) {
                recorder.y(Recorder.AudioState.ERROR_ENCODER);
            } else {
                recorder.y(Recorder.AudioState.ERROR_SOURCE);
            }
            recorder.Z = th;
            recorder.I(true);
            this.f2859b.b(null);
        }
    }
}
