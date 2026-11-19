package defpackage;

import android.content.DialogInterface;
import android.webkit.JsResult;
import com.batch.android.r0.h;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d91 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JsResult f68486c;

    public /* synthetic */ d91(JsResult jsResult, int i2) {
        this.f68485b = i2;
        this.f68486c = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        int i3 = this.f68485b;
        JsResult jsResult = this.f68486c;
        switch (i3) {
            case 0:
                h.a.a(jsResult, dialogInterface, i2);
                break;
            default:
                h.a.b(jsResult, dialogInterface, i2);
                break;
        }
    }
}
