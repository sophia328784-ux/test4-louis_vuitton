package androidx.credentials.playservices;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.ResultReceiver;
import androidx.credentials.playservices.HiddenActivity;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.zbi;
import com.google.android.gms.auth.api.identity.zbv;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.fido.Fido;
import com.google.android.gms.fido.fido2.Fido2ApiClient;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.internal.fido.zzc;
import com.google.android.gms.internal.fido.zzp;
import com.google.android.gms.internal.fido.zzs;
import com.google.android.gms.internal.p000authapi.zbag;
import com.google.android.gms.internal.p000authapi.zbaq;
import com.google.android.gms.internal.p000authapi.zbas;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.DataChannelModule;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/HiddenActivity;", "Landroid/app/Activity;", "<init>", "()V", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class HiddenActivity extends Activity {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ResultReceiver f12418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f12419c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/credentials/playservices/HiddenActivity$Companion;", "", "", "DEFAULT_VALUE", "I", "", "KEY_AWAITING_RESULT", "Ljava/lang/String;", "TAG", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public final void a(ResultReceiver resultReceiver, String str, String str2) {
        CredentialProviderBaseController.f12489a.getClass();
        CredentialProviderBaseController.Companion.c(resultReceiver, str, str2);
        finish();
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        ResultReceiver resultReceiver = this.f12418b;
        if (resultReceiver != null) {
            CredentialProviderBaseController.f12489a.getClass();
            Bundle bundle = new Bundle();
            bundle.putBoolean("FAILURE_RESPONSE", false);
            bundle.putInt("ACTIVITY_REQUEST_CODE", i2);
            bundle.putParcelable("RESULT_DATA", intent);
            resultReceiver.send(i3, bundle);
        }
        this.f12419c = false;
        finish();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i2 = 0;
        overridePendingTransition(0, 0);
        String stringExtra = getIntent().getStringExtra("TYPE");
        ResultReceiver resultReceiver = (ResultReceiver) getIntent().getParcelableExtra("RESULT_RECEIVER");
        this.f12418b = resultReceiver;
        if (resultReceiver == null) {
            finish();
        }
        if (bundle != null) {
            this.f12419c = bundle.getBoolean("androidx.credentials.playservices.AWAITING_RESULT", false);
        }
        if (this.f12419c) {
            return;
        }
        if (stringExtra != null) {
            Task taskI = null;
            final int i3 = 1;
            switch (stringExtra.hashCode()) {
                case -441061071:
                    if (stringExtra.equals("BEGIN_SIGN_IN")) {
                        BeginSignInRequest beginSignInRequest = (BeginSignInRequest) getIntent().getParcelableExtra("REQUEST_TYPE");
                        int intExtra = getIntent().getIntExtra("ACTIVITY_REQUEST_CODE", 1);
                        if (beginSignInRequest != null) {
                            final zbaq zbaqVar = new zbaq((Activity) this, new zbv());
                            BeginSignInRequest.Builder builder = new BeginSignInRequest.Builder();
                            BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = beginSignInRequest.f28732c;
                            Preconditions.h(googleIdTokenRequestOptions);
                            builder.f28738b = googleIdTokenRequestOptions;
                            BeginSignInRequest.PasswordRequestOptions passwordRequestOptions = beginSignInRequest.f28731b;
                            Preconditions.h(passwordRequestOptions);
                            builder.f28737a = passwordRequestOptions;
                            BeginSignInRequest.PasskeysRequestOptions passkeysRequestOptions = beginSignInRequest.g;
                            Preconditions.h(passkeysRequestOptions);
                            builder.f28739c = passkeysRequestOptions;
                            BeginSignInRequest.PasskeyJsonRequestOptions passkeyJsonRequestOptions = beginSignInRequest.f28735h;
                            Preconditions.h(passkeyJsonRequestOptions);
                            builder.d = passkeyJsonRequestOptions;
                            builder.f28741f = beginSignInRequest.f28733e;
                            builder.g = beginSignInRequest.f28734f;
                            builder.f28742h = beginSignInRequest.f28736i;
                            String str = beginSignInRequest.d;
                            if (str != null) {
                                builder.f28740e = str;
                            }
                            builder.f28740e = zbaqVar.l;
                            final BeginSignInRequest beginSignInRequest2 = new BeginSignInRequest(builder.f28737a, builder.f28738b, builder.f28740e, builder.f28741f, builder.g, builder.f28739c, builder.d, builder.f28742h);
                            TaskApiCall.Builder builderA = TaskApiCall.a();
                            builderA.f29065c = new Feature[]{new Feature("auth_api_credentials_begin_sign_in", 8L)};
                            builderA.f29063a = new RemoteCall(zbaqVar, beginSignInRequest2) { // from class: com.google.android.gms.internal.auth-api.zbaj

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                public final /* synthetic */ BeginSignInRequest f29586a;

                                {
                                    this.f29586a = beginSignInRequest2;
                                }

                                @Override // com.google.android.gms.common.api.internal.RemoteCall
                                public final void accept(Object obj, Object obj2) {
                                    zbam zbamVar = new zbam((TaskCompletionSource) obj2);
                                    zbw zbwVar = (zbw) ((zbar) obj).v();
                                    BeginSignInRequest beginSignInRequest3 = this.f29586a;
                                    Preconditions.h(beginSignInRequest3);
                                    Parcel parcelE2 = zbwVar.E2();
                                    int i4 = zbc.f29595a;
                                    parcelE2.writeStrongBinder(zbamVar);
                                    zbc.c(parcelE2, beginSignInRequest3);
                                    zbwVar.F2(1, parcelE2);
                                }
                            };
                            builderA.f29064b = false;
                            builderA.d = 1553;
                            taskI = zbaqVar.i(0, builderA.a());
                            final HiddenActivity$handleBeginSignIn$1$1 hiddenActivity$handleBeginSignIn$1$1 = new HiddenActivity$handleBeginSignIn$1$1(this, intExtra);
                            final int i4 = 3;
                            taskI.e(new OnSuccessListener() { // from class: androidx.credentials.playservices.a
                                @Override // com.google.android.gms.tasks.OnSuccessListener
                                public final void onSuccess(Object obj) {
                                    int i5 = i4;
                                    Function1 function1 = hiddenActivity$handleBeginSignIn$1$1;
                                    switch (i5) {
                                        case 0:
                                            int i6 = HiddenActivity.d;
                                            ((HiddenActivity$handleCreatePublicKeyCredential$1$1) function1).invoke(obj);
                                            break;
                                        case 1:
                                            int i7 = HiddenActivity.d;
                                            ((HiddenActivity$handleCreatePassword$1$1) function1).invoke(obj);
                                            break;
                                        case 2:
                                            int i8 = HiddenActivity.d;
                                            ((HiddenActivity$handleGetSignInIntent$1$1) function1).invoke(obj);
                                            break;
                                        default:
                                            int i9 = HiddenActivity.d;
                                            ((HiddenActivity$handleBeginSignIn$1$1) function1).invoke(obj);
                                            break;
                                    }
                                }
                            });
                            taskI.c(new OnFailureListener(this) { // from class: i10

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public final /* synthetic */ HiddenActivity f69840c;

                                {
                                    this.f69840c = this;
                                }

                                /* JADX WARN: Code duplicated, block: B:17:0x0069  */
                                /* JADX WARN: Code duplicated, block: B:25:0x00a4  */
                                /* JADX WARN: Code duplicated, block: B:33:0x00df  */
                                /* JADX WARN: Code duplicated, block: B:9:0x002e  */
                                @Override // com.google.android.gms.tasks.OnFailureListener
                                public final void onFailure(Exception exc) {
                                    String str2;
                                    String str3;
                                    int i5 = i4;
                                    HiddenActivity hiddenActivity = this.f69840c;
                                    switch (i5) {
                                        case 0:
                                            int i6 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str2 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "CREATE_INTERRUPTED" : "CREATE_UNKNOWN";
                                            }
                                            ResultReceiver resultReceiver2 = hiddenActivity.f12418b;
                                            resultReceiver2.getClass();
                                            hiddenActivity.a(resultReceiver2, str2, "During create public key credential, fido registration failure: " + exc.getMessage());
                                            break;
                                        case 1:
                                            int i7 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str2 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "CREATE_INTERRUPTED" : "CREATE_UNKNOWN";
                                            }
                                            ResultReceiver resultReceiver3 = hiddenActivity.f12418b;
                                            resultReceiver3.getClass();
                                            hiddenActivity.a(resultReceiver3, str2, "During save password, found password failure response from one tap " + exc.getMessage());
                                            break;
                                        case 2:
                                            int i8 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str3 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "GET_INTERRUPTED" : "GET_NO_CREDENTIALS";
                                            }
                                            ResultReceiver resultReceiver4 = hiddenActivity.f12418b;
                                            resultReceiver4.getClass();
                                            hiddenActivity.a(resultReceiver4, str3, "During get sign-in intent, failure response from one tap: " + exc.getMessage());
                                            break;
                                        default:
                                            int i9 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str3 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "GET_INTERRUPTED" : "GET_NO_CREDENTIALS";
                                            }
                                            ResultReceiver resultReceiver5 = hiddenActivity.f12418b;
                                            resultReceiver5.getClass();
                                            hiddenActivity.a(resultReceiver5, str3, "During begin sign in, failure response from one tap: " + exc.getMessage());
                                            break;
                                    }
                                }
                            });
                        }
                        if (taskI == null) {
                            finish();
                            return;
                        }
                        return;
                    }
                    break;
                case 15545322:
                    if (stringExtra.equals("CREATE_PUBLIC_KEY_CREDENTIAL")) {
                        final PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions = (PublicKeyCredentialCreationOptions) getIntent().getParcelableExtra("REQUEST_TYPE");
                        int intExtra2 = getIntent().getIntExtra("ACTIVITY_REQUEST_CODE", 1);
                        if (publicKeyCredentialCreationOptions != null) {
                            int i5 = Fido.f29403a;
                            final Fido2ApiClient fido2ApiClient = new Fido2ApiClient((Activity) this);
                            TaskApiCall.Builder builderA2 = TaskApiCall.a();
                            builderA2.f29063a = new RemoteCall(fido2ApiClient, publicKeyCredentialCreationOptions) { // from class: com.google.android.gms.fido.fido2.zza

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                public final /* synthetic */ PublicKeyCredentialCreationOptions f29517a;

                                {
                                    this.f29517a = publicKeyCredentialCreationOptions;
                                }

                                @Override // com.google.android.gms.common.api.internal.RemoteCall
                                public final void accept(Object obj, Object obj2) {
                                    zzf zzfVar = new zzf((TaskCompletionSource) obj2);
                                    zzs zzsVar = (zzs) ((zzp) obj).v();
                                    Parcel parcelObtain = Parcel.obtain();
                                    parcelObtain.writeInterfaceToken(zzsVar.f29824b);
                                    int i6 = zzc.f29845a;
                                    parcelObtain.writeStrongBinder(zzfVar);
                                    PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions2 = this.f29517a;
                                    if (publicKeyCredentialCreationOptions2 == null) {
                                        parcelObtain.writeInt(0);
                                    } else {
                                        parcelObtain.writeInt(1);
                                        publicKeyCredentialCreationOptions2.writeToParcel(parcelObtain, 0);
                                    }
                                    Parcel parcelObtain2 = Parcel.obtain();
                                    try {
                                        zzsVar.f29823a.transact(1, parcelObtain, parcelObtain2, 0);
                                        parcelObtain2.readException();
                                    } finally {
                                        parcelObtain.recycle();
                                        parcelObtain2.recycle();
                                    }
                                }
                            };
                            builderA2.d = 5407;
                            taskI = fido2ApiClient.i(0, builderA2.a());
                            final HiddenActivity$handleCreatePublicKeyCredential$1$1 hiddenActivity$handleCreatePublicKeyCredential$1$1 = new HiddenActivity$handleCreatePublicKeyCredential$1$1(this, intExtra2);
                            taskI.e(new OnSuccessListener() { // from class: androidx.credentials.playservices.a
                                @Override // com.google.android.gms.tasks.OnSuccessListener
                                public final void onSuccess(Object obj) {
                                    int i6 = i2;
                                    Function1 function1 = hiddenActivity$handleCreatePublicKeyCredential$1$1;
                                    switch (i6) {
                                        case 0:
                                            int i7 = HiddenActivity.d;
                                            ((HiddenActivity$handleCreatePublicKeyCredential$1$1) function1).invoke(obj);
                                            break;
                                        case 1:
                                            int i8 = HiddenActivity.d;
                                            ((HiddenActivity$handleCreatePassword$1$1) function1).invoke(obj);
                                            break;
                                        case 2:
                                            int i9 = HiddenActivity.d;
                                            ((HiddenActivity$handleGetSignInIntent$1$1) function1).invoke(obj);
                                            break;
                                        default:
                                            int i10 = HiddenActivity.d;
                                            ((HiddenActivity$handleBeginSignIn$1$1) function1).invoke(obj);
                                            break;
                                    }
                                }
                            });
                            taskI.c(new OnFailureListener(this) { // from class: i10

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public final /* synthetic */ HiddenActivity f69840c;

                                {
                                    this.f69840c = this;
                                }

                                /* JADX WARN: Code duplicated, block: B:17:0x0069  */
                                /* JADX WARN: Code duplicated, block: B:25:0x00a4  */
                                /* JADX WARN: Code duplicated, block: B:33:0x00df  */
                                /* JADX WARN: Code duplicated, block: B:9:0x002e  */
                                @Override // com.google.android.gms.tasks.OnFailureListener
                                public final void onFailure(Exception exc) {
                                    String str2;
                                    String str3;
                                    int i6 = i2;
                                    HiddenActivity hiddenActivity = this.f69840c;
                                    switch (i6) {
                                        case 0:
                                            int i7 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str2 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "CREATE_INTERRUPTED" : "CREATE_UNKNOWN";
                                            }
                                            ResultReceiver resultReceiver2 = hiddenActivity.f12418b;
                                            resultReceiver2.getClass();
                                            hiddenActivity.a(resultReceiver2, str2, "During create public key credential, fido registration failure: " + exc.getMessage());
                                            break;
                                        case 1:
                                            int i8 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str2 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "CREATE_INTERRUPTED" : "CREATE_UNKNOWN";
                                            }
                                            ResultReceiver resultReceiver3 = hiddenActivity.f12418b;
                                            resultReceiver3.getClass();
                                            hiddenActivity.a(resultReceiver3, str2, "During save password, found password failure response from one tap " + exc.getMessage());
                                            break;
                                        case 2:
                                            int i9 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str3 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "GET_INTERRUPTED" : "GET_NO_CREDENTIALS";
                                            }
                                            ResultReceiver resultReceiver4 = hiddenActivity.f12418b;
                                            resultReceiver4.getClass();
                                            hiddenActivity.a(resultReceiver4, str3, "During get sign-in intent, failure response from one tap: " + exc.getMessage());
                                            break;
                                        default:
                                            int i10 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str3 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "GET_INTERRUPTED" : "GET_NO_CREDENTIALS";
                                            }
                                            ResultReceiver resultReceiver5 = hiddenActivity.f12418b;
                                            resultReceiver5.getClass();
                                            hiddenActivity.a(resultReceiver5, str3, "During begin sign in, failure response from one tap: " + exc.getMessage());
                                            break;
                                    }
                                }
                            });
                        }
                        if (taskI == null) {
                            finish();
                            return;
                        }
                        return;
                    }
                    break;
                case 1246634622:
                    if (stringExtra.equals("CREATE_PASSWORD")) {
                        SavePasswordRequest savePasswordRequest = (SavePasswordRequest) getIntent().getParcelableExtra("REQUEST_TYPE");
                        int intExtra3 = getIntent().getIntExtra("ACTIVITY_REQUEST_CODE", 1);
                        if (savePasswordRequest != null) {
                            final zbag zbagVar = new zbag((Activity) this, new zbi());
                            SavePasswordRequest.Builder builder2 = new SavePasswordRequest.Builder();
                            builder2.f28782a = savePasswordRequest.f28780b;
                            builder2.f28784c = savePasswordRequest.d;
                            String str2 = savePasswordRequest.f28781c;
                            if (str2 != null) {
                                builder2.f28783b = str2;
                            }
                            builder2.f28783b = zbagVar.l;
                            final SavePasswordRequest savePasswordRequest2 = new SavePasswordRequest(builder2.f28782a, builder2.f28783b, builder2.f28784c);
                            TaskApiCall.Builder builderA3 = TaskApiCall.a();
                            builderA3.f29065c = new Feature[]{zbas.f29592b};
                            builderA3.f29063a = new RemoteCall(zbagVar, savePasswordRequest2) { // from class: com.google.android.gms.internal.auth-api.zbac

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                public final /* synthetic */ SavePasswordRequest f29583a;

                                {
                                    this.f29583a = savePasswordRequest2;
                                }

                                @Override // com.google.android.gms.common.api.internal.RemoteCall
                                public final void accept(Object obj, Object obj2) {
                                    zbaf zbafVar = new zbaf((TaskCompletionSource) obj2);
                                    zbn zbnVar = (zbn) ((zbh) obj).v();
                                    SavePasswordRequest savePasswordRequest3 = this.f29583a;
                                    Preconditions.h(savePasswordRequest3);
                                    Parcel parcelE2 = zbnVar.E2();
                                    int i6 = zbc.f29595a;
                                    parcelE2.writeStrongBinder(zbafVar);
                                    zbc.c(parcelE2, savePasswordRequest3);
                                    zbnVar.F2(2, parcelE2);
                                }
                            };
                            builderA3.f29064b = false;
                            builderA3.d = DataChannelModule.MAX_SIZE_DATA_CHANNEL;
                            taskI = zbagVar.i(0, builderA3.a());
                            final HiddenActivity$handleCreatePassword$1$1 hiddenActivity$handleCreatePassword$1$1 = new HiddenActivity$handleCreatePassword$1$1(this, intExtra3);
                            taskI.e(new OnSuccessListener() { // from class: androidx.credentials.playservices.a
                                @Override // com.google.android.gms.tasks.OnSuccessListener
                                public final void onSuccess(Object obj) {
                                    int i6 = i3;
                                    Function1 function1 = hiddenActivity$handleCreatePassword$1$1;
                                    switch (i6) {
                                        case 0:
                                            int i7 = HiddenActivity.d;
                                            ((HiddenActivity$handleCreatePublicKeyCredential$1$1) function1).invoke(obj);
                                            break;
                                        case 1:
                                            int i8 = HiddenActivity.d;
                                            ((HiddenActivity$handleCreatePassword$1$1) function1).invoke(obj);
                                            break;
                                        case 2:
                                            int i9 = HiddenActivity.d;
                                            ((HiddenActivity$handleGetSignInIntent$1$1) function1).invoke(obj);
                                            break;
                                        default:
                                            int i10 = HiddenActivity.d;
                                            ((HiddenActivity$handleBeginSignIn$1$1) function1).invoke(obj);
                                            break;
                                    }
                                }
                            });
                            taskI.c(new OnFailureListener(this) { // from class: i10

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public final /* synthetic */ HiddenActivity f69840c;

                                {
                                    this.f69840c = this;
                                }

                                /* JADX WARN: Code duplicated, block: B:17:0x0069  */
                                /* JADX WARN: Code duplicated, block: B:25:0x00a4  */
                                /* JADX WARN: Code duplicated, block: B:33:0x00df  */
                                /* JADX WARN: Code duplicated, block: B:9:0x002e  */
                                @Override // com.google.android.gms.tasks.OnFailureListener
                                public final void onFailure(Exception exc) {
                                    String str3;
                                    String str4;
                                    int i6 = i3;
                                    HiddenActivity hiddenActivity = this.f69840c;
                                    switch (i6) {
                                        case 0:
                                            int i7 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str3 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "CREATE_INTERRUPTED" : "CREATE_UNKNOWN";
                                            }
                                            ResultReceiver resultReceiver2 = hiddenActivity.f12418b;
                                            resultReceiver2.getClass();
                                            hiddenActivity.a(resultReceiver2, str3, "During create public key credential, fido registration failure: " + exc.getMessage());
                                            break;
                                        case 1:
                                            int i8 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str3 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "CREATE_INTERRUPTED" : "CREATE_UNKNOWN";
                                            }
                                            ResultReceiver resultReceiver3 = hiddenActivity.f12418b;
                                            resultReceiver3.getClass();
                                            hiddenActivity.a(resultReceiver3, str3, "During save password, found password failure response from one tap " + exc.getMessage());
                                            break;
                                        case 2:
                                            int i9 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str4 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "GET_INTERRUPTED" : "GET_NO_CREDENTIALS";
                                            }
                                            ResultReceiver resultReceiver4 = hiddenActivity.f12418b;
                                            resultReceiver4.getClass();
                                            hiddenActivity.a(resultReceiver4, str4, "During get sign-in intent, failure response from one tap: " + exc.getMessage());
                                            break;
                                        default:
                                            int i10 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str4 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "GET_INTERRUPTED" : "GET_NO_CREDENTIALS";
                                            }
                                            ResultReceiver resultReceiver5 = hiddenActivity.f12418b;
                                            resultReceiver5.getClass();
                                            hiddenActivity.a(resultReceiver5, str4, "During begin sign in, failure response from one tap: " + exc.getMessage());
                                            break;
                                    }
                                }
                            });
                        }
                        if (taskI == null) {
                            finish();
                            return;
                        }
                        return;
                    }
                    break;
                case 1980564212:
                    if (stringExtra.equals("SIGN_IN_INTENT")) {
                        GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) getIntent().getParcelableExtra("REQUEST_TYPE");
                        int intExtra4 = getIntent().getIntExtra("ACTIVITY_REQUEST_CODE", 1);
                        if (getSignInIntentRequest != null) {
                            final zbaq zbaqVar2 = new zbaq((Activity) this, new zbv());
                            GetSignInIntentRequest.Builder builder3 = new GetSignInIntentRequest.Builder();
                            String str3 = getSignInIntentRequest.f28766b;
                            Preconditions.h(str3);
                            builder3.f28770a = str3;
                            builder3.d = getSignInIntentRequest.f28768e;
                            builder3.f28771b = getSignInIntentRequest.f28767c;
                            builder3.f28773e = getSignInIntentRequest.f28769f;
                            builder3.f28774f = getSignInIntentRequest.g;
                            String str4 = getSignInIntentRequest.d;
                            if (str4 != null) {
                                builder3.f28772c = str4;
                            }
                            builder3.f28772c = zbaqVar2.l;
                            String str5 = builder3.f28770a;
                            String str6 = builder3.f28771b;
                            String str7 = builder3.f28772c;
                            String str8 = builder3.d;
                            final GetSignInIntentRequest getSignInIntentRequest2 = new GetSignInIntentRequest(builder3.f28774f, str5, builder3.f28773e, str6, str7, str8);
                            TaskApiCall.Builder builderA4 = TaskApiCall.a();
                            builderA4.f29065c = new Feature[]{zbas.f29593c};
                            builderA4.f29063a = new RemoteCall(zbaqVar2, getSignInIntentRequest2) { // from class: com.google.android.gms.internal.auth-api.zbak

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                public final /* synthetic */ GetSignInIntentRequest f29587a;

                                {
                                    this.f29587a = getSignInIntentRequest2;
                                }

                                @Override // com.google.android.gms.common.api.internal.RemoteCall
                                public final void accept(Object obj, Object obj2) {
                                    zbao zbaoVar = new zbao((TaskCompletionSource) obj2);
                                    zbw zbwVar = (zbw) ((zbar) obj).v();
                                    GetSignInIntentRequest getSignInIntentRequest3 = this.f29587a;
                                    Preconditions.h(getSignInIntentRequest3);
                                    Parcel parcelE2 = zbwVar.E2();
                                    int i6 = zbc.f29595a;
                                    parcelE2.writeStrongBinder(zbaoVar);
                                    zbc.c(parcelE2, getSignInIntentRequest3);
                                    zbwVar.F2(3, parcelE2);
                                }
                            };
                            builderA4.d = 1555;
                            taskI = zbaqVar2.i(0, builderA4.a());
                            final HiddenActivity$handleGetSignInIntent$1$1 hiddenActivity$handleGetSignInIntent$1$1 = new HiddenActivity$handleGetSignInIntent$1$1(this, intExtra4);
                            final int i6 = 2;
                            taskI.e(new OnSuccessListener() { // from class: androidx.credentials.playservices.a
                                @Override // com.google.android.gms.tasks.OnSuccessListener
                                public final void onSuccess(Object obj) {
                                    int i7 = i6;
                                    Function1 function1 = hiddenActivity$handleGetSignInIntent$1$1;
                                    switch (i7) {
                                        case 0:
                                            int i8 = HiddenActivity.d;
                                            ((HiddenActivity$handleCreatePublicKeyCredential$1$1) function1).invoke(obj);
                                            break;
                                        case 1:
                                            int i9 = HiddenActivity.d;
                                            ((HiddenActivity$handleCreatePassword$1$1) function1).invoke(obj);
                                            break;
                                        case 2:
                                            int i10 = HiddenActivity.d;
                                            ((HiddenActivity$handleGetSignInIntent$1$1) function1).invoke(obj);
                                            break;
                                        default:
                                            int i11 = HiddenActivity.d;
                                            ((HiddenActivity$handleBeginSignIn$1$1) function1).invoke(obj);
                                            break;
                                    }
                                }
                            });
                            taskI.c(new OnFailureListener(this) { // from class: i10

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public final /* synthetic */ HiddenActivity f69840c;

                                {
                                    this.f69840c = this;
                                }

                                /* JADX WARN: Code duplicated, block: B:17:0x0069  */
                                /* JADX WARN: Code duplicated, block: B:25:0x00a4  */
                                /* JADX WARN: Code duplicated, block: B:33:0x00df  */
                                /* JADX WARN: Code duplicated, block: B:9:0x002e  */
                                @Override // com.google.android.gms.tasks.OnFailureListener
                                public final void onFailure(Exception exc) {
                                    String str9;
                                    String str10;
                                    int i7 = i6;
                                    HiddenActivity hiddenActivity = this.f69840c;
                                    switch (i7) {
                                        case 0:
                                            int i8 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str9 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "CREATE_INTERRUPTED" : "CREATE_UNKNOWN";
                                            }
                                            ResultReceiver resultReceiver2 = hiddenActivity.f12418b;
                                            resultReceiver2.getClass();
                                            hiddenActivity.a(resultReceiver2, str9, "During create public key credential, fido registration failure: " + exc.getMessage());
                                            break;
                                        case 1:
                                            int i9 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str9 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "CREATE_INTERRUPTED" : "CREATE_UNKNOWN";
                                            }
                                            ResultReceiver resultReceiver3 = hiddenActivity.f12418b;
                                            resultReceiver3.getClass();
                                            hiddenActivity.a(resultReceiver3, str9, "During save password, found password failure response from one tap " + exc.getMessage());
                                            break;
                                        case 2:
                                            int i10 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str10 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "GET_INTERRUPTED" : "GET_NO_CREDENTIALS";
                                            }
                                            ResultReceiver resultReceiver4 = hiddenActivity.f12418b;
                                            resultReceiver4.getClass();
                                            hiddenActivity.a(resultReceiver4, str10, "During get sign-in intent, failure response from one tap: " + exc.getMessage());
                                            break;
                                        default:
                                            int i11 = HiddenActivity.d;
                                            if (exc instanceof ApiException) {
                                                CredentialProviderBaseController.f12489a.getClass();
                                                str10 = CredentialProviderBaseController.f12490b.contains(Integer.valueOf(((ApiException) exc).f28974b.f29008b)) ? "GET_INTERRUPTED" : "GET_NO_CREDENTIALS";
                                            }
                                            ResultReceiver resultReceiver5 = hiddenActivity.f12418b;
                                            resultReceiver5.getClass();
                                            hiddenActivity.a(resultReceiver5, str10, "During begin sign in, failure response from one tap: " + exc.getMessage());
                                            break;
                                    }
                                }
                            });
                        }
                        if (taskI == null) {
                            finish();
                            return;
                        }
                        return;
                    }
                    break;
            }
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        bundle.putBoolean("androidx.credentials.playservices.AWAITING_RESULT", this.f12419c);
        super.onSaveInstanceState(bundle);
    }
}
