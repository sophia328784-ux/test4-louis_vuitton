package androidx.credentials.playservices.controllers.GetRestoreCredential;

import android.os.CancellationSignal;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.internal.ConversionUtilsKt;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnFailureListener;
import defpackage.cj;
import defpackage.fc;
import defpackage.hr;
import defpackage.jr;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements OnFailureListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12522b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CancellationSignal f12523c;
    public final /* synthetic */ Executor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CredentialManagerCallback f12524e;

    public /* synthetic */ b(CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        this.f12523c = cancellationSignal;
        this.d = executor;
        this.f12524e = credentialManagerCallback;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        GetCredentialException getCredentialUnknownException;
        final GetCredentialException getCredentialExceptionA;
        int i2 = this.f12522b;
        final CredentialManagerCallback credentialManagerCallback = this.f12524e;
        final Executor executor = this.d;
        CancellationSignal cancellationSignal = this.f12523c;
        switch (i2) {
            case 0:
                int i3 = CredentialProviderGetDigitalCredentialController.f12496j;
                if (exc instanceof com.google.android.gms.identitycredentials.GetCredentialException) {
                    getCredentialExceptionA = ConversionUtilsKt.a(exc.getMessage(), ((com.google.android.gms.identitycredentials.GetCredentialException) exc).f29561b);
                } else {
                    if (exc instanceof ApiException) {
                        int i4 = ((ApiException) exc).f28974b.f29008b;
                        if (i4 == 16) {
                            getCredentialUnknownException = new GetCredentialCancellationException(exc.getMessage());
                        } else {
                            CredentialProviderBaseController.f12489a.getClass();
                            getCredentialUnknownException = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(i4)) ? new GetCredentialInterruptedException(exc.getMessage()) : new GetCredentialUnknownException(cj.j("Get digital credential failed, failure: ", exc));
                        }
                    } else {
                        getCredentialUnknownException = new GetCredentialUnknownException(cj.j("Get digital credential failed, failure: ", exc));
                    }
                    getCredentialExceptionA = getCredentialUnknownException;
                }
                CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetDigitalCredentialController$invokePlayServices$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        executor.execute(new jr(credentialManagerCallback, getCredentialExceptionA, 1));
                        return Unit.f71739a;
                    }
                });
                break;
            default:
                int i5 = CredentialProviderGetRestoreCredentialController.f12510f;
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                ref$ObjectRef.f71921b = new GetCredentialUnknownException(fc.g(exc, new StringBuilder("Get restore credential failed for unknown reason, failure: ")));
                if (exc instanceof ApiException) {
                    Status status = ((ApiException) exc).f28974b;
                    if (status.f29008b == 40201) {
                        ref$ObjectRef.f71921b = new GetCredentialUnknownException(fc.g(exc, new StringBuilder("The restore credential internal service had a failure, failure: ")));
                    } else {
                        ref$ObjectRef.f71921b = new GetCredentialUnknownException("The restore credential service failed with unsupported status code, failure: " + exc.getMessage() + ", status code: " + status.f29008b);
                    }
                }
                CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetRestoreCredentialController$invokePlayServices$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        executor.execute(new hr(credentialManagerCallback, ref$ObjectRef, 1));
                        return Unit.f71739a;
                    }
                });
                break;
        }
    }

    public /* synthetic */ b(CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        this.f12523c = cancellationSignal;
        this.d = executor;
        this.f12524e = credentialManagerCallback;
    }
}
