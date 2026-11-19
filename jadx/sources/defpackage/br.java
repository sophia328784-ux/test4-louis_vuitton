package defpackage;

import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class br implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CredentialProviderBeginSignInController f20925c;
    public final /* synthetic */ GetCredentialException d;

    public /* synthetic */ br(CredentialProviderBeginSignInController credentialProviderBeginSignInController, GetCredentialException getCredentialException, int i2) {
        this.f20924b = i2;
        this.f20925c = credentialProviderBeginSignInController;
        this.d = getCredentialException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f20924b;
        GetCredentialException getCredentialException = this.d;
        CredentialProviderBeginSignInController credentialProviderBeginSignInController = this.f20925c;
        switch (i2) {
            case 0:
                credentialProviderBeginSignInController.g().a(getCredentialException);
                break;
            default:
                credentialProviderBeginSignInController.g().a(getCredentialException);
                break;
        }
    }
}
