package androidx.credentials.playservices.controllers.GetRestoreCredential;

import com.google.android.gms.tasks.OnSuccessListener;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements OnSuccessListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f12521c;

    public /* synthetic */ a(Function1 function1, int i2) {
        this.f12520b = i2;
        this.f12521c = function1;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        int i2 = this.f12520b;
        Function1 function1 = this.f12521c;
        switch (i2) {
            case 0:
                int i3 = CredentialProviderGetDigitalCredentialController.f12496j;
                ((CredentialProviderGetDigitalCredentialController$invokePlayServices$1) function1).invoke(obj);
                break;
            default:
                int i4 = CredentialProviderGetRestoreCredentialController.f12510f;
                ((CredentialProviderGetRestoreCredentialController$invokePlayServices$1) function1).invoke(obj);
                break;
        }
    }
}
