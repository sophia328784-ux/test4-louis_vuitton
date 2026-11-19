package defpackage;

import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wo implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectToWifiFragment f80911c;

    public /* synthetic */ wo(ConnectToWifiFragment connectToWifiFragment, int i2) {
        this.f80910b = i2;
        this.f80911c = connectToWifiFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80910b;
        ConnectToWifiFragment connectToWifiFragment = this.f80911c;
        switch (i2) {
            case 0:
                ConnectToWifiFragment.Companion companion = ConnectToWifiFragment.L;
                connectToWifiFragment.Q();
                break;
            default:
                FragmentActivity activity = connectToWifiFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new vo(connectToWifiFragment, 5));
                }
                break;
        }
        return Unit.f71739a;
    }
}
