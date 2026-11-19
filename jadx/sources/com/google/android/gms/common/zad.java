package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.base.zao;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zad extends zao {
    final /* synthetic */ GoogleApiAvailability zaa;
    private final Context zab;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zad(GoogleApiAvailability googleApiAvailability, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        Objects.requireNonNull(googleApiAvailability);
        this.zaa = googleApiAvailability;
        this.zab = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 != 1) {
            new StringBuilder(String.valueOf(i2).length() + 39);
            return;
        }
        GoogleApiAvailability googleApiAvailability = this.zaa;
        Context context = this.zab;
        int iB = googleApiAvailability.b(context, GoogleApiAvailabilityLight.f28963a);
        int i3 = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        if (iB == 1 || iB == 2 || iB == 3 || iB == 9) {
            Intent intentA = googleApiAvailability.a(context, iB, "n");
            googleApiAvailability.f(context, iB, intentA == null ? null : PendingIntent.getActivity(context, 0, intentA, 201326592));
        }
    }
}
