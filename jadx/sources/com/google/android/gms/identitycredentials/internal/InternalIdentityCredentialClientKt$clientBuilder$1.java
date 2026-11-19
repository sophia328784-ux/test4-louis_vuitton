package com.google.android.gms.identitycredentials.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.internal.ClientSettings;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¨\u0006\u0004"}, d2 = {"com/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt$clientBuilder$1", "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;", "Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;", "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalIdentityCredentialClientKt$clientBuilder$1 extends Api.AbstractClientBuilder<IdentityCredentialClientImpl, Api.ApiOptions.NoOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final Api.Client b(Context context, Looper looper, ClientSettings clientSettings, Object obj, zabk zabkVar, zabk zabkVar2) {
        context.getClass();
        looper.getClass();
        ((Api.ApiOptions.NoOptions) obj).getClass();
        return new IdentityCredentialClientImpl(context, looper, clientSettings, zabkVar, zabkVar2);
    }
}
