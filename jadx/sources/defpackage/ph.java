package defpackage;

import com.perfectcorp.perfectlib.BraceletVtoApplier;
import com.perfectcorp.perfectlib.HandApplierTarget;
import com.perfectcorp.perfectlib.JewelryVtoApplier;
import com.perfectcorp.perfectlib.NailVtoApplier;
import com.perfectcorp.perfectlib.RingVtoApplier;
import com.perfectcorp.perfectlib.WatchVtoApplier;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ph implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HandApplierTarget f78855c;

    public /* synthetic */ ph(HandApplierTarget handApplierTarget, int i2) {
        this.f78854b = i2;
        this.f78855c = handApplierTarget;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f78854b;
        HandApplierTarget handApplierTarget = this.f78855c;
        switch (i2) {
            case 0:
                return BraceletVtoApplier.a(handApplierTarget);
            case 1:
                return JewelryVtoApplier.a(handApplierTarget);
            case 2:
                return NailVtoApplier.a(handApplierTarget);
            case 3:
                return RingVtoApplier.a(handApplierTarget);
            default:
                return WatchVtoApplier.a(handApplierTarget);
        }
    }
}
