package defpackage;

import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jp implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivitySectionDetailFragment f71443c;
    public final /* synthetic */ List d;

    public /* synthetic */ jp(ConnectivitySectionDetailFragment connectivitySectionDetailFragment, List list, int i2) {
        this.f71442b = i2;
        this.f71443c = connectivitySectionDetailFragment;
        this.d = list;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71442b;
        List list = this.d;
        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f71443c;
        switch (i2) {
            case 0:
                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                connectivitySectionDetailFragment.T(list);
                break;
            case 1:
                ConnectivitySectionDetailFragment.Companion companion2 = ConnectivitySectionDetailFragment.I;
                connectivitySectionDetailFragment.T(list);
                break;
            case 2:
                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Visit our catalog", "Earphones")));
                connectivitySectionDetailFragment.T(list);
                break;
            default:
                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                connectivitySectionDetailFragment.T(list);
                break;
        }
        return Unit.f71739a;
    }
}
