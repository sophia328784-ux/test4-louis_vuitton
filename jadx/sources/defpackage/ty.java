package defpackage;

import android.location.Location;
import com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ty implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FindInStoreViewModel f80168c;

    public /* synthetic */ ty(FindInStoreViewModel findInStoreViewModel, int i2) {
        this.f80167b = i2;
        this.f80168c = findInStoreViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80167b;
        FindInStoreViewModel findInStoreViewModel = this.f80168c;
        switch (i2) {
            case 0:
                Location location = (Location) obj;
                location.getClass();
                findInStoreViewModel.c6(location.getLatitude(), location.getLongitude());
                break;
            default:
                String str = (String) obj;
                str.getClass();
                findInStoreViewModel.Qa(str);
                break;
        }
        return Unit.f71739a;
    }
}
