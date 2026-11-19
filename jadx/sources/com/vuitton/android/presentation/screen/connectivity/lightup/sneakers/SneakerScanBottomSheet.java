package com.vuitton.android.presentation.screen.connectivity.lightup.sneakers;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.gy0;
import defpackage.xz0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;", "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class SneakerScanBottomSheet extends Hilt_SneakerScanBottomSheet {
    public static final Companion O = new Companion(null);
    public static final String P = "SneakerScanBottomSheet";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;", "", "", "REQUEST_KEY_TUTORIAL", "Ljava/lang/String;", "KEY_NEXT", "KEY_BACK", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public SneakerScanBottomSheet() {
        super(R.layout.fragment_connected_objects_tutorial);
        setCancelable(true);
        U(true);
        T(true);
    }

    public final void V(SneakerScanTutorialScreenFragment sneakerScanTutorialScreenFragment, boolean z) {
        FragmentTransaction fragmentTransactionD = getChildFragmentManager().d();
        SneakerScanTutorialScreenFragment.L.getClass();
        String str = SneakerScanTutorialScreenFragment.N;
        fragmentTransactionD.m(R.id.fragment_container, sneakerScanTutorialScreenFragment, str);
        if (z) {
            fragmentTransactionD.d(str);
        }
        fragmentTransactionD.e();
    }

    public final void W(Function0 function0, Function0 function1) {
        getChildFragmentManager().f();
        getChildFragmentManager().j0("TUTORIAL", requireActivity(), new gy0(function0, function1, 1));
    }

    public final void X() {
        W(new xz0(this, 2), new xz0(this, 3));
        SneakerScanTutorialScreenFragment.Companion companion = SneakerScanTutorialScreenFragment.L;
        String string = getString(R.string.light_up_scan_explanation_trainers_title2);
        string.getClass();
        String string2 = getString(R.string.light_up_scan_explanation_trainers_subtitle2);
        string2.getClass();
        companion.getClass();
        V(SneakerScanTutorialScreenFragment.Companion.a(2, 2131231588, string, string2), true);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        W(new xz0(this, 0), new xz0(this, 1));
        SneakerScanTutorialScreenFragment.Companion companion = SneakerScanTutorialScreenFragment.L;
        String string = getString(R.string.light_up_scan_explanation_trainers_title1);
        string.getClass();
        String string2 = getString(R.string.light_up_scan_explanation_trainers_subtitle1);
        string2.getClass();
        companion.getClass();
        V(SneakerScanTutorialScreenFragment.Companion.a(1, 2131231587, string, string2), false);
    }
}
