package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.auth.zzbe;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class zza extends Api.AbstractClientBuilder {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ Api.Client b(Context context, Looper looper, ClientSettings clientSettings, Object obj, zabk zabkVar, zabk zabkVar2) {
        if (obj == null) {
            return new zzbe(context, looper, clientSettings, null, zabkVar, zabkVar2);
        }
        r81.h();
        return null;
    }
}
