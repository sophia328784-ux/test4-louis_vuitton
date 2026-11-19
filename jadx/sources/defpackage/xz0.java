package defpackage;

import android.os.Bundle;
import androidx.fragment.app.FragmentKt;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerScanBottomSheet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xz0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SneakerScanBottomSheet f81233c;

    public /* synthetic */ xz0(SneakerScanBottomSheet sneakerScanBottomSheet, int i2) {
        this.f81232b = i2;
        this.f81233c = sneakerScanBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f81232b;
        SneakerScanBottomSheet sneakerScanBottomSheet = this.f81233c;
        switch (i2) {
            case 0:
                SneakerScanBottomSheet.Companion companion = SneakerScanBottomSheet.O;
                sneakerScanBottomSheet.X();
                break;
            case 1:
                SneakerScanBottomSheet.Companion companion2 = SneakerScanBottomSheet.O;
                sneakerScanBottomSheet.dismiss();
                break;
            case 2:
                SneakerScanBottomSheet.Companion companion3 = SneakerScanBottomSheet.O;
                Bundle bundle = Bundle.EMPTY;
                bundle.getClass();
                FragmentKt.a(sneakerScanBottomSheet, "tutorialFinished", bundle);
                sneakerScanBottomSheet.dismiss();
                break;
            case 3:
                SneakerScanBottomSheet.Companion companion4 = SneakerScanBottomSheet.O;
                sneakerScanBottomSheet.getChildFragmentManager().V();
                sneakerScanBottomSheet.W(new xz0(sneakerScanBottomSheet, 4), new xz0(sneakerScanBottomSheet, 5));
                break;
            case 4:
                SneakerScanBottomSheet.Companion companion5 = SneakerScanBottomSheet.O;
                sneakerScanBottomSheet.X();
                break;
            default:
                SneakerScanBottomSheet.Companion companion6 = SneakerScanBottomSheet.O;
                sneakerScanBottomSheet.dismiss();
                break;
        }
        return Unit.f71739a;
    }
}
