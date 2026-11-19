package androidx.credentials;

import android.content.Context;
import android.os.CancellationSignal;
import defpackage.l8;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/credentials/CredentialManager;", "", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface CredentialManager {
    void a(Context context, CreatePasswordRequest createPasswordRequest, CancellationSignal cancellationSignal, l8 l8Var, CredentialManager$createCredential$2$callback$1 credentialManager$createCredential$2$callback$1);

    default Object b(Context context, CreatePasswordRequest createPasswordRequest, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellationSignal cancellationSignal = new CancellationSignal();
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.credentials.CredentialManager$createCredential$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                cancellationSignal.cancel();
                return Unit.f71739a;
            }
        });
        a(context, createPasswordRequest, cancellationSignal, new l8(1), new CredentialManager$createCredential$2$callback$1(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return result;
    }

    void c(Context context, GetCredentialRequest getCredentialRequest, CancellationSignal cancellationSignal, l8 l8Var, CredentialManager$getCredential$2$callback$1 credentialManager$getCredential$2$callback$1);

    default Object d(Context context, GetCredentialRequest getCredentialRequest, ContinuationImpl continuationImpl) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuationImpl), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellationSignal cancellationSignal = new CancellationSignal();
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.credentials.CredentialManager$getCredential$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                cancellationSignal.cancel();
                return Unit.f71739a;
            }
        });
        c(context, getCredentialRequest, cancellationSignal, new l8(1), new CredentialManager$getCredential$2$callback$1(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return result;
    }
}
