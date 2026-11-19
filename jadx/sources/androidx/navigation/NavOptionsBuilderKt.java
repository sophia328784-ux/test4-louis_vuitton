package androidx.navigation;

import androidx.navigation.serialization.RouteSerializerKt;
import com.vuitton.android.presentation.screen.certificates.CertificateRoute;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"navigation-common_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class NavOptionsBuilderKt {
    public static final NavOptions a(Function1 function1) {
        NavOptionsBuilder navOptionsBuilder = new NavOptionsBuilder();
        function1.invoke(navOptionsBuilder);
        boolean z = navOptionsBuilder.f18192b;
        NavOptions.Builder builder = navOptionsBuilder.f18191a;
        builder.f18183a = z;
        builder.f18184b = navOptionsBuilder.f18193c;
        CertificateRoute.NfcScan nfcScan = navOptionsBuilder.g;
        if (nfcScan != null) {
            boolean z2 = navOptionsBuilder.f18194e;
            boolean z3 = navOptionsBuilder.f18195f;
            builder.d = nfcScan;
            builder.f18185c = RouteSerializerKt.b(SerializersKt.b(Reflection.f71922a.b(CertificateRoute.NfcScan.class)));
            builder.f18186e = z2;
            builder.f18187f = z3;
        } else {
            int i2 = navOptionsBuilder.d;
            boolean z4 = navOptionsBuilder.f18194e;
            boolean z5 = navOptionsBuilder.f18195f;
            builder.f18185c = i2;
            builder.f18186e = z4;
            builder.f18187f = z5;
        }
        return builder.a();
    }
}
