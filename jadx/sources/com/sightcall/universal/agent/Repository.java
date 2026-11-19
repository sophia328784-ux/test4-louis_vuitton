package com.sightcall.universal.agent;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.sightcall.universal.Universal;
import com.sightcall.universal.util.Lazy;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import com.squareup.moshi.internal.Util;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class Repository {
    private static final String KEY_AGENT = "identity";
    private static final String KEY_AR_OVERLAY_MODELS = "ar_overlay_models";
    private static final String KEY_CODE = "code";
    private static final String KEY_CONSENT = "consent";
    private static final String KEY_INTEGRATION_SCOPES = "integration_scopes";
    private static final String KEY_OFFLINE_MEDIA_USECASES = "offline-media-usecases";
    private static final String KEY_PROVIDER_CUSTOMIZATIONS = "provider_customizations";
    private static final String KEY_USECASES = "usecases";
    private static final String SHARED_PREFERENCES_NAME = "universal_agent_2";
    private final Lazy<Moshi> moshi;
    private final SharedPreferences sp;

    public Repository(Context context, Lazy<Moshi> lazy) {
        this.sp = context.getApplicationContext().getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        this.moshi = lazy;
    }

    public Agent loadAgent() {
        String string = this.sp.getString(KEY_AGENT, null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return (Agent) this.moshi.get().a(Agent.class).fromJson(string);
        } catch (Exception e2) {
            this.sp.edit().putString("_identity", string).remove(KEY_AGENT).apply();
            Universal.logger().e(e2);
            return null;
        }
    }

    public List<ArOverlayModel> loadArOverlayModels() {
        String string = this.sp.getString(KEY_AR_OVERLAY_MODELS, null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            Util.ParameterizedTypeImpl parameterizedTypeImplD = Types.d(ArOverlayModel.class);
            Moshi moshi = this.moshi.get();
            moshi.getClass();
            return (List) moshi.c(parameterizedTypeImplD, Util.f43424a, null).fromJson(string);
        } catch (Exception e2) {
            Universal.logger().e(e2);
            this.sp.edit().putString("_ar_overlay_models", string).remove(KEY_AR_OVERLAY_MODELS).apply();
            return null;
        }
    }

    public Code loadCode() {
        String string = this.sp.getString("code", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return (Code) this.moshi.get().a(Code.class).fromJson(string);
        } catch (Exception e2) {
            this.sp.edit().putString("_code", string).remove("code").apply();
            Universal.logger().e(e2);
            return null;
        }
    }

    public Consent loadConsent() {
        String string = this.sp.getString(KEY_CONSENT, null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return (Consent) this.moshi.get().a(Consent.class).fromJson(string);
        } catch (Exception e2) {
            this.sp.edit().putString("_consent", string).remove(KEY_CONSENT).apply();
            Universal.logger().e(e2);
            return null;
        }
    }

    public List<IntegrationScope> loadIntegrationScope() {
        String string = this.sp.getString(KEY_INTEGRATION_SCOPES, null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            Util.ParameterizedTypeImpl parameterizedTypeImplD = Types.d(IntegrationScope.class);
            Moshi moshi = this.moshi.get();
            moshi.getClass();
            return (List) moshi.c(parameterizedTypeImplD, Util.f43424a, null).fromJson(string);
        } catch (Exception e2) {
            Universal.logger().e(e2);
            this.sp.edit().putString("_integration_scopes", string).remove(KEY_INTEGRATION_SCOPES).apply();
            return null;
        }
    }

    public List<ProviderCustomization> loadProviderCustomizations() {
        String string = this.sp.getString(KEY_PROVIDER_CUSTOMIZATIONS, null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            Util.ParameterizedTypeImpl parameterizedTypeImplD = Types.d(ProviderCustomization.class);
            Moshi moshi = this.moshi.get();
            moshi.getClass();
            return (List) moshi.c(parameterizedTypeImplD, Util.f43424a, null).fromJson(string);
        } catch (Exception e2) {
            Universal.logger().e(e2);
            this.sp.edit().putString("_provider_customizations", string).remove(KEY_PROVIDER_CUSTOMIZATIONS).apply();
            return null;
        }
    }

    public List<Usecase> loadUsecases() {
        String string = this.sp.getString("usecases", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            Util.ParameterizedTypeImpl parameterizedTypeImplD = Types.d(Usecase.class);
            Moshi moshi = this.moshi.get();
            moshi.getClass();
            return (List) moshi.c(parameterizedTypeImplD, Util.f43424a, null).fromJson(string);
        } catch (Exception e2) {
            Universal.logger().e(e2);
            this.sp.edit().putString("_usecases", string).remove("usecases").apply();
            return null;
        }
    }

    public Agent saveAgent(Agent agent) {
        if (agent == null) {
            this.sp.edit().remove(KEY_AGENT).apply();
            return null;
        }
        this.sp.edit().putString(KEY_AGENT, this.moshi.get().a(Agent.class).toJson(agent)).apply();
        return agent;
    }

    public List<ArOverlayModel> saveArOverlayModels(List<ArOverlayModel> list) {
        if (list == null) {
            this.sp.edit().remove(KEY_AR_OVERLAY_MODELS).apply();
            return null;
        }
        Util.ParameterizedTypeImpl parameterizedTypeImplD = Types.d(ArOverlayModel.class);
        Moshi moshi = this.moshi.get();
        moshi.getClass();
        this.sp.edit().putString(KEY_AR_OVERLAY_MODELS, moshi.c(parameterizedTypeImplD, Util.f43424a, null).toJson(list)).apply();
        return list;
    }

    public Code saveCode(Code code) {
        if (code == null) {
            this.sp.edit().remove("code").apply();
            return null;
        }
        this.sp.edit().putString("code", this.moshi.get().a(Code.class).toJson(code)).apply();
        return code;
    }

    public Consent saveConsent(Consent consent) {
        if (consent == null) {
            this.sp.edit().remove(KEY_CONSENT).apply();
            return null;
        }
        this.sp.edit().putString(KEY_CONSENT, this.moshi.get().a(Consent.class).toJson(consent)).apply();
        return consent;
    }

    public List<IntegrationScope> saveIntegrationScope(List<IntegrationScope> list) {
        if (list == null) {
            this.sp.edit().remove(KEY_INTEGRATION_SCOPES).apply();
            return null;
        }
        Util.ParameterizedTypeImpl parameterizedTypeImplD = Types.d(IntegrationScope.class);
        Moshi moshi = this.moshi.get();
        moshi.getClass();
        this.sp.edit().putString(KEY_INTEGRATION_SCOPES, moshi.c(parameterizedTypeImplD, Util.f43424a, null).toJson(list)).apply();
        return list;
    }

    public List<ProviderCustomization> saveProviderCustomizations(List<ProviderCustomization> list) {
        if (list == null) {
            this.sp.edit().remove(KEY_PROVIDER_CUSTOMIZATIONS).apply();
            return null;
        }
        Util.ParameterizedTypeImpl parameterizedTypeImplD = Types.d(ProviderCustomization.class);
        Moshi moshi = this.moshi.get();
        moshi.getClass();
        this.sp.edit().putString(KEY_PROVIDER_CUSTOMIZATIONS, moshi.c(parameterizedTypeImplD, Util.f43424a, null).toJson(list)).apply();
        return list;
    }

    public List<Usecase> saveUsecases(List<Usecase> list) {
        if (list == null) {
            this.sp.edit().remove("usecases").apply();
            return null;
        }
        Util.ParameterizedTypeImpl parameterizedTypeImplD = Types.d(Usecase.class);
        Moshi moshi = this.moshi.get();
        moshi.getClass();
        this.sp.edit().putString("usecases", moshi.c(parameterizedTypeImplD, Util.f43424a, null).toJson(list)).apply();
        return list;
    }
}
