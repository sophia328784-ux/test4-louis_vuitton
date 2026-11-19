package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import defpackage.b21;
import defpackage.o60;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001:\u0001\nB1\u0012(\b\u0002\u0010\u0007\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00060\u00040\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;", "Landroidx/compose/runtime/saveable/SaveableStateHolder;", "", "", "", "", "", "savedStates", "<init>", "(Ljava/util/Map;)V", "Companion", "runtime-saveable"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SaveableStateHolderImpl implements SaveableStateHolder {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f8422f = new Companion(null);
    public static final SaverKt$Saver$1 g = new SaverKt$Saver$1(new d(), new e());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f8423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableScatterMap f8424c;
    public SaveableStateRegistry d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c f8425e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion;", "", "runtime-saveable"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public SaveableStateHolderImpl(Map<Object, Map<String, List<Object>>> map) {
        this.f8423b = map;
        this.f8424c = ScatterMapKt.b();
        this.f8425e = new c(this);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public final void c(Object obj) {
        if (this.f8424c.m(obj) == null) {
            this.f8423b.remove(obj);
        }
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public final void f(final Object obj, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(533563200);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(obj) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(this) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposerH.z(obj);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                c cVar = this.f8425e;
                if (!((Boolean) cVar.invoke(obj)).booleanValue()) {
                    b21.n(o60.n("Type of the key ", obj, " is not supported. On Android you can only use types which can be stored inside the Bundle."));
                    return;
                }
                Map map = (Map) this.f8423b.get(obj);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.f8434a;
                SaveableStateRegistryWrapper saveableStateRegistryWrapper = new SaveableStateRegistryWrapper(new SaveableStateRegistryImpl(map, cVar));
                gapComposerH.q(saveableStateRegistryWrapper);
                objX = saveableStateRegistryWrapper;
            }
            final SaveableStateRegistryWrapper saveableStateRegistryWrapper2 = (SaveableStateRegistryWrapper) objX;
            CompositionLocalKt.b(new ProvidedValue[]{SaveableStateRegistryKt.f8434a.c(saveableStateRegistryWrapper2), LocalSavedStateRegistryOwnerKt.f19789a.c(saveableStateRegistryWrapper2)}, composableLambdaImpl, gapComposerH, (i3 & 112) | 8);
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(this) | gapComposerH.y(obj) | gapComposerH.y(saveableStateRegistryWrapper2);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new Function1() { // from class: androidx.compose.runtime.saveable.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        final SaveableStateHolderImpl saveableStateHolderImpl = this.f8446b;
                        MutableScatterMap mutableScatterMap = saveableStateHolderImpl.f8424c;
                        final Object obj3 = obj;
                        if (mutableScatterMap.b(obj3)) {
                            b21.n(o60.n("Key ", obj3, " was used multiple times "));
                            return null;
                        }
                        saveableStateHolderImpl.f8423b.remove(obj3);
                        final SaveableStateRegistryWrapper saveableStateRegistryWrapper3 = saveableStateRegistryWrapper2;
                        mutableScatterMap.o(obj3, saveableStateRegistryWrapper3);
                        return new DisposableEffectResult() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$SaveableStateProvider$lambda$0$1$0$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public final void dispose() {
                                SaveableStateHolderImpl saveableStateHolderImpl2 = saveableStateHolderImpl;
                                MutableScatterMap mutableScatterMap2 = saveableStateHolderImpl2.f8424c;
                                Object obj4 = obj3;
                                Object objM = mutableScatterMap2.m(obj4);
                                SaveableStateRegistryWrapper saveableStateRegistryWrapper4 = saveableStateRegistryWrapper3;
                                if (objM == saveableStateRegistryWrapper4) {
                                    Map map2 = saveableStateHolderImpl2.f8423b;
                                    Map mapD = saveableStateRegistryWrapper4.d();
                                    if (mapD.isEmpty()) {
                                        map2.remove(obj4);
                                    } else {
                                        map2.put(obj4, mapD);
                                    }
                                }
                            }
                        };
                    }
                };
                gapComposerH.q(objX2);
            }
            EffectsKt.c(unit, (Function1) objX2, gapComposerH);
            gapComposerH.v();
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: androidx.compose.runtime.saveable.g
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    SaveableStateHolderImpl.Companion companion = SaveableStateHolderImpl.f8422f;
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    this.f8448b.f(obj, composableLambdaImpl, (Composer) obj2, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SaveableStateHolderImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ SaveableStateHolderImpl(Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new LinkedHashMap() : map);
    }
}
