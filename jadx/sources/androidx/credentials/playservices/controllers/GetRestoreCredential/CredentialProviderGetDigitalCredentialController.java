package androidx.credentials.playservices.controllers.GetRestoreCredential;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import androidx.credentials.Credential;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.CredentialOption;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetDigitalCredentialOption;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.internal.ConversionUtilsKt;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.provider.PendingIntentHandler;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.identitycredentials.GetCredentialResponse;
import com.google.android.gms.identitycredentials.IdentityCredentialManager;
import com.google.android.gms.identitycredentials.PendingGetCredentialHandle;
import com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient;
import com.google.android.gms.internal.identity_credentials.zze;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.ir;
import defpackage.jr;
import defpackage.md;
import defpackage.z1;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/credentials/playservices/controllers/GetRestoreCredential/CredentialProviderGetDigitalCredentialController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/GetCredentialRequest;", "Lcom/google/android/gms/identitycredentials/GetCredentialRequest;", "Lcom/google/android/gms/identitycredentials/GetCredentialResponse;", "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CredentialProviderGetDigitalCredentialController extends CredentialProviderController<GetCredentialRequest, com.google.android.gms.identitycredentials.GetCredentialRequest, GetCredentialResponse, androidx.credentials.GetCredentialResponse, GetCredentialException> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f12496j = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f12497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CredentialManagerCallback f12498f;
    public Executor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CancellationSignal f12499h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CredentialProviderGetDigitalCredentialController$resultReceiver$1 f12500i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/controllers/GetRestoreCredential/CredentialProviderGetDigitalCredentialController$Companion;", "", "", "TAG", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetDigitalCredentialController$resultReceiver$1] */
    public CredentialProviderGetDigitalCredentialController(Context context) {
        super(context);
        context.getClass();
        this.f12497e = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.f12500i = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetDigitalCredentialController$resultReceiver$1
            /* JADX WARN: Code duplicated, block: B:25:0x0092  */
            @Override // android.os.ResultReceiver
            public final void onReceiveResult(int i2, Bundle bundle) {
                final androidx.credentials.GetCredentialResponse getCredentialResponse;
                Bundle bundle2;
                bundle.getClass();
                CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.f12489a;
                CredentialProviderGetDigitalCredentialController$resultReceiver$1$onReceiveResult$1 credentialProviderGetDigitalCredentialController$resultReceiver$1$onReceiveResult$1 = new CredentialProviderGetDigitalCredentialController$resultReceiver$1$onReceiveResult$1(2, companion, CredentialProviderBaseController.Companion.class, "getCredentialExceptionTypeToException", "getCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;", 0);
                final CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController = this.f12509b;
                if (CredentialProviderController.c(bundle, credentialProviderGetDigitalCredentialController$resultReceiver$1$onReceiveResult$1, credentialProviderGetDigitalCredentialController.g(), credentialProviderGetDigitalCredentialController.f(), credentialProviderGetDigitalCredentialController.f12499h)) {
                    return;
                }
                int i3 = bundle.getInt("ACTIVITY_REQUEST_CODE");
                Intent intent = (Intent) bundle.getParcelable("RESULT_DATA");
                companion.getClass();
                if (i3 == CredentialProviderBaseController.f12491c && !CredentialProviderController.e(i2, CredentialProviderGetDigitalCredentialController$handleResponse$1.f12501c, new Function1<GetCredentialException, Unit>() { // from class: androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetDigitalCredentialController$handleResponse$2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        GetCredentialException getCredentialException = (GetCredentialException) obj;
                        getCredentialException.getClass();
                        CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController2 = credentialProviderGetDigitalCredentialController;
                        credentialProviderGetDigitalCredentialController2.g().execute(new ir(credentialProviderGetDigitalCredentialController2, getCredentialException, 0));
                        return Unit.f71739a;
                    }
                }, credentialProviderGetDigitalCredentialController.f12499h)) {
                    if (intent == null) {
                        CredentialProviderController.b(credentialProviderGetDigitalCredentialController.f12499h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetDigitalCredentialController$handleResponse$3
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController2 = credentialProviderGetDigitalCredentialController;
                                credentialProviderGetDigitalCredentialController2.g().execute(new z1(credentialProviderGetDigitalCredentialController2, 24));
                                return Unit.f71739a;
                            }
                        });
                        return;
                    }
                    PendingIntentHandler.f12539a.getClass();
                    int i4 = Build.VERSION.SDK_INT;
                    final GetCredentialException getCredentialExceptionA = null;
                    if (i4 >= 34) {
                        PendingIntentHandler.Api34Impl.f12541a.getClass();
                        getCredentialResponse = PendingIntentHandler.Api34Impl.Companion.b(intent);
                    } else {
                        PendingIntentHandler.Api23Impl.f12540a.getClass();
                        androidx.credentials.GetCredentialResponse.Companion companion2 = androidx.credentials.GetCredentialResponse.f12389b;
                        Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.GET_CREDENTIAL_RESPONSE");
                        if (bundleExtra == null) {
                            getCredentialResponse = null;
                        } else {
                            companion2.getClass();
                            String string = bundleExtra.getString("androidx.credentials.provider.extra.EXTRA_CREDENTIAL_TYPE");
                            if (string == null || (bundle2 = bundleExtra.getBundle("androidx.credentials.provider.extra.EXTRA_CREDENTIAL_DATA")) == null) {
                                getCredentialResponse = null;
                            } else {
                                Credential.f12362c.getClass();
                                getCredentialResponse = new androidx.credentials.GetCredentialResponse(Credential.Companion.a(string, bundle2));
                            }
                        }
                    }
                    if (getCredentialResponse != null) {
                        CredentialProviderController.b(credentialProviderGetDigitalCredentialController.f12499h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetDigitalCredentialController$handleResponse$4
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController2 = credentialProviderGetDigitalCredentialController;
                                credentialProviderGetDigitalCredentialController2.g().execute(new jr(credentialProviderGetDigitalCredentialController2, getCredentialResponse, 0));
                                return Unit.f71739a;
                            }
                        });
                        return;
                    }
                    if (i4 >= 34) {
                        PendingIntentHandler.Api34Impl.f12541a.getClass();
                        getCredentialExceptionA = PendingIntentHandler.Api34Impl.Companion.a(intent);
                    } else {
                        PendingIntentHandler.Api23Impl.f12540a.getClass();
                        GetCredentialException.Companion companion3 = GetCredentialException.f12396b;
                        Bundle bundleExtra2 = intent.getBundleExtra("android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION");
                        if (bundleExtra2 != null) {
                            companion3.getClass();
                            String string2 = bundleExtra2.getString("androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_TYPE");
                            if (string2 == null) {
                                md.n("Bundle was missing exception type.");
                                return;
                            }
                            getCredentialExceptionA = ConversionUtilsKt.a(bundleExtra2.getCharSequence("androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_MESSAGE"), string2);
                        }
                    }
                    CredentialProviderController.b(credentialProviderGetDigitalCredentialController.f12499h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetDigitalCredentialController$handleResponse$5
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController2 = credentialProviderGetDigitalCredentialController;
                            credentialProviderGetDigitalCredentialController2.g().execute(new ir(credentialProviderGetDigitalCredentialController2, getCredentialExceptionA, 1));
                            return Unit.f71739a;
                        }
                    });
                }
            }
        };
    }

    public final CredentialManagerCallback f() {
        CredentialManagerCallback credentialManagerCallback = this.f12498f;
        if (credentialManagerCallback != null) {
            return credentialManagerCallback;
        }
        Intrinsics.h("callback");
        throw null;
    }

    public final Executor g() {
        Executor executor = this.g;
        if (executor != null) {
            return executor;
        }
        Intrinsics.h("executor");
        throw null;
    }

    public final void h(GetCredentialRequest getCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        getCredentialRequest.getClass();
        credentialManagerCallback.getClass();
        executor.getClass();
        this.f12499h = cancellationSignal;
        this.f12498f = credentialManagerCallback;
        this.g = executor;
        CredentialProviderPlayServicesImpl.INSTANCE.getClass();
        if (CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (CredentialOption credentialOption : getCredentialRequest.f12384a) {
            if (credentialOption instanceof GetDigitalCredentialOption) {
                arrayList.add(new com.google.android.gms.identitycredentials.CredentialOption(credentialOption.f12370a, credentialOption.f12371b, credentialOption.f12372c, ((GetDigitalCredentialOption) credentialOption).g, "", ""));
            }
        }
        GetCredentialRequest.f12383f.getClass();
        final com.google.android.gms.identitycredentials.GetCredentialRequest getCredentialRequest2 = new com.google.android.gms.identitycredentials.GetCredentialRequest(arrayList, GetCredentialRequest.Companion.a(getCredentialRequest), getCredentialRequest.f12385b, new ResultReceiver(null));
        IdentityCredentialManager.f29566a.getClass();
        Context context = this.f12497e;
        context.getClass();
        InternalIdentityCredentialClient internalIdentityCredentialClient = new InternalIdentityCredentialClient(context);
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29065c = new Feature[]{zze.f30209a};
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$$ExternalSyntheticLambda3
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$getCredential$1$callback$1] */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                final TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                com.google.android.gms.identitycredentials.GetCredentialRequest getCredentialRequest3 = getCredentialRequest2;
                getCredentialRequest3.getClass();
                ((IIdentityCredentialService) ((IdentityCredentialClientImpl) obj).v()).Q1(new IdentityCredentialBaseCallbacks() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$getCredential$1$callback$1
                    @Override // com.google.android.gms.identitycredentials.internal.IdentityCredentialBaseCallbacks, com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
                    public final void W1(Status status, PendingGetCredentialHandle pendingGetCredentialHandle) {
                        status.getClass();
                        TaskUtil.a(status, pendingGetCredentialHandle, taskCompletionSource);
                    }
                }, getCredentialRequest3);
            }
        };
        builderA.d = 32701;
        Task taskI = internalIdentityCredentialClient.i(0, builderA.a());
        taskI.getClass();
        taskI.e(new a(new CredentialProviderGetDigitalCredentialController$invokePlayServices$1(cancellationSignal, this), 0));
        taskI.c(new b(this, cancellationSignal, executor, credentialManagerCallback));
    }
}
