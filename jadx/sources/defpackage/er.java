package defpackage;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class er implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CredentialProviderCreatePublicKeyCredentialController f68925c;
    public final /* synthetic */ JSONException d;

    public /* synthetic */ er(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, JSONException jSONException, int i2) {
        this.f68924b = i2;
        this.f68925c = credentialProviderCreatePublicKeyCredentialController;
        this.d = jSONException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f68924b;
        JSONException jSONException = this.d;
        CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = this.f68925c;
        switch (i2) {
            case 0:
                CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.f12454f;
                if (credentialManagerCallback != null) {
                    credentialManagerCallback.a(new CreatePublicKeyCredentialDomException(new EncodingError(), jSONException.getMessage()));
                    return;
                } else {
                    Intrinsics.h("callback");
                    throw null;
                }
            default:
                CredentialManagerCallback credentialManagerCallback2 = credentialProviderCreatePublicKeyCredentialController.f12454f;
                if (credentialManagerCallback2 == null) {
                    Intrinsics.h("callback");
                    throw null;
                }
                String message = jSONException.getMessage();
                credentialManagerCallback2.a((message == null || message.length() <= 0) ? new CreatePublicKeyCredentialDomException(new EncodingError(), "Unknown error") : new CreatePublicKeyCredentialDomException(new EncodingError(), message));
                return;
        }
    }
}
