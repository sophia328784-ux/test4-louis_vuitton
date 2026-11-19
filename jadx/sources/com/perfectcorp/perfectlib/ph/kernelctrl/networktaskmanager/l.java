package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.IdSystemDataNotFoundException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.template.b;
import com.perfectcorp.perfectlib.ph.template.idc.e;
import com.perfectcorp.perfectlib.ph.template.idc.g;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.Collections2;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import defpackage.fc;
import defpackage.gy0;
import defpackage.r81;
import defpackage.ta0;
import defpackage.xx0;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
final class l implements Function<List<com.perfectcorp.perfectlib.ph.template.b.C0181b>, SingleSource<i.a>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ int f41509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ List f41510c;
    public /* synthetic */ NetworkTaskManager.TaskPriority d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ DownloadTaskCancelable f41511e;

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        List list = this.f41510c;
        final DownloadTaskCancelable downloadTaskCancelable = this.f41511e;
        final NetworkTaskManager.TaskPriority taskPriority = this.d;
        List list2 = (List) obj;
        StringBuilder sb = new StringBuilder("[#");
        int i2 = this.f41509b;
        sb.append(i2);
        sb.append("] get valid components from IdSystemParser.Response");
        final int i3 = 3;
        Log.g(3, "IdSystemDataHelper", sb.toString());
        ImmutableList<Pair> immutableListP = FluentIterable.n(list2).s(new xx0(27)).p();
        final int i4 = 0;
        ImmutableList<Pair> immutableListP2 = FluentIterable.n(list2).s(new com.perfectcorp.thirdparty.com.google.common.base.Function() { // from class: m91
            @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
            public final Object apply(Object obj2) {
                switch (i4) {
                    case 0:
                        return ((b.C0181b) obj2).d();
                    case 1:
                        return ((b.C0181b) obj2).c();
                    case 2:
                        return ((b.C0181b) obj2).e();
                    case 3:
                        Pair pair = (Pair) obj2;
                        Objects.requireNonNull(pair);
                        e eVar = (e) pair.first;
                        Objects.requireNonNull(eVar);
                        return eVar.attr_guid;
                    default:
                        Pair pair2 = (Pair) obj2;
                        Objects.requireNonNull(pair2);
                        g gVar = (g) pair2.first;
                        Objects.requireNonNull(gVar);
                        return gVar.attr_guid;
                }
            }
        }).p();
        final int i5 = 1;
        ImmutableList<Pair> immutableListP3 = FluentIterable.n(list2).s(new com.perfectcorp.thirdparty.com.google.common.base.Function() { // from class: m91
            @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
            public final Object apply(Object obj2) {
                switch (i5) {
                    case 0:
                        return ((b.C0181b) obj2).d();
                    case 1:
                        return ((b.C0181b) obj2).c();
                    case 2:
                        return ((b.C0181b) obj2).e();
                    case 3:
                        Pair pair = (Pair) obj2;
                        Objects.requireNonNull(pair);
                        e eVar = (e) pair.first;
                        Objects.requireNonNull(eVar);
                        return eVar.attr_guid;
                    default:
                        Pair pair2 = (Pair) obj2;
                        Objects.requireNonNull(pair2);
                        g gVar = (g) pair2.first;
                        Objects.requireNonNull(gVar);
                        return gVar.attr_guid;
                }
            }
        }).p();
        final int i6 = 2;
        ImmutableList<Pair> immutableListP4 = FluentIterable.n(list2).s(new com.perfectcorp.thirdparty.com.google.common.base.Function() { // from class: m91
            @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
            public final Object apply(Object obj2) {
                switch (i6) {
                    case 0:
                        return ((b.C0181b) obj2).d();
                    case 1:
                        return ((b.C0181b) obj2).c();
                    case 2:
                        return ((b.C0181b) obj2).e();
                    case 3:
                        Pair pair = (Pair) obj2;
                        Objects.requireNonNull(pair);
                        e eVar = (e) pair.first;
                        Objects.requireNonNull(eVar);
                        return eVar.attr_guid;
                    default:
                        Pair pair2 = (Pair) obj2;
                        Objects.requireNonNull(pair2);
                        g gVar = (g) pair2.first;
                        Objects.requireNonNull(gVar);
                        return gVar.attr_guid;
                }
            }
        }).p();
        if (immutableListP.isEmpty() && immutableListP2.isEmpty() && immutableListP3.isEmpty() && immutableListP4.isEmpty()) {
            return Single.g(new IdSystemDataNotFoundException("[#" + i2 + "] All components are invalid . ids=" + list));
        }
        HashSet hashSet = new HashSet(Collections2.b(immutableListP, new com.perfectcorp.thirdparty.com.google.common.base.Function() { // from class: m91
            @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
            public final Object apply(Object obj2) {
                switch (i3) {
                    case 0:
                        return ((b.C0181b) obj2).d();
                    case 1:
                        return ((b.C0181b) obj2).c();
                    case 2:
                        return ((b.C0181b) obj2).e();
                    case 3:
                        Pair pair = (Pair) obj2;
                        Objects.requireNonNull(pair);
                        e eVar = (e) pair.first;
                        Objects.requireNonNull(eVar);
                        return eVar.attr_guid;
                    default:
                        Pair pair2 = (Pair) obj2;
                        Objects.requireNonNull(pair2);
                        g gVar = (g) pair2.first;
                        Objects.requireNonNull(gVar);
                        return gVar.attr_guid;
                }
            }
        }));
        final int i7 = 4;
        hashSet.addAll(Collections2.b(immutableListP2, new com.perfectcorp.thirdparty.com.google.common.base.Function() { // from class: m91
            @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
            public final Object apply(Object obj2) {
                switch (i7) {
                    case 0:
                        return ((b.C0181b) obj2).d();
                    case 1:
                        return ((b.C0181b) obj2).c();
                    case 2:
                        return ((b.C0181b) obj2).e();
                    case 3:
                        Pair pair = (Pair) obj2;
                        Objects.requireNonNull(pair);
                        e eVar = (e) pair.first;
                        Objects.requireNonNull(eVar);
                        return eVar.attr_guid;
                    default:
                        Pair pair2 = (Pair) obj2;
                        Objects.requireNonNull(pair2);
                        g gVar = (g) pair2.first;
                        Objects.requireNonNull(gVar);
                        return gVar.attr_guid;
                }
            }
        }));
        hashSet.addAll(Collections2.b(immutableListP3, new xx0(28)));
        hashSet.addAll(Collections2.b(immutableListP4, new xx0(29)));
        if (!hashSet.containsAll(list)) {
            Log.g(3, "IdSystemDataHelper", "[#" + i2 + "] One or more components are invalid. ids=" + list);
        }
        ArrayList arrayList = new ArrayList();
        for (Pair pair : immutableListP) {
            SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
            com.perfectcorp.perfectlib.ph.template.idc.e eVar = (com.perfectcorp.perfectlib.ph.template.idc.e) pair.first;
            Objects.requireNonNull(eVar);
            Optional optionalB = com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.b(sQLiteDatabaseB, eVar.attr_guid);
            if (!optionalB.d() || ((com.perfectcorp.perfectlib.ph.template.a) optionalB.c()).d != ((Long) pair.second).longValue()) {
                arrayList.add(pair);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair2 : immutableListP2) {
            SQLiteDatabase sQLiteDatabaseB2 = YMKDatabase.b();
            com.perfectcorp.perfectlib.ph.template.idc.g gVar = (com.perfectcorp.perfectlib.ph.template.idc.g) pair2.first;
            Objects.requireNonNull(gVar);
            Optional optionalB2 = com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.b(sQLiteDatabaseB2, gVar.attr_guid);
            if (!optionalB2.d() || ((com.perfectcorp.perfectlib.ph.template.a) optionalB2.c()).d != ((Long) pair2.second).longValue()) {
                arrayList2.add(pair2);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Pair pair3 : immutableListP3) {
            SQLiteDatabase sQLiteDatabaseB3 = YMKDatabase.b();
            com.perfectcorp.perfectlib.ph.template.idc.d dVar = (com.perfectcorp.perfectlib.ph.template.idc.d) pair3.first;
            Objects.requireNonNull(dVar);
            Optional optionalB3 = com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.b(sQLiteDatabaseB3, dVar.attr_guid);
            if (!optionalB3.d() || ((com.perfectcorp.perfectlib.ph.template.a) optionalB3.c()).d != ((Long) pair3.second).longValue()) {
                arrayList3.add(pair3);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        for (Pair pair4 : immutableListP4) {
            SQLiteDatabase sQLiteDatabaseB4 = YMKDatabase.b();
            com.perfectcorp.perfectlib.ph.template.idc.f fVar = (com.perfectcorp.perfectlib.ph.template.idc.f) pair4.first;
            Objects.requireNonNull(fVar);
            Optional optionalB4 = com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.b(sQLiteDatabaseB4, fVar.attr_guid);
            if (!optionalB4.d() || ((com.perfectcorp.perfectlib.ph.template.a) optionalB4.c()).d != ((Long) pair4.second).longValue()) {
                arrayList4.add(pair4);
            }
        }
        StringBuilder sbQ = fc.q(i2, "[#", "] filteredPatterns.size()=");
        sbQ.append(arrayList.size());
        Log.g(3, "IdSystemDataHelper", sbQ.toString());
        if (arrayList.isEmpty() && arrayList2.isEmpty() && arrayList3.isEmpty() && arrayList4.isEmpty()) {
            return Single.h(i.a.g);
        }
        Log.g(3, "IdSystemDataHelper", "[#" + i2 + "] trigger #downloadPatternImages(); start");
        final int i8 = 0;
        final int i9 = 1;
        final int i10 = 2;
        Single singleCollectInto = Observable.concat(Observable.fromIterable(arrayList2).flatMap(new Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj2) {
                int i11 = i8;
                DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                NetworkTaskManager.TaskPriority taskPriority2 = taskPriority;
                Pair pair5 = (Pair) obj2;
                switch (i11) {
                    case 0:
                        com.perfectcorp.perfectlib.ph.template.idc.g gVar2 = (com.perfectcorp.perfectlib.ph.template.idc.g) pair5.first;
                        int andIncrement = j.f41498a.getAndIncrement();
                        Log.g(3, "IdSystemDataHelper", "[#" + andIncrement + "] #downloadTextureImages(); begin");
                        String strD = DownloadFolderHelper.d();
                        HashMap map = new HashMap();
                        a.e(map, gVar2.attr_thumbnail, a.EnumC0163a.f41406e.f41409i, false, strD);
                        StringBuilder sbQ2 = fc.q(andIncrement, "[#", "] #getDownloadComponents(); component count=");
                        sbQ2.append(map.size());
                        Log.g(3, "IdSystemDataHelper", sbQ2.toString());
                        return j.b(gVar2.attr_guid, map, taskPriority2, downloadTaskCancelable2, andIncrement);
                    case 1:
                        com.perfectcorp.perfectlib.ph.template.idc.d dVar2 = (com.perfectcorp.perfectlib.ph.template.idc.d) pair5.first;
                        int andIncrement2 = j.f41498a.getAndIncrement();
                        Log.g(3, "IdSystemDataHelper", "[#" + andIncrement2 + "] #downloadPaletteImages(); begin");
                        String strD2 = DownloadFolderHelper.d();
                        HashMap map2 = new HashMap();
                        a.e(map2, dVar2.attr_thumbnail, a.EnumC0163a.f41407f.f41409i, false, strD2);
                        StringBuilder sbQ3 = fc.q(andIncrement2, "[#", "] #downloadPaletteImages(); component count=");
                        sbQ3.append(map2.size());
                        Log.g(3, "IdSystemDataHelper", sbQ3.toString());
                        return j.b(dVar2.attr_guid, map2, taskPriority2, downloadTaskCancelable2, andIncrement2);
                    default:
                        com.perfectcorp.perfectlib.ph.template.idc.f fVar2 = (com.perfectcorp.perfectlib.ph.template.idc.f) pair5.first;
                        int andIncrement3 = j.f41498a.getAndIncrement();
                        Log.g(3, "IdSystemDataHelper", "[#" + andIncrement3 + "] #downloadShapeImages(); begin");
                        String strD3 = DownloadFolderHelper.d();
                        HashMap map3 = new HashMap();
                        a.e(map3, fVar2.attr_thumbnail, a.EnumC0163a.g.f41409i, false, strD3);
                        String str = fVar2.attr_mask;
                        a.EnumC0163a enumC0163a = a.EnumC0163a.f41408h;
                        a.e(map3, str, enumC0163a.f41409i, false, strD3);
                        a.e(map3, fVar2.attr_shadow, enumC0163a.f41409i, false, strD3);
                        a.e(map3, fVar2.attr_highlight, enumC0163a.f41409i, false, strD3);
                        a.e(map3, fVar2.attr_lip_shape_ombre, enumC0163a.f41409i, false, strD3);
                        StringBuilder sbQ4 = fc.q(andIncrement3, "[#", "] #getDownloadComponents(); component count=");
                        sbQ4.append(map3.size());
                        Log.g(3, "IdSystemDataHelper", sbQ4.toString());
                        return j.b(fVar2.attr_guid, map3, taskPriority2, downloadTaskCancelable2, andIncrement3);
                }
            }
        }), Observable.fromIterable(arrayList).flatMap(new gy0((Serializable) taskPriority, downloadTaskCancelable, 15)), Observable.fromIterable(arrayList3).flatMap(new Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj2) {
                int i11 = i9;
                DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                NetworkTaskManager.TaskPriority taskPriority2 = taskPriority;
                Pair pair5 = (Pair) obj2;
                switch (i11) {
                    case 0:
                        com.perfectcorp.perfectlib.ph.template.idc.g gVar2 = (com.perfectcorp.perfectlib.ph.template.idc.g) pair5.first;
                        int andIncrement = j.f41498a.getAndIncrement();
                        Log.g(3, "IdSystemDataHelper", "[#" + andIncrement + "] #downloadTextureImages(); begin");
                        String strD = DownloadFolderHelper.d();
                        HashMap map = new HashMap();
                        a.e(map, gVar2.attr_thumbnail, a.EnumC0163a.f41406e.f41409i, false, strD);
                        StringBuilder sbQ2 = fc.q(andIncrement, "[#", "] #getDownloadComponents(); component count=");
                        sbQ2.append(map.size());
                        Log.g(3, "IdSystemDataHelper", sbQ2.toString());
                        return j.b(gVar2.attr_guid, map, taskPriority2, downloadTaskCancelable2, andIncrement);
                    case 1:
                        com.perfectcorp.perfectlib.ph.template.idc.d dVar2 = (com.perfectcorp.perfectlib.ph.template.idc.d) pair5.first;
                        int andIncrement2 = j.f41498a.getAndIncrement();
                        Log.g(3, "IdSystemDataHelper", "[#" + andIncrement2 + "] #downloadPaletteImages(); begin");
                        String strD2 = DownloadFolderHelper.d();
                        HashMap map2 = new HashMap();
                        a.e(map2, dVar2.attr_thumbnail, a.EnumC0163a.f41407f.f41409i, false, strD2);
                        StringBuilder sbQ3 = fc.q(andIncrement2, "[#", "] #downloadPaletteImages(); component count=");
                        sbQ3.append(map2.size());
                        Log.g(3, "IdSystemDataHelper", sbQ3.toString());
                        return j.b(dVar2.attr_guid, map2, taskPriority2, downloadTaskCancelable2, andIncrement2);
                    default:
                        com.perfectcorp.perfectlib.ph.template.idc.f fVar2 = (com.perfectcorp.perfectlib.ph.template.idc.f) pair5.first;
                        int andIncrement3 = j.f41498a.getAndIncrement();
                        Log.g(3, "IdSystemDataHelper", "[#" + andIncrement3 + "] #downloadShapeImages(); begin");
                        String strD3 = DownloadFolderHelper.d();
                        HashMap map3 = new HashMap();
                        a.e(map3, fVar2.attr_thumbnail, a.EnumC0163a.g.f41409i, false, strD3);
                        String str = fVar2.attr_mask;
                        a.EnumC0163a enumC0163a = a.EnumC0163a.f41408h;
                        a.e(map3, str, enumC0163a.f41409i, false, strD3);
                        a.e(map3, fVar2.attr_shadow, enumC0163a.f41409i, false, strD3);
                        a.e(map3, fVar2.attr_highlight, enumC0163a.f41409i, false, strD3);
                        a.e(map3, fVar2.attr_lip_shape_ombre, enumC0163a.f41409i, false, strD3);
                        StringBuilder sbQ4 = fc.q(andIncrement3, "[#", "] #getDownloadComponents(); component count=");
                        sbQ4.append(map3.size());
                        Log.g(3, "IdSystemDataHelper", sbQ4.toString());
                        return j.b(fVar2.attr_guid, map3, taskPriority2, downloadTaskCancelable2, andIncrement3);
                }
            }
        }), Observable.fromIterable(arrayList4).flatMap(new Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj2) {
                int i11 = i10;
                DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                NetworkTaskManager.TaskPriority taskPriority2 = taskPriority;
                Pair pair5 = (Pair) obj2;
                switch (i11) {
                    case 0:
                        com.perfectcorp.perfectlib.ph.template.idc.g gVar2 = (com.perfectcorp.perfectlib.ph.template.idc.g) pair5.first;
                        int andIncrement = j.f41498a.getAndIncrement();
                        Log.g(3, "IdSystemDataHelper", "[#" + andIncrement + "] #downloadTextureImages(); begin");
                        String strD = DownloadFolderHelper.d();
                        HashMap map = new HashMap();
                        a.e(map, gVar2.attr_thumbnail, a.EnumC0163a.f41406e.f41409i, false, strD);
                        StringBuilder sbQ2 = fc.q(andIncrement, "[#", "] #getDownloadComponents(); component count=");
                        sbQ2.append(map.size());
                        Log.g(3, "IdSystemDataHelper", sbQ2.toString());
                        return j.b(gVar2.attr_guid, map, taskPriority2, downloadTaskCancelable2, andIncrement);
                    case 1:
                        com.perfectcorp.perfectlib.ph.template.idc.d dVar2 = (com.perfectcorp.perfectlib.ph.template.idc.d) pair5.first;
                        int andIncrement2 = j.f41498a.getAndIncrement();
                        Log.g(3, "IdSystemDataHelper", "[#" + andIncrement2 + "] #downloadPaletteImages(); begin");
                        String strD2 = DownloadFolderHelper.d();
                        HashMap map2 = new HashMap();
                        a.e(map2, dVar2.attr_thumbnail, a.EnumC0163a.f41407f.f41409i, false, strD2);
                        StringBuilder sbQ3 = fc.q(andIncrement2, "[#", "] #downloadPaletteImages(); component count=");
                        sbQ3.append(map2.size());
                        Log.g(3, "IdSystemDataHelper", sbQ3.toString());
                        return j.b(dVar2.attr_guid, map2, taskPriority2, downloadTaskCancelable2, andIncrement2);
                    default:
                        com.perfectcorp.perfectlib.ph.template.idc.f fVar2 = (com.perfectcorp.perfectlib.ph.template.idc.f) pair5.first;
                        int andIncrement3 = j.f41498a.getAndIncrement();
                        Log.g(3, "IdSystemDataHelper", "[#" + andIncrement3 + "] #downloadShapeImages(); begin");
                        String strD3 = DownloadFolderHelper.d();
                        HashMap map3 = new HashMap();
                        a.e(map3, fVar2.attr_thumbnail, a.EnumC0163a.g.f41409i, false, strD3);
                        String str = fVar2.attr_mask;
                        a.EnumC0163a enumC0163a = a.EnumC0163a.f41408h;
                        a.e(map3, str, enumC0163a.f41409i, false, strD3);
                        a.e(map3, fVar2.attr_shadow, enumC0163a.f41409i, false, strD3);
                        a.e(map3, fVar2.attr_highlight, enumC0163a.f41409i, false, strD3);
                        a.e(map3, fVar2.attr_lip_shape_ombre, enumC0163a.f41409i, false, strD3);
                        StringBuilder sbQ4 = fc.q(andIncrement3, "[#", "] #getDownloadComponents(); component count=");
                        sbQ4.append(map3.size());
                        Log.g(3, "IdSystemDataHelper", sbQ4.toString());
                        return j.b(fVar2.attr_guid, map3, taskPriority2, downloadTaskCancelable2, andIncrement3);
                }
            }
        })).collectInto(new ConcurrentHashMap(), new r81(25));
        ta0 ta0Var = new ta0(this.f41509b, arrayList, arrayList2, arrayList3, arrayList4);
        singleCollectInto.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(singleCollectInto, ta0Var);
    }
}
