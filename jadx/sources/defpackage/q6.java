package defpackage;

import android.content.Intent;
import android.content.IntentSender;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.profileinstaller.DeviceProfileWriter;
import com.lightup.sdk.animation.CreatorProject;
import com.perfectcorp.perfectlib.LookHandler;
import com.sightcall.advancedannotations.domain.drawer.annotation.Annotation;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q6 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f79021c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79022e;

    public /* synthetic */ q6(Object obj, int i2, Object obj2, int i3) {
        this.f79020b = i3;
        this.d = obj;
        this.f79021c = i2;
        this.f79022e = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f79020b;
        int i3 = this.f79021c;
        Object obj = this.f79022e;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                ((Annotation) obj2).updateAlpha(i3, (Function0) obj);
                break;
            case 1:
                ((CameraCaptureCallback) obj2).c(i3, (CameraCaptureFailure) obj);
                break;
            case 2:
                ((CameraCaptureCallback) obj2).b(i3, (CameraCaptureResult) obj);
                break;
            case 3:
                int i4 = ComponentActivity$activityResultRegistry$1.f659j;
                ((ComponentActivity$activityResultRegistry$1) obj2).a(i3, ((ActivityResultContract.SynchronousResult) obj).f764a);
                break;
            case 4:
                int i5 = ComponentActivity$activityResultRegistry$1.f659j;
                ((ComponentActivity$activityResultRegistry$1) obj2).b(i3, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) obj));
                break;
            case 5:
                ((DeviceProfileWriter) obj2).f19099c.a(i3, obj);
                break;
            case 6:
                DrmSessionEventListener.EventDispatcher eventDispatcher = (DrmSessionEventListener.EventDispatcher) obj2;
                ((DrmSessionEventListener) obj).V(eventDispatcher.f15079a, eventDispatcher.f15080b, i3);
                break;
            case 7:
                LightUpDetailFragment lightUpDetailFragment = (LightUpDetailFragment) obj2;
                LightUpDetailFragment.Companion companion = LightUpDetailFragment.N;
                lightUpDetailFragment.n0((CreatorProject) obj);
                if (i3 != -1) {
                    lightUpDetailFragment.e0().f51278j.smoothScrollToPosition(i3);
                }
                break;
            default:
                ((LookHandler.DownloadLooksCallback) obj).progress(((AtomicInteger) obj2).incrementAndGet(), i3);
                break;
        }
    }

    public /* synthetic */ q6(Object obj, Object obj2, int i2, int i3) {
        this.f79020b = i3;
        this.d = obj;
        this.f79022e = obj2;
        this.f79021c = i2;
    }
}
