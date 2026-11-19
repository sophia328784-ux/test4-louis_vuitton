package defpackage;

import com.sightcall.mediacapture.presenter.MediaCaptureFragment;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class nc0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaCaptureFragment f76496c;

    public /* synthetic */ nc0(MediaCaptureFragment mediaCaptureFragment, int i2) {
        this.f76495b = i2;
        this.f76496c = mediaCaptureFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76495b;
        MediaCaptureFragment mediaCaptureFragment = this.f76496c;
        switch (i2) {
            case 0:
                return MediaCaptureFragment.onResume$lambda$0(mediaCaptureFragment);
            default:
                return MediaCaptureFragment.viewModel_delegate$lambda$0(mediaCaptureFragment);
        }
    }
}
