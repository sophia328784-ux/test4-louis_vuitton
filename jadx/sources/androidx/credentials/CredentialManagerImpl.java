package androidx.credentials;

import android.content.Context;
import android.os.CancellationSignal;
import androidx.credentials.exceptions.CreateCredentialProviderConfigurationException;
import androidx.credentials.exceptions.GetCredentialProviderConfigurationException;
import defpackage.l8;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/credentials/CredentialManagerImpl;", "Landroidx/credentials/CredentialManager;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CredentialManagerImpl implements CredentialManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f12369a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/CredentialManagerImpl$Companion;", "", "", "INTENT_ACTION_FOR_CREDENTIAL_PROVIDER_SETTINGS", "Ljava/lang/String;", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public CredentialManagerImpl(Context context) {
        context.getClass();
        this.f12369a = context;
    }

    @Override // androidx.credentials.CredentialManager
    public final void a(Context context, CreatePasswordRequest createPasswordRequest, CancellationSignal cancellationSignal, l8 l8Var, CredentialManager$createCredential$2$callback$1 credentialManager$createCredential$2$callback$1) {
        context.getClass();
        CredentialProvider credentialProviderA = CredentialProviderFactory.a(new CredentialProviderFactory(this.f12369a), createPasswordRequest);
        if (credentialProviderA == null) {
            credentialManager$createCredential$2$callback$1.a(new CreateCredentialProviderConfigurationException("createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
        } else {
            credentialProviderA.onCreateCredential(context, createPasswordRequest, cancellationSignal, l8Var, credentialManager$createCredential$2$callback$1);
        }
    }

    @Override // androidx.credentials.CredentialManager
    public final void c(Context context, GetCredentialRequest getCredentialRequest, CancellationSignal cancellationSignal, l8 l8Var, CredentialManager$getCredential$2$callback$1 credentialManager$getCredential$2$callback$1) {
        context.getClass();
        CredentialProvider credentialProviderA = CredentialProviderFactory.a(new CredentialProviderFactory(context), getCredentialRequest);
        if (credentialProviderA == null) {
            credentialManager$getCredential$2$callback$1.a(new GetCredentialProviderConfigurationException("getCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
        } else {
            credentialProviderA.onGetCredential(context, getCredentialRequest, cancellationSignal, l8Var, credentialManager$getCredential$2$callback$1);
        }
    }
}
