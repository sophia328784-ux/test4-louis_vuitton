package com.vuitton.android.presentation.utils;

import android.content.Context;
import android.location.LocationManager;
import androidx.core.content.ContextCompat;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.tasks.Task;
import defpackage.em;
import defpackage.fw;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LocationUtilsKt {
    public static final void a(Context context, Function1 function1, Function0 function0) {
        context.getClass();
        function1.getClass();
        function0.getClass();
        int i2 = LocationServices.f31364a;
        zzcg zzcgVar = new zzcg(context);
        boolean z = ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0;
        boolean z2 = ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION") == 0;
        Object systemService = context.getSystemService("location");
        systemService.getClass();
        LocationManager locationManager = (LocationManager) systemService;
        if ((!locationManager.isProviderEnabled("network") && !locationManager.isProviderEnabled("gps")) || (!z2 && !z)) {
            function0.mo47invoke();
            return;
        }
        Task taskC = zzcgVar.c();
        taskC.e(new fw(new em(function1, function0, 6), 14));
        taskC.c(new fw(function0, 15));
    }
}
