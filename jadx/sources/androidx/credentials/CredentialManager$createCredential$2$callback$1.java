package androidx.credentials;

import androidx.credentials.exceptions.CreateCredentialException;
import kotlin.Metadata;
import kotlin.Result;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¨\u0006\u0004"}, d2 = {"androidx/credentials/CredentialManager$createCredential$2$callback$1", "Landroidx/credentials/CredentialManagerCallback;", "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CredentialManager$createCredential$2$callback$1 implements CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CancellableContinuationImpl f12366a;

    public CredentialManager$createCredential$2$callback$1(CancellableContinuationImpl cancellableContinuationImpl) {
        this.f12366a = cancellableContinuationImpl;
    }

    @Override // androidx.credentials.CredentialManagerCallback
    public final void a(Object obj) {
        CreateCredentialException createCredentialException = (CreateCredentialException) obj;
        createCredentialException.getClass();
        CancellableContinuationImpl cancellableContinuationImpl = this.f12366a;
        if (cancellableContinuationImpl.isActive()) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(new Result.Failure(createCredentialException));
        }
    }

    @Override // androidx.credentials.CredentialManagerCallback
    public final void onResult(Object obj) {
        CreateCredentialResponse createCredentialResponse = (CreateCredentialResponse) obj;
        createCredentialResponse.getClass();
        CancellableContinuationImpl cancellableContinuationImpl = this.f12366a;
        if (cancellableContinuationImpl.isActive()) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(createCredentialResponse);
        }
    }
}
