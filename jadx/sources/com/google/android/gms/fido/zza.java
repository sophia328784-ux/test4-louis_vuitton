package com.google.android.gms.fido;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zza {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Feature f29546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Feature f29547b;

    static {
        new Feature("cancel_target_direct_transfer", 1L);
        new Feature("delete_credential", 1L);
        new Feature("delete_device_public_key", 1L);
        new Feature("get_or_generate_device_public_key", 1L);
        new Feature("get_passkeys", 1L);
        new Feature("update_passkey", 1L);
        f29546a = new Feature("is_user_verifying_platform_authenticator_available_for_credential", 1L);
        f29547b = new Feature("is_user_verifying_platform_authenticator_available", 1L);
        new Feature("privileged_api_list_credentials", 2L);
        new Feature("start_target_direct_transfer", 1L);
        new Feature("first_party_api_get_link_info", 1L);
        new Feature("zero_party_api_register", 3L);
        new Feature("zero_party_api_sign", 3L);
        new Feature("zero_party_api_list_discoverable_credentials", 2L);
        new Feature("zero_party_api_authenticate_passkey", 3L);
        new Feature("zero_party_api_register_passkey", 1L);
        new Feature("zero_party_api_register_passkey_with_sync_account", 1L);
        new Feature("zero_party_api_get_hybrid_client_registration_pending_intent", 1L);
        new Feature("zero_party_api_get_hybrid_client_sign_pending_intent", 1L);
        new Feature("get_browser_hybrid_client_sign_pending_intent", 1L);
        new Feature("get_browser_hybrid_client_registration_pending_intent", 1L);
        new Feature("privileged_authenticate_passkey", 2L);
        new Feature("privileged_register_passkey_with_sync_account", 1L);
        new Feature("zero_party_api_get_privileged_hybrid_client_registration_pending_intent", 1L);
        new Feature("zero_party_api_get_privileged_hybrid_client_sign_pending_intent", 1L);
        new Feature("zero_party_api_get_fido_security_key_only_sign_pending_intent", 1L);
        new Feature("zero_party_api_get_fido_security_key_only_registration_pending_intent", 1L);
        new Feature("zero_party_api_get_privileged_fido_security_key_only_sign_pending_intent", 1L);
        new Feature("zero_party_api_get_privileged_fido_security_key_only_registration_pending_intent", 1L);
    }
}
