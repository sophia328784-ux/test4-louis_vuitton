package com.google.android.gms.internal.p000authapi;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.auth.api.identity.CredentialSavingClient;
import com.google.android.gms.auth.api.identity.zbi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* JADX INFO: loaded from: classes2.dex */
public final class zbag extends GoogleApi implements CredentialSavingClient {
    public static final Api m = new Api("Auth.Api.Identity.CredentialSaving.API", new zbad(), new Api.ClientKey());
    public final String l;

    public zbag(Activity activity, zbi zbiVar) {
        super(activity, (Api<zbi>) m, zbiVar, GoogleApi.Settings.f28994c);
        this.l = zbat.a();
    }

    public zbag(Context context, zbi zbiVar) {
        super(context, (Api<zbi>) m, zbiVar, GoogleApi.Settings.f28994c);
        this.l = zbat.a();
    }
}
