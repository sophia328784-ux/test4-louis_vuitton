package com.vuitton.android.presentation.screen.connectivity.lightup;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.result.ActivityResultCaller;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.lightup.sdk.device.ble.scanner.listeners.LightupScanProcessListener;
import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.enums.PowerOffReason;
import com.lightup.sdk.device.helpers.LightupHelper;
import com.lightup.sdk.device.helpers.LightupHelperInterface;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelper;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelperInstance;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpDetailFragmentInterface;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpFragmentInterface;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpScanFragmentInterface;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.lvlisteners.LVLightUpDeviceScanListener;
import com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllScanFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerScanFragment;
import com.vuitton.android.presentation.screen.connectivity.views.ToastKt;
import com.vuitton.android.presentation.utils.PermissionUtils;
import com.vuitton.foundation.model.domain.model.connectivity.LightUpProduct;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ac;
import defpackage.jr;
import defpackage.r90;
import defpackage.s90;
import defpackage.x60;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/BaseLightUpActivity;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/lvlisteners/LVLightUpDeviceScanListener;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class LightUpActivity extends Hilt_LightUpActivity implements LVLightUpDeviceScanListener {
    public static final Companion t = new Companion(null);
    public LightUpRouter q;
    public final Lazy r = LazyKt.b(new x60(this, 4));
    public final LightUpActivity$bluetoothReceiver$1 s = new BroadcastReceiver() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity$bluetoothReceiver$1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            context.getClass();
            intent.getClass();
            if (Intrinsics.c(intent.getAction(), "android.bluetooth.adapter.action.STATE_CHANGED") && intent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE) == 13) {
                ToastKt.a(this.f56107a);
            }
        }
    };

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;", "", "", "KEY_LIGHT_UP_PRODUCT", "Ljava/lang/String;", "KEY_LIGHT_UP_DEVICE_TYPE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56106a;

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
            f56106a = iArr;
        }
    }

    public static LightupDeviceType O(LightUpActivity lightUpActivity) {
        Object serializableExtra;
        Intent intent = lightUpActivity.getIntent();
        if (intent != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializableExtra = intent.getSerializableExtra("LIGHT_UP_DEVICE_TYPE", LightupDeviceType.class);
            } else {
                Object serializableExtra2 = intent.getSerializableExtra("LIGHT_UP_DEVICE_TYPE");
                if (!(serializableExtra2 instanceof LightupDeviceType)) {
                    serializableExtra2 = null;
                }
                serializableExtra = (LightupDeviceType) serializableExtra2;
            }
            LightupDeviceType lightupDeviceType = (LightupDeviceType) serializableExtra;
            if (lightupDeviceType != null) {
                return lightupDeviceType;
            }
        }
        return LightupDeviceType.KEEPALL;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.BaseLightUpActivity
    public final void H() {
        if (!PermissionUtils.c(this)) {
            PermissionUtils.d(this);
            return;
        }
        if (PermissionUtils.a(this)) {
            for (int i2 = 0; i2 < 2; i2++) {
                String[] strArr = PermissionUtils.f65862a;
                if (ContextCompat.checkSelfPermission(this, strArr[i2]) != 0) {
                    requestPermissions(strArr, 1486);
                    return;
                }
            }
            PermissionUtils.b(this, new LightUpActivity$checkGps$1(this));
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.Hilt_LightUpActivity
    public final void J() {
        runOnUiThread(new r90(this, 5));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.Hilt_LightUpActivity
    public final void K() {
        runOnUiThread(new r90(this, 0));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.Hilt_LightUpActivity
    public final void L(boolean z) {
        runOnUiThread(new ac(this, z, 4));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.Hilt_LightUpActivity
    public final void M() {
        runOnUiThread(new r90(this, 3));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.Hilt_LightUpActivity
    public final void N(PairOrientation pairOrientation) {
        pairOrientation.getClass();
        runOnUiThread(new jr(this, pairOrientation, 26));
    }

    public final void P() {
        I((LightupDeviceType) this.r.getF71699b());
        List<ActivityResultCaller> listM = getSupportFragmentManager().M();
        listM.getClass();
        for (ActivityResultCaller activityResultCaller : listM) {
            if (activityResultCaller instanceof LightUpFragmentInterface) {
                ((LightUpFragmentInterface) activityResultCaller).t();
            }
        }
    }

    public final LightUpDetailFragment Q() {
        LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
        if (lightupDeviceType == null) {
            Intrinsics.h("lightUpDeviceType");
            throw null;
        }
        int i2 = WhenMappings.f56106a[lightupDeviceType.ordinal()];
        if (i2 == 1) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            KeepAllDetailFragment.Y.getClass();
            return (KeepAllDetailFragment) supportFragmentManager.G(KeepAllDetailFragment.h0);
        }
        if (i2 != 2) {
            return null;
        }
        FragmentManager supportFragmentManager2 = getSupportFragmentManager();
        SneakerDetailFragment.Z.getClass();
        return (SneakerDetailFragment) supportFragmentManager2.G(SneakerDetailFragment.t0);
    }

    public final void R(final List list) {
        list.getClass();
        LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
        LightupScanProcessListener lightupScanProcessListener = new LightupScanProcessListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelper$startScan$1
            @Override // com.lightup.sdk.device.ble.scanner.listeners.LightupScanProcessListener
            public final void onDeviceFound(LightupDevice lightupDevice) {
                Object next;
                lightupDevice.getClass();
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((LightUpProduct) next).f67297e, lightupDevice.toString()));
                if (next != null) {
                    return;
                }
                LightUpActivity lightUpActivity = this;
                lightUpActivity.runOnUiThread(new s90(lightUpActivity, lightupDevice, 1));
                if (LVLightUpHelperInstance.f56155a != null) {
                    LightupHelper lightupHelperA2 = LVLightUpHelperInstance.a();
                    LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
                    if (lightupDeviceType != null) {
                        lightupHelperA2.stopScan(lightupDeviceType);
                    } else {
                        Intrinsics.h("lightUpDeviceType");
                        throw null;
                    }
                }
            }

            @Override // com.lightup.sdk.device.ble.scanner.listeners.LightupScanProcessListener
            public final void onScanEnd(boolean z) {
                if (z) {
                    return;
                }
                LightUpActivity lightUpActivity = this;
                lightUpActivity.runOnUiThread(new r90(lightUpActivity, 1));
            }
        };
        LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
        if (lightupDeviceType != null) {
            lightupHelperA.startScan(lightupScanProcessListener, lightupDeviceType);
        } else {
            Intrinsics.h("lightUpDeviceType");
            throw null;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 2541) {
            if (i3 == -1) {
                P();
                return;
            } else {
                if (i3 != 0) {
                    return;
                }
                finish();
                return;
            }
        }
        if (i2 != 2547) {
            return;
        }
        if (i3 == -1) {
            for (int i4 = 0; i4 < 2; i4++) {
                String[] strArr = PermissionUtils.f65862a;
                if (ContextCompat.checkSelfPermission(this, strArr[i4]) != 0) {
                    requestPermissions(strArr, 1486);
                    return;
                }
            }
            PermissionUtils.b(this, new LightUpActivity$checkGps$1(this));
            return;
        }
        List<ActivityResultCaller> listM = getSupportFragmentManager().M();
        listM.getClass();
        for (ActivityResultCaller activityResultCaller : listM) {
            if (activityResultCaller instanceof LightUpScanFragmentInterface) {
                ((LightUpScanFragmentInterface) activityResultCaller).A();
            } else if (activityResultCaller instanceof LightUpDetailFragmentInterface) {
                ((LightUpDetailFragmentInterface) activityResultCaller).u();
            }
        }
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.LightupDeviceConnectionListener
    public final void onConnected(LightupDevice lightupDevice, boolean z, LightupHelperInterface lightupHelperInterface) {
        lightupDevice.getClass();
        lightupHelperInterface.getClass();
        runOnUiThread(new s90(this, lightupDevice, 0));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        LightUpProductUiModel lightUpProductUiModel;
        String str;
        Fragment keepAllScanFragment;
        String str2;
        FragmentManager supportFragmentManager;
        Parcelable parcelable;
        Lazy lazy = this.r;
        super.onCreate(bundle);
        setContentView(R.layout.activity_fragment_container);
        Intent intent = getIntent();
        Fragment fragment = null;
        if (intent != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) intent.getParcelableExtra(LightUpDetailFragment.Q, LightUpProductUiModel.class);
            } else {
                Parcelable parcelableExtra = intent.getParcelableExtra(LightUpDetailFragment.Q);
                if (!(parcelableExtra instanceof LightUpProductUiModel)) {
                    parcelableExtra = null;
                }
                parcelable = (LightUpProductUiModel) parcelableExtra;
            }
            lightUpProductUiModel = (LightUpProductUiModel) parcelable;
        } else {
            lightUpProductUiModel = null;
        }
        if (!PermissionUtils.c(this)) {
            PermissionUtils.d(this);
        }
        try {
            I((LightupDeviceType) lazy.getF71699b());
        } catch (SecurityException unused) {
            PermissionUtils.d(this);
        }
        LightupDeviceType lightupDeviceType = (LightupDeviceType) lazy.getF71699b();
        lightupDeviceType.getClass();
        LVLightUpHelper.f56151a = lightupDeviceType;
        LightUpRouter lightUpRouter = this.q;
        if (lightUpProductUiModel != null) {
            if (lightUpRouter != null) {
                LightUpRouter.a(this, lightUpProductUiModel);
                return;
            } else {
                Intrinsics.h("lightUpRouter");
                throw null;
            }
        }
        if (lightUpRouter == null) {
            Intrinsics.h("lightUpRouter");
            throw null;
        }
        LightupDeviceType lightupDeviceType2 = (LightupDeviceType) lazy.getF71699b();
        lightupDeviceType2.getClass();
        int i2 = LightUpRouter.WhenMappings.f56109a[lightupDeviceType2.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                str2 = null;
            } else {
                SneakerScanFragment.O.getClass();
                str = SneakerScanFragment.Q;
                keepAllScanFragment = new SneakerScanFragment();
            }
            if (fragment != null || (supportFragmentManager = getSupportFragmentManager()) == null) {
            }
            FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
            fragmentTransactionD.m(R.id.fragment_container, fragment, str2);
            fragmentTransactionD.e();
            return;
        }
        KeepAllScanFragment.O.getClass();
        str = KeepAllScanFragment.Q;
        keepAllScanFragment = new KeepAllScanFragment();
        String str3 = str;
        fragment = keepAllScanFragment;
        str2 = str3;
        if (fragment != null) {
        }
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.LightupDeviceConnectionListener
    public final void onDeviceShutDown(LightupDevice lightupDevice, PowerOffReason powerOffReason) {
        lightupDevice.getClass();
        powerOffReason.getClass();
        runOnUiThread(new r90(this, 4));
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.LightupDeviceConnectionListener
    public final void onNoDeviceFound(LightupDevice lightupDevice) {
        lightupDevice.getClass();
        runOnUiThread(new r90(this, 9));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        unregisterReceiver(this.s);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        strArr.getClass();
        iArr.getClass();
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 == 1486) {
            if (ArraysKt.g(iArr, 0)) {
                PermissionUtils.b(this, new LightUpActivity$checkGps$1(this));
                return;
            } else {
                runOnUiThread(new r90(this, 7));
                return;
            }
        }
        if (i2 == 1487 && ArraysKt.g(iArr, 0) && PermissionUtils.a(this)) {
            for (int i3 = 0; i3 < 2; i3++) {
                String[] strArr2 = PermissionUtils.f65862a;
                if (ContextCompat.checkSelfPermission(this, strArr2[i3]) != 0) {
                    requestPermissions(strArr2, 1486);
                    return;
                }
            }
            PermissionUtils.b(this, new LightUpActivity$checkGps$1(this));
        }
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.LightupDeviceConnectionListener
    public final void onRequiresUpdate(LightupDevice lightupDevice, boolean z, LightupHelperInterface lightupHelperInterface) {
        lightupDevice.getClass();
        lightupHelperInterface.getClass();
        runOnUiThread(new r90(this, 6));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        registerReceiver(this.s, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        if (getSupportFragmentManager().J() > 0) {
            getSupportFragmentManager().V();
            return true;
        }
        finish();
        return true;
    }
}
