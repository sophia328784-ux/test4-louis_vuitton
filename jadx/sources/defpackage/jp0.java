package defpackage;

import com.sightcall.mediacapture.presenter.views.preview.PreviewFragment;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class jp0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PreviewFragment f71445c;

    public /* synthetic */ jp0(PreviewFragment previewFragment, int i2) {
        this.f71444b = i2;
        this.f71445c = previewFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71444b;
        PreviewFragment previewFragment = this.f71445c;
        switch (i2) {
            case 0:
                return PreviewFragment.viewModel_delegate$lambda$0(previewFragment);
            case 1:
                return PreviewFragment.media_delegate$lambda$0(previewFragment);
            default:
                return PreviewFragment.prepareForImage$lambda$0$0(previewFragment);
        }
    }
}
