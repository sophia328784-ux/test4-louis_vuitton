package com.vuitton.android.presentation.screen.options;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuActivity;
import com.vuitton.android.presentation.screen.options.settings.SettingsActivity;
import com.vuitton.android.presentation.screen.privacy.PrivacyActivity;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OptionsDestinationsKt {
    public static final Intent a(OptionsDestinations optionsDestinations, Context context) {
        context.getClass();
        if (optionsDestinations.equals(OptionsDestinations.ToSettingsPage.f59627a)) {
            SettingsActivity.p.getClass();
            return new Intent(context, (Class<?>) SettingsActivity.class);
        }
        if (optionsDestinations.equals(OptionsDestinations.ToPrivacyPolicyPage.f59625a)) {
            LegalTextActivity.p.getClass();
            return LegalTextActivity.Companion.a(context, false);
        }
        if (optionsDestinations.equals(OptionsDestinations.ToOptOutPrivacyMenuPage.f59624a)) {
            OptOutPrivacyMenuActivity.q.getClass();
            return new Intent(context, (Class<?>) OptOutPrivacyMenuActivity.class);
        }
        if (optionsDestinations.equals(OptionsDestinations.ToPrivacySettingsPage.f59626a)) {
            PrivacyActivity.s.getClass();
            return PrivacyActivity.Companion.a(context, null, false);
        }
        if (optionsDestinations instanceof OptionsDestinations.ToConsumerRightsPage) {
            return new Intent("android.intent.action.VIEW", Uri.parse(((OptionsDestinations.ToConsumerRightsPage) optionsDestinations).f59622a));
        }
        if (optionsDestinations instanceof OptionsDestinations.ToContactPage) {
            return WebViewActivity.Companion.a(WebViewActivity.v, context, ((OptionsDestinations.ToContactPage) optionsDestinations).f59623a, false, false, null, null, null, false, false, null, 2044);
        }
        v40.g();
        return null;
    }
}
