package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanBottomSheetRouter;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ScanBottomSheetRouter {
    @Inject
    public ScanBottomSheetRouter() {
    }

    public static void a(FragmentManager fragmentManager, Fragment fragment, String str, boolean z) {
        str.getClass();
        if (fragmentManager != null) {
            FragmentTransaction fragmentTransactionD = fragmentManager.d();
            fragmentTransactionD.m(R.id.fragment_container, fragment, str);
            if (z) {
                fragmentTransactionD.d(str);
            }
            fragmentTransactionD.e();
        }
    }
}
