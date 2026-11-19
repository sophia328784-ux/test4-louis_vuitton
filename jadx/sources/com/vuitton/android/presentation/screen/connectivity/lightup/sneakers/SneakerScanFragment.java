package com.vuitton.android.presentation.screen.connectivity.lightup.sneakers;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentKt;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwner;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentLightUpSneakersScanBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanViewModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerScanFragment;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ll0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanFragment;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class SneakerScanFragment extends Hilt_SneakerScanFragment {
    public final FragmentViewBindingDelegate N;
    public static final /* synthetic */ KProperty[] P = {Reflection.f71922a.h(new PropertyReference1Impl(SneakerScanFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentLightUpSneakersScanBinding;", 0))};
    public static final Companion O = new Companion(null);
    public static final String Q = "SneakerScanFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanFragment$Companion;", "", "", "REQUEST_KEY_TUTORIAL_FINISHED", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public SneakerScanFragment() {
        super(R.layout.fragment_light_up_sneakers_scan);
        this.N = FragmentExtKt.d(this, SneakerScanFragment$binding$2.f56253b);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final void P() {
        FragmentLightUpSneakersScanBinding fragmentLightUpSneakersScanBindingX = X();
        fragmentLightUpSneakersScanBindingX.f51284b.setEnabled(true);
        fragmentLightUpSneakersScanBindingX.d.clearAnimation();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final View R() {
        return X().f51284b;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final View S() {
        return X().f51285c;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final void U() {
        T().Dc(new LVLightUpTrackingUiModel.PairNoDeviceFoundBottomSheetEvent(LVLightUpDeviceType.X408PAIR));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final void V() {
        T().Dc(new LVLightUpTrackingUiModel.PairNoDeviceFoundCancelButtonClickEvent(LVLightUpDeviceType.X408PAIR));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment
    public final void W() {
        T().Dc(new LVLightUpTrackingUiModel.PairingScreen(LVLightUpDeviceType.X408PAIR));
    }

    public final FragmentLightUpSneakersScanBinding X() {
        return (FragmentLightUpSneakersScanBinding) this.N.c(this, P[0]);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.Hilt_SneakerScanFragment, com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanView
    public final void g(List list) {
        list.getClass();
        FragmentLightUpSneakersScanBinding fragmentLightUpSneakersScanBindingX = X();
        fragmentLightUpSneakersScanBindingX.f51284b.setEnabled(false);
        fragmentLightUpSneakersScanBindingX.d.startAnimation(getAnim());
        FragmentActivity activity = getActivity();
        LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
        if (lightUpActivity != null) {
            lightUpActivity.R(list);
        }
        fragmentLightUpSneakersScanBindingX.f51284b.announceForAccessibility(getString(R.string.light_up_pairing_message));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        LightUpScanViewModel lightUpScanViewModelT = T();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        lightUpScanViewModelT.Ac(viewLifecycleOwner);
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment, com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.Hilt_BaseLightUpScanFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        FragmentLightUpSneakersScanBinding fragmentLightUpSneakersScanBindingX = X();
        TextView textView = fragmentLightUpSneakersScanBindingX.f51286e;
        final int i2 = 1;
        textView.setAccessibilityHeading(true);
        textView.setContentDescription(getString(R.string.light_up_searching_for_trainers));
        final int i3 = 0;
        ViewExtKt.d(fragmentLightUpSneakersScanBindingX.f51284b, new Function1(this) { // from class: yz0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SneakerScanFragment f81471c;

            {
                this.f81471c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                SneakerScanFragment sneakerScanFragment = this.f81471c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        SneakerScanFragment.Companion companion = SneakerScanFragment.O;
                        view2.getClass();
                        FragmentActivity activity = sneakerScanFragment.getActivity();
                        LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
                        if (lightUpActivity != null) {
                            lightUpActivity.H();
                        }
                        break;
                    default:
                        SneakerScanFragment.Companion companion2 = SneakerScanFragment.O;
                        view2.getClass();
                        FragmentActivity activity2 = sneakerScanFragment.getActivity();
                        if (activity2 != null) {
                            activity2.finish();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        ViewExtKt.d(fragmentLightUpSneakersScanBindingX.f51285c, new Function1(this) { // from class: yz0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SneakerScanFragment f81471c;

            {
                this.f81471c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i2;
                SneakerScanFragment sneakerScanFragment = this.f81471c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        SneakerScanFragment.Companion companion = SneakerScanFragment.O;
                        view2.getClass();
                        FragmentActivity activity = sneakerScanFragment.getActivity();
                        LightUpActivity lightUpActivity = activity instanceof LightUpActivity ? (LightUpActivity) activity : null;
                        if (lightUpActivity != null) {
                            lightUpActivity.H();
                        }
                        break;
                    default:
                        SneakerScanFragment.Companion companion2 = SneakerScanFragment.O;
                        view2.getClass();
                        FragmentActivity activity2 = sneakerScanFragment.getActivity();
                        if (activity2 != null) {
                            activity2.finish();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.Hilt_SneakerScanFragment, com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpFragmentInterface
    public final void t() {
        FragmentManager supportFragmentManager;
        FragmentActivity activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        FragmentKt.b(this, "tutorialFinished", new ll0(this, 19));
        SneakerScanBottomSheet.O.getClass();
        new SneakerScanBottomSheet().show(supportFragmentManager, SneakerScanBottomSheet.P);
    }
}
