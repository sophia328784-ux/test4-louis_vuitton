package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.BackoffPolicy;
import androidx.work.Clock;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.NetworkType;
import androidx.work.impl.model.WorkSpec;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class SystemJobInfoConverter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ComponentName f20407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Clock f20408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f20409c;

    /* JADX INFO: renamed from: androidx.work.impl.background.systemjob.SystemJobInfoConverter$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f20410a;

        static {
            int[] iArr = new int[NetworkType.values().length];
            f20410a = iArr;
            try {
                iArr[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20410a[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20410a[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20410a[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20410a[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    static {
        Logger.b("SystemJobInfoConverter");
    }

    public SystemJobInfoConverter(Context context, Clock clock, boolean z) {
        this.f20408b = clock;
        this.f20407a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
        this.f20409c = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final JobInfo a(WorkSpec workSpec, int i2) {
        int i3;
        String str;
        Constraints constraints = workSpec.f20517j;
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", workSpec.f20510a);
        persistableBundle.putInt("EXTRA_WORK_SPEC_GENERATION", workSpec.t);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", workSpec.b());
        JobInfo.Builder builder = new JobInfo.Builder(i2, this.f20407a);
        boolean z = constraints.f20228c;
        Set<Constraints.ContentUriTrigger> set = constraints.f20232i;
        JobInfo.Builder requiresCharging = builder.setRequiresCharging(z);
        boolean z2 = constraints.d;
        JobInfo.Builder extras = requiresCharging.setRequiresDeviceIdle(z2).setExtras(persistableBundle);
        NetworkRequest networkRequestA = constraints.a();
        if (networkRequestA != null) {
            extras.getClass();
            extras.setRequiredNetwork(networkRequestA);
        } else {
            NetworkType networkType = constraints.f20226a;
            if (Build.VERSION.SDK_INT < 30 || networkType != NetworkType.TEMPORARILY_UNMETERED) {
                int i4 = AnonymousClass1.f20410a[networkType.ordinal()];
                if (i4 != 1) {
                    i3 = 2;
                    if (i4 == 2) {
                        i3 = 1;
                    } else if (i4 != 3) {
                        i3 = 4;
                        if (i4 == 4) {
                            i3 = 3;
                        } else if (i4 != 5) {
                            Logger loggerA = Logger.a();
                            networkType.toString();
                            loggerA.getClass();
                            i3 = 1;
                        }
                    }
                } else {
                    i3 = 0;
                }
                extras.setRequiredNetworkType(i3);
            } else {
                extras.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
            }
        }
        if (!z2) {
            extras.setBackoffCriteria(workSpec.m, workSpec.l == BackoffPolicy.LINEAR ? 0 : 1);
        }
        long jMax = Math.max(workSpec.a() - this.f20408b.a(), 0L);
        if (jMax > 0) {
            extras.setMinimumLatency(jMax);
        } else if (!workSpec.q && this.f20409c) {
            extras.setImportantWhileForeground(true);
        }
        if (!set.isEmpty()) {
            for (Constraints.ContentUriTrigger contentUriTrigger : set) {
                extras.addTriggerContentUri(new JobInfo.TriggerContentUri(contentUriTrigger.f20233a, contentUriTrigger.f20234b ? 1 : 0));
            }
            extras.setTriggerContentUpdateDelay(constraints.g);
            extras.setTriggerContentMaxDelay(constraints.f20231h);
        }
        extras.setPersisted(false);
        extras.setRequiresBatteryNotLow(constraints.f20229e);
        extras.setRequiresStorageNotLow(constraints.f20230f);
        Object[] objArr = workSpec.f20518k > 0;
        boolean z3 = jMax > 0;
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 31 && workSpec.q && objArr == false && !z3) {
            extras.setExpedited(true);
        }
        if (i5 >= 35 && (str = workSpec.x) != null) {
            extras.setTraceTag(str);
        }
        return extras.build();
    }
}
