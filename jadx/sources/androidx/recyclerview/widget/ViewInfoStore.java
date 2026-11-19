package androidx.recyclerview.widget;

import androidx.collection.LongSparseArray;
import androidx.collection.LongSparseArrayKt;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools$SimplePool;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
class ViewInfoStore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SimpleArrayMap f19358a = new SimpleArrayMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LongSparseArray f19359b = new LongSparseArray();

    public static class InfoRecord {
        public static final Pools$SimplePool d = new Pools$SimplePool(20);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f19360a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView.ItemAnimator.ItemHolderInfo f19361b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public RecyclerView.ItemAnimator.ItemHolderInfo f19362c;

        public static InfoRecord a() {
            InfoRecord infoRecord = (InfoRecord) d.acquire();
            return infoRecord == null ? new InfoRecord() : infoRecord;
        }
    }

    public interface ProcessCallback {
        void a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void b(RecyclerView.ViewHolder viewHolder);

        void c(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void d(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);
    }

    public final void a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        SimpleArrayMap simpleArrayMap = this.f19358a;
        InfoRecord infoRecordA = (InfoRecord) simpleArrayMap.get(viewHolder);
        if (infoRecordA == null) {
            infoRecordA = InfoRecord.a();
            simpleArrayMap.put(viewHolder, infoRecordA);
        }
        infoRecordA.f19362c = itemHolderInfo;
        infoRecordA.f19360a |= 8;
    }

    public final RecyclerView.ItemAnimator.ItemHolderInfo b(RecyclerView.ViewHolder viewHolder, int i2) {
        InfoRecord infoRecord;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo;
        SimpleArrayMap simpleArrayMap = this.f19358a;
        int iE = simpleArrayMap.e(viewHolder);
        if (iE >= 0 && (infoRecord = (InfoRecord) simpleArrayMap.k(iE)) != null) {
            int i3 = infoRecord.f19360a;
            if ((i3 & i2) != 0) {
                int i4 = i3 & (~i2);
                infoRecord.f19360a = i4;
                if (i2 == 4) {
                    itemHolderInfo = infoRecord.f19361b;
                } else if (i2 == 8) {
                    itemHolderInfo = infoRecord.f19362c;
                } else {
                    md.n("Must provide flag PRE or POST");
                }
                if ((i4 & 12) == 0) {
                    simpleArrayMap.i(iE);
                    infoRecord.f19360a = 0;
                    infoRecord.f19361b = null;
                    infoRecord.f19362c = null;
                    InfoRecord.d.release(infoRecord);
                }
                return itemHolderInfo;
            }
        }
        return null;
    }

    public final void c(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = (InfoRecord) this.f19358a.get(viewHolder);
        if (infoRecord == null) {
            return;
        }
        infoRecord.f19360a &= -2;
    }

    public final void d(RecyclerView.ViewHolder viewHolder) {
        LongSparseArray longSparseArray = this.f19359b;
        for (int iG = longSparseArray.g() - 1; iG >= 0; iG--) {
            if (viewHolder == longSparseArray.h(iG)) {
                Object[] objArr = longSparseArray.d;
                Object obj = objArr[iG];
                Object obj2 = LongSparseArrayKt.f3289a;
                if (obj == obj2) {
                    break;
                }
                objArr[iG] = obj2;
                longSparseArray.f3286b = true;
                break;
            }
        }
        InfoRecord infoRecord = (InfoRecord) this.f19358a.remove(viewHolder);
        if (infoRecord != null) {
            infoRecord.f19360a = 0;
            infoRecord.f19361b = null;
            infoRecord.f19362c = null;
            InfoRecord.d.release(infoRecord);
        }
    }
}
