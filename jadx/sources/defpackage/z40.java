package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.Button;
import com.vuitton.android.presentation.databinding.AlertViewBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.webview.LVAlertView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z40 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVAlertView f81528c;

    public /* synthetic */ z40(LVAlertView lVAlertView, int i2) {
        this.f81527b = i2;
        this.f81528c = lVAlertView;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81527b;
        LVAlertView lVAlertView = this.f81528c;
        switch (i2) {
            case 0:
                LVAlertView.Companion companion = LVAlertView.G;
                ((View) obj).getClass();
                lVAlertView.dismiss();
                break;
            case 1:
                LVAlertView.Companion companion2 = LVAlertView.G;
                ((View) obj).getClass();
                lVAlertView.dismiss();
                break;
            case 2:
                Button button = (Button) obj;
                LVAlertView.Companion companion3 = LVAlertView.G;
                button.getClass();
                ViewExtKt.d(button, new z40(lVAlertView, 3));
                break;
            default:
                LVAlertView.Companion companion4 = LVAlertView.G;
                ((View) obj).getClass();
                lVAlertView.startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + ((Object) ((AlertViewBinding) lVAlertView.F.c(lVAlertView, LVAlertView.H[0])).f51207b.getText()))));
                break;
        }
        return Unit.f71739a;
    }
}
