package defpackage;

import android.view.View;
import android.widget.PopupWindow;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.view.PreviewView;
import androidx.media3.ui.PlayerControlView;
import com.google.android.material.carousel.CarouselLayoutManager;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oj implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76798c;

    public /* synthetic */ oj(Object obj, int i2) {
        this.f76797b = i2;
        this.f76798c = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        int i10 = this.f76797b;
        Object obj = this.f76798c;
        switch (i10) {
            case 0:
                CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) obj;
                if (i4 - i2 != i8 - i6 || i5 - i3 != i9 - i7) {
                    view.post(new z1(carouselLayoutManager, 19));
                }
                break;
            case 1:
                PlayerControlView playerControlView = (PlayerControlView) obj;
                int i11 = playerControlView.t;
                PopupWindow popupWindow = playerControlView.s;
                int i12 = i5 - i3;
                int i13 = i9 - i7;
                if ((i4 - i2 != i8 - i6 || i12 != i13) && popupWindow.isShowing()) {
                    playerControlView.t();
                    popupWindow.update(view, (playerControlView.getWidth() - popupWindow.getWidth()) - i11, (-popupWindow.getHeight()) - i11, -1, -1);
                }
                break;
            default:
                PreviewView previewView = (PreviewView) obj;
                PreviewView.ImplementationMode implementationMode = PreviewView.n;
                if (i4 - i2 != i8 - i6 || i5 - i3 != i9 - i7) {
                    previewView.a();
                    Threads.a();
                    previewView.getViewPort();
                }
                break;
        }
    }
}
