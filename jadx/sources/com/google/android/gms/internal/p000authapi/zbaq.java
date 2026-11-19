package com.google.android.gms.internal.p000authapi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.SignInClient;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.auth.api.identity.zbv;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;

/* JADX INFO: loaded from: classes2.dex */
public final class zbaq extends GoogleApi implements SignInClient {
    public static final Api m = new Api("Auth.Api.Identity.SignIn.API", new zbal(), new Api.ClientKey());
    public final String l;

    public zbaq(Activity activity, zbv zbvVar) {
        super(activity, (Api<zbv>) m, zbvVar, GoogleApi.Settings.f28994c);
        this.l = zbat.a();
    }

    public final SignInCredential j(Intent intent) throws ApiException {
        if (intent == null) {
            throw new ApiException(Status.f29005h);
        }
        Parcelable.Creator<Status> creator = Status.CREATOR;
        byte[] byteArrayExtra = intent.getByteArrayExtra("status");
        Status status = (Status) (byteArrayExtra == null ? null : SafeParcelableSerializer.a(byteArrayExtra, creator));
        if (status == null) {
            throw new ApiException(Status.f29007j);
        }
        if (!status.W1()) {
            throw new ApiException(status);
        }
        Parcelable.Creator<SignInCredential> creator2 = SignInCredential.CREATOR;
        byte[] byteArrayExtra2 = intent.getByteArrayExtra("sign_in_credential");
        SignInCredential signInCredential = (SignInCredential) (byteArrayExtra2 != null ? SafeParcelableSerializer.a(byteArrayExtra2, creator2) : null);
        if (signInCredential != null) {
            return signInCredential;
        }
        throw new ApiException(Status.f29005h);
    }

    public zbaq(Context context, zbv zbvVar) {
        super(context, (Api<zbv>) m, zbvVar, GoogleApi.Settings.f28994c);
        this.l = zbat.a();
    }
}
