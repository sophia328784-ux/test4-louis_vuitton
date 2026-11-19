package androidx.credentials;

import android.os.Bundle;
import com.batch.android.s.b;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u001b\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/credentials/CreateRestoreCredentialRequest;", "Landroidx/credentials/CreateCredentialRequest;", "", "requestJson", "", "isCloudBackupEnabled", "<init>", "(Ljava/lang/String;Z)V", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CreateRestoreCredentialRequest extends CreateCredentialRequest {
    public static final Companion g = new Companion(null);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/credentials/CreateRestoreCredentialRequest$Companion;", "", "", "BUNDLE_KEY_CREATE_RESTORE_CREDENTIAL_REQUEST", "Ljava/lang/String;", "BUNDLE_KEY_SHOULD_BACKUP_TO_CLOUD", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public CreateRestoreCredentialRequest(String str, boolean z) {
        str.getClass();
        Companion companion = g;
        companion.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("androidx.credentials.BUNDLE_KEY_CREATE_RESTORE_CREDENTIAL_REQUEST", str);
        bundle.putBoolean("androidx.credentials.BUNDLE_KEY_SHOULD_BACKUP_TO_CLOUD", z);
        companion.getClass();
        try {
            String string = new JSONObject(str).getJSONObject("user").getString(b.a.f24015b);
            string.getClass();
            super("androidx.credentials.TYPE_RESTORE_CREDENTIAL", bundle, new Bundle(), false, false, new CreateCredentialRequest.DisplayInfo(string, (CharSequence) null, 2, (DefaultConstructorMarker) null), null, false);
        } catch (Exception unused) {
            md.n("user.id must be defined in requestJson");
            throw null;
        }
    }

    public /* synthetic */ CreateRestoreCredentialRequest(String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? true : z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreateRestoreCredentialRequest(String str) {
        this(str, false, 2, null);
        str.getClass();
    }
}
