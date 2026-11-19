package androidx.credentials.playservices.controllers.GetRestoreCredential;

import android.content.Context;
import android.os.CancellationSignal;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.CredentialOption;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.GetRestoreCredentialOption;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialResponse;
import com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.auth_blockstore.zzab;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/credentials/playservices/controllers/GetRestoreCredential/CredentialProviderGetRestoreCredentialController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/GetCredentialRequest;", "Lcom/google/android/gms/auth/blockstore/restorecredential/GetRestoreCredentialRequest;", "Lcom/google/android/gms/auth/blockstore/restorecredential/GetRestoreCredentialResponse;", "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CredentialProviderGetRestoreCredentialController extends CredentialProviderController<GetCredentialRequest, GetRestoreCredentialRequest, GetRestoreCredentialResponse, GetCredentialResponse, GetCredentialException> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f12510f = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f12511e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderGetRestoreCredentialController(Context context) {
        super(context);
        context.getClass();
        this.f12511e = context;
    }

    public final void f(GetCredentialRequest getCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        GetRestoreCredentialOption getRestoreCredentialOption;
        getCredentialRequest.getClass();
        credentialManagerCallback.getClass();
        executor.getClass();
        CredentialProviderPlayServicesImpl.INSTANCE.getClass();
        if (CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
            return;
        }
        Iterator it = getCredentialRequest.f12384a.iterator();
        while (true) {
            if (!it.hasNext()) {
                getRestoreCredentialOption = null;
                break;
            }
            CredentialOption credentialOption = (CredentialOption) it.next();
            if (credentialOption instanceof GetRestoreCredentialOption) {
                getRestoreCredentialOption = (GetRestoreCredentialOption) credentialOption;
                break;
            }
        }
        if (getRestoreCredentialOption == null) {
            Intrinsics.h("credentialOption");
            throw null;
        }
        final GetRestoreCredentialRequest getRestoreCredentialRequest = new GetRestoreCredentialRequest(getRestoreCredentialOption.f12371b);
        Context context = this.f12511e;
        context.getClass();
        InternalRestoreCredentialClient internalRestoreCredentialClient = new InternalRestoreCredentialClient(context);
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29065c = new Feature[]{zzab.f29612c};
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                Api api = InternalRestoreCredentialClient.l;
                GetRestoreCredentialRequest getRestoreCredentialRequest2 = getRestoreCredentialRequest;
                getRestoreCredentialRequest2.getClass();
                ((IRestoreCredentialService) ((RestoreCredentialClientImpl) obj).v()).D0(getRestoreCredentialRequest2, new InternalRestoreCredentialClient$getRestoreCredential$1$callback$1((TaskCompletionSource) obj2));
            }
        };
        builderA.d = 1695;
        Task taskI = internalRestoreCredentialClient.i(0, builderA.a());
        taskI.getClass();
        taskI.e(new a(new CredentialProviderGetRestoreCredentialController$invokePlayServices$1(this, cancellationSignal, executor, credentialManagerCallback), 1));
        taskI.c(new b(cancellationSignal, executor, credentialManagerCallback));
    }
}
