package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes.dex */
public abstract class zbas {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Feature f29591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Feature f29592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Feature f29593c;
    public static final Feature[] d;

    static {
        Feature feature = new Feature("auth_api_credentials_begin_sign_in", 9L);
        Feature feature2 = new Feature("auth_api_credentials_sign_out", 2L);
        f29591a = feature2;
        Feature feature3 = new Feature("auth_api_credentials_authorize", 1L);
        Feature feature4 = new Feature("auth_api_credentials_revoke_access", 1L);
        Feature feature5 = new Feature("auth_api_credentials_save_password", 4L);
        f29592b = feature5;
        Feature feature6 = new Feature("auth_api_credentials_get_sign_in_intent", 6L);
        f29593c = feature6;
        d = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, new Feature("auth_api_credentials_save_account_linking_token", 3L), new Feature("auth_api_credentials_get_phone_number_hint_intent", 3L)};
    }
}
