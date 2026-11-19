package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerWifiConnectionSuccessBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.LVTrunkSpotifyHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.ScanFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openWifiConnectionSuccess$listener$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiSuccessFragment;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u000b\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ConnectToWifiSuccessFragment extends Hilt_ConnectToWifiSuccessFragment {
    public final FragmentViewBindingDelegate F;
    public ScanMainBottomSheet$openWifiConnectionSuccess$listener$1 G;
    public static final /* synthetic */ KProperty[] I = {Reflection.f71922a.h(new PropertyReference1Impl(ConnectToWifiSuccessFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiConnectionSuccessBinding;", 0))};
    public static final Companion H = new Companion(null);
    public static final String J = "ConnectToWifiSuccessFragment";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
    }

    public ConnectToWifiSuccessFragment() {
        super(R.layout.fragment_trunk_speaker_wifi_connection_success);
        this.F = FragmentExtKt.d(this, ConnectToWifiSuccessFragment$binding$2.f56628b);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.Hilt_ConnectToWifiSuccessFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        final int i2 = 0;
        FragmentTrunkSpeakerWifiConnectionSuccessBinding fragmentTrunkSpeakerWifiConnectionSuccessBinding = (FragmentTrunkSpeakerWifiConnectionSuccessBinding) this.F.c(this, I[0]);
        Button button = fragmentTrunkSpeakerWifiConnectionSuccessBinding.f51356c;
        button.setText(LVTrunkSpotifyHelper.a(getActivity()));
        ViewExtKt.d(button, new Function1(this) { // from class: yo

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ConnectToWifiSuccessFragment f81398c;

            {
                this.f81398c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                ConnectToWifiSuccessFragment connectToWifiSuccessFragment = this.f81398c;
                View view2 = (View) obj;
                switch (i3) {
                    case 0:
                        ConnectToWifiSuccessFragment.Companion companion = ConnectToWifiSuccessFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openWifiConnectionSuccess$listener$1 scanMainBottomSheet$openWifiConnectionSuccess$listener$1 = connectToWifiSuccessFragment.G;
                        if (scanMainBottomSheet$openWifiConnectionSuccess$listener$1 != null) {
                            ScanMainBottomSheet scanMainBottomSheet = scanMainBottomSheet$openWifiConnectionSuccess$listener$1.f56612a;
                            LVTrunkSpotifyHelper.b(scanMainBottomSheet.getActivity());
                            ScanFragment scanFragment = scanMainBottomSheet.O;
                            if (scanFragment != null) {
                                scanFragment.O();
                            }
                        }
                        break;
                    default:
                        ConnectToWifiSuccessFragment.Companion companion2 = ConnectToWifiSuccessFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openWifiConnectionSuccess$listener$1 scanMainBottomSheet$openWifiConnectionSuccess$listener$2 = connectToWifiSuccessFragment.G;
                        if (scanMainBottomSheet$openWifiConnectionSuccess$listener$2 != null) {
                            ScanMainBottomSheet scanMainBottomSheet2 = scanMainBottomSheet$openWifiConnectionSuccess$listener$2.f56612a;
                            FragmentActivity activity = scanMainBottomSheet2.getActivity();
                            if (activity != null) {
                                activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                            }
                            ScanFragment scanFragment2 = scanMainBottomSheet2.O;
                            if (scanFragment2 != null) {
                                scanFragment2.O();
                            }
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        final int i3 = 1;
        ViewExtKt.d(fragmentTrunkSpeakerWifiConnectionSuccessBinding.f51355b, new Function1(this) { // from class: yo

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ConnectToWifiSuccessFragment f81398c;

            {
                this.f81398c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                ConnectToWifiSuccessFragment connectToWifiSuccessFragment = this.f81398c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        ConnectToWifiSuccessFragment.Companion companion = ConnectToWifiSuccessFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openWifiConnectionSuccess$listener$1 scanMainBottomSheet$openWifiConnectionSuccess$listener$1 = connectToWifiSuccessFragment.G;
                        if (scanMainBottomSheet$openWifiConnectionSuccess$listener$1 != null) {
                            ScanMainBottomSheet scanMainBottomSheet = scanMainBottomSheet$openWifiConnectionSuccess$listener$1.f56612a;
                            LVTrunkSpotifyHelper.b(scanMainBottomSheet.getActivity());
                            ScanFragment scanFragment = scanMainBottomSheet.O;
                            if (scanFragment != null) {
                                scanFragment.O();
                            }
                        }
                        break;
                    default:
                        ConnectToWifiSuccessFragment.Companion companion2 = ConnectToWifiSuccessFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openWifiConnectionSuccess$listener$1 scanMainBottomSheet$openWifiConnectionSuccess$listener$2 = connectToWifiSuccessFragment.G;
                        if (scanMainBottomSheet$openWifiConnectionSuccess$listener$2 != null) {
                            ScanMainBottomSheet scanMainBottomSheet2 = scanMainBottomSheet$openWifiConnectionSuccess$listener$2.f56612a;
                            FragmentActivity activity = scanMainBottomSheet2.getActivity();
                            if (activity != null) {
                                activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.spotify.com/us/connect/")));
                            }
                            ScanFragment scanFragment2 = scanMainBottomSheet2.O;
                            if (scanFragment2 != null) {
                                scanFragment2.O();
                            }
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
    }
}
