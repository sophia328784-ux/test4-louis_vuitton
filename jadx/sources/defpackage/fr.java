package defpackage;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fr implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CredentialProviderCreatePublicKeyCredentialController f69196c;
    public final /* synthetic */ Throwable d;

    public /* synthetic */ fr(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, Throwable th, int i2) {
        this.f69195b = i2;
        this.f69196c = credentialProviderCreatePublicKeyCredentialController;
        this.d = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69195b;
        Throwable th = this.d;
        CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = this.f69196c;
        switch (i2) {
            case 0:
                CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.f12454f;
                if (credentialManagerCallback != null) {
                    credentialManagerCallback.a(new CreatePublicKeyCredentialDomException(new UnknownError(), th.getMessage()));
                    return;
                } else {
                    Intrinsics.h("callback");
                    throw null;
                }
            default:
                CredentialManagerCallback credentialManagerCallback2 = credentialProviderCreatePublicKeyCredentialController.f12454f;
                if (credentialManagerCallback2 != null) {
                    credentialManagerCallback2.a(new CreateCredentialUnknownException(th.getMessage()));
                    return;
                } else {
                    Intrinsics.h("callback");
                    throw null;
                }
        }
    }
}
