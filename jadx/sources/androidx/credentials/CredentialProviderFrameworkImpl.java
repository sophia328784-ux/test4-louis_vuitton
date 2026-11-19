package androidx.credentials;

import android.content.Context;
import android.credentials.CreateCredentialException;
import android.credentials.GetCredentialException;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.OutcomeReceiver;
import android.text.TextUtils;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialCustomException;
import androidx.credentials.exceptions.CreateCredentialInterruptedException;
import androidx.credentials.exceptions.CreateCredentialNoCreateOptionException;
import androidx.credentials.exceptions.CreateCredentialProviderConfigurationException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.CreateCredentialUnsupportedException;
import androidx.credentials.exceptions.GetCredentialUnsupportedException;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialException;
import androidx.credentials.internal.ConversionUtilsKt;
import androidx.credentials.internal.FrameworkClassParsingException;
import com.vuitton.android.R;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/credentials/CredentialProviderFrameworkImpl;", "Landroidx/credentials/CredentialProvider;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CredentialProviderFrameworkImpl implements CredentialProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f12376b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.credentials.CredentialManager f12377a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/credentials/CredentialProviderFrameworkImpl$Companion;", "", "", "CREATE_DOM_EXCEPTION_PREFIX", "Ljava/lang/String;", "GET_DOM_EXCEPTION_PREFIX", "TAG", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public CredentialProviderFrameworkImpl(Context context) {
        context.getClass();
        this.f12377a = (android.credentials.CredentialManager) context.getSystemService("credential");
    }

    @Override // androidx.credentials.CredentialProvider
    public final boolean isAvailableOnDevice() {
        return Build.VERSION.SDK_INT >= 34 && this.f12377a != null;
    }

    @Override // androidx.credentials.CredentialProvider
    public final void onCreateCredential(Context context, CreateCredentialRequest createCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        context.getClass();
        final CredentialManager$createCredential$2$callback$1 credentialManager$createCredential$2$callback$1 = (CredentialManager$createCredential$2$callback$1) credentialManagerCallback;
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl.onCreateCredential.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                credentialManager$createCredential$2$callback$1.a(new CreateCredentialUnsupportedException("Your device doesn't support credential manager"));
                return Unit.f71739a;
            }
        };
        android.credentials.CredentialManager credentialManager = this.f12377a;
        if (credentialManager == null) {
            function0.mo47invoke();
            return;
        }
        final CreatePasswordRequest createPasswordRequest = (CreatePasswordRequest) createCredentialRequest;
        OutcomeReceiver<android.credentials.CreateCredentialResponse, CreateCredentialException> outcomeReceiver = new OutcomeReceiver(createPasswordRequest, this) { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onCreateCredential$outcome$1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CreatePasswordRequest f12380c;

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:27:0x006f  */
            /* JADX WARN: Code duplicated, block: B:29:0x0078  */
            /* JADX WARN: Code duplicated, block: B:31:0x007c  */
            /* JADX WARN: Code duplicated, block: B:32:0x0081  */
            /* JADX WARN: Code duplicated, block: B:36:0x008b A[Catch: FrameworkClassParsingException -> 0x009b, TryCatch #0 {FrameworkClassParsingException -> 0x009b, blocks: (B:34:0x0085, B:36:0x008b, B:37:0x0095, B:38:0x009a), top: B:45:0x0085 }] */
            /* JADX WARN: Code duplicated, block: B:37:0x0095 A[Catch: FrameworkClassParsingException -> 0x009b, TryCatch #0 {FrameworkClassParsingException -> 0x009b, blocks: (B:34:0x0085, B:36:0x008b, B:37:0x0095, B:38:0x009a), top: B:45:0x0085 }] */
            /* JADX WARN: Code duplicated, block: B:41:0x00a2  */
            /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
            public final void onError(Throwable th) {
                CreateCredentialCustomException createCredentialCustomException;
                Object objA;
                String string;
                CreateCredentialException createCredentialException = (CreateCredentialException) th;
                createCredentialException.getClass();
                int i2 = CredentialProviderFrameworkImpl.f12376b;
                String type = createCredentialException.getType();
                type.getClass();
                String message = createCredentialException.getMessage();
                switch (type.hashCode()) {
                    case -2055374133:
                        if (type.equals("android.credentials.CreateCredentialException.TYPE_USER_CANCELED")) {
                            objA = new CreateCredentialCancellationException(message);
                        } else {
                            if (StringsKt.P(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                CreatePublicKeyCredentialException.Companion companion = CreatePublicKeyCredentialException.f12399b;
                                if (message != null) {
                                    string = message.toString();
                                } else {
                                    string = null;
                                }
                                companion.getClass();
                                try {
                                    if (!StringsKt.k(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                        throw new FrameworkClassParsingException();
                                    }
                                    CreatePublicKeyCredentialDomException.f12398c.getClass();
                                    objA = CreatePublicKeyCredentialDomException.Companion.a(type, string);
                                } catch (FrameworkClassParsingException unused) {
                                    createCredentialCustomException = new CreateCredentialCustomException(type, string);
                                    objA = createCredentialCustomException;
                                }
                            } else {
                                createCredentialCustomException = new CreateCredentialCustomException(type, message);
                            }
                            objA = createCredentialCustomException;
                        }
                        this.f12379b.a(objA);
                        return;
                    case -1166690414:
                        if (type.equals("androidx.credentials.TYPE_CREATE_CREDENTIAL_UNSUPPORTED_EXCEPTION")) {
                            objA = new CreateCredentialUnsupportedException(message);
                        } else {
                            if (StringsKt.P(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                CreatePublicKeyCredentialException.Companion companion2 = CreatePublicKeyCredentialException.f12399b;
                                if (message != null) {
                                    string = message.toString();
                                } else {
                                    string = null;
                                }
                                companion2.getClass();
                                if (!StringsKt.k(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                    throw new FrameworkClassParsingException();
                                }
                                CreatePublicKeyCredentialDomException.f12398c.getClass();
                                objA = CreatePublicKeyCredentialDomException.Companion.a(type, string);
                            } else {
                                createCredentialCustomException = new CreateCredentialCustomException(type, message);
                            }
                            objA = createCredentialCustomException;
                        }
                        this.f12379b.a(objA);
                        return;
                    case -580283253:
                        if (type.equals("androidx.credentials.TYPE_CREATE_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION")) {
                            objA = new CreateCredentialProviderConfigurationException(message);
                        } else {
                            if (StringsKt.P(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                CreatePublicKeyCredentialException.Companion companion3 = CreatePublicKeyCredentialException.f12399b;
                                if (message != null) {
                                    string = message.toString();
                                } else {
                                    string = null;
                                }
                                companion3.getClass();
                                if (!StringsKt.k(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                    throw new FrameworkClassParsingException();
                                }
                                CreatePublicKeyCredentialDomException.f12398c.getClass();
                                objA = CreatePublicKeyCredentialDomException.Companion.a(type, string);
                            } else {
                                createCredentialCustomException = new CreateCredentialCustomException(type, message);
                            }
                            objA = createCredentialCustomException;
                        }
                        this.f12379b.a(objA);
                        return;
                    case 1316905704:
                        if (type.equals("android.credentials.CreateCredentialException.TYPE_UNKNOWN")) {
                            objA = new CreateCredentialUnknownException(message);
                        } else {
                            if (StringsKt.P(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                CreatePublicKeyCredentialException.Companion companion4 = CreatePublicKeyCredentialException.f12399b;
                                if (message != null) {
                                    string = message.toString();
                                } else {
                                    string = null;
                                }
                                companion4.getClass();
                                if (!StringsKt.k(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                    throw new FrameworkClassParsingException();
                                }
                                CreatePublicKeyCredentialDomException.f12398c.getClass();
                                objA = CreatePublicKeyCredentialDomException.Companion.a(type, string);
                            } else {
                                createCredentialCustomException = new CreateCredentialCustomException(type, message);
                            }
                            objA = createCredentialCustomException;
                        }
                        this.f12379b.a(objA);
                        return;
                    case 2092588512:
                        if (type.equals("android.credentials.CreateCredentialException.TYPE_INTERRUPTED")) {
                            objA = new CreateCredentialInterruptedException(message);
                        } else {
                            if (StringsKt.P(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                CreatePublicKeyCredentialException.Companion companion5 = CreatePublicKeyCredentialException.f12399b;
                                if (message != null) {
                                    string = message.toString();
                                } else {
                                    string = null;
                                }
                                companion5.getClass();
                                if (!StringsKt.k(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                    throw new FrameworkClassParsingException();
                                }
                                CreatePublicKeyCredentialDomException.f12398c.getClass();
                                objA = CreatePublicKeyCredentialDomException.Companion.a(type, string);
                            } else {
                                createCredentialCustomException = new CreateCredentialCustomException(type, message);
                            }
                            objA = createCredentialCustomException;
                        }
                        this.f12379b.a(objA);
                        return;
                    case 2131915191:
                        if (type.equals("android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS")) {
                            objA = new CreateCredentialNoCreateOptionException(message);
                        } else {
                            if (StringsKt.P(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                CreatePublicKeyCredentialException.Companion companion6 = CreatePublicKeyCredentialException.f12399b;
                                if (message != null) {
                                    string = message.toString();
                                } else {
                                    string = null;
                                }
                                companion6.getClass();
                                if (!StringsKt.k(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                    throw new FrameworkClassParsingException();
                                }
                                CreatePublicKeyCredentialDomException.f12398c.getClass();
                                objA = CreatePublicKeyCredentialDomException.Companion.a(type, string);
                            } else {
                                createCredentialCustomException = new CreateCredentialCustomException(type, message);
                            }
                            objA = createCredentialCustomException;
                        }
                        this.f12379b.a(objA);
                        return;
                    default:
                        if (StringsKt.P(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                            CreatePublicKeyCredentialException.Companion companion7 = CreatePublicKeyCredentialException.f12399b;
                            if (message != null) {
                                string = message.toString();
                            } else {
                                string = null;
                            }
                            companion7.getClass();
                            if (!StringsKt.k(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false)) {
                                throw new FrameworkClassParsingException();
                            }
                            CreatePublicKeyCredentialDomException.f12398c.getClass();
                            objA = CreatePublicKeyCredentialDomException.Companion.a(type, string);
                            this.f12379b.a(objA);
                            return;
                        }
                        createCredentialCustomException = new CreateCredentialCustomException(type, message);
                        objA = createCredentialCustomException;
                        this.f12379b.a(objA);
                        return;
                }
            }

            public final void onResult(Object obj) {
                Object createCustomCredentialResponse;
                android.credentials.CreateCredentialResponse createCredentialResponse = (android.credentials.CreateCredentialResponse) obj;
                createCredentialResponse.getClass();
                CreateCredentialResponse.Companion companion = CreateCredentialResponse.f12355a;
                String str = this.f12380c.f12347a;
                Bundle data = createCredentialResponse.getData();
                data.getClass();
                companion.getClass();
                str.getClass();
                try {
                    if (str.equals("android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                        CreatePasswordResponse.f12358b.getClass();
                        createCustomCredentialResponse = new CreatePasswordResponse(data, null);
                    } else {
                        if (!str.equals("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                            throw new FrameworkClassParsingException();
                        }
                        CreatePublicKeyCredentialResponse.f12360b.getClass();
                        try {
                            String string = data.getString("androidx.credentials.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON");
                            string.getClass();
                            createCustomCredentialResponse = new CreatePublicKeyCredentialResponse(string, data, null);
                        } catch (Exception unused) {
                            throw new FrameworkClassParsingException();
                        }
                    }
                } catch (FrameworkClassParsingException unused2) {
                    createCustomCredentialResponse = new CreateCustomCredentialResponse(str, data);
                }
                this.f12379b.onResult(createCustomCredentialResponse);
            }
        };
        credentialManager.getClass();
        String str = createCredentialRequest.f12347a;
        Bundle bundle = createCredentialRequest.f12348b;
        CreateCredentialRequest.DisplayInfo displayInfo = createCredentialRequest.f12350e;
        String str2 = displayInfo.f12354c;
        Bundle bundle2 = new Bundle();
        bundle2.putCharSequence("androidx.credentials.BUNDLE_KEY_USER_ID", displayInfo.f12352a);
        CharSequence charSequence = displayInfo.f12353b;
        if (!TextUtils.isEmpty(charSequence)) {
            bundle2.putCharSequence("androidx.credentials.BUNDLE_KEY_USER_DISPLAY_NAME", charSequence);
        }
        if (!TextUtils.isEmpty(str2)) {
            bundle2.putString("androidx.credentials.BUNDLE_KEY_DEFAULT_PROVIDER", str2);
        }
        bundle2.putParcelable("androidx.credentials.BUNDLE_KEY_CREDENTIAL_TYPE_ICON", Icon.createWithResource(context, R.drawable.ic_password));
        bundle.putBundle("androidx.credentials.BUNDLE_KEY_REQUEST_DISPLAY_INFO", bundle2);
        android.credentials.CreateCredentialRequest.Builder alwaysSendAppInfoToProvider = new android.credentials.CreateCredentialRequest.Builder(str, bundle, createCredentialRequest.f12349c).setIsSystemProviderRequired(createCredentialRequest.d).setAlwaysSendAppInfoToProvider(true);
        alwaysSendAppInfoToProvider.getClass();
        String str3 = createCredentialRequest.f12351f;
        if (str3 != null) {
            alwaysSendAppInfoToProvider.setOrigin(str3);
        }
        android.credentials.CreateCredentialRequest createCredentialRequestBuild = alwaysSendAppInfoToProvider.build();
        createCredentialRequestBuild.getClass();
        credentialManager.createCredential(context, createCredentialRequestBuild, cancellationSignal, executor, outcomeReceiver);
    }

    @Override // androidx.credentials.CredentialProvider
    public final void onGetCredential(Context context, GetCredentialRequest getCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        context.getClass();
        final CredentialManager$getCredential$2$callback$1 credentialManager$getCredential$2$callback$1 = (CredentialManager$getCredential$2$callback$1) credentialManagerCallback;
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl.onGetCredential.2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                credentialManager$getCredential$2$callback$1.a(new GetCredentialUnsupportedException("Your device doesn't support credential manager"));
                return Unit.f71739a;
            }
        };
        android.credentials.CredentialManager credentialManager = this.f12377a;
        if (credentialManager == null) {
            function0.mo47invoke();
            return;
        }
        OutcomeReceiver<android.credentials.GetCredentialResponse, GetCredentialException> outcomeReceiver = new OutcomeReceiver(this) { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onGetCredential$outcome$2
            public final void onError(Throwable th) {
                GetCredentialException getCredentialException = (GetCredentialException) th;
                getCredentialException.getClass();
                int i2 = CredentialProviderFrameworkImpl.f12376b;
                String type = getCredentialException.getType();
                type.getClass();
                this.f12382b.a(ConversionUtilsKt.a(getCredentialException.getMessage(), type));
            }

            public final void onResult(Object obj) {
                android.credentials.GetCredentialResponse getCredentialResponse = (android.credentials.GetCredentialResponse) obj;
                getCredentialResponse.getClass();
                int i2 = CredentialProviderFrameworkImpl.f12376b;
                android.credentials.Credential credential = getCredentialResponse.getCredential();
                credential.getClass();
                Credential.Companion companion = Credential.f12362c;
                String type = credential.getType();
                type.getClass();
                Bundle data = credential.getData();
                data.getClass();
                companion.getClass();
                this.f12382b.onResult(new GetCredentialResponse(Credential.Companion.a(type, data)));
            }
        };
        credentialManager.getClass();
        GetCredentialRequest.f12383f.getClass();
        android.credentials.GetCredentialRequest.Builder builder = new android.credentials.GetCredentialRequest.Builder(GetCredentialRequest.Companion.a(getCredentialRequest));
        for (CredentialOption credentialOption : getCredentialRequest.f12384a) {
            builder.addCredentialOption(new android.credentials.CredentialOption.Builder(credentialOption.f12370a, credentialOption.f12371b, credentialOption.f12372c).setIsSystemProviderRequired(credentialOption.d).setAllowedProviders(credentialOption.f12374f).build());
        }
        String str = getCredentialRequest.f12385b;
        if (str != null) {
            builder.setOrigin(str);
        }
        android.credentials.GetCredentialRequest getCredentialRequestBuild = builder.build();
        getCredentialRequestBuild.getClass();
        credentialManager.getCredential(context, getCredentialRequestBuild, cancellationSignal, executor, outcomeReceiver);
    }
}
