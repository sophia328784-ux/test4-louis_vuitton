package defpackage;

import android.os.Bundle;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerScanTutorialScreenFragment;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zz0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SneakerScanTutorialScreenFragment f81752c;

    public /* synthetic */ zz0(SneakerScanTutorialScreenFragment sneakerScanTutorialScreenFragment, int i2) {
        this.f81751b = i2;
        this.f81752c = sneakerScanTutorialScreenFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        Integer numValueOf;
        Integer num;
        int i2 = this.f81751b;
        boolean z = false;
        SneakerScanTutorialScreenFragment sneakerScanTutorialScreenFragment = this.f81752c;
        switch (i2) {
            case 0:
                SneakerScanTutorialScreenFragment.Companion companion = SneakerScanTutorialScreenFragment.L;
                Bundle arguments = sneakerScanTutorialScreenFragment.getArguments();
                numValueOf = arguments != null ? Integer.valueOf(arguments.getInt("CURRENT_STEP")) : null;
                numValueOf.getClass();
                return numValueOf;
            case 1:
                SneakerScanTutorialScreenFragment.Companion companion2 = SneakerScanTutorialScreenFragment.L;
                Bundle arguments2 = sneakerScanTutorialScreenFragment.getArguments();
                numValueOf = arguments2 != null ? Integer.valueOf(arguments2.getInt("MAX_STEPS")) : null;
                numValueOf.getClass();
                return numValueOf;
            case 2:
                SneakerScanTutorialScreenFragment.Companion companion3 = SneakerScanTutorialScreenFragment.L;
                Bundle arguments3 = sneakerScanTutorialScreenFragment.getArguments();
                if (arguments3 != null) {
                    return arguments3.getString("TITLE");
                }
                return null;
            case 3:
                SneakerScanTutorialScreenFragment.Companion companion4 = SneakerScanTutorialScreenFragment.L;
                Bundle arguments4 = sneakerScanTutorialScreenFragment.getArguments();
                if (arguments4 != null) {
                    return arguments4.getString("SUBTITLE");
                }
                return null;
            case 4:
                SneakerScanTutorialScreenFragment.Companion companion5 = SneakerScanTutorialScreenFragment.L;
                Bundle arguments5 = sneakerScanTutorialScreenFragment.getArguments();
                if (arguments5 != null) {
                    return Integer.valueOf(arguments5.getInt("IMAGE_RES"));
                }
                return null;
            case 5:
                SneakerScanTutorialScreenFragment.Companion companion6 = SneakerScanTutorialScreenFragment.L;
                String str = (String) sneakerScanTutorialScreenFragment.I.getF71699b();
                if (str != null && str.length() > 0) {
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                SneakerScanTutorialScreenFragment.Companion companion7 = SneakerScanTutorialScreenFragment.L;
                Lazy lazy = sneakerScanTutorialScreenFragment.J;
                if (((Integer) lazy.getF71699b()) != null && ((num = (Integer) lazy.getF71699b()) == null || num.intValue() != 0)) {
                    z = true;
                }
                return Boolean.valueOf(z);
        }
    }
}
