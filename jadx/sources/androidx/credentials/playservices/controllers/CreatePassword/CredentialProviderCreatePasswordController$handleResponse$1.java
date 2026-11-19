package androidx.credentials.playservices.controllers.CreatePassword;

import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", NBSSpanMetricUnit.Second, "Landroid/os/CancellationSignal;", "f", "Lkotlin/Function0;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
final class CredentialProviderCreatePasswordController$handleResponse$1 extends Lambda implements Function2<CancellationSignal, Function0<? extends Unit>, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CredentialProviderCreatePasswordController$handleResponse$1 f12447c = new CredentialProviderCreatePasswordController$handleResponse$1(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Function0 function0 = (Function0) obj2;
        function0.getClass();
        CredentialProviderController.Companion companion = CredentialProviderController.d;
        CredentialProviderCreatePasswordController.Companion companion2 = CredentialProviderCreatePasswordController.f12442j;
        CredentialProviderController.b((CancellationSignal) obj, function0);
        return Unit.f71739a;
    }
}
