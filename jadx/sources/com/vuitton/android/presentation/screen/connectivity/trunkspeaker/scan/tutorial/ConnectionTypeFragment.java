package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import android.os.Bundle;
import android.view.View;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerConnectionTypeBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerConnectionTypeEnum;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerTypeEnum;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openConnectionTypeFragment$listener$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectionTypeFragment;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u000b\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectionTypeFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ConnectionTypeFragment extends Hilt_ConnectionTypeFragment {
    public final FragmentViewBindingDelegate F;
    public ScanMainBottomSheet$openConnectionTypeFragment$listener$1 G;
    public static final /* synthetic */ KProperty[] I = {Reflection.f71922a.h(new PropertyReference1Impl(ConnectionTypeFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerConnectionTypeBinding;", 0))};
    public static final Companion H = new Companion(null);
    public static final String J = "ConnectionTypeFragment";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectionTypeFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectionTypeFragment$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
    }

    public ConnectionTypeFragment() {
        super(R.layout.fragment_trunk_speaker_connection_type);
        this.F = FragmentExtKt.d(this, ConnectionTypeFragment$binding$2.f56635b);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.Hilt_ConnectionTypeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        final int i2 = 0;
        FragmentTrunkSpeakerConnectionTypeBinding fragmentTrunkSpeakerConnectionTypeBinding = (FragmentTrunkSpeakerConnectionTypeBinding) this.F.c(this, I[0]);
        ViewExtKt.d(fragmentTrunkSpeakerConnectionTypeBinding.f51328c, new Function1(this) { // from class: ap

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ConnectionTypeFragment f20575c;

            {
                this.f20575c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                ConnectionTypeFragment connectionTypeFragment = this.f20575c;
                View view2 = (View) obj;
                switch (i3) {
                    case 0:
                        ConnectionTypeFragment.Companion companion = ConnectionTypeFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openConnectionTypeFragment$listener$1 scanMainBottomSheet$openConnectionTypeFragment$listener$1 = connectionTypeFragment.G;
                        if (scanMainBottomSheet$openConnectionTypeFragment$listener$1 != null) {
                            ScanMainBottomSheet scanMainBottomSheet = scanMainBottomSheet$openConnectionTypeFragment$listener$1.f56600b;
                            TrunkSpeakerTypeEnum trunkSpeakerTypeEnum = scanMainBottomSheet$openConnectionTypeFragment$listener$1.f56599a;
                            int i4 = ScanMainBottomSheet$openConnectionTypeFragment$listener$1.WhenMappings.f56601a[trunkSpeakerTypeEnum.ordinal()];
                            if (i4 == 1) {
                                ScanMainBottomSheet.V(scanMainBottomSheet, trunkSpeakerTypeEnum, TrunkSpeakerConnectionTypeEnum.BLUETOOTH);
                            } else {
                                if (i4 != 2) {
                                    v40.g();
                                    return null;
                                }
                                ScanMainBottomSheet.W(scanMainBottomSheet, trunkSpeakerTypeEnum, TrunkSpeakerConnectionTypeEnum.BLUETOOTH);
                            }
                        }
                        return Unit.f71739a;
                    case 1:
                        ConnectionTypeFragment.Companion companion2 = ConnectionTypeFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openConnectionTypeFragment$listener$1 scanMainBottomSheet$openConnectionTypeFragment$listener$2 = connectionTypeFragment.G;
                        if (scanMainBottomSheet$openConnectionTypeFragment$listener$2 != null) {
                            ScanMainBottomSheet scanMainBottomSheet2 = scanMainBottomSheet$openConnectionTypeFragment$listener$2.f56600b;
                            TrunkSpeakerTypeEnum trunkSpeakerTypeEnum2 = scanMainBottomSheet$openConnectionTypeFragment$listener$2.f56599a;
                            int i5 = ScanMainBottomSheet$openConnectionTypeFragment$listener$1.WhenMappings.f56601a[trunkSpeakerTypeEnum2.ordinal()];
                            if (i5 == 1) {
                                ScanMainBottomSheet.V(scanMainBottomSheet2, trunkSpeakerTypeEnum2, TrunkSpeakerConnectionTypeEnum.WIFI);
                            } else {
                                if (i5 != 2) {
                                    v40.g();
                                    return null;
                                }
                                ScanMainBottomSheet.W(scanMainBottomSheet2, trunkSpeakerTypeEnum2, TrunkSpeakerConnectionTypeEnum.WIFI);
                            }
                        }
                        return Unit.f71739a;
                    default:
                        ConnectionTypeFragment.Companion companion3 = ConnectionTypeFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openConnectionTypeFragment$listener$1 scanMainBottomSheet$openConnectionTypeFragment$listener$3 = connectionTypeFragment.G;
                        if (scanMainBottomSheet$openConnectionTypeFragment$listener$3 != null) {
                            ScanMainBottomSheet.X(scanMainBottomSheet$openConnectionTypeFragment$listener$3.f56600b);
                        }
                        return Unit.f71739a;
                }
            }
        });
        final int i3 = 1;
        ViewExtKt.d(fragmentTrunkSpeakerConnectionTypeBinding.d, new Function1(this) { // from class: ap

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ConnectionTypeFragment f20575c;

            {
                this.f20575c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                ConnectionTypeFragment connectionTypeFragment = this.f20575c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        ConnectionTypeFragment.Companion companion = ConnectionTypeFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openConnectionTypeFragment$listener$1 scanMainBottomSheet$openConnectionTypeFragment$listener$1 = connectionTypeFragment.G;
                        if (scanMainBottomSheet$openConnectionTypeFragment$listener$1 != null) {
                            ScanMainBottomSheet scanMainBottomSheet = scanMainBottomSheet$openConnectionTypeFragment$listener$1.f56600b;
                            TrunkSpeakerTypeEnum trunkSpeakerTypeEnum = scanMainBottomSheet$openConnectionTypeFragment$listener$1.f56599a;
                            int i5 = ScanMainBottomSheet$openConnectionTypeFragment$listener$1.WhenMappings.f56601a[trunkSpeakerTypeEnum.ordinal()];
                            if (i5 == 1) {
                                ScanMainBottomSheet.V(scanMainBottomSheet, trunkSpeakerTypeEnum, TrunkSpeakerConnectionTypeEnum.BLUETOOTH);
                            } else {
                                if (i5 != 2) {
                                    v40.g();
                                    return null;
                                }
                                ScanMainBottomSheet.W(scanMainBottomSheet, trunkSpeakerTypeEnum, TrunkSpeakerConnectionTypeEnum.BLUETOOTH);
                            }
                        }
                        return Unit.f71739a;
                    case 1:
                        ConnectionTypeFragment.Companion companion2 = ConnectionTypeFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openConnectionTypeFragment$listener$1 scanMainBottomSheet$openConnectionTypeFragment$listener$2 = connectionTypeFragment.G;
                        if (scanMainBottomSheet$openConnectionTypeFragment$listener$2 != null) {
                            ScanMainBottomSheet scanMainBottomSheet2 = scanMainBottomSheet$openConnectionTypeFragment$listener$2.f56600b;
                            TrunkSpeakerTypeEnum trunkSpeakerTypeEnum2 = scanMainBottomSheet$openConnectionTypeFragment$listener$2.f56599a;
                            int i6 = ScanMainBottomSheet$openConnectionTypeFragment$listener$1.WhenMappings.f56601a[trunkSpeakerTypeEnum2.ordinal()];
                            if (i6 == 1) {
                                ScanMainBottomSheet.V(scanMainBottomSheet2, trunkSpeakerTypeEnum2, TrunkSpeakerConnectionTypeEnum.WIFI);
                            } else {
                                if (i6 != 2) {
                                    v40.g();
                                    return null;
                                }
                                ScanMainBottomSheet.W(scanMainBottomSheet2, trunkSpeakerTypeEnum2, TrunkSpeakerConnectionTypeEnum.WIFI);
                            }
                        }
                        return Unit.f71739a;
                    default:
                        ConnectionTypeFragment.Companion companion3 = ConnectionTypeFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openConnectionTypeFragment$listener$1 scanMainBottomSheet$openConnectionTypeFragment$listener$3 = connectionTypeFragment.G;
                        if (scanMainBottomSheet$openConnectionTypeFragment$listener$3 != null) {
                            ScanMainBottomSheet.X(scanMainBottomSheet$openConnectionTypeFragment$listener$3.f56600b);
                        }
                        return Unit.f71739a;
                }
            }
        });
        final int i4 = 2;
        ViewExtKt.d(fragmentTrunkSpeakerConnectionTypeBinding.f51327b, new Function1(this) { // from class: ap

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ConnectionTypeFragment f20575c;

            {
                this.f20575c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i5 = i4;
                ConnectionTypeFragment connectionTypeFragment = this.f20575c;
                View view2 = (View) obj;
                switch (i5) {
                    case 0:
                        ConnectionTypeFragment.Companion companion = ConnectionTypeFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openConnectionTypeFragment$listener$1 scanMainBottomSheet$openConnectionTypeFragment$listener$1 = connectionTypeFragment.G;
                        if (scanMainBottomSheet$openConnectionTypeFragment$listener$1 != null) {
                            ScanMainBottomSheet scanMainBottomSheet = scanMainBottomSheet$openConnectionTypeFragment$listener$1.f56600b;
                            TrunkSpeakerTypeEnum trunkSpeakerTypeEnum = scanMainBottomSheet$openConnectionTypeFragment$listener$1.f56599a;
                            int i6 = ScanMainBottomSheet$openConnectionTypeFragment$listener$1.WhenMappings.f56601a[trunkSpeakerTypeEnum.ordinal()];
                            if (i6 == 1) {
                                ScanMainBottomSheet.V(scanMainBottomSheet, trunkSpeakerTypeEnum, TrunkSpeakerConnectionTypeEnum.BLUETOOTH);
                            } else {
                                if (i6 != 2) {
                                    v40.g();
                                    return null;
                                }
                                ScanMainBottomSheet.W(scanMainBottomSheet, trunkSpeakerTypeEnum, TrunkSpeakerConnectionTypeEnum.BLUETOOTH);
                            }
                        }
                        return Unit.f71739a;
                    case 1:
                        ConnectionTypeFragment.Companion companion2 = ConnectionTypeFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openConnectionTypeFragment$listener$1 scanMainBottomSheet$openConnectionTypeFragment$listener$2 = connectionTypeFragment.G;
                        if (scanMainBottomSheet$openConnectionTypeFragment$listener$2 != null) {
                            ScanMainBottomSheet scanMainBottomSheet2 = scanMainBottomSheet$openConnectionTypeFragment$listener$2.f56600b;
                            TrunkSpeakerTypeEnum trunkSpeakerTypeEnum2 = scanMainBottomSheet$openConnectionTypeFragment$listener$2.f56599a;
                            int i7 = ScanMainBottomSheet$openConnectionTypeFragment$listener$1.WhenMappings.f56601a[trunkSpeakerTypeEnum2.ordinal()];
                            if (i7 == 1) {
                                ScanMainBottomSheet.V(scanMainBottomSheet2, trunkSpeakerTypeEnum2, TrunkSpeakerConnectionTypeEnum.WIFI);
                            } else {
                                if (i7 != 2) {
                                    v40.g();
                                    return null;
                                }
                                ScanMainBottomSheet.W(scanMainBottomSheet2, trunkSpeakerTypeEnum2, TrunkSpeakerConnectionTypeEnum.WIFI);
                            }
                        }
                        return Unit.f71739a;
                    default:
                        ConnectionTypeFragment.Companion companion3 = ConnectionTypeFragment.H;
                        view2.getClass();
                        ScanMainBottomSheet$openConnectionTypeFragment$listener$1 scanMainBottomSheet$openConnectionTypeFragment$listener$3 = connectionTypeFragment.G;
                        if (scanMainBottomSheet$openConnectionTypeFragment$listener$3 != null) {
                            ScanMainBottomSheet.X(scanMainBottomSheet$openConnectionTypeFragment$listener$3.f56600b);
                        }
                        return Unit.f71739a;
                }
            }
        });
    }
}
