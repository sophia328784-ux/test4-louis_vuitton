package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderKt;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import defpackage.ql;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazySaveableStateHolderKt {
    public static final void a(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-709502251);
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.f8434a;
            final SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) gapComposerH.k(staticProvidableCompositionLocal);
            final SaveableStateHolder saveableStateHolderA = SaveableStateHolderKt.a(gapComposerH);
            Object[] objArr = {saveableStateRegistry};
            LazySaveableStateHolder.f5533e.getClass();
            SaverKt$Saver$1 saverKt$Saver$1 = new SaverKt$Saver$1(new i(), new g(saveableStateRegistry, saveableStateHolderA, 1));
            boolean zY = gapComposerH.y(saveableStateRegistry) | gapComposerH.y(saveableStateHolderA);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new Function0() { // from class: androidx.compose.foundation.lazy.layout.j
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new LazySaveableStateHolder(saveableStateRegistry, MapsKt.c(), saveableStateHolderA);
                    }
                };
                gapComposerH.q(objX);
            }
            LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX, gapComposerH, 0);
            CompositionLocalKt.a(staticProvidableCompositionLocal.c(lazySaveableStateHolder), ComposableLambdaKt.b(-412824043, new b(composableLambdaImpl, lazySaveableStateHolder, 1), gapComposerH), gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ql(composableLambdaImpl, i2, 23);
        }
    }
}
