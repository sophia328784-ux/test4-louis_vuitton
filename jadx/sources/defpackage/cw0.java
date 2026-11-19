package defpackage;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import com.batch.android.r0.h;
import com.sightcall.sharemedia.ShareMediaDialog;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cw0 implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68349c;

    public /* synthetic */ cw0(Object obj, int i2) {
        this.f68348b = i2;
        this.f68349c = obj;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        int i2 = this.f68348b;
        Object obj = this.f68349c;
        switch (i2) {
            case 0:
                ShareMediaDialog.show$lambda$1((Function1) obj, dialogInterface);
                break;
            default:
                h.a.a((JsPromptResult) obj, dialogInterface);
                break;
        }
    }
}
