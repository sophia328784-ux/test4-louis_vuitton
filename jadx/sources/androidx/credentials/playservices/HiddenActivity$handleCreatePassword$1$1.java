package androidx.credentials.playservices;

import android.content.IntentSender;
import android.os.ResultReceiver;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/google/android/gms/auth/api/identity/SavePasswordResult;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
final class HiddenActivity$handleCreatePassword$1$1 extends Lambda implements Function1<SavePasswordResult, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HiddenActivity f12421c;
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HiddenActivity$handleCreatePassword$1$1(HiddenActivity hiddenActivity, int i2) {
        super(1);
        this.f12421c = hiddenActivity;
        this.d = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        HiddenActivity hiddenActivity = this.f12421c;
        SavePasswordResult savePasswordResult = (SavePasswordResult) obj;
        try {
            hiddenActivity.f12419c = true;
            hiddenActivity.startIntentSenderForResult(savePasswordResult.f28785b.getIntentSender(), this.d, null, 0, 0, 0, null);
        } catch (IntentSender.SendIntentException e2) {
            ResultReceiver resultReceiver = hiddenActivity.f12418b;
            resultReceiver.getClass();
            hiddenActivity.a(resultReceiver, "CREATE_UNKNOWN", "During save password, found UI intent sender failure: " + e2.getMessage());
        }
        return Unit.f71739a;
    }
}
