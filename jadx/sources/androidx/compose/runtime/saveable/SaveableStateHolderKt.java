package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime-saveable"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SaveableStateHolderKt {
    public static final SaveableStateHolder a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.L(1967007413);
        Object[] objArr = new Object[0];
        SaveableStateHolderImpl.f8422f.getClass();
        SaverKt$Saver$1 saverKt$Saver$1 = SaveableStateHolderImpl.g;
        Object objX = composer.x();
        if (objX == Composer.Companion.f7939a) {
            objX = new h();
            composer.q(objX);
        }
        SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX, composer, KyberEngine.KyberPolyBytes);
        saveableStateHolderImpl.d = (SaveableStateRegistry) composer.k(SaveableStateRegistryKt.f8434a);
        composer.F();
        return saveableStateHolderImpl;
    }
}
