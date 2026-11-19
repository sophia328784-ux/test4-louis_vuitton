package defpackage;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.ClearCredentialProviderConfigurationException;
import androidx.credentials.exceptions.CreateCredentialProviderConfigurationException;
import androidx.credentials.exceptions.GetCredentialProviderConfigurationException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mr implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CredentialManagerCallback f76350c;

    public /* synthetic */ mr(CredentialManagerCallback credentialManagerCallback, int i2) {
        this.f76349b = i2;
        this.f76350c = credentialManagerCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f76349b) {
            case 0:
                this.f76350c.a(new ClearCredentialProviderConfigurationException("clearCredentialStateAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
                break;
            case 1:
                this.f76350c.onResult(null);
                break;
            case 2:
                this.f76350c.onResult(null);
                break;
            case 3:
                this.f76350c.a(new CreateCredentialProviderConfigurationException("createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
                break;
            case 4:
                this.f76350c.a(new GetCredentialProviderConfigurationException("this device requires a Google Play Services update for the given feature to be supported"));
                break;
            default:
                this.f76350c.a(new GetCredentialProviderConfigurationException("getCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
                break;
        }
    }
}
