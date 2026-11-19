package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.analytic.DeviceIdLocalDataSource;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Request;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor;", "Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;", "Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;", "deviceIdLocalDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeviceIdInterceptor extends SuspendInterceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeviceIdLocalDataSource f47066a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$Companion;", "", "", "HEADER_DEVICE_ID", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public DeviceIdInterceptor(DeviceIdLocalDataSource deviceIdLocalDataSource) {
        deviceIdLocalDataSource.getClass();
        this.f47066a = deviceIdLocalDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.data.net.interceptor.SuspendInterceptor
    public final Object a(RealInterceptorChain realInterceptorChain, ContinuationImpl continuationImpl) {
        DeviceIdInterceptor$interceptSuspendable$1 deviceIdInterceptor$interceptSuspendable$1;
        if (continuationImpl instanceof DeviceIdInterceptor$interceptSuspendable$1) {
            deviceIdInterceptor$interceptSuspendable$1 = (DeviceIdInterceptor$interceptSuspendable$1) continuationImpl;
            int i2 = deviceIdInterceptor$interceptSuspendable$1.f47069e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deviceIdInterceptor$interceptSuspendable$1.f47069e = i2 - Integer.MIN_VALUE;
            } else {
                deviceIdInterceptor$interceptSuspendable$1 = new DeviceIdInterceptor$interceptSuspendable$1(this, continuationImpl);
            }
        } else {
            deviceIdInterceptor$interceptSuspendable$1 = new DeviceIdInterceptor$interceptSuspendable$1(this, continuationImpl);
        }
        Object objA = deviceIdInterceptor$interceptSuspendable$1.f47068c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deviceIdInterceptor$interceptSuspendable$1.f47069e;
        if (i3 == 0) {
            ResultKt.b(objA);
            deviceIdInterceptor$interceptSuspendable$1.f47067b = realInterceptorChain;
            deviceIdInterceptor$interceptSuspendable$1.f47069e = 1;
            objA = this.f47066a.a(deviceIdInterceptor$interceptSuspendable$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            realInterceptorChain = deviceIdInterceptor$interceptSuspendable$1.f47067b;
            ResultKt.b(objA);
        }
        Request f77173e = realInterceptorChain.getF77173e();
        f77173e.getClass();
        Request.Builder builder = new Request.Builder(f77173e);
        builder.b("x-device-id", (String) objA);
        return realInterceptorChain.b(new Request(builder));
    }
}
