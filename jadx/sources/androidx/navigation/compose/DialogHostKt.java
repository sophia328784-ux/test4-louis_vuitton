package androidx.navigation.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import defpackage.ag;
import defpackage.dt;
import defpackage.n0;
import defpackage.rs;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0002¨\u0006\u0005²\u0006\u0012\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002²\u0006\u0012\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u00038\nX\u008a\u0084\u0002"}, d2 = {"", "Landroidx/navigation/NavBackStackEntry;", "dialogBackStack", "", "transitionInProgress", "navigation-compose_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class DialogHostKt {
    public static final void a(final DialogNavigator dialogNavigator, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(294589392);
        if ((((gapComposerH.y(dialogNavigator) ? 4 : 2) | i2) & 3) == 2 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final SaveableStateHolder saveableStateHolderA = SaveableStateHolderKt.a(gapComposerH);
            MutableState mutableStateB = SnapshotStateKt.b(dialogNavigator.b().f18213e, gapComposerH);
            Object obj = (Collection) ((List) mutableStateB.getF10755b());
            boolean zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
            boolean zK = gapComposerH.K(obj);
            Object objX = gapComposerH.x();
            Object obj2 = Composer.Companion.f7939a;
            Object obj3 = objX;
            if (zK || objX == obj2) {
                SnapshotStateList snapshotStateList = new SnapshotStateList();
                ArrayList arrayList = new ArrayList();
                for (Object obj4 : (Iterable) obj) {
                    if (zBooleanValue ? true : ((NavBackStackEntry) obj4).f18117i.f18326k.f13454i.a(Lifecycle.State.STARTED)) {
                        arrayList.add(obj4);
                    }
                }
                snapshotStateList.addAll(arrayList);
                gapComposerH.q(snapshotStateList);
                obj3 = snapshotStateList;
            }
            SnapshotStateList snapshotStateList2 = (SnapshotStateList) obj3;
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            b(snapshotStateList2, (List) mutableStateB.getF10755b(), gapComposerH, 0);
            MutableState mutableStateB2 = SnapshotStateKt.b(dialogNavigator.b().f18214f, gapComposerH);
            Object objX2 = gapComposerH.x();
            if (objX2 == obj2) {
                objX2 = new SnapshotStateList();
                gapComposerH.q(objX2);
            }
            final SnapshotStateList snapshotStateList3 = (SnapshotStateList) objX2;
            gapComposerH.L(-367418626);
            ListIterator listIterator = snapshotStateList2.listIterator();
            while (true) {
                StateListIterator stateListIterator = (StateListIterator) listIterator;
                if (!stateListIterator.hasNext()) {
                    break;
                }
                final NavBackStackEntry navBackStackEntry = (NavBackStackEntry) stateListIterator.next();
                NavDestination navDestination = navBackStackEntry.f18113c;
                navDestination.getClass();
                final DialogNavigator.Destination destination = (DialogNavigator.Destination) navDestination;
                boolean zY = gapComposerH.y(dialogNavigator) | gapComposerH.y(navBackStackEntry);
                Object objX3 = gapComposerH.x();
                if (zY || objX3 == obj2) {
                    objX3 = new dt(dialogNavigator, navBackStackEntry, 1);
                    gapComposerH.q(objX3);
                }
                AndroidDialog_androidKt.a((Function0) objX3, destination.f18256h, ComposableLambdaKt.b(1129586364, new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.DialogHostKt$DialogHost$1$2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj5, Object obj6) {
                        Composer composer2 = (Composer) obj5;
                        if ((((Number) obj6).intValue() & 3) == 2 && composer2.i()) {
                            composer2.D();
                        } else {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            final NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
                            boolean zY2 = composer2.y(navBackStackEntry2);
                            DialogNavigator dialogNavigator2 = dialogNavigator;
                            boolean zY3 = zY2 | composer2.y(dialogNavigator2);
                            Object objX4 = composer2.x();
                            if (zY3 || objX4 == Composer.Companion.f7939a) {
                                objX4 = new n0(snapshotStateList3, navBackStackEntry2, dialogNavigator2, 21);
                                composer2.q(objX4);
                            }
                            EffectsKt.c(navBackStackEntry2, (Function1) objX4, composer2);
                            final DialogNavigator.Destination destination2 = destination;
                            NavBackStackEntryProviderKt.a(navBackStackEntry2, saveableStateHolderA, ComposableLambdaKt.b(-497631156, new Function2<Composer, Integer, Unit>() { // from class: androidx.navigation.compose.DialogHostKt$DialogHost$1$2.2
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj7, Object obj8) {
                                    Composer composer3 = (Composer) obj7;
                                    if ((((Number) obj8).intValue() & 3) == 2 && composer3.i()) {
                                        composer3.D();
                                    } else {
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        destination2.f18257i.A(navBackStackEntry2, composer3, 0);
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, KyberEngine.KyberPolyBytes);
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, KyberEngine.KyberPolyBytes, 0);
                mutableStateB2 = mutableStateB2;
            }
            MutableState mutableState = mutableStateB2;
            gapComposerH.Z(false);
            Set set = (Set) mutableState.getF10755b();
            boolean zK2 = gapComposerH.K(mutableState) | gapComposerH.y(dialogNavigator);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == obj2) {
                objX4 = new DialogHostKt$DialogHost$2$1(mutableState, dialogNavigator, snapshotStateList3, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.g(set, snapshotStateList3, (Function2) objX4, gapComposerH);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new defpackage.c(dialogNavigator, i2, 21);
        }
    }

    public static final void b(List list, Collection collection, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1537894851);
        if ((((gapComposerH.y(list) ? 4 : 2) | i2 | (gapComposerH.y(collection) ? 32 : 16)) & 19) == 18 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
                LifecycleRegistry lifecycleRegistry = navBackStackEntry.f18117i.f18326k;
                boolean zB = gapComposerH.b(zBooleanValue) | gapComposerH.y(list) | gapComposerH.y(navBackStackEntry);
                Object objX = gapComposerH.x();
                if (zB || objX == Composer.Companion.f7939a) {
                    objX = new ag(navBackStackEntry, zBooleanValue, list, 1);
                    gapComposerH.q(objX);
                }
                EffectsKt.c(lifecycleRegistry, (Function1) objX, gapComposerH);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rs(list, collection, i2, 3);
        }
    }
}
