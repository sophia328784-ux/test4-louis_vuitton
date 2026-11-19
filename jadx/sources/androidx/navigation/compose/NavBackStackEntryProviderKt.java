package androidx.navigation.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactoryBuilder;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.internal.WeakReference;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import defpackage.ag0;
import defpackage.md;
import defpackage.rv;
import defpackage.wd0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"navigation-compose_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class NavBackStackEntryProviderKt {
    public static final void a(NavBackStackEntry navBackStackEntry, final SaveableStateHolder saveableStateHolder, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(233973821);
        if ((((gapComposerH.y(navBackStackEntry) ? 4 : 2) | i2 | (gapComposerH.y(saveableStateHolder) ? 32 : 16)) & 147) == 146 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CompositionLocalKt.b(new ProvidedValue[]{LocalViewModelStoreOwner.f13603a.c(navBackStackEntry), LocalLifecycleOwnerKt.f13562a.c(navBackStackEntry), LocalSavedStateRegistryOwnerKt.f19789a.c(navBackStackEntry)}, ComposableLambdaKt.b(1808964477, new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.NavBackStackEntryProviderKt$LocalOwnersProvider$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    if ((((Number) obj2).intValue() & 3) == 2 && composer2.i()) {
                        composer2.D();
                    } else {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        NavBackStackEntryProviderKt.b(saveableStateHolder, composableLambdaImpl, composer2, 0);
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 56);
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(navBackStackEntry, saveableStateHolder, composableLambdaImpl, i2);
        }
    }

    public static final void b(SaveableStateHolder saveableStateHolder, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(832919318);
        int i3 = (gapComposerH.y(saveableStateHolder) ? 4 : 2) | i2 | (gapComposerH.y(composableLambdaImpl) ? 32 : 16);
        if ((i3 & 19) == 18 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new ag0(1);
                gapComposerH.q(objX);
            }
            Function1 function1 = (Function1) objX;
            ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(gapComposerH);
            if (viewModelStoreOwnerA == null) {
                md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                return;
            }
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            KClass kClassB = reflectionFactory.b(BackStackEntryIdViewModel.class);
            InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
            initializerViewModelFactoryBuilder.a(reflectionFactory.b(BackStackEntryIdViewModel.class), function1);
            BackStackEntryIdViewModel backStackEntryIdViewModel = (BackStackEntryIdViewModel) ViewModelKt.a(kClassB, viewModelStoreOwnerA, null, initializerViewModelFactoryBuilder.b(), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, gapComposerH);
            backStackEntryIdViewModel.f18226b = new WeakReference(saveableStateHolder);
            saveableStateHolder.f(backStackEntryIdViewModel.f18225a, composableLambdaImpl, gapComposerH, ((i3 << 6) & 896) | (i3 & 112));
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(saveableStateHolder, composableLambdaImpl, i2, 2);
        }
    }
}
