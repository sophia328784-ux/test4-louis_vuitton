package androidx.credentials.playservices;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity;", "Landroid/app/Activity;", "<init>", "()V", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class IdentityCredentialApiHiddenActivity extends Activity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ResultReceiver f12424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f12425c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/IdentityCredentialApiHiddenActivity$Companion;", "", "", "KEY_AWAITING_RESULT", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        ResultReceiver resultReceiver = this.f12424b;
        if (resultReceiver != null) {
            CredentialProviderBaseController.f12489a.getClass();
            Bundle bundle = new Bundle();
            bundle.putBoolean("FAILURE_RESPONSE", false);
            bundle.putInt("ACTIVITY_REQUEST_CODE", i2);
            bundle.putParcelable("RESULT_DATA", intent);
            resultReceiver.send(i3, bundle);
        }
        this.f12425c = false;
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) throws IntentSender.SendIntentException {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        ResultReceiver resultReceiver = (ResultReceiver) getIntent().getParcelableExtra("RESULT_RECEIVER");
        this.f12424b = resultReceiver;
        if (resultReceiver == null) {
            finish();
        }
        if (bundle != null) {
            this.f12425c = bundle.getBoolean("androidx.credentials.playservices.AWAITING_RESULT", false);
        }
        if (this.f12425c) {
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) getIntent().getParcelableExtra("EXTRA_GET_CREDENTIAL_INTENT");
        if (pendingIntent != null) {
            IntentSender intentSender = pendingIntent.getIntentSender();
            CredentialProviderBaseController.f12489a.getClass();
            startIntentSenderForResult(intentSender, CredentialProviderBaseController.f12491c, null, 0, 0, 0, null);
        } else {
            ResultReceiver resultReceiver2 = this.f12424b;
            if (resultReceiver2 != null) {
                CredentialProviderBaseController.f12489a.getClass();
                CredentialProviderBaseController.Companion.c(resultReceiver2, "GET_UNKNOWN", "Internal error");
            }
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        bundle.putBoolean("androidx.credentials.playservices.AWAITING_RESULT", this.f12425c);
        super.onSaveInstanceState(bundle);
    }
}
