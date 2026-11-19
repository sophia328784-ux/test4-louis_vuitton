package defpackage;

import androidx.activity.result.ActivityResultCallback;
import androidx.compose.runtime.MutableState;
import androidx.media3.ui.PlayerView;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q3 implements ActivityResultCallback, PlayerView.ControllerVisibilityListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f78993c;

    public /* synthetic */ q3(int i2, MutableState mutableState) {
        this.f78992b = i2;
        this.f78993c = mutableState;
    }

    @Override // androidx.media3.ui.PlayerView.ControllerVisibilityListener
    public void a(int i2) {
        int i3 = this.f78992b;
        MutableState mutableState = this.f78993c;
        switch (i3) {
            case 1:
                mutableState.setValue(Boolean.valueOf(i2 == 0));
                break;
            default:
                mutableState.setValue(Boolean.valueOf(i2 == 0));
                break;
        }
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void b(Object obj) {
        ((Function1) this.f78993c.getF10755b()).invoke(obj);
    }
}
