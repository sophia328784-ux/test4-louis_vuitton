package androidx.media3.session;

import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AndroidAutoConnectionStateObserver f17593c;

    public /* synthetic */ a(AndroidAutoConnectionStateObserver androidAutoConnectionStateObserver, int i2) {
        this.f17592b = i2;
        this.f17593c = androidAutoConnectionStateObserver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17592b;
        AndroidAutoConnectionStateObserver androidAutoConnectionStateObserver = this.f17593c;
        switch (i2) {
            case 0:
                androidAutoConnectionStateObserver.f17225a.unregisterReceiver(androidAutoConnectionStateObserver.d);
                break;
            case 1:
                AndroidAutoConnectionStateObserver.AndroidAutoChangeReceiver androidAutoChangeReceiver = androidAutoConnectionStateObserver.d;
                IntentFilter intentFilter = new IntentFilter("androidx.car.app.connection.action.CAR_CONNECTION_UPDATED");
                int i3 = Build.VERSION.SDK_INT;
                Context context = androidAutoConnectionStateObserver.f17225a;
                if (i3 >= 33) {
                    context.registerReceiver(androidAutoChangeReceiver, intentFilter, 2);
                } else {
                    context.registerReceiver(androidAutoChangeReceiver, intentFilter);
                }
                androidAutoConnectionStateObserver.a();
                break;
            default:
                int i4 = AndroidAutoConnectionStateObserver.AndroidAutoChangeReceiver.f17230b;
                Uri uri = AndroidAutoConnectionStateObserver.g;
                androidAutoConnectionStateObserver.a();
                break;
        }
    }
}
