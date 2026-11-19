package com.vuitton.android.presentation.utils;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.location.LocationManager;
import android.os.Build;
import android.os.WorkSource;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.internal.location.zzdb;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.zzak;
import com.google.android.gms.tasks.Task;
import com.networkbench.agent.impl.performance.coulometry.b.j;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.android.presentation.screen.connectivity.views.ToastKt;
import defpackage.ln0;
import defpackage.tb0;
import java.util.ArrayList;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/utils/PermissionUtils;", "", "PermissionListener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PermissionUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f65862a = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f65863b = {"android.permission.BLUETOOTH_CONNECT", "android.permission.BLUETOOTH_SCAN"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f65864c = {"android.permission.READ_CALENDAR", "android.permission.WRITE_CALENDAR"};

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface PermissionListener {
        void onSuccess();
    }

    public static boolean a(BaseActivity baseActivity) {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            ToastKt.a(baseActivity);
            return false;
        }
        if (defaultAdapter.isEnabled()) {
            return true;
        }
        baseActivity.startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 2547);
        return false;
    }

    public static void b(BaseActivity baseActivity, PermissionListener permissionListener) {
        LocationRequest locationRequest = new LocationRequest(102, 3600000L, j.f37873a, 0L, Long.MAX_VALUE, Long.MAX_VALUE, Integer.MAX_VALUE, Call.Parameters.DEFAULT_CAMERA_ZOOM, true, 3600000L, 0, 0, false, new WorkSource(), null);
        zzak.a(100);
        locationRequest.f31345b = 100;
        LocationSettingsRequest.Builder builder = new LocationSettingsRequest.Builder();
        ArrayList arrayList = builder.f31367a;
        arrayList.add(locationRequest);
        builder.f31368b = true;
        LocationSettingsRequest locationSettingsRequest = new LocationSettingsRequest(arrayList, builder.f31368b, false);
        int i2 = LocationServices.f31364a;
        Task taskJ = new zzdb((Activity) baseActivity).j(locationSettingsRequest);
        taskJ.e(new ln0(new tb0(permissionListener, 25), 0));
        taskJ.c(new ln0(baseActivity, 1));
    }

    public static boolean c(BaseActivity baseActivity) {
        for (int i2 = 0; i2 < 2; i2++) {
            if (ContextCompat.checkSelfPermission(baseActivity, f65863b[i2]) != 0) {
                return Build.VERSION.SDK_INT < 31;
            }
        }
        return true;
    }

    public static void d(BaseActivity baseActivity) {
        if (Build.VERSION.SDK_INT >= 31) {
            baseActivity.requestPermissions(f65863b, 1487);
        }
    }

    public static boolean e(FragmentActivity fragmentActivity) {
        fragmentActivity.getClass();
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null && defaultAdapter.isEnabled()) {
            for (int i2 = 0; i2 < 2; i2++) {
                if (ContextCompat.checkSelfPermission(fragmentActivity, f65862a[i2]) == 0) {
                }
            }
            LocationManager locationManager = (LocationManager) fragmentActivity.getSystemService("location");
            if (locationManager != null ? locationManager.isProviderEnabled("gps") : false) {
                return true;
            }
        }
        return false;
    }
}
