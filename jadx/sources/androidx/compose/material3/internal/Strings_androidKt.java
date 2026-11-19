package androidx.compose.material3.internal;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class Strings_androidKt {
    public static final String a(Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.k(AndroidCompositionLocals_androidKt.f9935a);
        return ((Context) composer.k(AndroidCompositionLocals_androidKt.f9936b)).getResources().getString(i2);
    }
}
