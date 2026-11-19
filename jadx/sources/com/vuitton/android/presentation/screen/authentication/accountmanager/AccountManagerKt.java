package com.vuitton.android.presentation.screen.authentication.accountmanager;

import android.content.Context;
import android.os.Build;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.credentials.CredentialManagerImpl;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccountManagerKt {
    public static final AccountManager a(Context context, Composer composer) {
        context.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(context);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = Build.VERSION.SDK_INT >= 34 ? new AccountManager(new CredentialManagerImpl(context)) : null;
            composer.q(objX);
        }
        return (AccountManager) objX;
    }
}
