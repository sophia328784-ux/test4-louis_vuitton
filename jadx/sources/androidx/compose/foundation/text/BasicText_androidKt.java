package androidx.compose.foundation.text;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.ed;
import defpackage.w9;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BasicText_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f5855a = new StaticProvidableCompositionLocal(new w9(14));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Boolean f5856b;

    public static final void a(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, List list, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Executor executor = (Executor) composer.k(f5855a);
        if (executor == null || !b(annotatedString.f10420c.length())) {
            composer.L(-517090505);
            composer.F();
        } else {
            composer.L(-518737659);
            try {
                executor.execute(new ed(textStyle, (LayoutDirection) composer.k(CompositionLocalsKt.n), list, annotatedString, (Density) composer.k(CompositionLocalsKt.f10031h), resolver, 0));
            } catch (RejectedExecutionException unused) {
            }
            composer.F();
        }
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
    }

    public static final boolean b(int i2) {
        if (i2 >= 8 && i2 < 1000) {
            if (f5856b == null) {
                f5856b = Boolean.valueOf(Runtime.getRuntime().availableProcessors() >= 4);
            }
            Boolean bool = f5856b;
            bool.getClass();
            if (bool.booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
