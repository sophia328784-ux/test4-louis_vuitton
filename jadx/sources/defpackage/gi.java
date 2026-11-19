package defpackage;

import android.graphics.RectF;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import com.sightcall.universal.internal.ui.CallActivity;
import com.sightcall.universal.internal.view.MyScreenshareConsumerView;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class gi implements Consumer, ActivityResultCallback, MyScreenshareConsumerView.DrawingZoneListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CallActivity f69420c;

    public /* synthetic */ gi(CallActivity callActivity, int i2) {
        this.f69419b = i2;
        this.f69420c = callActivity;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) throws Throwable {
        this.f69420c.lambda$onCreate$0((Boolean) obj);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void b(Object obj) {
        int i2 = this.f69419b;
        CallActivity callActivity = this.f69420c;
        switch (i2) {
            case 1:
                callActivity.lambda$initializeRequestPermissionsLauncher$4((Map) obj);
                break;
            case 2:
                callActivity.lambda$initializeMediaProjectionLauncher$1((ActivityResult) obj);
                break;
            case 3:
            default:
                callActivity.lambda$initializeLocationSettingsLauncher$2((ActivityResult) obj);
                break;
            case 4:
                callActivity.lambda$initializeResolutionForResultLauncher$3((ActivityResult) obj);
                break;
        }
    }

    @Override // com.sightcall.universal.internal.view.MyScreenshareConsumerView.DrawingZoneListener
    public void onDrawingZoneUpdated(RectF rectF) {
        this.f69420c.lambda$updateScreenshareConsumer$9(rectF);
    }
}
