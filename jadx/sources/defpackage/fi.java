package defpackage;

import com.sightcall.universal.internal.ui.CallActivity;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class fi implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CallActivity f69149c;

    public /* synthetic */ fi(CallActivity callActivity, int i2) {
        this.f69148b = i2;
        this.f69149c = callActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69148b;
        CallActivity callActivity = this.f69149c;
        switch (i2) {
            case 0:
                callActivity.startPhotoFromCamera();
                break;
            default:
                callActivity.restartVideo();
                break;
        }
    }
}
