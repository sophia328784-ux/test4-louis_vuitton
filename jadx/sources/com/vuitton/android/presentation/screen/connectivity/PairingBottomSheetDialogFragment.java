package com.vuitton.android.presentation.screen.connectivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentActivity;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.databinding.FragmentPairingBottomSheetDialogBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.PairingBottomSheetDialogFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivityRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.ScanActivity;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.yk0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;", "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class PairingBottomSheetDialogFragment extends Hilt_PairingBottomSheetDialogFragment {
    public ConnectivitySectionDetailActivityRouter O;
    public IsFeatureAvailableUseCase P;
    public final FragmentViewBindingDelegate Q;
    public Function1 R;
    public static final /* synthetic */ KProperty[] T = {Reflection.f71922a.h(new PropertyReference1Impl(PairingBottomSheetDialogFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentPairingBottomSheetDialogBinding;", 0))};
    public static final Companion S = new Companion(null);
    public static final String V = "PairingBottomSheetDialogFragment";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public PairingBottomSheetDialogFragment() {
        super(R.layout.fragment_pairing_bottom_sheet_dialog);
        setCancelable(true);
        U(true);
        T(true);
        this.Q = FragmentExtKt.d(this, PairingBottomSheetDialogFragment$binding$2.f55966b);
        this.R = new yk0(14);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        int i2;
        int i3;
        int i4;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        final int i5 = 0;
        FragmentPairingBottomSheetDialogBinding fragmentPairingBottomSheetDialogBinding = (FragmentPairingBottomSheetDialogBinding) this.Q.c(this, T[0]);
        IsFeatureAvailableUseCase isFeatureAvailableUseCase = this.P;
        if (isFeatureAvailableUseCase == null) {
            Intrinsics.h("isFeatureAvailableUseCase");
            throw null;
        }
        boolean zB = isFeatureAvailableUseCase.b(new Feature[]{Feature.TRUNK_SPEAKER});
        LinearLayout linearLayout = fragmentPairingBottomSheetDialogBinding.d;
        if (zB) {
            ViewExtKt.d(linearLayout, new Function1(this) { // from class: tl0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PairingBottomSheetDialogFragment f80098c;

                {
                    this.f80098c = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int i6 = i5;
                    PairingBottomSheetDialogFragment pairingBottomSheetDialogFragment = this.f80098c;
                    View view2 = (View) obj;
                    switch (i6) {
                        case 0:
                            PairingBottomSheetDialogFragment.Companion companion = PairingBottomSheetDialogFragment.S;
                            view2.getClass();
                            if (pairingBottomSheetDialogFragment.O == null) {
                                Intrinsics.h("connectivitySectionDetailActivityRouter");
                                throw null;
                            }
                            FragmentActivity activity = pairingBottomSheetDialogFragment.getActivity();
                            if (activity != null) {
                                ScanActivity.t.getClass();
                                activity.startActivity(new Intent(activity, (Class<?>) ScanActivity.class));
                            }
                            pairingBottomSheetDialogFragment.dismiss();
                            return Unit.f71739a;
                        case 1:
                            PairingBottomSheetDialogFragment.Companion companion2 = PairingBottomSheetDialogFragment.S;
                            view2.getClass();
                            pairingBottomSheetDialogFragment.R.invoke(new LVLightUpTrackingUiModel.PairButtonFromBottomSheetClickEvent(LVLightUpDeviceType.KEEPALL));
                            if (pairingBottomSheetDialogFragment.O == null) {
                                Intrinsics.h("connectivitySectionDetailActivityRouter");
                                throw null;
                            }
                            FragmentActivity activity2 = pairingBottomSheetDialogFragment.getActivity();
                            LightupDeviceType lightupDeviceType = LightupDeviceType.KEEPALL;
                            lightupDeviceType.getClass();
                            if (activity2 != null) {
                                LightUpActivity.t.getClass();
                                Intent intentPutExtra = new Intent(activity2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                activity2.startActivity(intentPutExtra);
                            }
                            pairingBottomSheetDialogFragment.dismiss();
                            return Unit.f71739a;
                        default:
                            PairingBottomSheetDialogFragment.Companion companion3 = PairingBottomSheetDialogFragment.S;
                            view2.getClass();
                            pairingBottomSheetDialogFragment.R.invoke(new LVLightUpTrackingUiModel.PairButtonFromBottomSheetClickEvent(LVLightUpDeviceType.X408PAIR));
                            if (pairingBottomSheetDialogFragment.O == null) {
                                Intrinsics.h("connectivitySectionDetailActivityRouter");
                                throw null;
                            }
                            FragmentActivity activity3 = pairingBottomSheetDialogFragment.getActivity();
                            LightupDeviceType lightupDeviceType2 = LightupDeviceType.X408PAIR;
                            lightupDeviceType2.getClass();
                            if (activity3 != null) {
                                LightUpActivity.t.getClass();
                                Intent intentPutExtra2 = new Intent(activity3, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                activity3.startActivity(intentPutExtra2);
                            }
                            pairingBottomSheetDialogFragment.dismiss();
                            return Unit.f71739a;
                    }
                }
            });
            i2 = 0;
        } else {
            i2 = 8;
        }
        linearLayout.setVisibility(i2);
        IsFeatureAvailableUseCase isFeatureAvailableUseCase2 = this.P;
        if (isFeatureAvailableUseCase2 == null) {
            Intrinsics.h("isFeatureAvailableUseCase");
            throw null;
        }
        boolean zB2 = isFeatureAvailableUseCase2.b(new Feature[]{Feature.SNEAKERS});
        LinearLayout linearLayout2 = fragmentPairingBottomSheetDialogBinding.f51290c;
        if (zB2) {
            final int i6 = 2;
            ViewExtKt.d(linearLayout2, new Function1(this) { // from class: tl0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PairingBottomSheetDialogFragment f80098c;

                {
                    this.f80098c = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int i7 = i6;
                    PairingBottomSheetDialogFragment pairingBottomSheetDialogFragment = this.f80098c;
                    View view2 = (View) obj;
                    switch (i7) {
                        case 0:
                            PairingBottomSheetDialogFragment.Companion companion = PairingBottomSheetDialogFragment.S;
                            view2.getClass();
                            if (pairingBottomSheetDialogFragment.O == null) {
                                Intrinsics.h("connectivitySectionDetailActivityRouter");
                                throw null;
                            }
                            FragmentActivity activity = pairingBottomSheetDialogFragment.getActivity();
                            if (activity != null) {
                                ScanActivity.t.getClass();
                                activity.startActivity(new Intent(activity, (Class<?>) ScanActivity.class));
                            }
                            pairingBottomSheetDialogFragment.dismiss();
                            return Unit.f71739a;
                        case 1:
                            PairingBottomSheetDialogFragment.Companion companion2 = PairingBottomSheetDialogFragment.S;
                            view2.getClass();
                            pairingBottomSheetDialogFragment.R.invoke(new LVLightUpTrackingUiModel.PairButtonFromBottomSheetClickEvent(LVLightUpDeviceType.KEEPALL));
                            if (pairingBottomSheetDialogFragment.O == null) {
                                Intrinsics.h("connectivitySectionDetailActivityRouter");
                                throw null;
                            }
                            FragmentActivity activity2 = pairingBottomSheetDialogFragment.getActivity();
                            LightupDeviceType lightupDeviceType = LightupDeviceType.KEEPALL;
                            lightupDeviceType.getClass();
                            if (activity2 != null) {
                                LightUpActivity.t.getClass();
                                Intent intentPutExtra = new Intent(activity2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                activity2.startActivity(intentPutExtra);
                            }
                            pairingBottomSheetDialogFragment.dismiss();
                            return Unit.f71739a;
                        default:
                            PairingBottomSheetDialogFragment.Companion companion3 = PairingBottomSheetDialogFragment.S;
                            view2.getClass();
                            pairingBottomSheetDialogFragment.R.invoke(new LVLightUpTrackingUiModel.PairButtonFromBottomSheetClickEvent(LVLightUpDeviceType.X408PAIR));
                            if (pairingBottomSheetDialogFragment.O == null) {
                                Intrinsics.h("connectivitySectionDetailActivityRouter");
                                throw null;
                            }
                            FragmentActivity activity3 = pairingBottomSheetDialogFragment.getActivity();
                            LightupDeviceType lightupDeviceType2 = LightupDeviceType.X408PAIR;
                            lightupDeviceType2.getClass();
                            if (activity3 != null) {
                                LightUpActivity.t.getClass();
                                Intent intentPutExtra2 = new Intent(activity3, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                activity3.startActivity(intentPutExtra2);
                            }
                            pairingBottomSheetDialogFragment.dismiss();
                            return Unit.f71739a;
                    }
                }
            });
            i3 = 0;
        } else {
            i3 = 8;
        }
        linearLayout2.setVisibility(i3);
        fragmentPairingBottomSheetDialogBinding.f51292f.setVisibility((zB && zB2) ? 0 : 8);
        IsFeatureAvailableUseCase isFeatureAvailableUseCase3 = this.P;
        if (isFeatureAvailableUseCase3 == null) {
            Intrinsics.h("isFeatureAvailableUseCase");
            throw null;
        }
        boolean zB3 = isFeatureAvailableUseCase3.b(new Feature[]{Feature.KEEP_ALL});
        LinearLayout linearLayout3 = fragmentPairingBottomSheetDialogBinding.f51289b;
        final int i7 = 1;
        if (zB3) {
            ViewExtKt.d(linearLayout3, new Function1(this) { // from class: tl0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PairingBottomSheetDialogFragment f80098c;

                {
                    this.f80098c = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int i8 = i7;
                    PairingBottomSheetDialogFragment pairingBottomSheetDialogFragment = this.f80098c;
                    View view2 = (View) obj;
                    switch (i8) {
                        case 0:
                            PairingBottomSheetDialogFragment.Companion companion = PairingBottomSheetDialogFragment.S;
                            view2.getClass();
                            if (pairingBottomSheetDialogFragment.O == null) {
                                Intrinsics.h("connectivitySectionDetailActivityRouter");
                                throw null;
                            }
                            FragmentActivity activity = pairingBottomSheetDialogFragment.getActivity();
                            if (activity != null) {
                                ScanActivity.t.getClass();
                                activity.startActivity(new Intent(activity, (Class<?>) ScanActivity.class));
                            }
                            pairingBottomSheetDialogFragment.dismiss();
                            return Unit.f71739a;
                        case 1:
                            PairingBottomSheetDialogFragment.Companion companion2 = PairingBottomSheetDialogFragment.S;
                            view2.getClass();
                            pairingBottomSheetDialogFragment.R.invoke(new LVLightUpTrackingUiModel.PairButtonFromBottomSheetClickEvent(LVLightUpDeviceType.KEEPALL));
                            if (pairingBottomSheetDialogFragment.O == null) {
                                Intrinsics.h("connectivitySectionDetailActivityRouter");
                                throw null;
                            }
                            FragmentActivity activity2 = pairingBottomSheetDialogFragment.getActivity();
                            LightupDeviceType lightupDeviceType = LightupDeviceType.KEEPALL;
                            lightupDeviceType.getClass();
                            if (activity2 != null) {
                                LightUpActivity.t.getClass();
                                Intent intentPutExtra = new Intent(activity2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra.getClass();
                                activity2.startActivity(intentPutExtra);
                            }
                            pairingBottomSheetDialogFragment.dismiss();
                            return Unit.f71739a;
                        default:
                            PairingBottomSheetDialogFragment.Companion companion3 = PairingBottomSheetDialogFragment.S;
                            view2.getClass();
                            pairingBottomSheetDialogFragment.R.invoke(new LVLightUpTrackingUiModel.PairButtonFromBottomSheetClickEvent(LVLightUpDeviceType.X408PAIR));
                            if (pairingBottomSheetDialogFragment.O == null) {
                                Intrinsics.h("connectivitySectionDetailActivityRouter");
                                throw null;
                            }
                            FragmentActivity activity3 = pairingBottomSheetDialogFragment.getActivity();
                            LightupDeviceType lightupDeviceType2 = LightupDeviceType.X408PAIR;
                            lightupDeviceType2.getClass();
                            if (activity3 != null) {
                                LightUpActivity.t.getClass();
                                Intent intentPutExtra2 = new Intent(activity3, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType2).putExtra(LightUpDetailFragment.Q, (Parcelable) null);
                                intentPutExtra2.getClass();
                                activity3.startActivity(intentPutExtra2);
                            }
                            pairingBottomSheetDialogFragment.dismiss();
                            return Unit.f71739a;
                    }
                }
            });
            i4 = 0;
        } else {
            i4 = 8;
        }
        linearLayout3.setVisibility(i4);
        View view2 = fragmentPairingBottomSheetDialogBinding.f51291e;
        if (!zB3 || (!zB && !zB2)) {
            i7 = 0;
        }
        view2.setVisibility(i7 == 0 ? 8 : 0);
    }
}
