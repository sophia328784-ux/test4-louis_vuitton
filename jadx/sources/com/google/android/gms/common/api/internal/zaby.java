package com.google.android.gms.common.api.internal;

import android.os.SystemClock;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes2.dex */
final class zaby implements OnCompleteListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GoogleApiManager f29089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29090c;
    public final ApiKey d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f29091e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f29092f;

    public zaby(GoogleApiManager googleApiManager, int i2, ApiKey apiKey, long j2, long j3) {
        this.f29089b = googleApiManager;
        this.f29090c = i2;
        this.d = apiKey;
        this.f29091e = j2;
        this.f29092f = j3;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0031 A[RETURN] */
    public static ConnectionTelemetryConfiguration a(zabk zabkVar, BaseGmsClient baseGmsClient, int i2) {
        zzj zzjVar = baseGmsClient.x;
        ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzjVar == null ? null : zzjVar.f29264e;
        if (connectionTelemetryConfiguration != null && connectionTelemetryConfiguration.f29175c) {
            int[] iArr = connectionTelemetryConfiguration.f29176e;
            int i3 = 0;
            if (iArr == null) {
                int[] iArr2 = connectionTelemetryConfiguration.g;
                if (iArr2 != null) {
                    while (i3 < iArr2.length) {
                        if (iArr2[i3] != i2) {
                            i3++;
                        }
                    }
                    if (zabkVar.s < connectionTelemetryConfiguration.f29177f) {
                        return connectionTelemetryConfiguration;
                    }
                } else if (zabkVar.s < connectionTelemetryConfiguration.f29177f) {
                    return connectionTelemetryConfiguration;
                }
            } else {
                while (i3 < iArr.length) {
                    if (iArr[i3] != i2) {
                        i3++;
                    } else if (zabkVar.s < connectionTelemetryConfiguration.f29177f) {
                        return connectionTelemetryConfiguration;
                    }
                }
            }
        }
        return null;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        long j2;
        long j3;
        GoogleApiManager googleApiManager = this.f29089b;
        if (googleApiManager.g()) {
            RootTelemetryConfiguration rootTelemetryConfiguration = RootTelemetryConfigManager.a().f29202a;
            if (rootTelemetryConfiguration == null || rootTelemetryConfiguration.f29204c) {
                zabk zabkVar = (zabk) googleApiManager.f29034k.get(this.d);
                if (zabkVar != null) {
                    Object obj = zabkVar.f29075b;
                    if (obj instanceof BaseGmsClient) {
                        BaseGmsClient baseGmsClient = (BaseGmsClient) obj;
                        long j4 = this.f29091e;
                        int i7 = 0;
                        boolean z = j4 > 0;
                        int i8 = baseGmsClient.r;
                        if (rootTelemetryConfiguration != null) {
                            z &= rootTelemetryConfiguration.d;
                            i2 = rootTelemetryConfiguration.f29205e;
                            i4 = rootTelemetryConfiguration.f29206f;
                            i3 = rootTelemetryConfiguration.f29203b;
                            if (baseGmsClient.x != null && !baseGmsClient.b()) {
                                ConnectionTelemetryConfiguration connectionTelemetryConfigurationA = a(zabkVar, baseGmsClient, this.f29090c);
                                if (connectionTelemetryConfigurationA == null) {
                                    return;
                                }
                                boolean z2 = connectionTelemetryConfigurationA.d && j4 > 0;
                                i4 = connectionTelemetryConfigurationA.f29177f;
                                z = z2;
                            }
                        } else {
                            i2 = 5000;
                            i3 = 0;
                            i4 = 100;
                        }
                        int i9 = i2;
                        int iElapsedRealtime = -1;
                        if (task.isSuccessful()) {
                            i6 = 0;
                        } else if (task.j()) {
                            i7 = -1;
                            i6 = 100;
                        } else {
                            Exception exception = task.getException();
                            if (exception instanceof ApiException) {
                                Status status = ((ApiException) exception).f28974b;
                                i5 = status.f29008b;
                                ConnectionResult connectionResult = status.f29010e;
                                if (connectionResult != null) {
                                    i6 = i5;
                                    i7 = connectionResult.f28953c;
                                }
                            } else {
                                i5 = 101;
                            }
                            i6 = i5;
                            i7 = -1;
                        }
                        if (z) {
                            long j5 = this.f29092f;
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - j5);
                            j3 = jCurrentTimeMillis;
                            j2 = j4;
                        } else {
                            j2 = 0;
                            j3 = 0;
                        }
                        zabz zabzVar = new zabz(new MethodInvocation(this.f29090c, i6, i7, j2, j3, null, null, i8, iElapsedRealtime), i3, i9, i4);
                        com.google.android.gms.internal.base.zao zaoVar = googleApiManager.o;
                        zaoVar.sendMessage(zaoVar.obtainMessage(18, zabzVar));
                    }
                }
            }
        }
    }
}
