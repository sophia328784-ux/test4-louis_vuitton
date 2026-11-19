package androidx.navigation3.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.d1;
import defpackage.i1;
import defpackage.p0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0007²\u0006\"\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002\"\b\b\u0000\u0010\u0001*\u00020\u00008\nX\u008a\u0084\u0002²\u0006\"\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u0002\"\b\b\u0000\u0010\u0001*\u00020\u00008\nX\u008a\u0084\u0002²\u0006\"\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002\"\b\b\u0000\u0010\u0001*\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "T", "", "Landroidx/navigation3/runtime/NavEntryDecorator;", "latestDecorators", "Landroidx/navigation3/runtime/NavEntry;", "latestEntries", "navigation3-runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DecoratedNavEntriesKt {
    public static final void a(ArrayList arrayList, List list, Set set, Set set2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-720826424);
        int i3 = (i2 & 6) == 0 ? (gapComposerH.y(arrayList) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(set) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(set2) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateL = SnapshotStateKt.l(arrayList, gapComposerH);
            MutableState mutableStateL2 = SnapshotStateKt.l(list, gapComposerH);
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                Object obj = ((NavEntry) arrayList.get(i4)).f18398b;
                set.add(obj);
                List listY0 = CollectionsKt.y0(arrayList);
                boolean zK = gapComposerH.K(mutableStateL) | gapComposerH.y(obj) | gapComposerH.y(set) | gapComposerH.y(set2) | gapComposerH.K(mutableStateL2);
                Object objX = gapComposerH.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    d1 d1Var = new d1(obj, set, set2, mutableStateL, mutableStateL2, 4);
                    gapComposerH.q(d1Var);
                    objX = d1Var;
                }
                EffectsKt.b(obj, listY0, (Function1) objX, gapComposerH);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(arrayList, list, set, set2, i2, 13);
        }
    }

    public static final NavEntry b(NavEntry navEntry, List list, Set set, Set set2, Composer composer, int i2) {
        composer.L(-1239021605);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        MutableState mutableStateL = SnapshotStateKt.l(list, composer);
        Object obj = navEntry.f18398b;
        composer.A(-993800456, obj);
        NavEntry navEntry2 = new NavEntry(navEntry, ComposableLambdaKt.b(-1349345695, new p0(set2, obj, set, mutableStateL, list, navEntry), composer));
        composer.I();
        composer.F();
        return navEntry2;
    }

    public static final ArrayList c(List list, List list2, Composer composer, int i2) {
        List list3;
        Composer composer2;
        ArrayList arrayList;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objX == composer$Companion$Empty$1) {
            objX = new LinkedHashSet();
            composer.q(objX);
        }
        Set set = (Set) objX;
        Object objX2 = composer.x();
        if (objX2 == composer$Companion$Empty$1) {
            objX2 = new LinkedHashSet();
            composer.q(objX2);
        }
        Set set2 = (Set) objX2;
        composer.L(110758886);
        if (list instanceof RandomAccess) {
            arrayList = new ArrayList(list.size());
            int size = list.size();
            int i3 = 0;
            while (i3 < size) {
                List list4 = list2;
                arrayList.add(b((NavEntry) list.get(i3), list4, set, set2, composer, i2 & 112));
                i3++;
                list2 = list4;
            }
            list3 = list2;
            composer2 = composer;
        } else {
            list3 = list2;
            composer2 = composer;
            List list5 = list;
            arrayList = new ArrayList(CollectionsKt.t(list5, 10));
            Iterator it = list5.iterator();
            while (it.hasNext()) {
                arrayList.add(b((NavEntry) it.next(), list3, set, set2, composer2, i2 & 112));
            }
        }
        ArrayList arrayList2 = arrayList;
        composer2.F();
        a(arrayList2, list3, set, set2, composer2, i2 & 112);
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        return arrayList2;
    }
}
