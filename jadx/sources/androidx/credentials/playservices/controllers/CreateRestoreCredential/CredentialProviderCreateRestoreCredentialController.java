package androidx.credentials.playservices.controllers.CreateRestoreCredential;

import android.content.Context;
import android.os.CancellationSignal;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.CreateRestoreCredentialRequest;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.domerrors.DataError;
import androidx.credentials.exceptions.restorecredential.CreateRestoreCredentialDomException;
import androidx.credentials.exceptions.restorecredential.E2eeUnavailableException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialResponse;
import com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.auth_blockstore.zzab;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.fc;
import defpackage.hr;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/credentials/playservices/controllers/CreateRestoreCredential/CredentialProviderCreateRestoreCredentialController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/CreateRestoreCredentialRequest;", "Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialRequest;", "Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;", "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CredentialProviderCreateRestoreCredentialController extends CredentialProviderController<CreateRestoreCredentialRequest, com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialRequest, CreateRestoreCredentialResponse, CreateCredentialResponse, CreateCredentialException> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f12476f = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f12477e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderCreateRestoreCredentialController(Context context) {
        super(context);
        context.getClass();
        this.f12477e = context;
    }

    public final void f(CreateRestoreCredentialRequest createRestoreCredentialRequest, final CredentialManagerCallback credentialManagerCallback, final Executor executor, final CancellationSignal cancellationSignal) {
        createRestoreCredentialRequest.getClass();
        credentialManagerCallback.getClass();
        executor.getClass();
        CredentialProviderPlayServicesImpl.INSTANCE.getClass();
        if (CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
            return;
        }
        final com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialRequest createRestoreCredentialRequest2 = new com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialRequest(createRestoreCredentialRequest.f12348b);
        Context context = this.f12477e;
        context.getClass();
        InternalRestoreCredentialClient internalRestoreCredentialClient = new InternalRestoreCredentialClient(context);
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29065c = new Feature[]{zzab.f29611b};
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                Api api = InternalRestoreCredentialClient.l;
                com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialRequest createRestoreCredentialRequest3 = createRestoreCredentialRequest2;
                createRestoreCredentialRequest3.getClass();
                ((IRestoreCredentialService) ((RestoreCredentialClientImpl) obj).v()).B1(createRestoreCredentialRequest3, new InternalRestoreCredentialClient$createRestoreCredential$1$callback$1((TaskCompletionSource) obj2));
            }
        };
        builderA.d = 1693;
        Task taskI = internalRestoreCredentialClient.i(0, builderA.a());
        taskI.getClass();
        final CredentialProviderCreateRestoreCredentialController$invokePlayServices$1 credentialProviderCreateRestoreCredentialController$invokePlayServices$1 = new CredentialProviderCreateRestoreCredentialController$invokePlayServices$1(this, cancellationSignal, executor, credentialManagerCallback);
        taskI.e(new OnSuccessListener() { // from class: androidx.credentials.playservices.controllers.CreateRestoreCredential.a
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                int i2 = CredentialProviderCreateRestoreCredentialController.f12476f;
                ((CredentialProviderCreateRestoreCredentialController$invokePlayServices$1) credentialProviderCreateRestoreCredentialController$invokePlayServices$1).invoke(obj);
            }
        });
        taskI.c(new OnFailureListener() { // from class: androidx.credentials.playservices.controllers.CreateRestoreCredential.b
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                int i2 = CredentialProviderCreateRestoreCredentialController.f12476f;
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                ref$ObjectRef.f71921b = new CreateCredentialUnknownException(fc.g(exc, new StringBuilder("Create restore credential failed for unknown reason, failure: ")));
                if (exc instanceof ApiException) {
                    Status status = ((ApiException) exc).f28974b;
                    switch (status.f29008b) {
                        case 40201:
                            ref$ObjectRef.f71921b = new CreateCredentialUnknownException(fc.g(exc, new StringBuilder("The restore credential internal service had a failure, failure: ")));
                            break;
                        case 40202:
                            ref$ObjectRef.f71921b = new CreateRestoreCredentialDomException(new DataError(), fc.g(exc, new StringBuilder("The request did not match the fido spec, failure: ")));
                            break;
                        case 40203:
                            ref$ObjectRef.f71921b = new E2eeUnavailableException("E2ee is not available on the device. Check whether the backup and screen lock are enabled.");
                            break;
                        default:
                            ref$ObjectRef.f71921b = new CreateCredentialUnknownException("The restore credential service failed with unsupported status code, failure: " + exc.getMessage() + ", status code: " + status.f29008b);
                            break;
                    }
                }
                final Executor executor2 = executor;
                final CredentialManagerCallback credentialManagerCallback2 = credentialManagerCallback;
                CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreateRestoreCredential.CredentialProviderCreateRestoreCredentialController$invokePlayServices$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        executor2.execute(new hr(credentialManagerCallback2, ref$ObjectRef, 0));
                        return Unit.f71739a;
                    }
                });
            }
        });
    }
}
