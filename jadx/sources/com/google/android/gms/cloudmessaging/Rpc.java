package com.google.android.gms.cloudmessaging;

import android.app.BroadcastOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import defpackage.d21;
import io.jsonwebtoken.JwsHeader;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class Rpc {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f28908h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static PendingIntent f28909i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Executor f28910j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Pattern f28911k = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f28913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzw f28914c;
    public final ScheduledThreadPoolExecutor d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Messenger f28916f;
    public zzd g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SimpleArrayMap f28912a = new SimpleArrayMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Messenger f28915e = new Messenger(new zzy(this, Looper.getMainLooper()));

    public Rpc(Context context) {
        this.f28913b = context;
        this.f28914c = new zzw(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("fcm-rpc-timeout-executor"));
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.d = scheduledThreadPoolExecutor;
    }

    public final Task a() {
        int i2;
        if (this.f28914c.b() < 241100000) {
            return Tasks.e(new IOException("SERVICE_NOT_AVAILABLE"));
        }
        zzv zzvVarA = zzv.a(this.f28913b);
        Bundle bundle = Bundle.EMPTY;
        synchronized (zzvVarA) {
            i2 = zzvVarA.d;
            zzvVarA.d = i2 + 1;
        }
        return zzvVarA.c(new zzu(i2, 5, bundle)).g(zzaf.f28925b, zzac.f28922b);
    }

    public final Task b(final Bundle bundle) {
        int i2;
        zzaf zzafVar = zzaf.f28925b;
        zzw zzwVar = this.f28914c;
        if (zzwVar.b() < 12000000) {
            return zzwVar.a() != 0 ? d(bundle).h(zzafVar, new Continuation() { // from class: com.google.android.gms.cloudmessaging.zzz
                @Override // com.google.android.gms.tasks.Continuation
                public final Object d(Task task) {
                    Bundle bundle2;
                    Rpc rpc = this.f28948b;
                    rpc.getClass();
                    return (task.isSuccessful() && (bundle2 = (Bundle) task.getResult()) != null && bundle2.containsKey("google.messenger")) ? rpc.d(bundle).m(zzaf.f28925b, zzad.f28923a) : task;
                }
            }) : Tasks.e(new IOException("MISSING_INSTANCEID_SERVICE"));
        }
        zzv zzvVarA = zzv.a(this.f28913b);
        synchronized (zzvVarA) {
            i2 = zzvVarA.d;
            zzvVarA.d = i2 + 1;
        }
        return zzvVarA.c(new zzu(i2, 1, bundle)).g(zzafVar, zzae.f28924b);
    }

    public final void c(String str, Bundle bundle) {
        SimpleArrayMap simpleArrayMap = this.f28912a;
        synchronized (simpleArrayMap) {
            try {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) simpleArrayMap.remove(str);
                if (taskCompletionSource == null) {
                    new StringBuilder(String.valueOf(str).length() + 21);
                } else {
                    taskCompletionSource.b(bundle);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e5  */
    public final Task d(Bundle bundle) {
        final String string;
        int iA;
        Context context;
        synchronized (Rpc.class) {
            int i2 = f28908h;
            f28908h = i2 + 1;
            string = Integer.toString(i2);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        SimpleArrayMap simpleArrayMap = this.f28912a;
        synchronized (simpleArrayMap) {
            simpleArrayMap.put(string, taskCompletionSource);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f28914c.a() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        Context context2 = this.f28913b;
        synchronized (Rpc.class) {
            try {
                if (f28909i == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f28909i = PendingIntent.getBroadcast(context2, 0, intent2, com.google.android.gms.internal.cloudmessaging.zzr.f29806a);
                }
                intent.putExtra(Payload.TYPE_APP, f28909i);
            } catch (Throwable th) {
                throw th;
            }
        }
        intent.putExtra(JwsHeader.KEY_ID, d21.p(new StringBuilder(String.valueOf(string).length() + 5), "|ID|", string, "|"));
        if (Log.isLoggable("Rpc", 3)) {
            "Sending ".concat(String.valueOf(intent.getExtras()));
        }
        intent.putExtra("google.messenger", this.f28915e);
        if (this.f28916f == null && this.g == null) {
            iA = this.f28914c.a();
            context = this.f28913b;
            if (iA == 2) {
                context.startService(intent);
            } else if (Build.VERSION.SDK_INT < 34) {
                context.sendBroadcast(intent);
            } else {
                context.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
            }
        } else {
            Message messageObtain = Message.obtain();
            messageObtain.obj = intent;
            try {
                Messenger messenger = this.f28916f;
                if (messenger != null) {
                    messenger.send(messageObtain);
                } else {
                    this.g.f28926b.send(messageObtain);
                }
            } catch (RemoteException unused) {
                Log.isLoggable("Rpc", 3);
                iA = this.f28914c.a();
                context = this.f28913b;
                if (iA == 2) {
                    context.startService(intent);
                } else if (Build.VERSION.SDK_INT < 34) {
                    context.sendBroadcast(intent);
                } else {
                    context.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                }
            }
        }
        final ScheduledFuture<?> scheduledFutureSchedule = this.d.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzaa
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                taskCompletionSource.c(new IOException(Payload.RESPONSE_TIMEOUT));
            }
        }, 30L, TimeUnit.SECONDS);
        taskCompletionSource.f32085a.b(zzaf.f28925b, new OnCompleteListener() { // from class: com.google.android.gms.cloudmessaging.zzab
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final /* synthetic */ void onComplete(Task task) {
                Rpc rpc = this.f28920b;
                String str = string;
                ScheduledFuture scheduledFuture = scheduledFutureSchedule;
                SimpleArrayMap simpleArrayMap2 = rpc.f28912a;
                synchronized (simpleArrayMap2) {
                    simpleArrayMap2.remove(str);
                }
                scheduledFuture.cancel(false);
            }
        });
        return taskCompletionSource.f32085a;
    }
}
