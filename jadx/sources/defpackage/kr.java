package defpackage;

import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kr implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CredentialProviderGetSignInIntentController f75859c;
    public final /* synthetic */ GetCredentialException d;

    public /* synthetic */ kr(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialException getCredentialException, int i2) {
        this.f75858b = i2;
        this.f75859c = credentialProviderGetSignInIntentController;
        this.d = getCredentialException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f75858b;
        GetCredentialException getCredentialException = this.d;
        CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController = this.f75859c;
        switch (i2) {
            case 0:
                credentialProviderGetSignInIntentController.h().a(getCredentialException);
                break;
            default:
                credentialProviderGetSignInIntentController.h().a(getCredentialException);
                break;
        }
    }
}
