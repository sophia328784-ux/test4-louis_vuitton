package com.google.android.gms.common.api.internal;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.widget.ProgressBar;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zao implements Runnable {
    final /* synthetic */ zap zaa;
    private final zam zab;

    public zao(zap zapVar, zam zamVar) {
        Objects.requireNonNull(zapVar);
        this.zaa = zapVar;
        this.zab = zamVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zap zapVar = this.zaa;
        if (zapVar.f29123c) {
            zam zamVar = this.zab;
            ConnectionResult connectionResult = zamVar.f29120b;
            if (connectionResult.f28953c != 0 && connectionResult.d != null) {
                LifecycleFragment lifecycleFragment = zapVar.f29036b;
                Activity activityA = zapVar.a();
                PendingIntent pendingIntent = connectionResult.d;
                Preconditions.h(pendingIntent);
                int i2 = zamVar.f29119a;
                int i3 = GoogleApiActivity.f28999c;
                Intent intent = new Intent(activityA, (Class<?>) GoogleApiActivity.class);
                intent.putExtra("pending_intent", pendingIntent);
                intent.putExtra("failing_client_id", i2);
                intent.putExtra("notify_manager", false);
                lifecycleFragment.startActivityForResult(intent, 1);
                return;
            }
            Activity activityA2 = zapVar.a();
            int i4 = connectionResult.f28953c;
            GoogleApiAvailability googleApiAvailability = zapVar.f29125f;
            if (googleApiAvailability.a(activityA2, i4, null) != null) {
                googleApiAvailability.e(zapVar.a(), zapVar.f29036b, connectionResult.f28953c, zapVar);
                return;
            }
            if (connectionResult.f28953c != 18) {
                zapVar.d(connectionResult, zamVar.f29119a);
                return;
            }
            Activity activityA3 = zapVar.a();
            ProgressBar progressBar = new ProgressBar(activityA3, null, R.attr.progressBarStyleLarge);
            progressBar.setIndeterminate(true);
            progressBar.setVisibility(0);
            AlertDialog.Builder builder = new AlertDialog.Builder(activityA3);
            builder.setView(progressBar);
            builder.setMessage(com.google.android.gms.common.internal.zaf.b(18, activityA3));
            builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
            AlertDialog alertDialogCreate = builder.create();
            GoogleApiAvailability.h(activityA3, alertDialogCreate, "GooglePlayServicesUpdatingDialog", zapVar);
            Context applicationContext = zapVar.a().getApplicationContext();
            zan zanVar = new zan(this, alertDialogCreate);
            IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
            intentFilter.addDataScheme("package");
            zabs zabsVar = new zabs(zanVar);
            ContextCompat.registerReceiver(applicationContext, zabsVar, intentFilter, 2);
            zabsVar.f29087a = applicationContext;
            if (GooglePlayServicesUtilLight.b(applicationContext)) {
                return;
            }
            zanVar.a();
            synchronized (zabsVar) {
                try {
                    Context context = zabsVar.f29087a;
                    if (context != null) {
                        context.unregisterReceiver(zabsVar);
                    }
                    zabsVar.f29087a = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
