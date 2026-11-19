package androidx.compose.runtime;

import androidx.compose.runtime.composer.GroupKind;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.internal.PersistentCompositionLocalMapKt;
import defpackage.g2;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class CompositionLocalKt {
    /* JADX WARN: Code duplicated, block: B:46:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:51:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void a(ProvidedValue providedValue, Function2 function2, Composer composer, int i2) {
        ValueHolder valueHolder;
        boolean z;
        RecomposeScopeImpl recomposeScopeImplB0;
        GapComposer gapComposerH = composer.h(-149765515);
        IntStack intStack = gapComposerH.x;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
        gapComposerH.z0(201, ComposerKt.f7941b);
        Object objX = gapComposerH.x();
        if (Intrinsics.c(objX, Composer.Companion.f7939a)) {
            valueHolder = null;
        } else {
            objX.getClass();
            valueHolder = (ValueHolder) objX;
        }
        CompositionLocal compositionLocal = providedValue.f8069a;
        compositionLocal.getClass();
        ValueHolder valueHolderB = compositionLocal.b(providedValue, valueHolder);
        boolean zEquals = valueHolderB.equals(valueHolder);
        if (!zEquals) {
            gapComposerH.q(valueHolderB);
        }
        if (!gapComposerH.S) {
            SlotReader slotReader = gapComposerH.G;
            Object objB = slotReader.b(slotReader.g, slotReader.f8200b);
            objB.getClass();
            PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) objB;
            if (!(gapComposerH.i() && zEquals) && (providedValue.f8074h || !persistentCompositionLocalMapU.containsKey(compositionLocal))) {
                persistentCompositionLocalMapU = persistentCompositionLocalMapU.l(compositionLocal, valueHolderB);
            } else if ((zEquals && !gapComposerH.w) || !gapComposerH.w) {
                persistentCompositionLocalMapU = persistentCompositionLocalMap;
            }
            if (gapComposerH.y || persistentCompositionLocalMap != persistentCompositionLocalMapU) {
                z = true;
            }
            if (z && !gapComposerH.S) {
                gapComposerH.p0(persistentCompositionLocalMapU);
            }
            intStack.c(gapComposerH.w ? 1 : 0);
            gapComposerH.w = z;
            gapComposerH.K = persistentCompositionLocalMapU;
            OpaqueKey opaqueKey2 = ComposerKt.f7942c;
            GroupKind.f8183a.getClass();
            gapComposerH.x0(opaqueKey2, 202, persistentCompositionLocalMapU, 0);
            function2.invoke(gapComposerH, Integer.valueOf((i2 >> 3) & 14));
            gapComposerH.Z(false);
            gapComposerH.Z(false);
            gapComposerH.w = intStack.b() != 0;
            gapComposerH.K = null;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new g2(providedValue, function2, i2, 11);
            }
        }
        if (providedValue.f8074h || !persistentCompositionLocalMapU.containsKey(compositionLocal)) {
            persistentCompositionLocalMapU = persistentCompositionLocalMapU.l(compositionLocal, valueHolderB);
        }
        gapComposerH.J = true;
        z = false;
        if (z) {
            gapComposerH.p0(persistentCompositionLocalMapU);
        }
        intStack.c(gapComposerH.w ? 1 : 0);
        gapComposerH.w = z;
        gapComposerH.K = persistentCompositionLocalMapU;
        OpaqueKey opaqueKey3 = ComposerKt.f7942c;
        GroupKind.f8183a.getClass();
        gapComposerH.x0(opaqueKey3, 202, persistentCompositionLocalMapU, 0);
        function2.invoke(gapComposerH, Integer.valueOf((i2 >> 3) & 14));
        gapComposerH.Z(false);
        gapComposerH.Z(false);
        gapComposerH.w = intStack.b() != 0;
        gapComposerH.K = null;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(providedValue, function2, i2, 11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:29:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void b(ProvidedValue[] providedValueArr, Function2 function2, Composer composer, int i2) {
        PersistentCompositionLocalMap persistentCompositionLocalMapBuild;
        boolean z;
        RecomposeScopeImpl recomposeScopeImplB0;
        GapComposer gapComposerH = composer.h(415205898);
        IntStack intStack = gapComposerH.x;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
        gapComposerH.z0(201, ComposerKt.f7941b);
        if (gapComposerH.S) {
            Map mapB = CompositionLocalMapKt.b(providedValueArr, persistentCompositionLocalMapU, PersistentCompositionLocalMapKt.a());
            PersistentCompositionLocalHashMap.Builder builder = persistentCompositionLocalMapU.builder();
            builder.putAll(mapB);
            persistentCompositionLocalMapBuild = builder.build();
            gapComposerH.z0(204, ComposerKt.d);
            gapComposerH.k0();
            gapComposerH.G0(persistentCompositionLocalMapBuild);
            gapComposerH.k0();
            gapComposerH.G0(mapB);
            gapComposerH.Z(false);
            gapComposerH.J = true;
        } else {
            SlotReader slotReader = gapComposerH.G;
            Object objH = slotReader.h(slotReader.g, 0);
            objH.getClass();
            PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) objH;
            SlotReader slotReader2 = gapComposerH.G;
            Object objH2 = slotReader2.h(slotReader2.g, 1);
            objH2.getClass();
            PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) objH2;
            Map mapB2 = CompositionLocalMapKt.b(providedValueArr, persistentCompositionLocalMapU, persistentCompositionLocalMap2);
            if (!gapComposerH.i() || gapComposerH.y || !persistentCompositionLocalMap2.equals(mapB2)) {
                PersistentCompositionLocalHashMap.Builder builder2 = persistentCompositionLocalMapU.builder();
                builder2.putAll(mapB2);
                persistentCompositionLocalMapBuild = builder2.build();
                gapComposerH.z0(204, ComposerKt.d);
                gapComposerH.k0();
                gapComposerH.G0(persistentCompositionLocalMapBuild);
                gapComposerH.k0();
                gapComposerH.G0(mapB2);
                gapComposerH.Z(false);
                if (gapComposerH.y || !Intrinsics.c(persistentCompositionLocalMapBuild, persistentCompositionLocalMap)) {
                    z = true;
                }
                if (z && !gapComposerH.S) {
                    gapComposerH.p0(persistentCompositionLocalMapBuild);
                }
                intStack.c(gapComposerH.w ? 1 : 0);
                gapComposerH.w = z;
                gapComposerH.K = persistentCompositionLocalMapBuild;
                Object obj = ComposerKt.f7942c;
                GroupKind.f8183a.getClass();
                gapComposerH.x0(obj, 202, persistentCompositionLocalMapBuild, 0);
                function2.invoke(gapComposerH, Integer.valueOf((i2 >> 3) & 14));
                gapComposerH.Z(false);
                gapComposerH.Z(false);
                gapComposerH.w = intStack.b() != 0;
                gapComposerH.K = null;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new g2(providedValueArr, function2, i2, 12);
                }
            }
            gapComposerH.l = gapComposerH.G.s() + gapComposerH.l;
            persistentCompositionLocalMapBuild = persistentCompositionLocalMap;
        }
        z = false;
        if (z) {
            gapComposerH.p0(persistentCompositionLocalMapBuild);
        }
        intStack.c(gapComposerH.w ? 1 : 0);
        gapComposerH.w = z;
        gapComposerH.K = persistentCompositionLocalMapBuild;
        Object obj2 = ComposerKt.f7942c;
        GroupKind.f8183a.getClass();
        gapComposerH.x0(obj2, 202, persistentCompositionLocalMapBuild, 0);
        function2.invoke(gapComposerH, Integer.valueOf((i2 >> 3) & 14));
        gapComposerH.Z(false);
        gapComposerH.Z(false);
        gapComposerH.w = intStack.b() != 0;
        gapComposerH.K = null;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(providedValueArr, function2, i2, 12);
        }
    }

    public static DynamicProvidableCompositionLocal c(Function0 function0) {
        return new DynamicProvidableCompositionLocal(StructuralEqualityPolicy.f8158a, function0);
    }
}
