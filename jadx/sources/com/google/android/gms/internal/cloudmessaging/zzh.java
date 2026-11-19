package com.google.android.gms.internal.cloudmessaging;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.internal.ClientSettings;

/* JADX INFO: loaded from: classes2.dex */
final class zzh extends Api.AbstractClientBuilder {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ Api.Client b(Context context, Looper looper, ClientSettings clientSettings, Object obj, zabk zabkVar, zabk zabkVar2) {
        return new zzd(context, looper, clientSettings, zabkVar, zabkVar2);
    }
}
