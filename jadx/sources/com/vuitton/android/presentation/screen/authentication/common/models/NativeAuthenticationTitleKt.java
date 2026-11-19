package com.vuitton.android.presentation.screen.authentication.common.models;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeAuthenticationTitleKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f53485a = CollectionsKt.P(new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_authent_native_forgot_password_title, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_authent_native_forgot_password_description, null, 2, null), "nativeForgetPassword_title_text", "nativeForgetPassword_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_authent_native_forgot_password_title_reset_code, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_authent_native_forgot_password_description_reset_code, null, 2, null), "nativeForgetPassword_title_text", "nativeForgetPassword_description_text"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_authent_native_forgot_password_create_new_password_title, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_authent_native_forgot_password_create_new_password_description, null, 2, null), "nativeForgetPassword_title_text", "nativeForgetPassword_description_text"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f53486b = CollectionsKt.P(new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_account_creation_password_title, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_account_creation_password_description, null, 2, null), "account_activation_title", "account_activation_subtitle"), new NativeAuthenticationTitle(new StringResourceUiModel.ResId(R.string.mylv_account_creation_activation_code_title, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_register_description_activation_code, null, 2, null), "account_activation_title", "account_activation_subtitle"));
}
