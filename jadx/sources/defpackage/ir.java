package defpackage;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetDigitalCredentialController;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ir implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CredentialProviderGetDigitalCredentialController f71193c;
    public final /* synthetic */ GetCredentialException d;

    public /* synthetic */ ir(CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController, GetCredentialException getCredentialException, int i2) {
        this.f71192b = i2;
        this.f71193c = credentialProviderGetDigitalCredentialController;
        this.d = getCredentialException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f71192b;
        Object getCredentialUnknownException = this.d;
        CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController = this.f71193c;
        switch (i2) {
            case 0:
                credentialProviderGetDigitalCredentialController.f().a(getCredentialUnknownException);
                break;
            default:
                CredentialManagerCallback credentialManagerCallbackF = credentialProviderGetDigitalCredentialController.f();
                if (getCredentialUnknownException == null) {
                    getCredentialUnknownException = new GetCredentialUnknownException("Unexpected configuration error");
                }
                credentialManagerCallbackF.a(getCredentialUnknownException);
                break;
        }
    }
}
