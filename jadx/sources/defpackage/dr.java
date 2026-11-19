package defpackage;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dr implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CredentialProviderCreatePublicKeyCredentialController f68644c;
    public final /* synthetic */ CreateCredentialException d;

    public /* synthetic */ dr(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, CreateCredentialException createCredentialException, int i2) {
        this.f68643b = i2;
        this.f68644c = credentialProviderCreatePublicKeyCredentialController;
        this.d = createCredentialException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f68643b;
        CreateCredentialException createCredentialException = this.d;
        CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = this.f68644c;
        switch (i2) {
            case 0:
                CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.f12454f;
                if (credentialManagerCallback != null) {
                    credentialManagerCallback.a(createCredentialException);
                    return;
                } else {
                    Intrinsics.h("callback");
                    throw null;
                }
            default:
                CredentialManagerCallback credentialManagerCallback2 = credentialProviderCreatePublicKeyCredentialController.f12454f;
                if (credentialManagerCallback2 != null) {
                    credentialManagerCallback2.a(createCredentialException);
                    return;
                } else {
                    Intrinsics.h("callback");
                    throw null;
                }
        }
    }
}
