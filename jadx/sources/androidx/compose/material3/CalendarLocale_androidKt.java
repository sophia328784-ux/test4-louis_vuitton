package androidx.compose.material3;

import android.content.res.Configuration;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class CalendarLocale_androidKt {
    public static final Locale a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.L(2088426481);
        Locale24.f7016a.getClass();
        Locale locale = ((Configuration) composer.k(AndroidCompositionLocals_androidKt.f9935a)).getLocales().get(0);
        composer.F();
        return locale;
    }
}
