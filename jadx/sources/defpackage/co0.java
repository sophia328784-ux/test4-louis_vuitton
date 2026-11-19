package defpackage;

import android.graphics.Bitmap;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.PhotoMakeup;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class co0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PhotoMakeup.SwitchFaceIndexCallback f21202b;

    public /* synthetic */ co0(int i2, PhotoMakeup.SwitchFaceIndexCallback switchFaceIndexCallback) {
        this.f21201a = i2;
        this.f21202b = switchFaceIndexCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        switch (this.f21201a) {
            case 0:
                Log.g(3, "PhotoMakeup", "[switchFaceIndex] complete");
                this.f21202b.onFaceIndexSwitched((Bitmap) obj);
                break;
            case 1:
                Throwable th = (Throwable) obj;
                Log.e("PhotoMakeup", "[switchFaceIndex] failed", th);
                this.f21202b.onFailure(th);
                break;
            case 2:
                Log.g(3, "PhotoMakeup", "[enable4SplitScreen] complete");
                this.f21202b.onFaceIndexSwitched((Bitmap) obj);
                break;
            default:
                Throwable th2 = (Throwable) obj;
                Log.e("PhotoMakeup", "[enable4SplitScreen] failed", th2);
                this.f21202b.onFailure(th2);
                break;
        }
    }
}
