package defpackage;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.ClearCredentialUnknownException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.NoCredentialException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gr implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CredentialManagerCallback f69466c;
    public final /* synthetic */ Exception d;

    public /* synthetic */ gr(CredentialManagerCallback credentialManagerCallback, Exception exc, int i2) {
        this.f69465b = i2;
        this.f69466c = credentialManagerCallback;
        this.d = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69465b;
        Exception exc = this.d;
        CredentialManagerCallback credentialManagerCallback = this.f69466c;
        switch (i2) {
            case 0:
                credentialManagerCallback.a(new CreateCredentialUnknownException(exc.getMessage()));
                break;
            case 1:
                credentialManagerCallback.a(exc instanceof NoCredentialException ? (GetCredentialException) exc : new GetCredentialUnknownException(exc.getMessage()));
                break;
            default:
                credentialManagerCallback.a(new ClearCredentialUnknownException(exc.getMessage()));
                break;
        }
    }
}
