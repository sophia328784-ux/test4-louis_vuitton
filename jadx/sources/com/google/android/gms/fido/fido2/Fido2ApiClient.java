package com.google.android.gms.fido.fido2;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.internal.fido.zzo;

/* JADX INFO: loaded from: classes2.dex */
public class Fido2ApiClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    public static final Api l = new Api("Fido.FIDO2_API", new zzo(), new Api.ClientKey());

    @Deprecated
    public Fido2ApiClient(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) l, Api.ApiOptions.j0, (StatusExceptionMapper) new ApiExceptionMapper());
    }

    @Deprecated
    public Fido2ApiClient(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) l, Api.ApiOptions.j0, new ApiExceptionMapper());
    }
}
