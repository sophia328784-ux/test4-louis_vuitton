package defpackage;

import android.view.View;
import com.sightcall.mediacapture.presenter.views.preview.PreviewFragment;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class kp0 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PreviewFragment f75851c;

    public /* synthetic */ kp0(PreviewFragment previewFragment, int i2) {
        this.f75850b = i2;
        this.f75851c = previewFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f75850b;
        PreviewFragment previewFragment = this.f75851c;
        switch (i2) {
            case 0:
                PreviewFragment.m69xf64d23e6(previewFragment, view);
                break;
            case 1:
                PreviewFragment.m70x1be12ce7(previewFragment, view);
                break;
            default:
                PreviewFragment.m71instrumented$1$prepareForVideo$V(previewFragment, view);
                break;
        }
    }
}
