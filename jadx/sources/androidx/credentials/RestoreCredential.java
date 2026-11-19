package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.RequestValidationHelper;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/RestoreCredential;", "Landroidx/credentials/Credential;", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RestoreCredential extends Credential {
    public static final Companion d = new Companion(null);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/credentials/RestoreCredential$Companion;", "", "", "BUNDLE_KEY_GET_RESTORE_CREDENTIAL_RESPONSE", "Ljava/lang/String;", "TYPE_RESTORE_CREDENTIAL", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public RestoreCredential(String str, Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        super("androidx.credentials.TYPE_RESTORE_CREDENTIAL", bundle);
        RequestValidationHelper.f12402a.getClass();
        if (RequestValidationHelper.Companion.a(str)) {
            return;
        }
        md.n("authenticationResponseJson must not be empty, and must be a valid JSON");
        throw null;
    }
}
