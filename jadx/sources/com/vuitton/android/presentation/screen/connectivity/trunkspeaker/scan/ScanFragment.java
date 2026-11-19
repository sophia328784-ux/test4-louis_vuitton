package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerScanBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerFragmentInterface;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.ScanActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.ScanFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\rB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerFragmentInterface;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$Listener;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ScanFragment extends Hilt_ScanFragment implements TrunkSpeakerFragmentInterface, ScanMainBottomSheet.Listener {
    public final FragmentViewBindingDelegate F;
    public static final /* synthetic */ KProperty[] H = {Reflection.f71922a.h(new PropertyReference1Impl(ScanFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerScanBinding;", 0))};
    public static final Companion G = new Companion(null);
    public static final String I = "ScanFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanFragment$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public ScanFragment() {
        super(R.layout.fragment_trunk_speaker_scan);
        this.F = FragmentExtKt.d(this, ScanFragment$binding$2.f56590b);
    }

    public final void O() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.setResult(-1);
        }
        FragmentActivity activity2 = getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.Hilt_ScanFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        KProperty[] kPropertyArr = H;
        final int i2 = 0;
        KProperty kProperty = kPropertyArr[0];
        FragmentViewBindingDelegate fragmentViewBindingDelegate = this.F;
        ViewExtKt.d(((FragmentTrunkSpeakerScanBinding) fragmentViewBindingDelegate.c(this, kProperty)).f51350c, new Function1(this) { // from class: cu0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ScanFragment f68334c;

            {
                this.f68334c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                ScanFragment scanFragment = this.f68334c;
                View view2 = (View) obj;
                switch (i3) {
                    case 0:
                        ScanFragment.Companion companion = ScanFragment.G;
                        view2.getClass();
                        FragmentActivity activity = scanFragment.getActivity();
                        ScanActivity scanActivity = activity instanceof ScanActivity ? (ScanActivity) activity : null;
                        if (scanActivity != null) {
                            scanActivity.J();
                        }
                        break;
                    default:
                        ScanFragment.Companion companion2 = ScanFragment.G;
                        view2.getClass();
                        FragmentActivity activity2 = scanFragment.getActivity();
                        if (activity2 != null) {
                            activity2.finish();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        final int i3 = 1;
        ViewExtKt.d(((FragmentTrunkSpeakerScanBinding) fragmentViewBindingDelegate.c(this, kPropertyArr[0])).f51349b, new Function1(this) { // from class: cu0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ScanFragment f68334c;

            {
                this.f68334c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                ScanFragment scanFragment = this.f68334c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        ScanFragment.Companion companion = ScanFragment.G;
                        view2.getClass();
                        FragmentActivity activity = scanFragment.getActivity();
                        ScanActivity scanActivity = activity instanceof ScanActivity ? (ScanActivity) activity : null;
                        if (scanActivity != null) {
                            scanActivity.J();
                        }
                        break;
                    default:
                        ScanFragment.Companion companion2 = ScanFragment.G;
                        view2.getClass();
                        FragmentActivity activity2 = scanFragment.getActivity();
                        if (activity2 != null) {
                            activity2.finish();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerFragmentInterface
    public final void t() {
        FragmentManager supportFragmentManager;
        FragmentActivity activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        ScanMainBottomSheet.R.getClass();
        ScanMainBottomSheet scanMainBottomSheet = new ScanMainBottomSheet();
        scanMainBottomSheet.O = this;
        scanMainBottomSheet.show(supportFragmentManager, ScanMainBottomSheet.S);
    }
}
