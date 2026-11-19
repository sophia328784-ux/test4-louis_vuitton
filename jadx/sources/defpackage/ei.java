package defpackage;

import android.app.Service;
import com.sightcall.pratik.Result;
import com.sightcall.sharemedia.ShareMediaDialog;
import com.sightcall.universal.internal.ui.CallActivity;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ei implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CallActivity f68864c;

    public /* synthetic */ ei(CallActivity callActivity, int i2) {
        this.f68863b = i2;
        this.f68864c = callActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f68863b;
        CallActivity callActivity = this.f68864c;
        switch (i2) {
            case 0:
                return callActivity.lambda$showShareMediaDialog$11((ShareMediaDialog.Result) obj);
            case 1:
                return callActivity.lambda$startVideoFromGallery$15((Result) obj);
            case 2:
                return callActivity.lambda$startPhotoFromCamera$12((Result) obj);
            case 3:
                return callActivity.lambda$startPhotoFromGallery$14((Result) obj);
            default:
                return callActivity.lambda$startScreenCastWithMediaProjection$21((Service) obj);
        }
    }
}
