package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.exceptions.NoCredentialException;
import androidx.credentials.internal.FrameworkClassParsingException;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/credentials/Credential;", "", "", "type", "Landroid/os/Bundle;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Landroid/os/Bundle;)V", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class Credential {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f12362c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f12363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f12364b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/Credential$Companion;", "", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public static Credential a(String str, Bundle bundle) throws NoCredentialException {
            str.getClass();
            bundle.getClass();
            try {
                DefaultConstructorMarker defaultConstructorMarker = null;
                switch (str.hashCode()) {
                    case -1678407252:
                        if (str.equals("androidx.credentials.TYPE_DIGITAL_CREDENTIAL")) {
                            DigitalCredential.d.getClass();
                            try {
                                String string = bundle.getString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                                string.getClass();
                                return new DigitalCredential(string, bundle, defaultConstructorMarker);
                            } catch (Exception unused) {
                                throw new FrameworkClassParsingException();
                            }
                        }
                        throw new FrameworkClassParsingException();
                    case -1072734346:
                        if (str.equals("androidx.credentials.TYPE_RESTORE_CREDENTIAL")) {
                            RestoreCredential.d.getClass();
                            String string2 = bundle.getString("androidx.credentials.BUNDLE_KEY_GET_RESTORE_CREDENTIAL_RESPONSE");
                            if (string2 != null) {
                                return new RestoreCredential(string2, bundle, null);
                            }
                            throw new NoCredentialException("The device does not contain a restore credential.");
                        }
                        throw new FrameworkClassParsingException();
                    case -543568185:
                        if (str.equals("android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                            PasswordCredential.f12394f.getClass();
                            try {
                                String string3 = bundle.getString("androidx.credentials.BUNDLE_KEY_ID");
                                String string4 = bundle.getString("androidx.credentials.BUNDLE_KEY_PASSWORD");
                                string3.getClass();
                                string4.getClass();
                                return new PasswordCredential(string3, string4, bundle, defaultConstructorMarker);
                            } catch (Exception unused2) {
                                throw new FrameworkClassParsingException();
                            }
                        }
                        throw new FrameworkClassParsingException();
                    case -95037569:
                        if (str.equals("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                            PublicKeyCredential.d.getClass();
                            try {
                                String string5 = bundle.getString("androidx.credentials.BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON");
                                string5.getClass();
                                return new PublicKeyCredential(string5, bundle, defaultConstructorMarker);
                            } catch (Exception unused3) {
                                throw new FrameworkClassParsingException();
                            }
                        }
                        throw new FrameworkClassParsingException();
                    default:
                        throw new FrameworkClassParsingException();
                }
            } catch (FrameworkClassParsingException unused4) {
                return new CustomCredential(str, bundle);
            }
        }
    }

    public Credential(String str, Bundle bundle) {
        str.getClass();
        bundle.getClass();
        this.f12363a = str;
        this.f12364b = bundle;
    }
}
