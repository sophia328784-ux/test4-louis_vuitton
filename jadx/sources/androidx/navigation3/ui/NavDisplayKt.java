package androidx.navigation3.ui;

import androidx.collection.MutableObjectFloatMap;
import androidx.collection.ObjectFloatMapKt;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.SnapshotStateListKt;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.compose.RememberLifecycleOwnerKt;
import androidx.navigation3.runtime.DecoratedNavEntriesKt;
import androidx.navigation3.runtime.NavEntry;
import androidx.navigation3.runtime.NavEntryDecorator;
import androidx.navigation3.scene.OverlayScene;
import androidx.navigation3.scene.Scene;
import androidx.navigation3.scene.SceneDecoratorStrategyScope;
import androidx.navigation3.scene.SceneInfo;
import androidx.navigation3.scene.SceneSetupNavEntryDecorator;
import androidx.navigation3.scene.SceneSetupNavEntryDecoratorKt;
import androidx.navigation3.scene.SceneState;
import androidx.navigation3.scene.SceneStateKt;
import androidx.navigation3.scene.SharedEntryInSceneNavEntryDecoratorKt;
import androidx.navigation3.scene.SinglePaneSceneStrategy;
import androidx.navigation3.ui.NavDisplay$PopTransitionKey;
import androidx.navigation3.ui.NavDisplay$PredictivePopTransitionKey;
import androidx.navigation3.ui.NavDisplay$TransitionKey;
import androidx.navigationevent.NavigationEventTransitionState;
import androidx.navigationevent.compose.NavigationEventHandlerKt;
import androidx.navigationevent.compose.NavigationEventState;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.ag0;
import defpackage.f3;
import defpackage.lc;
import defpackage.lc0;
import defpackage.md;
import defpackage.of0;
import defpackage.qb;
import defpackage.r0;
import defpackage.sg;
import defpackage.u00;
import defpackage.v40;
import defpackage.w20;
import defpackage.w3;
import defpackage.w4;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.IntProgressionIterator;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class NavDisplayKt {
    /* JADX WARN: Code duplicated, block: B:107:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:154:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:160:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:166:0x0311  */
    /* JADX WARN: Code duplicated, block: B:169:0x033d A[LOOP:4: B:167:0x0337->B:169:0x033d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:173:0x0357  */
    /* JADX WARN: Code duplicated, block: B:178:0x0383  */
    /* JADX WARN: Code duplicated, block: B:181:0x03b2 A[LOOP:7: B:179:0x03ac->B:181:0x03b2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:185:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:190:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:199:0x0448  */
    /* JADX WARN: Code duplicated, block: B:203:0x0472  */
    /* JADX WARN: Code duplicated, block: B:207:0x048f  */
    /* JADX WARN: Code duplicated, block: B:208:0x0496  */
    /* JADX WARN: Code duplicated, block: B:210:0x049e  */
    /* JADX WARN: Code duplicated, block: B:212:0x04ae  */
    /* JADX WARN: Code duplicated, block: B:215:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:217:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:219:0x04ef  */
    /* JADX WARN: Code duplicated, block: B:222:0x050b  */
    /* JADX WARN: Code duplicated, block: B:253:0x0590  */
    /* JADX WARN: Code duplicated, block: B:257:0x05c3  */
    /* JADX WARN: Code duplicated, block: B:260:0x05d4  */
    /* JADX WARN: Code duplicated, block: B:264:0x0626  */
    /* JADX WARN: Code duplicated, block: B:267:0x063e A[LOOP:2: B:267:0x063e->B:286:0x0701, LOOP_START, PHI: r1
      0x063e: PHI (r1v34 int) = (r1v33 int), (r1v38 int) binds: [B:266:0x063c, B:286:0x0701] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:269:0x0656  */
    /* JADX WARN: Code duplicated, block: B:270:0x0659  */
    /* JADX WARN: Code duplicated, block: B:273:0x0680  */
    /* JADX WARN: Code duplicated, block: B:275:0x06b3 A[LOOP:3: B:274:0x06b1->B:275:0x06b3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:278:0x06cd  */
    /* JADX WARN: Code duplicated, block: B:281:0x06e3  */
    /* JADX WARN: Code duplicated, block: B:283:0x06f5  */
    /* JADX WARN: Code duplicated, block: B:286:0x0701 A[LOOP:2: B:267:0x063e->B:286:0x0701, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:301:0x0704 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:302:0x070c A[EDGE_INSN: B:302:0x070c->B:289:0x070c BREAK  A[LOOP:2: B:267:0x063e->B:286:0x0701], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:306:0x0363 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:308:0x0351 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:315:0x03d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:317:0x03c7 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v26, types: [java.lang.Object, java.util.List] */
    /* JADX WARN: Type inference failed for: r12v0, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r7v37 */
    /* JADX WARN: Type inference failed for: r7v38, types: [int] */
    /* JADX WARN: Type inference failed for: r7v47 */
    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r9v2, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r9v38, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r9v49 */
    /* JADX WARN: Type inference failed for: r9v50 */
    public static final void a(SceneState sceneState, NavigationEventState navigationEventState, Modifier modifier, Alignment alignment, final Function1 function1, final Function1 function2, final Function2 function3, Composer composer, int i2) {
        Modifier modifier2;
        ?? r9;
        float f2;
        int i3;
        Object next;
        boolean z;
        float f3;
        float fB;
        float f4;
        Set set;
        ?? r10;
        Object objX;
        SnapshotStateList snapshotStateList;
        boolean zY;
        Object objX2;
        boolean zK;
        Object objX3;
        MapBuilder mapBuilder;
        ArrayList arrayList;
        ArrayList<Scene> arrayList2;
        Iterator it;
        ArrayList arrayListY;
        LinkedHashSet linkedHashSet;
        boolean zC;
        int size;
        int i4;
        SnapshotStateList snapshotStateList2;
        Scene scene;
        boolean z2;
        ArrayList arrayList3;
        Iterator it2;
        ArrayList arrayList4;
        Object objPut;
        Map map;
        Scene scene2;
        boolean zY2;
        Object objX4;
        boolean z3;
        final boolean z4;
        boolean zB;
        Object objX5;
        int i5;
        Function1 function4;
        Ref$ObjectRef ref$ObjectRef;
        float f5;
        boolean zK2;
        Object objX6;
        Object objX7;
        SnapshotStateList snapshotStateList3;
        ?? r11;
        boolean zK3;
        Object objX8;
        int size2;
        int i6;
        OverlayScene overlayScene;
        Lifecycle.State state;
        ProvidedValue providedValueC;
        ProvidedValue providedValueC2;
        ProvidedValue providedValueC3;
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal;
        Object obj;
        ArrayList arrayList5;
        int size3;
        ?? r7;
        boolean zK4;
        Object objX9;
        boolean zY3;
        Object objX10;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NavDisplay");
        }
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NavDisplay");
        }
        ?? H = composer.h(-303833701);
        int i7 = (i2 & 6) == 0 ? (H.K(sceneState) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i7 |= H.K(navigationEventState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= H.K(modifierE) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i7 |= H.K(alignment) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i7 |= H.y(null) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i7 |= H.y(function1) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i7 |= H.y(function2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i7 |= H.y(function3) ? 8388608 : 4194304;
        }
        if (H.p(i7 & 1, (i7 & 4793491) != 4793490)) {
            H.y0();
            if ((i2 & 1) != 0 && !H.h0()) {
                H.D();
            }
            H.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Scene scene3 = sceneState.f18414c;
            List list = sceneState.f18412a;
            Object objX11 = H.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX11 == composer$Companion$Empty$1) {
                objX11 = new SeekableTransitionState(scene3);
                H.q(objX11);
            }
            SeekableTransitionState seekableTransitionState = (SeekableTransitionState) objX11;
            Modifier modifier3 = modifierE;
            Transition transitionE = TransitionKt.e(seekableTransitionState, "scene", H, SeekableTransitionState.t | 48, 0);
            TransitionState transitionState = transitionE.f3988a;
            MutableState mutableState = transitionE.d;
            int i8 = i7;
            boolean zK5 = H.K((Scene) transitionState.a());
            Object objX12 = H.x();
            if (zK5 || objX12 == composer$Companion$Empty$1) {
                objX12 = CollectionsKt.y0(list);
                H.q(objX12);
            }
            List list2 = (List) objX12;
            Scene scene4 = (Scene) CollectionsKt.N(sceneState.d);
            NavigationEventTransitionState navigationEventTransitionState = (NavigationEventTransitionState) ((SnapshotMutableStateImpl) navigationEventState.f18500a).getF10755b();
            boolean z5 = navigationEventTransitionState instanceof NavigationEventTransitionState.InProgress;
            boolean z6 = z5 && scene4 != null;
            boolean z7 = navigationEventTransitionState instanceof NavigationEventTransitionState.Idle;
            if (z7) {
                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            } else {
                if (z5 == 0) {
                    v40.g();
                    return;
                }
                f2 = ((NavigationEventTransitionState.InProgress) navigationEventTransitionState).f18486a.f18456b;
            }
            if (z7) {
                i3 = 2;
            } else {
                if (!z5) {
                    v40.g();
                    return;
                }
                i3 = ((NavigationEventTransitionState.InProgress) navigationEventTransitionState).f18486a.f18455a;
            }
            List list3 = list2;
            ArrayList arrayList6 = new ArrayList(CollectionsKt.t(list3, 10));
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                arrayList6.add(((NavEntry) it3.next()).f18398b);
            }
            List list4 = list;
            ArrayList arrayList7 = new ArrayList(CollectionsKt.t(list4, 10));
            Iterator it4 = list4.iterator();
            while (it4.hasNext()) {
                arrayList7.add(((NavEntry) it4.next()).f18398b);
            }
            if (Intrinsics.c(CollectionsKt.B(arrayList6), CollectionsKt.B(arrayList7)) && arrayList7.size() <= arrayList6.size()) {
                Iterator<Integer> it5 = CollectionsKt.E(arrayList7).iterator();
                while (true) {
                    if (!((IntProgressionIterator) it5).d) {
                        next = null;
                        break;
                    }
                    next = ((IntIterator) it5).next();
                    int iIntValue = ((Number) next).intValue();
                    Iterator<Integer> it6 = it5;
                    if (!Intrinsics.c(arrayList7.get(iIntValue), arrayList6.get(iIntValue))) {
                        break;
                    } else {
                        it5 = it6;
                    }
                }
                if (((Integer) next) != null || arrayList7.size() == arrayList6.size()) {
                    z = false;
                } else {
                    z = true;
                }
            } else {
                z = false;
            }
            Object objX13 = H.x();
            if (objX13 == composer$Companion$Empty$1) {
                objX13 = new SnapshotStateMap();
                H.q(objX13);
            }
            SnapshotStateMap snapshotStateMap = (SnapshotStateMap) objX13;
            Object objX14 = H.x();
            if (objX14 == composer$Companion$Empty$1) {
                int i9 = ObjectFloatMapKt.f3339a;
                objX14 = new MutableObjectFloatMap(0, 1, null);
                H.q(objX14);
            }
            final MutableObjectFloatMap mutableObjectFloatMap = (MutableObjectFloatMap) objX14;
            AnimatedSceneKey animatedSceneKey = new AnimatedSceneKey((Scene) transitionState.a());
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState;
            AnimatedSceneKey animatedSceneKey2 = new AnimatedSceneKey((Scene) snapshotMutableStateImpl.getF10755b());
            int iA = mutableObjectFloatMap.a(animatedSceneKey);
            if (iA >= 0) {
                f3 = mutableObjectFloatMap.f3337c[iA];
            } else {
                f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                mutableObjectFloatMap.f(animatedSceneKey, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
            float f6 = f3;
            if (z6 || Intrinsics.c(snapshotMutableStateImpl.getF10755b(), scene3) || mutableObjectFloatMap.a(animatedSceneKey2) < 0) {
                if (animatedSceneKey.equals(animatedSceneKey2)) {
                    f4 = f6;
                } else {
                    fB = (z != 0 || z6) ? f6 - 1.0f : f6 + 1.0f;
                }
                snapshotStateMap.put(animatedSceneKey2, snapshotMutableStateImpl.getF10755b());
                set = snapshotStateMap.f8494c;
                mutableObjectFloatMap.f(animatedSceneKey2, f4);
                r10 = sceneState.f18413b;
                objX = H.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new SnapshotStateList();
                    H.q(objX);
                }
                snapshotStateList = (SnapshotStateList) objX;
                zY = H.y(r10);
                objX2 = H.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new NavDisplayKt__NavDisplayKt$NavDisplay$10$1(r10, snapshotStateList, null);
                    H.q(objX2);
                }
                EffectsKt.e(H, r10, (Function2) objX2);
                List listY0 = CollectionsKt.y0(set);
                snapshotStateList.getClass();
                zK = H.K(mutableObjectFloatMap.toString()) | H.K(listY0) | H.K(SnapshotStateListKt.c(snapshotStateList).f8524c);
                objX3 = H.x();
                if (!zK || objX3 == composer$Companion$Empty$1) {
                    mapBuilder = new MapBuilder();
                    arrayList = new ArrayList();
                    List listO0 = CollectionsKt.o0(set, new Comparator() { // from class: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$lambda$19$0$$inlined$sortedByDescending$1
                        @Override // java.util.Comparator
                        public final int compare(Object obj2, Object obj3) {
                            Object key = ((Map.Entry) obj3).getKey();
                            MutableObjectFloatMap mutableObjectFloatMap2 = mutableObjectFloatMap;
                            return Float.valueOf(mutableObjectFloatMap2.b(key)).compareTo(Float.valueOf(mutableObjectFloatMap2.b(((Map.Entry) obj2).getKey())));
                        }
                    });
                    arrayList2 = new ArrayList(CollectionsKt.t(listO0, 10));
                    it = listO0.iterator();
                    while (it.hasNext()) {
                        arrayList2.add((Scene) ((Map.Entry) it.next()).getValue());
                    }
                    for (Scene scene5 : arrayList2) {
                        if (!arrayList.contains(scene5)) {
                            arrayList.add(scene5);
                        }
                    }
                    arrayListY = CollectionsKt.Y(snapshotStateList, arrayList);
                    linkedHashSet = new LinkedHashSet();
                    zC = Intrinsics.c(snapshotMutableStateImpl.getF10755b(), CollectionsKt.B(arrayList));
                    size = arrayListY.size();
                    i4 = 0;
                    while (i4 < size) {
                        SnapshotStateList snapshotStateList4 = snapshotStateList;
                        scene = (Scene) arrayListY.get(i4);
                        ArrayList arrayList8 = arrayListY;
                        List d = scene.getD();
                        z2 = zC;
                        int i10 = size;
                        int i11 = i4;
                        arrayList3 = new ArrayList(CollectionsKt.t(d, 10));
                        it2 = d.iterator();
                        while (it2.hasNext()) {
                            arrayList3.add(((NavEntry) it2.next()).f18398b);
                        }
                        arrayList4 = new ArrayList();
                        for (Object obj2 : arrayList3) {
                            if (!linkedHashSet.contains(obj2)) {
                                arrayList4.add(obj2);
                            }
                        }
                        Set setB0 = CollectionsKt.B0(arrayList4);
                        if (!z2 || Intrinsics.c(snapshotMutableStateImpl.getF10755b(), scene)) {
                            objPut = mapBuilder.put(new AnimatedSceneKey(scene), CollectionsKt.A0(linkedHashSet));
                        } else {
                            AnimatedSceneKey animatedSceneKey3 = new AnimatedSceneKey(scene);
                            List d2 = ((Scene) snapshotMutableStateImpl.getF10755b()).getD();
                            ArrayList arrayList9 = new ArrayList(d2.size());
                            int size4 = d2.size();
                            int i12 = 0;
                            while (i12 < size4) {
                                arrayList9.add(((NavEntry) d2.get(i12)).f18398b);
                                i12++;
                                d2 = d2;
                            }
                            HashSet hashSet = new HashSet(arrayList9.size());
                            int i13 = 0;
                            for (int size5 = arrayList9.size(); i13 < size5; size5 = size5) {
                                hashSet.add(arrayList9.get(i13));
                                i13++;
                            }
                            objPut = mapBuilder.put(animatedSceneKey3, hashSet);
                        }
                        linkedHashSet.addAll(setB0);
                        i4 = i11 + 1;
                        zC = z2;
                        snapshotStateList = snapshotStateList4;
                        arrayListY = arrayList8;
                        size = i10;
                    }
                    snapshotStateList2 = snapshotStateList;
                    if (!zC) {
                        mapBuilder.put(new AnimatedSceneKey((Scene) snapshotMutableStateImpl.getF10755b()), EmptySet.f71770b);
                    }
                    objX3 = mapBuilder.c();
                    H.q(objX3);
                } else {
                    snapshotStateList2 = snapshotStateList;
                }
                map = (Map) objX3;
                if (f6 >= f4) {
                    scene2 = (Scene) transitionState.a();
                } else {
                    scene2 = (Scene) snapshotMutableStateImpl.getF10755b();
                }
                if (z6) {
                    H.L(-2006161995);
                    if (Intrinsics.c(transitionState.a(), scene4)) {
                        z3 = false;
                        H.L(-2005904633);
                        H.Z(false);
                    } else {
                        H.L(-2006108365);
                        Float fValueOf = Float.valueOf(f2);
                        zY3 = H.y(seekableTransitionState) | H.c(f2) | H.K(scene4);
                        objX10 = H.x();
                        if (zY3 || objX10 == composer$Companion$Empty$1) {
                            objX10 = new NavDisplayKt__NavDisplayKt$NavDisplay$11$1(seekableTransitionState, f2, scene4, null);
                            H.q(objX10);
                        }
                        EffectsKt.g(scene4, fValueOf, (Function2) objX10, H);
                        z3 = false;
                        H.Z(false);
                    }
                    H.Z(z3);
                } else {
                    H.L(-2005826792);
                    zY2 = H.y(seekableTransitionState) | H.K(scene3) | H.K(transitionE);
                    objX4 = H.x();
                    if (zY2 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new NavDisplayKt__NavDisplayKt$NavDisplay$12$1(seekableTransitionState, scene3, transitionE, null);
                        H.q(objX4);
                    }
                    EffectsKt.e(H, scene3, (Function2) objX4);
                    z3 = false;
                    H.Z(false);
                }
                z4 = z;
                zB = H.b(z6) | H.K(scene2) | H.d(i3) | (((((i8 & 29360128) ^ 12582912) > 8388608 || !H.K(function3)) && (i8 & 12582912) != 8388608) ? z3 : true) | H.b(z4) | (((((i8 & 3670016) ^ 1572864) > 1048576 || !H.K(function2)) && (i8 & 1572864) != 1048576) ? z3 : true) | (((((i8 & ImageMetadata.JPEG_GPS_COORDINATES) ^ ImageMetadata.EDGE_MODE) > 131072 || !H.K(function1)) && (i8 & ImageMetadata.EDGE_MODE) != 131072) ? z3 : true);
                objX5 = H.x();
                if (!zB || objX5 == composer$Companion$Empty$1) {
                    final Scene scene6 = scene2;
                    final int i14 = i3;
                    i5 = 1;
                    final boolean z8 = z6;
                    Function1 function5 = new Function1() { // from class: gg0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            ContentTransform contentTransform;
                            ContentTransform contentTransform2;
                            ContentTransform contentTransform3;
                            AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj3;
                            boolean z9 = z8;
                            Scene scene7 = scene6;
                            if (z9) {
                                Object obj4 = scene7.getMetadata().get(NavDisplay$PredictivePopTransitionKey.f18425a.toString());
                                if (obj4 == null) {
                                    obj4 = null;
                                }
                                Function2 function6 = TypeIntrinsics.f(2, obj4) ? (Function2) obj4 : null;
                                int i15 = i14;
                                return (function6 == null || (contentTransform3 = (ContentTransform) function6.invoke(animatedContentTransitionScope, Integer.valueOf(i15))) == null) ? (ContentTransform) function3.invoke(animatedContentTransitionScope, Integer.valueOf(i15)) : contentTransform3;
                            }
                            if (z4) {
                                Object obj5 = scene7.getMetadata().get(NavDisplay$PopTransitionKey.f18424a.toString());
                                if (obj5 == null) {
                                    obj5 = null;
                                }
                                Function1 function7 = TypeIntrinsics.f(1, obj5) ? (Function1) obj5 : null;
                                return (function7 == null || (contentTransform2 = (ContentTransform) function7.invoke(animatedContentTransitionScope)) == null) ? (ContentTransform) function2.invoke(animatedContentTransitionScope) : contentTransform2;
                            }
                            Object obj6 = scene7.getMetadata().get(NavDisplay$TransitionKey.f18426a.toString());
                            if (obj6 == null) {
                                obj6 = null;
                            }
                            Function1 function8 = TypeIntrinsics.f(1, obj6) ? (Function1) obj6 : null;
                            return (function8 == null || (contentTransform = (ContentTransform) function8.invoke(animatedContentTransitionScope)) == null) ? (ContentTransform) function1.invoke(animatedContentTransitionScope) : contentTransform;
                        }
                    };
                    H.q(function5);
                    objX5 = function5;
                } else {
                    i5 = 1;
                }
                function4 = (Function1) objX5;
                ref$ObjectRef = new Ref$ObjectRef();
                f5 = f4;
                zK2 = H.K(function4) | H.c(f5) | H.y(null);
                objX6 = H.x();
                if (zK2 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new qb(function4, f5, i5);
                    H.q(objX6);
                }
                Function1 function6 = (Function1) objX6;
                objX7 = H.x();
                if (objX7 == composer$Companion$Empty$1) {
                    objX7 = new ag0(9);
                    H.q(objX7);
                }
                snapshotStateList3 = snapshotStateList2;
                r11 = H;
                AnimatedContentKt.a(transitionE, modifier3, function6, alignment, (Function1) objX7, ComposableLambdaKt.b(-1167420988, new w4(transitionE, snapshotStateList3, ref$ObjectRef, map, 7), H), r11, ((i8 >> 3) & 112) | 221184 | (i8 & 7168));
                modifier2 = modifier3;
                zK3 = r11.K(transitionE) | r11.y(mutableObjectFloatMap);
                objX8 = r11.x();
                if (zK3 || objX8 == composer$Companion$Empty$1) {
                    objX8 = new NavDisplayKt__NavDisplayKt$NavDisplay$16$1(transitionE, snapshotStateMap, mutableObjectFloatMap, null);
                    r11.q(objX8);
                }
                EffectsKt.e(r11, transitionE, (Function2) objX8);
                size2 = snapshotStateList3.size() - 1;
                if (size2 >= 0) {
                    while (true) {
                        i6 = size2 - 1;
                        overlayScene = (OverlayScene) snapshotStateList3.get(size2);
                        r11.A(43486632, overlayScene);
                        if (Intrinsics.c(CollectionsKt.firstOrNull(r29), overlayScene)) {
                            state = Lifecycle.State.RESUMED;
                        } else {
                            state = Lifecycle.State.STARTED;
                        }
                        providedValueC = LocalLifecycleOwnerKt.f13562a.c(RememberLifecycleOwnerKt.a(state, r11));
                        providedValueC2 = SceneSetupNavEntryDecoratorKt.f18411a.c(MapsKt.d(map, new AnimatedSceneKey(overlayScene)));
                        providedValueC3 = SharedEntryInSceneNavEntryDecoratorKt.f18416a.c(overlayScene);
                        dynamicProvidableCompositionLocal = LocalNavAnimatedContentScopeKt.f18423a;
                        obj = ref$ObjectRef.f71921b;
                        if (obj != null) {
                            Intrinsics.h("animatedContentScope");
                            throw null;
                        }
                        CompositionLocalKt.b(new ProvidedValue[]{providedValueC, providedValueC2, providedValueC3, dynamicProvidableCompositionLocal.c((AnimatedContentScope) obj)}, ComposableLambdaKt.b(-1656080439, new w20(overlayScene, 19), r11), r11, 56);
                        r11.Z(z3);
                        arrayList5 = new ArrayList(r29.size());
                        size3 = r29.size();
                        for (r7 = z3; r7 < size3; r7++) {
                            arrayList5.add(((OverlayScene) r10.get(r7)).getF18417a());
                        }
                        if (arrayList5.contains(overlayScene.getF18417a())) {
                            r11.L(1349212134);
                            r11.Z(z3);
                        } else {
                            r11.L(1349048764);
                            Object f18417a = overlayScene.getF18417a();
                            zK4 = r11.K(overlayScene);
                            objX9 = r11.x();
                            if (zK4 || objX9 == composer$Companion$Empty$1) {
                                objX9 = new NavDisplayKt__NavDisplayKt$NavDisplay$17$3$1(overlayScene, snapshotStateList3, null);
                                r11.q(objX9);
                            }
                            EffectsKt.e(r11, f18417a, (Function2) objX9);
                            r11.Z(z3);
                        }
                        if (i6 < 0) {
                            break;
                        } else {
                            size2 = i6;
                        }
                    }
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                r9 = r11;
            } else {
                fB = mutableObjectFloatMap.b(animatedSceneKey2);
            }
            f4 = fB;
            snapshotStateMap.put(animatedSceneKey2, snapshotMutableStateImpl.getF10755b());
            set = snapshotStateMap.f8494c;
            mutableObjectFloatMap.f(animatedSceneKey2, f4);
            r10 = sceneState.f18413b;
            objX = H.x();
            if (objX == composer$Companion$Empty$1) {
                objX = new SnapshotStateList();
                H.q(objX);
            }
            snapshotStateList = (SnapshotStateList) objX;
            zY = H.y(r10);
            objX2 = H.x();
            if (zY) {
                objX2 = new NavDisplayKt__NavDisplayKt$NavDisplay$10$1(r10, snapshotStateList, null);
                H.q(objX2);
            } else {
                objX2 = new NavDisplayKt__NavDisplayKt$NavDisplay$10$1(r10, snapshotStateList, null);
                H.q(objX2);
            }
            EffectsKt.e(H, r10, (Function2) objX2);
            List listY1 = CollectionsKt.y0(set);
            snapshotStateList.getClass();
            zK = H.K(mutableObjectFloatMap.toString()) | H.K(listY1) | H.K(SnapshotStateListKt.c(snapshotStateList).f8524c);
            objX3 = H.x();
            if (zK) {
                mapBuilder = new MapBuilder();
                arrayList = new ArrayList();
                List listO1 = CollectionsKt.o0(set, new Comparator() { // from class: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$lambda$19$0$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        Object key = ((Map.Entry) obj4).getKey();
                        MutableObjectFloatMap mutableObjectFloatMap2 = mutableObjectFloatMap;
                        return Float.valueOf(mutableObjectFloatMap2.b(key)).compareTo(Float.valueOf(mutableObjectFloatMap2.b(((Map.Entry) obj3).getKey())));
                    }
                });
                arrayList2 = new ArrayList(CollectionsKt.t(listO1, 10));
                it = listO1.iterator();
                while (it.hasNext()) {
                    arrayList2.add((Scene) ((Map.Entry) it.next()).getValue());
                }
                while (r7.hasNext()) {
                    if (!arrayList.contains(scene5)) {
                        arrayList.add(scene5);
                    }
                }
                arrayListY = CollectionsKt.Y(snapshotStateList, arrayList);
                linkedHashSet = new LinkedHashSet();
                zC = Intrinsics.c(snapshotMutableStateImpl.getF10755b(), CollectionsKt.B(arrayList));
                size = arrayListY.size();
                i4 = 0;
                while (i4 < size) {
                    SnapshotStateList snapshotStateList5 = snapshotStateList;
                    scene = (Scene) arrayListY.get(i4);
                    ArrayList arrayList10 = arrayListY;
                    List d3 = scene.getD();
                    z2 = zC;
                    int i15 = size;
                    int i16 = i4;
                    arrayList3 = new ArrayList(CollectionsKt.t(d3, 10));
                    it2 = d3.iterator();
                    while (it2.hasNext()) {
                        arrayList3.add(((NavEntry) it2.next()).f18398b);
                    }
                    arrayList4 = new ArrayList();
                    while (r13.hasNext()) {
                        if (!linkedHashSet.contains(obj2)) {
                            arrayList4.add(obj2);
                        }
                    }
                    Set setB1 = CollectionsKt.B0(arrayList4);
                    if (z2) {
                        objPut = mapBuilder.put(new AnimatedSceneKey(scene), CollectionsKt.A0(linkedHashSet));
                    } else {
                        objPut = mapBuilder.put(new AnimatedSceneKey(scene), CollectionsKt.A0(linkedHashSet));
                    }
                    linkedHashSet.addAll(setB1);
                    i4 = i16 + 1;
                    zC = z2;
                    snapshotStateList = snapshotStateList5;
                    arrayListY = arrayList10;
                    size = i15;
                }
                snapshotStateList2 = snapshotStateList;
                if (!zC) {
                    mapBuilder.put(new AnimatedSceneKey((Scene) snapshotMutableStateImpl.getF10755b()), EmptySet.f71770b);
                }
                objX3 = mapBuilder.c();
                H.q(objX3);
            } else {
                mapBuilder = new MapBuilder();
                arrayList = new ArrayList();
                List listO2 = CollectionsKt.o0(set, new Comparator() { // from class: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$lambda$19$0$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        Object key = ((Map.Entry) obj4).getKey();
                        MutableObjectFloatMap mutableObjectFloatMap2 = mutableObjectFloatMap;
                        return Float.valueOf(mutableObjectFloatMap2.b(key)).compareTo(Float.valueOf(mutableObjectFloatMap2.b(((Map.Entry) obj3).getKey())));
                    }
                });
                arrayList2 = new ArrayList(CollectionsKt.t(listO2, 10));
                it = listO2.iterator();
                while (it.hasNext()) {
                    arrayList2.add((Scene) ((Map.Entry) it.next()).getValue());
                }
                while (r7.hasNext()) {
                    if (!arrayList.contains(scene5)) {
                        arrayList.add(scene5);
                    }
                }
                arrayListY = CollectionsKt.Y(snapshotStateList, arrayList);
                linkedHashSet = new LinkedHashSet();
                zC = Intrinsics.c(snapshotMutableStateImpl.getF10755b(), CollectionsKt.B(arrayList));
                size = arrayListY.size();
                i4 = 0;
                while (i4 < size) {
                    SnapshotStateList snapshotStateList6 = snapshotStateList;
                    scene = (Scene) arrayListY.get(i4);
                    ArrayList arrayList11 = arrayListY;
                    List d4 = scene.getD();
                    z2 = zC;
                    int i17 = size;
                    int i18 = i4;
                    arrayList3 = new ArrayList(CollectionsKt.t(d4, 10));
                    it2 = d4.iterator();
                    while (it2.hasNext()) {
                        arrayList3.add(((NavEntry) it2.next()).f18398b);
                    }
                    arrayList4 = new ArrayList();
                    while (r13.hasNext()) {
                        if (!linkedHashSet.contains(obj2)) {
                            arrayList4.add(obj2);
                        }
                    }
                    Set setB2 = CollectionsKt.B0(arrayList4);
                    if (z2) {
                        objPut = mapBuilder.put(new AnimatedSceneKey(scene), CollectionsKt.A0(linkedHashSet));
                    } else {
                        objPut = mapBuilder.put(new AnimatedSceneKey(scene), CollectionsKt.A0(linkedHashSet));
                    }
                    linkedHashSet.addAll(setB2);
                    i4 = i18 + 1;
                    zC = z2;
                    snapshotStateList = snapshotStateList6;
                    arrayListY = arrayList11;
                    size = i17;
                }
                snapshotStateList2 = snapshotStateList;
                if (!zC) {
                    mapBuilder.put(new AnimatedSceneKey((Scene) snapshotMutableStateImpl.getF10755b()), EmptySet.f71770b);
                }
                objX3 = mapBuilder.c();
                H.q(objX3);
            }
            map = (Map) objX3;
            if (f6 >= f4) {
                scene2 = (Scene) transitionState.a();
            } else {
                scene2 = (Scene) snapshotMutableStateImpl.getF10755b();
            }
            if (z6) {
                H.L(-2006161995);
                if (Intrinsics.c(transitionState.a(), scene4)) {
                    H.L(-2006108365);
                    Float fValueOf2 = Float.valueOf(f2);
                    zY3 = H.y(seekableTransitionState) | H.c(f2) | H.K(scene4);
                    objX10 = H.x();
                    if (zY3) {
                        objX10 = new NavDisplayKt__NavDisplayKt$NavDisplay$11$1(seekableTransitionState, f2, scene4, null);
                        H.q(objX10);
                    } else {
                        objX10 = new NavDisplayKt__NavDisplayKt$NavDisplay$11$1(seekableTransitionState, f2, scene4, null);
                        H.q(objX10);
                    }
                    EffectsKt.g(scene4, fValueOf2, (Function2) objX10, H);
                    z3 = false;
                    H.Z(false);
                } else {
                    z3 = false;
                    H.L(-2005904633);
                    H.Z(false);
                }
                H.Z(z3);
            } else {
                H.L(-2005826792);
                zY2 = H.y(seekableTransitionState) | H.K(scene3) | H.K(transitionE);
                objX4 = H.x();
                if (zY2) {
                    objX4 = new NavDisplayKt__NavDisplayKt$NavDisplay$12$1(seekableTransitionState, scene3, transitionE, null);
                    H.q(objX4);
                } else {
                    objX4 = new NavDisplayKt__NavDisplayKt$NavDisplay$12$1(seekableTransitionState, scene3, transitionE, null);
                    H.q(objX4);
                }
                EffectsKt.e(H, scene3, (Function2) objX4);
                z3 = false;
                H.Z(false);
            }
            z4 = z;
            zB = H.b(z6) | H.K(scene2) | H.d(i3) | (((((i8 & 29360128) ^ 12582912) > 8388608 || !H.K(function3)) && (i8 & 12582912) != 8388608) ? z3 : true) | H.b(z4) | (((((i8 & 3670016) ^ 1572864) > 1048576 || !H.K(function2)) && (i8 & 1572864) != 1048576) ? z3 : true) | (((((i8 & ImageMetadata.JPEG_GPS_COORDINATES) ^ ImageMetadata.EDGE_MODE) > 131072 || !H.K(function1)) && (i8 & ImageMetadata.EDGE_MODE) != 131072) ? z3 : true);
            objX5 = H.x();
            if (zB) {
                final Scene scene7 = scene2;
                final int i19 = i3;
                i5 = 1;
                final boolean z9 = z6;
                Function1 function7 = new Function1() { // from class: gg0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        ContentTransform contentTransform;
                        ContentTransform contentTransform2;
                        ContentTransform contentTransform3;
                        AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj3;
                        boolean z10 = z9;
                        Scene scene8 = scene7;
                        if (z10) {
                            Object obj4 = scene8.getMetadata().get(NavDisplay$PredictivePopTransitionKey.f18425a.toString());
                            if (obj4 == null) {
                                obj4 = null;
                            }
                            Function2 function8 = TypeIntrinsics.f(2, obj4) ? (Function2) obj4 : null;
                            int i110 = i19;
                            return (function8 == null || (contentTransform3 = (ContentTransform) function8.invoke(animatedContentTransitionScope, Integer.valueOf(i110))) == null) ? (ContentTransform) function3.invoke(animatedContentTransitionScope, Integer.valueOf(i110)) : contentTransform3;
                        }
                        if (z4) {
                            Object obj5 = scene8.getMetadata().get(NavDisplay$PopTransitionKey.f18424a.toString());
                            if (obj5 == null) {
                                obj5 = null;
                            }
                            Function1 function9 = TypeIntrinsics.f(1, obj5) ? (Function1) obj5 : null;
                            return (function9 == null || (contentTransform2 = (ContentTransform) function9.invoke(animatedContentTransitionScope)) == null) ? (ContentTransform) function2.invoke(animatedContentTransitionScope) : contentTransform2;
                        }
                        Object obj6 = scene8.getMetadata().get(NavDisplay$TransitionKey.f18426a.toString());
                        if (obj6 == null) {
                            obj6 = null;
                        }
                        Function1 function10 = TypeIntrinsics.f(1, obj6) ? (Function1) obj6 : null;
                        return (function10 == null || (contentTransform = (ContentTransform) function10.invoke(animatedContentTransitionScope)) == null) ? (ContentTransform) function1.invoke(animatedContentTransitionScope) : contentTransform;
                    }
                };
                H.q(function7);
                objX5 = function7;
            } else {
                final Scene scene8 = scene2;
                final int i110 = i3;
                i5 = 1;
                final boolean z10 = z6;
                Function1 function8 = new Function1() { // from class: gg0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        ContentTransform contentTransform;
                        ContentTransform contentTransform2;
                        ContentTransform contentTransform3;
                        AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj3;
                        boolean z11 = z10;
                        Scene scene9 = scene8;
                        if (z11) {
                            Object obj4 = scene9.getMetadata().get(NavDisplay$PredictivePopTransitionKey.f18425a.toString());
                            if (obj4 == null) {
                                obj4 = null;
                            }
                            Function2 function9 = TypeIntrinsics.f(2, obj4) ? (Function2) obj4 : null;
                            int i111 = i110;
                            return (function9 == null || (contentTransform3 = (ContentTransform) function9.invoke(animatedContentTransitionScope, Integer.valueOf(i111))) == null) ? (ContentTransform) function3.invoke(animatedContentTransitionScope, Integer.valueOf(i111)) : contentTransform3;
                        }
                        if (z4) {
                            Object obj5 = scene9.getMetadata().get(NavDisplay$PopTransitionKey.f18424a.toString());
                            if (obj5 == null) {
                                obj5 = null;
                            }
                            Function1 function10 = TypeIntrinsics.f(1, obj5) ? (Function1) obj5 : null;
                            return (function10 == null || (contentTransform2 = (ContentTransform) function10.invoke(animatedContentTransitionScope)) == null) ? (ContentTransform) function2.invoke(animatedContentTransitionScope) : contentTransform2;
                        }
                        Object obj6 = scene9.getMetadata().get(NavDisplay$TransitionKey.f18426a.toString());
                        if (obj6 == null) {
                            obj6 = null;
                        }
                        Function1 function11 = TypeIntrinsics.f(1, obj6) ? (Function1) obj6 : null;
                        return (function11 == null || (contentTransform = (ContentTransform) function11.invoke(animatedContentTransitionScope)) == null) ? (ContentTransform) function1.invoke(animatedContentTransitionScope) : contentTransform;
                    }
                };
                H.q(function8);
                objX5 = function8;
            }
            function4 = (Function1) objX5;
            ref$ObjectRef = new Ref$ObjectRef();
            f5 = f4;
            zK2 = H.K(function4) | H.c(f5) | H.y(null);
            objX6 = H.x();
            if (zK2) {
                objX6 = new qb(function4, f5, i5);
                H.q(objX6);
            } else {
                objX6 = new qb(function4, f5, i5);
                H.q(objX6);
            }
            Function1 function9 = (Function1) objX6;
            objX7 = H.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new ag0(9);
                H.q(objX7);
            }
            snapshotStateList3 = snapshotStateList2;
            r11 = H;
            AnimatedContentKt.a(transitionE, modifier3, function9, alignment, (Function1) objX7, ComposableLambdaKt.b(-1167420988, new w4(transitionE, snapshotStateList3, ref$ObjectRef, map, 7), H), r11, ((i8 >> 3) & 112) | 221184 | (i8 & 7168));
            modifier2 = modifier3;
            zK3 = r11.K(transitionE) | r11.y(mutableObjectFloatMap);
            objX8 = r11.x();
            if (zK3) {
                objX8 = new NavDisplayKt__NavDisplayKt$NavDisplay$16$1(transitionE, snapshotStateMap, mutableObjectFloatMap, null);
                r11.q(objX8);
            } else {
                objX8 = new NavDisplayKt__NavDisplayKt$NavDisplay$16$1(transitionE, snapshotStateMap, mutableObjectFloatMap, null);
                r11.q(objX8);
            }
            EffectsKt.e(r11, transitionE, (Function2) objX8);
            size2 = snapshotStateList3.size() - 1;
            if (size2 >= 0) {
                while (true) {
                    i6 = size2 - 1;
                    overlayScene = (OverlayScene) snapshotStateList3.get(size2);
                    r11.A(43486632, overlayScene);
                    if (Intrinsics.c(CollectionsKt.firstOrNull(r29), overlayScene)) {
                        state = Lifecycle.State.RESUMED;
                    } else {
                        state = Lifecycle.State.STARTED;
                    }
                    providedValueC = LocalLifecycleOwnerKt.f13562a.c(RememberLifecycleOwnerKt.a(state, r11));
                    providedValueC2 = SceneSetupNavEntryDecoratorKt.f18411a.c(MapsKt.d(map, new AnimatedSceneKey(overlayScene)));
                    providedValueC3 = SharedEntryInSceneNavEntryDecoratorKt.f18416a.c(overlayScene);
                    dynamicProvidableCompositionLocal = LocalNavAnimatedContentScopeKt.f18423a;
                    obj = ref$ObjectRef.f71921b;
                    if (obj != null) {
                        Intrinsics.h("animatedContentScope");
                        throw null;
                    }
                    CompositionLocalKt.b(new ProvidedValue[]{providedValueC, providedValueC2, providedValueC3, dynamicProvidableCompositionLocal.c((AnimatedContentScope) obj)}, ComposableLambdaKt.b(-1656080439, new w20(overlayScene, 19), r11), r11, 56);
                    r11.Z(z3);
                    arrayList5 = new ArrayList(r29.size());
                    size3 = r29.size();
                    while (r7 < size3) {
                        arrayList5.add(((OverlayScene) r10.get(r7)).getF18417a());
                    }
                    if (arrayList5.contains(overlayScene.getF18417a())) {
                        r11.L(1349048764);
                        Object f18417a2 = overlayScene.getF18417a();
                        zK4 = r11.K(overlayScene);
                        objX9 = r11.x();
                        if (zK4) {
                            objX9 = new NavDisplayKt__NavDisplayKt$NavDisplay$17$3$1(overlayScene, snapshotStateList3, null);
                            r11.q(objX9);
                        } else {
                            objX9 = new NavDisplayKt__NavDisplayKt$NavDisplay$17$3$1(overlayScene, snapshotStateList3, null);
                            r11.q(objX9);
                        }
                        EffectsKt.e(r11, f18417a2, (Function2) objX9);
                        r11.Z(z3);
                    } else {
                        r11.L(1349212134);
                        r11.Z(z3);
                    }
                    if (i6 < 0) {
                        break;
                        break;
                    }
                    size2 = i6;
                }
            }
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            r9 = r11;
        } else {
            modifier2 = modifierE;
            ?? r12 = H;
            r12.D();
            r9 = r12;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = r9.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3((Object) sceneState, (Object) navigationEventState, (Object) modifier2, (Object) alignment, function1, function2, (Function) function3, i2, 6);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(ArrayList arrayList, Modifier modifier, Alignment alignment, List list, List list2, Function1 function1, Function1 function2, Function2 function3, Function0 function0, Composer composer, int i2, int i3) {
        Function1 function4;
        Modifier modifierE = modifier;
        List list3 = list;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NavDisplay");
        }
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NavDisplay");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1914095277);
        int i4 = (i2 & 6) == 0 ? (gapComposerH.y(arrayList) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(alignment) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(list3) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(list2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.K(null) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.y(null) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            function4 = function2;
            i4 |= gapComposerH.y(function4) ? 67108864 : 33554432;
        } else {
            function4 = function2;
        }
        if ((805306368 & i2) == 0) {
            i4 |= gapComposerH.y(function3) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i5 = (i3 & 6) == 0 ? i3 | (gapComposerH.y(function0) ? 4 : 2) : i3;
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (arrayList.isEmpty()) {
                md.n("NavDisplay entries cannot be empty");
                return;
            }
            int i6 = i4 >> 6;
            int i7 = (i6 & 896) | (i4 & 14) | (i6 & 112) | (i6 & 7168) | ((i5 << 12) & 57344);
            MutableState mutableStateL = SnapshotStateKt.l(function0, gapComposerH);
            int i8 = i4;
            gapComposerH.L(-984503628);
            gapComposerH.Z(false);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = SceneSetupNavEntryDecoratorKt.f18411a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new SceneSetupNavEntryDecorator(null, 1, null);
                gapComposerH.q(objX);
            }
            ArrayList arrayListC = DecoratedNavEntriesKt.c(arrayList, ArraysKt.v(new NavEntryDecorator[]{null, (SceneSetupNavEntryDecorator) objX, new NavEntryDecorator(null, ComposableLambdaKt.b(1077673004, new lc(0, SnapshotStateKt.l(arrayList, gapComposerH)), gapComposerH), 1, null)}), gapComposerH, i7 & 14);
            boolean zK = gapComposerH.K(CollectionsKt.y0(list3)) | gapComposerH.K(arrayListC);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                SceneDecoratorStrategyScope sceneDecoratorStrategyScope = new SceneDecoratorStrategyScope(new u00(27, mutableStateL));
                ArrayList arrayListU = CollectionsKt.U(SceneStateKt.a(sceneDecoratorStrategyScope, arrayListC, list3, list2));
                while (true) {
                    Object objM = CollectionsKt.M(arrayListU);
                    OverlayScene overlayScene = objM instanceof OverlayScene ? (OverlayScene) objM : null;
                    List listB = overlayScene != null ? overlayScene.b() : null;
                    if (listB != null) {
                        if (listB.isEmpty()) {
                            lc0.v("Overlaid entries from ", overlayScene, " must not be empty");
                            return;
                        }
                        arrayListU.add(SceneStateKt.a(sceneDecoratorStrategyScope, listB, list3, list2));
                    }
                    if (listB == null) {
                        List listX = CollectionsKt.x(1, arrayListU);
                        ArrayList arrayList2 = new ArrayList(listX.size());
                        int size = listX.size();
                        for (int i9 = 0; i9 < size; i9++) {
                            Scene scene = (Scene) listX.get(i9);
                            scene.getClass();
                            arrayList2.add((OverlayScene) scene);
                        }
                        Scene scene2 = (Scene) CollectionsKt.M(arrayListU);
                        ArrayList arrayListU2 = CollectionsKt.U(CollectionsKt.B(arrayListU));
                        while (true) {
                            Scene scene3 = (Scene) CollectionsKt.firstOrNull(arrayListU2);
                            List f18419c = scene3 != null ? scene3.getF18419c() : null;
                            List list4 = f18419c;
                            if (list4 != null && !list4.isEmpty()) {
                                arrayListU2.add(0, SceneStateKt.a(sceneDecoratorStrategyScope, f18419c, list3, list2));
                            }
                            if (list4 == null || list4.isEmpty()) {
                                break;
                            } else {
                                list3 = list;
                            }
                        }
                        arrayListU2.remove(scene2);
                        objX2 = new SceneState(arrayListC, arrayList2, scene2, arrayListU2);
                        gapComposerH.q(objX2);
                        break;
                    }
                    list3 = list;
                    function4 = function2;
                }
            }
            SceneState sceneState = (SceneState) objX2;
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Scene scene4 = sceneState.f18414c;
            SceneInfo sceneInfo = new SceneInfo(scene4);
            List list5 = sceneState.d;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list5, 10));
            Iterator it = list5.iterator();
            while (it.hasNext()) {
                arrayList3.add(new SceneInfo((Scene) it.next()));
            }
            EmptyList emptyList = EmptyList.f71768b;
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new NavigationEventState(sceneInfo, arrayList3, emptyList);
                gapComposerH.q(objX3);
            }
            NavigationEventState navigationEventState = (NavigationEventState) objX3;
            boolean zY = gapComposerH.y(sceneInfo) | gapComposerH.y(arrayList3) | gapComposerH.y(emptyList);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                objX4 = new r0(navigationEventState, sceneInfo, arrayList3, emptyList, 25);
                gapComposerH.q(objX4);
            }
            EffectsKt.i((Function0) objX4, gapComposerH);
            boolean z = !scene4.getF18419c().isEmpty();
            boolean zY2 = gapComposerH.y(arrayList) | gapComposerH.K(scene4) | ((i5 & 14) == 4);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new of0(arrayList, scene4, function0, 2);
                gapComposerH.q(objX5);
            }
            NavigationEventHandlerKt.a(navigationEventState, z, null, (Function0) objX5, gapComposerH, 0);
            a(sceneState, navigationEventState, modifier2, alignment, function1, function4, function3, gapComposerH, ((i8 << 3) & 8064) | (i6 & 57344) | (i6 & ImageMetadata.JPEG_GPS_COORDINATES) | (i6 & 3670016) | (i6 & 29360128));
            gapComposerH = gapComposerH;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sg(arrayList, modifier2, alignment, list, list2, function1, function2, function3, function0, i2, i3);
        }
    }

    public static final void c(List list, Modifier modifier, Alignment alignment, Function0 function0, List list2, List list3, List list4, Function1 function1, Function1 function2, Function2 function3, androidx.navigation3.runtime.a aVar, Composer composer, int i2) {
        Function0 function4;
        GapComposer gapComposer;
        Alignment alignment2;
        List list5;
        List list6;
        Modifier modifier2;
        Alignment alignment3;
        int i3;
        List listO;
        List list7;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "NavDisplay");
        }
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "NavDisplay");
        }
        GapComposer gapComposerH = composer.h(1398581072);
        int i4 = ((i2 & 6) == 0 ? (gapComposerH.y(list) ? 4 : 2) | i2 : i2) | 432;
        if ((i2 & 3072) == 0) {
            function4 = function0;
            i4 |= gapComposerH.y(function4) ? 2048 : 1024;
        } else {
            function4 = function0;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(list2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= 65536;
        }
        int i5 = i4 | 114819072;
        if ((805306368 & i2) == 0) {
            i5 |= gapComposerH.y(function1) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i6 = (gapComposerH.y(aVar) ? 256 : 128) | 54;
        if (gapComposerH.p(i5 & 1, ((306783379 & i5) == 306783378 && (i6 & 147) == 146) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                dTFunctionNameModifier = new DTFunctionNameModifier("NavDisplay");
                Alignment.f8582a.getClass();
                alignment3 = Alignment.Companion.f8584b;
                i3 = i5 & (-458753);
                listO = CollectionsKt.O(new SinglePaneSceneStrategy());
                list7 = EmptyList.f71768b;
            } else {
                gapComposerH.D();
                i3 = i5 & (-458753);
                alignment3 = alignment;
                listO = list3;
                list7 = list4;
            }
            Modifier modifier3 = dTFunctionNameModifier;
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (list.isEmpty()) {
                md.n("NavDisplay backstack cannot be empty");
                return;
            }
            int i7 = i3 >> 9;
            int i8 = (i3 & 14) | (i7 & 112) | (i6 & 896);
            List list8 = list;
            boolean zK = gapComposerH.K(CollectionsKt.y0(list8));
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                if (list instanceof RandomAccess) {
                    ArrayList arrayList = new ArrayList(list.size());
                    int size = list.size();
                    for (int i9 = 0; i9 < size; i9++) {
                        arrayList.add((NavEntry) aVar.invoke(list.get(i9)));
                    }
                    objX = arrayList;
                } else {
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list8, 10));
                    Iterator it = list8.iterator();
                    while (it.hasNext()) {
                        arrayList2.add((NavEntry) aVar.invoke(it.next()));
                    }
                    objX = arrayList2;
                }
                gapComposerH.q(objX);
            }
            ArrayList arrayListC = DecoratedNavEntriesKt.c((List) objX, list2, gapComposerH, i8 & 112);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int i10 = i3 & 1008;
            int i11 = i3 >> 6;
            gapComposer = gapComposerH;
            b(arrayListC, modifier3, alignment3, listO, list7, function1, function2, function3, function4, gapComposer, i10 | (57344 & i11) | (458752 & i11) | (3670016 & i11) | (i11 & 29360128) | 905969664, i7 & 14);
            modifier2 = modifier3;
            alignment2 = alignment3;
            list5 = listO;
            list6 = list7;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            alignment2 = alignment;
            list5 = list3;
            list6 = list4;
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f3(list, modifier2, alignment2, function0, list2, list5, list6, function1, function2, function3, aVar, i2);
        }
    }
}
