package androidx.credentials.playservices.controllers.GetRestoreCredential;

import android.content.Context;
import android.content.Intent;
import android.os.CancellationSignal;
import android.os.Parcel;
import android.os.ResultReceiver;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.IdentityCredentialApiHiddenActivity;
import com.google.android.gms.identitycredentials.PendingGetCredentialHandle;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "result", "Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
final class CredentialProviderGetDigitalCredentialController$invokePlayServices$1 extends Lambda implements Function1<PendingGetCredentialHandle, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CancellationSignal f12506c;
    public final /* synthetic */ CredentialProviderGetDigitalCredentialController d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderGetDigitalCredentialController$invokePlayServices$1(CancellationSignal cancellationSignal, CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController) {
        super(1);
        this.f12506c = cancellationSignal;
        this.d = credentialProviderGetDigitalCredentialController;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        PendingGetCredentialHandle pendingGetCredentialHandle = (PendingGetCredentialHandle) obj;
        CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController = this.d;
        Context context = credentialProviderGetDigitalCredentialController.f12497e;
        CredentialProviderPlayServicesImpl.INSTANCE.getClass();
        if (!CredentialProviderPlayServicesImpl.Companion.a(this.f12506c)) {
            Intent intent = new Intent(context, (Class<?>) IdentityCredentialApiHiddenActivity.class);
            intent.setFlags(65536);
            CredentialProviderGetDigitalCredentialController$resultReceiver$1 credentialProviderGetDigitalCredentialController$resultReceiver$1 = credentialProviderGetDigitalCredentialController.f12500i;
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.getClass();
            credentialProviderGetDigitalCredentialController$resultReceiver$1.getClass();
            credentialProviderGetDigitalCredentialController$resultReceiver$1.writeToParcel(parcelObtain, 0);
            parcelObtain.setDataPosition(0);
            ResultReceiver resultReceiver = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcelObtain);
            parcelObtain.recycle();
            intent.putExtra("RESULT_RECEIVER", resultReceiver);
            intent.putExtra("EXTRA_GET_CREDENTIAL_INTENT", pendingGetCredentialHandle.f29567b);
            context.startActivity(intent);
        }
        return Unit.f71739a;
    }
}
