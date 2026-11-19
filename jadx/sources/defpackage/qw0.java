package defpackage;

import android.webkit.ValueCallback;
import com.perfectcorp.thirdparty.io.reactivex.SingleEmitter;
import com.vuitton.android.data.net.cookiejar.WebkitCookieManagerProxy;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class qw0 implements ValueCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f79179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f79180b;

    public /* synthetic */ qw0(Object obj, int i2) {
        this.f79179a = i2;
        this.f79180b = obj;
    }

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        int i2 = this.f79179a;
        Object obj2 = this.f79180b;
        switch (i2) {
            case 0:
                ((SingleEmitter) obj2).onSuccess((String) obj);
                break;
            default:
                WebkitCookieManagerProxy webkitCookieManagerProxy = (WebkitCookieManagerProxy) obj2;
                webkitCookieManagerProxy.f47048b.flush();
                webkitCookieManagerProxy.f47047a.getClass();
                break;
        }
    }
}
