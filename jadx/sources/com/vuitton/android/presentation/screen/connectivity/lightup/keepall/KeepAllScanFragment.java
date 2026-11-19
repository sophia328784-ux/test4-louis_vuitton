package com.vuitton.android.presentation.screen.connectivity.lightup.keepall;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentLightUpKeepAllScanBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllScanFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import dagger.hilt.android.AndroidEntryPoint;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class KeepAllScanFragment extends Hilt_KeepAllScanFragment {
    public final FragmentViewBindingDelegate N;
    public static final /* synthetic */ KProperty[] P = {Reflection.f71922a.h(new PropertyReference1Impl(KeepAllScanFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;", 0))};
    public static final Companion O = new Companion(null);
    public static final String Q = "KeepAllScanFragment";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public KeepAllScanFragment() {
        super(R.layout.fragment_light_up_keep_all_scan);
        this.N = FragmentExtKt.d(this, KeepAllScanFragment$binding$2.f56214b);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final void P() {
        FragmentLightUpKeepAllScanBinding fragmentLightUpKeepAllScanBindingX = X();
        fragmentLightUpKeepAllScanBindingX.f51269b.setEnabled(true);
        fragmentLightUpKeepAllScanBindingX.d.clearAnimation();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final View R() {
        return X().f51269b;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final View S() {
        return X().f51270c;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final void U() {
        T().Dc(new LVLightUpTrackingUiModel.PairNoDeviceFoundBottomSheetEvent(LVLightUpDeviceType.KEEPALL));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final void V() {
        T().Dc(new LVLightUpTrackingUiModel.PairNoDeviceFoundCancelButtonClickEvent(LVLightUpDeviceType.KEEPALL));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final void W() {
        T().Dc(new LVLightUpTrackingUiModel.PairingScreen(LVLightUpDeviceType.KEEPALL));
    }

    public final FragmentLightUpKeepAllScanBinding X() {
        return (FragmentLightUpKeepAllScanBinding) this.N.c(this, P[0]);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.keepall.Hilt_KeepAllScanFragment, com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanView
    public final void g(List list) {
        list.getClass();
        FragmentLightUpKeepAllScanBinding fragmentLightUpKeepAllScanBindingX = X();
        fragmentLightUpKeepAllScanBindingX.f51269b.setEnabled(false);
        fragmentLightUpKeepAllScanBindingX.d.startAnimation(getAnim());
        FragmentActivity activity = getActivity();
        LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
        if (lightUpActivity != null) {
            lightUpActivity.R(list);
        }
        fragmentLightUpKeepAllScanBindingX.f51269b.announceForAccessibility(getString(R.string.light_up_pairing_message));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment, com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.Hilt_BaseLightUpScanFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        FragmentLightUpKeepAllScanBinding fragmentLightUpKeepAllScanBindingX = X();
        TextView textView = fragmentLightUpKeepAllScanBindingX.f51271e;
        final int i2 = 1;
        textView.setAccessibilityHeading(true);
        textView.setContentDescription(getString(R.string.light_up_searching_for_keepall));
        final int i3 = 0;
        ViewExtKt.d(fragmentLightUpKeepAllScanBindingX.f51269b, new Function1(this) { // from class: w40

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ KeepAllScanFragment f80754c;

            {
                this.f80754c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                KeepAllScanFragment keepAllScanFragment = this.f80754c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        KeepAllScanFragment.Companion companion = KeepAllScanFragment.O;
                        view2.getClass();
                        FragmentActivity activity = keepAllScanFragment.getActivity();
                        LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
                        if (lightUpActivity != null) {
                            lightUpActivity.H();
                        }
                        break;
                    default:
                        KeepAllScanFragment.Companion companion2 = KeepAllScanFragment.O;
                        view2.getClass();
                        FragmentActivity activity2 = keepAllScanFragment.getActivity();
                        if (activity2 != null) {
                            activity2.finish();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        ViewExtKt.d(fragmentLightUpKeepAllScanBindingX.f51270c, new Function1(this) { // from class: w40

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ KeepAllScanFragment f80754c;

            {
                this.f80754c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i2;
                KeepAllScanFragment keepAllScanFragment = this.f80754c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        KeepAllScanFragment.Companion companion = KeepAllScanFragment.O;
                        view2.getClass();
                        FragmentActivity activity = keepAllScanFragment.getActivity();
                        LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
                        if (lightUpActivity != null) {
                            lightUpActivity.H();
                        }
                        break;
                    default:
                        KeepAllScanFragment.Companion companion2 = KeepAllScanFragment.O;
                        view2.getClass();
                        FragmentActivity activity2 = keepAllScanFragment.getActivity();
                        if (activity2 != null) {
                            activity2.finish();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.keepall.Hilt_KeepAllScanFragment, com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpFragmentInterface
    public final void t() {
        T().Cc();
    }
}
