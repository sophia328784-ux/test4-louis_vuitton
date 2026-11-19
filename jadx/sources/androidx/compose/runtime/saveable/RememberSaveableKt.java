package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime-saveable"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class RememberSaveableKt {
    public static final String a(Object obj) {
        return obj + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable().";
    }

    public static final Object b(Object[] objArr, Saver saver, Function0 function0, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return c(Arrays.copyOf(objArr, objArr.length), saver, function0, composer, 384 | ((i2 << 3) & 7168), 0);
    }

    public static final Object c(Object[] objArr, Saver saver, Function0 function0, Composer composer, int i2, int i3) {
        Object[] objArr2;
        Saver saver2;
        final Object obj;
        Object objE;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        final String string = Long.toString(composer.getT(), CharsKt.checkRadix(36));
        string.getClass();
        saver.getClass();
        final SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) composer.k(SaveableStateRegistryKt.f8434a);
        Object objX = composer.x();
        Object obj2 = Composer.Companion.f7939a;
        if (objX == obj2) {
            Object objB = (saveableStateRegistry == null || (objE = saveableStateRegistry.e(string)) == null) ? null : saver.b(objE);
            if (objB == null) {
                objB = function0.mo47invoke();
            }
            objArr2 = objArr;
            saver2 = saver;
            Object saveableHolder = new SaveableHolder(saver2, saveableStateRegistry, string, objB, objArr2);
            composer.q(saveableHolder);
            objX = saveableHolder;
        } else {
            objArr2 = objArr;
            saver2 = saver;
        }
        final SaveableHolder saveableHolder2 = (SaveableHolder) objX;
        Object objMo47invoke = Arrays.equals(objArr2, saveableHolder2.f8420f) ? saveableHolder2.f8419e : null;
        if (objMo47invoke == null) {
            objMo47invoke = function0.mo47invoke();
        }
        boolean zY = composer.y(saveableHolder2) | ((((i2 & 112) ^ 48) > 32 && composer.y(saver2)) || (i2 & 48) == 32) | composer.y(saveableStateRegistry) | composer.K(string) | composer.y(objMo47invoke) | composer.y(objArr2);
        Object objX2 = composer.x();
        if (zY || objX2 == obj2) {
            final Object[] objArr3 = objArr2;
            obj = objMo47invoke;
            final Saver saver3 = saver2;
            Object obj3 = new Function0() { // from class: androidx.compose.runtime.saveable.a
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    boolean z;
                    SaveableHolder saveableHolder3 = saveableHolder2;
                    SaveableStateRegistry saveableStateRegistry2 = saveableHolder3.f8418c;
                    SaveableStateRegistry saveableStateRegistry3 = saveableStateRegistry;
                    boolean z2 = true;
                    if (saveableStateRegistry2 != saveableStateRegistry3) {
                        saveableHolder3.f8418c = saveableStateRegistry3;
                        z = true;
                    } else {
                        z = false;
                    }
                    String str = saveableHolder3.d;
                    String str2 = string;
                    if (Intrinsics.c(str, str2)) {
                        z2 = z;
                    } else {
                        saveableHolder3.d = str2;
                    }
                    saveableHolder3.f8417b = saver3;
                    saveableHolder3.f8419e = obj;
                    saveableHolder3.f8420f = objArr3;
                    SaveableStateRegistry.Entry entry = saveableHolder3.g;
                    if (entry != null && z2) {
                        entry.a();
                        saveableHolder3.g = null;
                        saveableHolder3.b();
                    }
                    return Unit.f71739a;
                }
            };
            composer.q(obj3);
            objX2 = obj3;
        } else {
            obj = objMo47invoke;
        }
        EffectsKt.i((Function0) objX2, composer);
        return obj;
    }

    public static final Object d(Object[] objArr, Function0 function0, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return c(Arrays.copyOf(objArr, objArr.length), SaverKt.f8437a, function0, composer, ((i2 << 6) & 7168) | KyberEngine.KyberPolyBytes, 0);
    }
}
