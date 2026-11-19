package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail;

import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import defpackage.w61;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f56527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WifiDeviceDetailFragment f56528c;

    public /* synthetic */ a(WifiDeviceDetailFragment wifiDeviceDetailFragment, int i2) {
        this.f56527b = i2;
        this.f56528c = wifiDeviceDetailFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f56527b;
        WifiDeviceDetailFragment wifiDeviceDetailFragment = this.f56528c;
        int i3 = 3;
        switch (i2) {
            case 0:
                WifiDeviceDetailFragment.Companion companion = WifiDeviceDetailFragment.N;
                BuildersKt.c(LifecycleOwnerKt.a(wifiDeviceDetailFragment), null, null, new WifiDeviceDetailFragment$setDeviceName$1$1$1(wifiDeviceDetailFragment, null), 3);
                FragmentActivity activity = wifiDeviceDetailFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new w61(wifiDeviceDetailFragment, 0));
                }
                break;
            default:
                BuildersKt.c(LifecycleOwnerKt.a(wifiDeviceDetailFragment), null, null, new WifiDeviceDetailFragment$resetDevice$1$onDialogPositiveClick$1$1$1$1(wifiDeviceDetailFragment, null), 3);
                FragmentActivity activity2 = wifiDeviceDetailFragment.getActivity();
                if (activity2 != null) {
                    if (activity2.getSupportFragmentManager().J() > 0) {
                        activity2.getSupportFragmentManager().V();
                    } else {
                        activity2.finish();
                    }
                }
                FragmentActivity activity3 = wifiDeviceDetailFragment.getActivity();
                if (activity3 != null) {
                    activity3.runOnUiThread(new w61(wifiDeviceDetailFragment, i3));
                }
                break;
        }
        return Unit.f71739a;
    }
}
