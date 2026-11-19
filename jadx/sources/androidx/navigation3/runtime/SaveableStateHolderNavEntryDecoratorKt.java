package androidx.navigation3.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"navigation3-runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SaveableStateHolderNavEntryDecoratorKt {
    public static final SaveableStateHolderNavEntryDecorator a(Composer composer) {
        SaveableStateHolder saveableStateHolderA = SaveableStateHolderKt.a(composer);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(saveableStateHolderA);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new SaveableStateHolderNavEntryDecorator(saveableStateHolderA);
            composer.q(objX);
        }
        return (SaveableStateHolderNavEntryDecorator) objX;
    }
}
