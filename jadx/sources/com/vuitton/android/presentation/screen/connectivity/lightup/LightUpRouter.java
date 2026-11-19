package com.vuitton.android.presentation.screen.connectivity.lightup;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LightUpRouter {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56109a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f56110b;

        static {
            int[] iArr = new int[LightupDeviceType.values().length];
            try {
                iArr[LightupDeviceType.KEEPALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LightupDeviceType.X408PAIR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56109a = iArr;
            int[] iArr2 = new int[LVLightUpDeviceType.values().length];
            try {
                iArr2[LVLightUpDeviceType.KEEPALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[LVLightUpDeviceType.X408PAIR.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f56110b = iArr2;
        }
    }

    @Inject
    public LightUpRouter() {
    }

    public static void a(LightUpActivity lightUpActivity, LightUpProductUiModel lightUpProductUiModel) {
        String str;
        Fragment keepAllDetailFragment;
        int i2 = WhenMappings.f56110b[lightUpProductUiModel.f55961c.ordinal()];
        if (i2 == 1) {
            KeepAllDetailFragment.Y.getClass();
            str = KeepAllDetailFragment.h0;
            keepAllDetailFragment = new KeepAllDetailFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable(LightUpDetailFragment.Q, lightUpProductUiModel);
            keepAllDetailFragment.setArguments(bundle);
        } else {
            if (i2 != 2) {
                v40.g();
                return;
            }
            SneakerDetailFragment.Z.getClass();
            str = SneakerDetailFragment.t0;
            keepAllDetailFragment = new SneakerDetailFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(LightUpDetailFragment.Q, lightUpProductUiModel);
            keepAllDetailFragment.setArguments(bundle2);
        }
        FragmentManager supportFragmentManager = lightUpActivity.getSupportFragmentManager();
        if (supportFragmentManager != null) {
            FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
            fragmentTransactionD.m(R.id.fragment_container, keepAllDetailFragment, str);
            fragmentTransactionD.e();
        }
    }
}
