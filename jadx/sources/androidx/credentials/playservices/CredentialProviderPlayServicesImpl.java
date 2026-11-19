package androidx.credentials.playservices;

import android.content.Context;
import android.os.CancellationSignal;
import android.os.Parcel;
import androidx.credentials.ClearCredentialStateRequest;
import androidx.credentials.CreateCredentialRequest;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.CreatePasswordRequest;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.CreateRestoreCredentialRequest;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.CredentialOption;
import androidx.credentials.CredentialProvider;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.GetDigitalCredentialOption;
import androidx.credentials.GetRestoreCredentialOption;
import androidx.credentials.PrepareGetCredentialResponse$PendingGetCredentialHandle;
import androidx.credentials.exceptions.ClearCredentialException;
import androidx.credentials.exceptions.ClearCredentialUnknownException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.CreateRestoreCredential.CredentialProviderCreateRestoreCredentialController;
import androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetDigitalCredentialController;
import androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetRestoreCredentialController;
import androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController;
import com.google.android.gms.auth.api.identity.zbv;
import com.google.android.gms.auth.blockstore.restorecredential.ClearRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.auth_blockstore.zzab;
import com.google.android.gms.internal.p000authapi.zbaq;
import com.google.android.gms.internal.p000authapi.zbas;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.libraries.identity.googleid.GetSignInWithGoogleOption;
import defpackage.gr;
import defpackage.hr;
import defpackage.lr;
import defpackage.m7;
import defpackage.mr;
import defpackage.mt;
import defpackage.x1;
import defpackage.y81;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 &2\u00020\u0001:\u0001&B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J8\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0014\u0010\u001a\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0004\u0012\u00020\u001d0\u001bH\u0016J>\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u001f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!0\u001bH\u0016J>\u0010\"\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020#2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0\u001bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006'"}, d2 = {"Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;", "Landroidx/credentials/CredentialProvider;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "(Landroid/content/Context;)V", "googleApiAvailability", "Lcom/google/android/gms/common/GoogleApiAvailability;", "getGoogleApiAvailability$annotations", "()V", "getGoogleApiAvailability", "()Lcom/google/android/gms/common/GoogleApiAvailability;", "setGoogleApiAvailability", "(Lcom/google/android/gms/common/GoogleApiAvailability;)V", "isAvailableOnDevice", "", "minApkVersion", "", "isGooglePlayServicesAvailable", "onClearCredential", "", "request", "Landroidx/credentials/ClearCredentialStateRequest;", "cancellationSignal", "Landroid/os/CancellationSignal;", "executor", "Ljava/util/concurrent/Executor;", "callback", "Landroidx/credentials/CredentialManagerCallback;", "Ljava/lang/Void;", "Landroidx/credentials/exceptions/ClearCredentialException;", "onCreateCredential", "Landroidx/credentials/CreateCredentialRequest;", "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "onGetCredential", "Landroidx/credentials/GetCredentialRequest;", "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CredentialProviderPlayServicesImpl implements CredentialProvider {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int MIN_GMS_APK_VERSION = 230815045;
    public static final int MIN_GMS_APK_VERSION_DIGITAL_CRED = 243100000;
    public static final int MIN_GMS_APK_VERSION_RESTORE_CRED = 242200000;
    private static final String TAG = "PlayServicesImpl";
    private final Context context;
    private GoogleApiAvailability googleApiAvailability;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;", "", "", "MIN_GMS_APK_VERSION", "I", "MIN_GMS_APK_VERSION_DIGITAL_CRED", "MIN_GMS_APK_VERSION_RESTORE_CRED", "", "TAG", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static boolean a(CancellationSignal cancellationSignal) {
            return cancellationSignal != null && cancellationSignal.isCanceled();
        }

        public static void b(CancellationSignal cancellationSignal, Function0 function0) {
            if (a(cancellationSignal)) {
                return;
            }
            function0.mo47invoke();
        }
    }

    public CredentialProviderPlayServicesImpl(Context context) {
        context.getClass();
        this.context = context;
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f28961e;
        googleApiAvailability.getClass();
        this.googleApiAvailability = googleApiAvailability;
    }

    public static /* synthetic */ void getGoogleApiAvailability$annotations() {
    }

    private final int isGooglePlayServicesAvailable(Context context, int minApkVersion) {
        return this.googleApiAvailability.b(context, minApkVersion);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClearCredential$lambda$1(CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, Exception exc) {
        exc.getClass();
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.f71921b = new ClearCredentialUnknownException("Clear restore credential failed for unknown reason.");
        if ((exc instanceof ApiException) && ((ApiException) exc).f28974b.f29008b == 40201) {
            ref$ObjectRef.f71921b = new ClearCredentialUnknownException("The restore credential internal service had a failure.");
        }
        Companion companion = INSTANCE;
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$onClearCredential$3$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                executor.execute(new hr(credentialManagerCallback, ref$ObjectRef, 2));
                return Unit.f71739a;
            }
        };
        companion.getClass();
        Companion.b(cancellationSignal, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClearCredential$lambda$4(CredentialProviderPlayServicesImpl credentialProviderPlayServicesImpl, CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, final Exception exc) {
        exc.getClass();
        Companion companion = INSTANCE;
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$onClearCredential$5$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Exception exc2 = exc;
                Objects.toString(exc2);
                executor.execute(new gr(credentialManagerCallback, exc2, 2));
                return Unit.f71739a;
            }
        };
        companion.getClass();
        Companion.b(cancellationSignal, function0);
    }

    public final GoogleApiAvailability getGoogleApiAvailability() {
        return this.googleApiAvailability;
    }

    public final boolean isAvailableOnDevice(int minApkVersion) {
        int iIsGooglePlayServicesAvailable = isGooglePlayServicesAvailable(this.context, minApkVersion);
        boolean z = iIsGooglePlayServicesAvailable == 0;
        if (!z) {
            new ConnectionResult(iIsGooglePlayServicesAvailable).toString();
        }
        return z;
    }

    public void onClearCredential(ClearCredentialStateRequest request, final CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback<Void, ClearCredentialException> callback) {
        request.getClass();
        executor.getClass();
        callback.getClass();
        INSTANCE.getClass();
        if (Companion.a(cancellationSignal)) {
            return;
        }
        int i2 = 0;
        if (Intrinsics.c(request.f12345a, "androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL")) {
            if (!isAvailableOnDevice(MIN_GMS_APK_VERSION_RESTORE_CRED)) {
                Companion.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl.onClearCredential.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        executor.execute(new mr(callback, 0));
                        return Unit.f71739a;
                    }
                });
                return;
            }
            Context context = this.context;
            context.getClass();
            InternalRestoreCredentialClient internalRestoreCredentialClient = new InternalRestoreCredentialClient(context);
            final ClearRestoreCredentialRequest clearRestoreCredentialRequest = new ClearRestoreCredentialRequest(request.f12346b);
            TaskApiCall.Builder builderA = TaskApiCall.a();
            builderA.f29065c = new Feature[]{zzab.f29610a};
            builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    Api api = InternalRestoreCredentialClient.l;
                    ClearRestoreCredentialRequest clearRestoreCredentialRequest2 = clearRestoreCredentialRequest;
                    clearRestoreCredentialRequest2.getClass();
                    ((IRestoreCredentialService) ((RestoreCredentialClientImpl) obj).v()).E0(clearRestoreCredentialRequest2, new InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1((TaskCompletionSource) obj2));
                }
            };
            builderA.d = 1694;
            Task taskI = internalRestoreCredentialClient.i(0, builderA.a());
            taskI.getClass();
            taskI.e(new lr(new Function1<Boolean, Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl.onClearCredential.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Companion companion = CredentialProviderPlayServicesImpl.INSTANCE;
                    final Executor executor2 = executor;
                    final CredentialManagerCallback credentialManagerCallback = callback;
                    Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl.onClearCredential.2.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            executor2.execute(new mr(credentialManagerCallback, 1));
                            return Unit.f71739a;
                        }
                    };
                    companion.getClass();
                    Companion.b(cancellationSignal, function0);
                    return Unit.f71739a;
                }
            }, i2));
            taskI.c(new y81(cancellationSignal, executor, callback, 5));
            return;
        }
        Context context2 = this.context;
        Preconditions.h(context2);
        final zbaq zbaqVar = new zbaq(context2, new zbv());
        zbaqVar.f28985a.getSharedPreferences("com.google.android.gms.signin", 0).edit().clear().apply();
        Set set = GoogleApiClient.f29001a;
        synchronized (set) {
        }
        Iterator it = set.iterator();
        if (it.hasNext()) {
            ((GoogleApiClient) it.next()).getClass();
            x1.i();
            return;
        }
        GoogleApiManager.a();
        TaskApiCall.Builder builderA2 = TaskApiCall.a();
        builderA2.f29065c = new Feature[]{zbas.f29591a};
        builderA2.f29063a = new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbai
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zbaq zbaqVar2 = zbaqVar;
                zbaqVar2.getClass();
                zban zbanVar = new zban((TaskCompletionSource) obj2);
                zbw zbwVar = (zbw) ((zbar) obj).v();
                String str = zbaqVar2.l;
                Parcel parcelE2 = zbwVar.E2();
                int i3 = zbc.f29595a;
                parcelE2.writeStrongBinder(zbanVar);
                parcelE2.writeString(str);
                zbwVar.F2(2, parcelE2);
            }
        };
        builderA2.f29064b = false;
        builderA2.d = 1554;
        Task taskI2 = zbaqVar.i(1, builderA2.a());
        taskI2.e(new lr(new Function1<Void, Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl.onClearCredential.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Companion companion = CredentialProviderPlayServicesImpl.INSTANCE;
                final Executor executor2 = executor;
                final CredentialManagerCallback credentialManagerCallback = callback;
                Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl.onClearCredential.4.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        executor2.execute(new mr(credentialManagerCallback, 2));
                        return Unit.f71739a;
                    }
                };
                companion.getClass();
                Companion.b(cancellationSignal, function0);
                return Unit.f71739a;
            }
        }, 1));
        taskI2.c(new m7(this, cancellationSignal, executor, callback, 2));
    }

    @Override // androidx.credentials.CredentialProvider
    public void onCreateCredential(Context context, CreateCredentialRequest request, CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> callback) {
        context.getClass();
        request.getClass();
        executor.getClass();
        callback.getClass();
        INSTANCE.getClass();
        if (Companion.a(cancellationSignal)) {
            return;
        }
        if (request instanceof CreatePasswordRequest) {
            CredentialProviderCreatePasswordController.f12442j.getClass();
            new CredentialProviderCreatePasswordController(context).f((CreatePasswordRequest) request, callback, executor, cancellationSignal);
            return;
        }
        if (request instanceof CreatePublicKeyCredentialRequest) {
            CredentialProviderCreatePublicKeyCredentialController.f12452j.getClass();
            new CredentialProviderCreatePublicKeyCredentialController(context).h((CreatePublicKeyCredentialRequest) request, callback, executor, cancellationSignal);
        } else if (!(request instanceof CreateRestoreCredentialRequest)) {
            mt.i("Create Credential request is unsupported, not password or publickeycredential");
        } else if (isAvailableOnDevice(MIN_GMS_APK_VERSION_RESTORE_CRED)) {
            new CredentialProviderCreateRestoreCredentialController(context).f((CreateRestoreCredentialRequest) request, callback, executor, cancellationSignal);
        } else {
            Companion.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl.onCreateCredential.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    executor.execute(new mr(callback, 3));
                    return Unit.f71739a;
                }
            });
        }
    }

    @Override // androidx.credentials.CredentialProvider
    public void onGetCredential(Context context, GetCredentialRequest request, CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback) {
        context.getClass();
        request.getClass();
        executor.getClass();
        callback.getClass();
        INSTANCE.getClass();
        if (Companion.a(cancellationSignal)) {
            return;
        }
        List list = request.f12384a;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((CredentialOption) it.next()) instanceof GetDigitalCredentialOption) {
                if (isAvailableOnDevice(MIN_GMS_APK_VERSION_DIGITAL_CRED)) {
                    new CredentialProviderGetDigitalCredentialController(context).h(request, cancellationSignal, executor, callback);
                    return;
                }
                Companion companion = INSTANCE;
                Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl.onGetCredential.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        executor.execute(new mr(callback, 4));
                        return Unit.f71739a;
                    }
                };
                companion.getClass();
                Companion.b(cancellationSignal, function0);
                return;
            }
        }
        INSTANCE.getClass();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            if (((CredentialOption) it2.next()) instanceof GetRestoreCredentialOption) {
                if (isAvailableOnDevice(MIN_GMS_APK_VERSION_RESTORE_CRED)) {
                    new CredentialProviderGetRestoreCredentialController(context).f(request, cancellationSignal, executor, callback);
                    return;
                }
                Companion companion2 = INSTANCE;
                Function0<Unit> function1 = new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl.onGetCredential.3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        executor.execute(new mr(callback, 5));
                        return Unit.f71739a;
                    }
                };
                companion2.getClass();
                Companion.b(cancellationSignal, function1);
                return;
            }
        }
        INSTANCE.getClass();
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            if (((CredentialOption) it3.next()) instanceof GetSignInWithGoogleOption) {
                new CredentialProviderGetSignInIntentController(context).j(request, cancellationSignal, executor, callback);
                return;
            }
        }
        new CredentialProviderBeginSignInController(context).i(request, cancellationSignal, executor, callback);
    }

    public void onPrepareCredential(GetCredentialRequest getCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        getCredentialRequest.getClass();
        executor.getClass();
        credentialManagerCallback.getClass();
    }

    public final void setGoogleApiAvailability(GoogleApiAvailability googleApiAvailability) {
        googleApiAvailability.getClass();
        this.googleApiAvailability = googleApiAvailability;
    }

    @Override // androidx.credentials.CredentialProvider
    public boolean isAvailableOnDevice() {
        return isAvailableOnDevice(MIN_GMS_APK_VERSION);
    }

    public void onGetCredential(Context context, PrepareGetCredentialResponse$PendingGetCredentialHandle prepareGetCredentialResponse$PendingGetCredentialHandle, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        context.getClass();
        prepareGetCredentialResponse$PendingGetCredentialHandle.getClass();
        executor.getClass();
        credentialManagerCallback.getClass();
    }
}
