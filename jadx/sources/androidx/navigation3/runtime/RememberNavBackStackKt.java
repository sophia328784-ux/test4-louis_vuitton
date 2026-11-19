package androidx.navigation3.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.navigation3.runtime.serialization.NavBackStackSerializer;
import androidx.navigation3.runtime.serialization.NavKeySerializer;
import androidx.savedstate.serialization.SavedStateConfiguration;
import defpackage.es0;
import defpackage.rp0;
import defpackage.xn0;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class RememberNavBackStackKt {
    public static final NavBackStack a(NavKey[] navKeyArr, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object[] objArr = new Object[0];
        NavBackStackSerializer navBackStackSerializer = new NavBackStackSerializer(new NavKeySerializer());
        boolean zY = composer.y(navKeyArr);
        Object objX = composer.x();
        if (zY || objX == Composer.Companion.f7939a) {
            objX = new xn0(navKeyArr, 10);
            composer.q(objX);
        }
        Function0 function0 = (Function0) objX;
        SavedStateConfiguration savedStateConfiguration = SavedStateConfiguration.d;
        return (NavBackStack) RememberSaveableKt.c(Arrays.copyOf(objArr, 0), new SaverKt$Saver$1(new es0(navBackStackSerializer, savedStateConfiguration, 5), new rp0(navBackStackSerializer, savedStateConfiguration, 17)), function0, composer, KyberEngine.KyberPolyBytes, 0);
    }
}
