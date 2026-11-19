package defpackage;

import android.content.DialogInterface;
import android.webkit.JsResult;
import com.batch.android.r0.h;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e91 implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JsResult f68808c;

    public /* synthetic */ e91(JsResult jsResult, int i2) {
        this.f68807b = i2;
        this.f68808c = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        int i2 = this.f68807b;
        JsResult jsResult = this.f68808c;
        switch (i2) {
            case 0:
                h.a.a(jsResult, dialogInterface);
                break;
            default:
                h.a.b(jsResult, dialogInterface);
                break;
        }
    }
}
