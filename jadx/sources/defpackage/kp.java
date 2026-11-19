package defpackage;

import com.vuitton.android.presentation.screen.connectivity.faq.FaqView;
import com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesView;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailView;
import com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kp implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Exception f75849c;

    public /* synthetic */ kp(int i2, Exception exc) {
        this.f75848b = i2;
        this.f75849c = exc;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f75848b;
        Exception exc = this.f75849c;
        switch (i2) {
            case 0:
                ConnectivityView connectivityView = (ConnectivityView) obj;
                connectivityView.B();
                connectivityView.d(exc);
                break;
            case 1:
                ((ConnectivityView) obj).d(exc);
                break;
            case 2:
                ((FaqCategoriesView) obj).j(exc);
                break;
            case 3:
                ((FaqView) obj).i(exc);
                break;
            case 4:
                ((LightUpDetailView) obj).a(exc);
                break;
            default:
                ((WatchSettingsView) obj).E(exc);
                break;
        }
        return Unit.f71739a;
    }
}
