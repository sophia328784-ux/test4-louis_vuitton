package com.dynatrace.agent.communication.preprocessing;

import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.communication.filter.EventRecordSizeFilter;
import com.dynatrace.agent.storage.db.EndPointInfo;
import com.dynatrace.agent.storage.db.EventDatabaseDataSource;
import com.dynatrace.agent.storage.db.EventMetadata;
import com.dynatrace.agent.storage.db.EventRecord;
import com.dynatrace.android.agent.util.Utility;
import defpackage.md;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;", "", "Lcom/dynatrace/agent/storage/db/EndPointInfo;", "activeEndpoint", "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;", "databaseDataSource", "", "envelopeSize", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "<init>", "(Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;ILcom/dynatrace/agent/common/time/TimeProvider;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DispatchableDataProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EndPointInfo f26665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EventDatabaseDataSource f26666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TimeProvider f26667c;
    public final EventRecordSizeFilter d;

    public DispatchableDataProvider(EndPointInfo endPointInfo, EventDatabaseDataSource eventDatabaseDataSource, int i2, TimeProvider timeProvider) {
        endPointInfo.getClass();
        eventDatabaseDataSource.getClass();
        timeProvider.getClass();
        this.f26665a = endPointInfo;
        this.f26666b = eventDatabaseDataSource;
        this.f26667c = timeProvider;
        this.d = new EventRecordSizeFilter(i2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(List list, EventDatabaseDataSource eventDatabaseDataSource, ContinuationImpl continuationImpl) {
        DispatchableDataProvider$loadEventData$1 dispatchableDataProvider$loadEventData$1;
        if (continuationImpl instanceof DispatchableDataProvider$loadEventData$1) {
            dispatchableDataProvider$loadEventData$1 = (DispatchableDataProvider$loadEventData$1) continuationImpl;
            int i2 = dispatchableDataProvider$loadEventData$1.f26670e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dispatchableDataProvider$loadEventData$1.f26670e = i2 - Integer.MIN_VALUE;
            } else {
                dispatchableDataProvider$loadEventData$1 = new DispatchableDataProvider$loadEventData$1(this, continuationImpl);
            }
        } else {
            dispatchableDataProvider$loadEventData$1 = new DispatchableDataProvider$loadEventData$1(this, continuationImpl);
        }
        Object objF = dispatchableDataProvider$loadEventData$1.f26669c;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dispatchableDataProvider$loadEventData$1.f26670e;
        if (i3 == 0) {
            ResultKt.b(objF);
            if (list.isEmpty()) {
                return EmptyList.f71768b;
            }
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(new Long(((EventMetadata) it.next()).f26919a));
            }
            dispatchableDataProvider$loadEventData$1.f26668b = list;
            dispatchableDataProvider$loadEventData$1.f26670e = 1;
            objF = eventDatabaseDataSource.f(arrayList, dispatchableDataProvider$loadEventData$1);
            if (objF == obj) {
                return obj;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            list = dispatchableDataProvider$loadEventData$1.f26668b;
            ResultKt.b(objF);
        }
        List list3 = (List) objF;
        if (list3.size() != list.size()) {
            Utility.b("ALERT! actual record size does not match metadata size");
        }
        return list3;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0084  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Serializable b(EventDatabaseDataSource eventDatabaseDataSource, int i2, ContinuationImpl continuationImpl) {
        DispatchableDataProvider$preSelectData$1 dispatchableDataProvider$preSelectData$1;
        Ref$BooleanRef ref$BooleanRef;
        int i3;
        Ref$BooleanRef ref$BooleanRef2;
        Object obj;
        List list;
        if (continuationImpl instanceof DispatchableDataProvider$preSelectData$1) {
            dispatchableDataProvider$preSelectData$1 = (DispatchableDataProvider$preSelectData$1) continuationImpl;
            int i4 = dispatchableDataProvider$preSelectData$1.g;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                dispatchableDataProvider$preSelectData$1.g = i4 - Integer.MIN_VALUE;
            } else {
                dispatchableDataProvider$preSelectData$1 = new DispatchableDataProvider$preSelectData$1(this, continuationImpl);
            }
        } else {
            dispatchableDataProvider$preSelectData$1 = new DispatchableDataProvider$preSelectData$1(this, continuationImpl);
        }
        Object objE = dispatchableDataProvider$preSelectData$1.f26673e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = dispatchableDataProvider$preSelectData$1.g;
        if (i5 == 0) {
            ResultKt.b(objE);
            Ref$BooleanRef ref$BooleanRef3 = new Ref$BooleanRef();
            ref$BooleanRef3.f71917b = true;
            dispatchableDataProvider$preSelectData$1.f26671b = eventDatabaseDataSource;
            dispatchableDataProvider$preSelectData$1.f26672c = ref$BooleanRef3;
            dispatchableDataProvider$preSelectData$1.d = i2;
            dispatchableDataProvider$preSelectData$1.g = 1;
            Object objE2 = eventDatabaseDataSource.e(true, i2, dispatchableDataProvider$preSelectData$1);
            if (objE2 != coroutineSingletons) {
                ref$BooleanRef = ref$BooleanRef3;
                objE = objE2;
            }
            return coroutineSingletons;
        }
        if (i5 == 1) {
            i2 = dispatchableDataProvider$preSelectData$1.d;
            Ref$BooleanRef ref$BooleanRef4 = dispatchableDataProvider$preSelectData$1.f26672c;
            EventDatabaseDataSource eventDatabaseDataSource2 = (EventDatabaseDataSource) dispatchableDataProvider$preSelectData$1.f26671b;
            ResultKt.b(objE);
            ref$BooleanRef = ref$BooleanRef4;
            eventDatabaseDataSource = eventDatabaseDataSource2;
        } else {
            if (i5 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i3 = dispatchableDataProvider$preSelectData$1.d;
            ref$BooleanRef2 = (Ref$BooleanRef) dispatchableDataProvider$preSelectData$1.f26671b;
            ResultKt.b(objE);
        }
        list = (List) objE;
        if (list.size() < i3) {
            ref$BooleanRef2.f71917b = false;
        }
        ref$BooleanRef = ref$BooleanRef2;
        obj = list;
        return new Pair(Boolean.valueOf(ref$BooleanRef.f71917b), (List) obj);
        Collection collection = (Collection) objE;
        boolean zIsEmpty = collection.isEmpty();
        obj = collection;
        if (zIsEmpty) {
            dispatchableDataProvider$preSelectData$1.f26671b = ref$BooleanRef;
            dispatchableDataProvider$preSelectData$1.f26672c = null;
            dispatchableDataProvider$preSelectData$1.d = i2;
            dispatchableDataProvider$preSelectData$1.g = 2;
            objE = eventDatabaseDataSource.e(false, i2, dispatchableDataProvider$preSelectData$1);
            if (objE != coroutineSingletons) {
                i3 = i2;
                ref$BooleanRef2 = ref$BooleanRef;
                list = (List) objE;
                if (list.size() < i3) {
                    ref$BooleanRef2.f71917b = false;
                }
                ref$BooleanRef = ref$BooleanRef2;
                obj = list;
            }
            return coroutineSingletons;
        }
        return new Pair(Boolean.valueOf(ref$BooleanRef.f71917b), (List) obj);
    }

    /* JADX WARN: Code duplicated, block: B:67:0x01f0 A[PHI: r0 r1 r4 r6 r10 r11 r12 r23
      0x01f0: PHI (r0v8 boolean) = (r0v6 boolean), (r0v21 boolean) binds: [B:65:0x01ec, B:18:0x003b] A[DONT_GENERATE, DONT_INLINE]
      0x01f0: PHI (r1v20 java.lang.Object) = (r1v16 java.lang.Object), (r1v1 java.lang.Object) binds: [B:65:0x01ec, B:18:0x003b] A[DONT_GENERATE, DONT_INLINE]
      0x01f0: PHI (r4v9 java.util.List) = (r4v7 java.util.List), (r4v13 java.util.List) binds: [B:65:0x01ec, B:18:0x003b] A[DONT_GENERATE, DONT_INLINE]
      0x01f0: PHI (r6v19 long) = (r6v18 long), (r6v20 long) binds: [B:65:0x01ec, B:18:0x003b] A[DONT_GENERATE, DONT_INLINE]
      0x01f0: PHI (r10v4 java.util.List) = (r10v2 java.util.List), (r10v8 java.util.List) binds: [B:65:0x01ec, B:18:0x003b] A[DONT_GENERATE, DONT_INLINE]
      0x01f0: PHI (r11v3 java.util.List) = (r11v1 java.util.List), (r11v5 java.util.List) binds: [B:65:0x01ec, B:18:0x003b] A[DONT_GENERATE, DONT_INLINE]
      0x01f0: PHI (r12v6 com.dynatrace.agent.communication.preprocessing.DispatchableDataProvider) = 
      (r12v3 com.dynatrace.agent.communication.preprocessing.DispatchableDataProvider)
      (r12v9 com.dynatrace.agent.communication.preprocessing.DispatchableDataProvider)
     binds: [B:65:0x01ec, B:18:0x003b] A[DONT_GENERATE, DONT_INLINE]
      0x01f0: PHI (r23v8 boolean) = (r23v6 boolean), (r23v10 boolean) binds: [B:65:0x01ec, B:18:0x003b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:69:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:70:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:74:0x020f  */
    /* JADX WARN: Code duplicated, block: B:77:0x024f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:80:0x0267 A[RETURN] */
    public final Object c(long j2, ContinuationImpl continuationImpl) {
        DispatchableDataProvider$selectData$1 dispatchableDataProvider$selectData$1;
        long j3;
        List list;
        boolean z;
        ArrayList arrayList;
        Pair pair;
        List list2;
        long j4;
        List list3;
        DispatchableDataProvider dispatchableDataProvider;
        boolean z2;
        List list4;
        DispatchableDataProvider dispatchableDataProvider2;
        List list5;
        long j5;
        List list6;
        Object objC;
        boolean z3;
        DispatchableDataProvider dispatchableDataProvider3 = this;
        if (continuationImpl instanceof DispatchableDataProvider$selectData$1) {
            dispatchableDataProvider$selectData$1 = (DispatchableDataProvider$selectData$1) continuationImpl;
            int i2 = dispatchableDataProvider$selectData$1.f26681j;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dispatchableDataProvider$selectData$1.f26681j = i2 - Integer.MIN_VALUE;
            } else {
                dispatchableDataProvider$selectData$1 = new DispatchableDataProvider$selectData$1(dispatchableDataProvider3, continuationImpl);
            }
        } else {
            dispatchableDataProvider$selectData$1 = new DispatchableDataProvider$selectData$1(dispatchableDataProvider3, continuationImpl);
        }
        Object objB = dispatchableDataProvider$selectData$1.f26679h;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dispatchableDataProvider$selectData$1.f26681j;
        boolean z4 = true;
        if (i3 == 0) {
            ResultKt.b(objB);
            dispatchableDataProvider$selectData$1.f26675b = dispatchableDataProvider3;
            j3 = j2;
            dispatchableDataProvider$selectData$1.f26678f = j3;
            dispatchableDataProvider$selectData$1.f26681j = 1;
            objB = dispatchableDataProvider3.b(dispatchableDataProvider3.f26666b, 1000, dispatchableDataProvider$selectData$1);
            if (objB != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            j3 = dispatchableDataProvider$selectData$1.f26678f;
            dispatchableDataProvider3 = dispatchableDataProvider$selectData$1.f26675b;
            ResultKt.b(objB);
        } else {
            if (i3 == 2) {
                z2 = dispatchableDataProvider$selectData$1.g;
                j3 = dispatchableDataProvider$selectData$1.f26678f;
                list4 = dispatchableDataProvider$selectData$1.f26677e;
                list2 = dispatchableDataProvider$selectData$1.d;
                list = dispatchableDataProvider$selectData$1.f26676c;
                dispatchableDataProvider2 = dispatchableDataProvider$selectData$1.f26675b;
                ResultKt.b(objB);
                z = true;
                CollectionsKt.z0(list).removeAll(list4);
                j4 = j3;
                list3 = list;
                dispatchableDataProvider = dispatchableDataProvider2;
                list5 = list2;
                j5 = j4;
                EventDatabaseDataSource eventDatabaseDataSource = dispatchableDataProvider.f26666b;
                dispatchableDataProvider$selectData$1.f26675b = dispatchableDataProvider;
                dispatchableDataProvider$selectData$1.f26676c = list3;
                dispatchableDataProvider$selectData$1.d = list5;
                dispatchableDataProvider$selectData$1.f26677e = list4;
                dispatchableDataProvider$selectData$1.f26678f = j5;
                dispatchableDataProvider$selectData$1.g = z2;
                dispatchableDataProvider$selectData$1.f26681j = 3;
                objB = dispatchableDataProvider.a(list5, eventDatabaseDataSource, dispatchableDataProvider$selectData$1);
                if (objB != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i3 != 3) {
                if (i3 == 4) {
                    ResultKt.b(objB);
                    return objB;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z2 = dispatchableDataProvider$selectData$1.g;
            j5 = dispatchableDataProvider$selectData$1.f26678f;
            list4 = dispatchableDataProvider$selectData$1.f26677e;
            list5 = dispatchableDataProvider$selectData$1.d;
            list3 = dispatchableDataProvider$selectData$1.f26676c;
            dispatchableDataProvider = dispatchableDataProvider$selectData$1.f26675b;
            ResultKt.b(objB);
            z = true;
        }
        list6 = (List) objB;
        if (list6.isEmpty()) {
            Utility.b("data selection: all data records were too big");
            dispatchableDataProvider$selectData$1.f26675b = null;
            dispatchableDataProvider$selectData$1.f26676c = null;
            dispatchableDataProvider$selectData$1.d = null;
            dispatchableDataProvider$selectData$1.f26677e = null;
            dispatchableDataProvider$selectData$1.f26681j = 4;
            objC = dispatchableDataProvider.c(j5, dispatchableDataProvider$selectData$1);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
            return objC;
        }
        if (!z2 || list3.size() - list4.size() > list5.size()) {
            z3 = z;
        } else {
            z3 = false;
        }
        Utility.b("data selection: selected " + list6.size() + " records, more pending: " + z3 + ", selection: " + list5);
        return new Pair(new DispatchableData(dispatchableDataProvider.f26665a, list6, ((EventRecord) CollectionsKt.B(list6)).d), Boolean.valueOf(z3));
        Pair pair2 = (Pair) objB;
        boolean zBooleanValue = ((Boolean) pair2.f71705b).booleanValue();
        list = (List) pair2.f71706c;
        if (list.isEmpty()) {
            Utility.b("data selection: no dispatchable data found");
            return new Pair(null, Boolean.FALSE);
        }
        EventRecordSizeFilter eventRecordSizeFilter = dispatchableDataProvider3.d;
        eventRecordSizeFilter.getClass();
        if (list.isEmpty()) {
            EmptyList emptyList = EmptyList.f71768b;
            pair = new Pair(emptyList, emptyList);
            z = true;
        } else {
            ArrayList<EventMetadata> arrayList2 = new ArrayList(list);
            ArrayList arrayList3 = new ArrayList();
            while (true) {
                int i4 = eventRecordSizeFilter.f26630a;
                if (!arrayList2.isEmpty()) {
                    z = z4;
                    arrayList = new ArrayList();
                    for (EventMetadata eventMetadata : arrayList2) {
                        i4 += eventMetadata.d + 1;
                        if (i4 - 1 > j3) {
                            break;
                        }
                        arrayList.add(eventMetadata);
                    }
                } else {
                    z = z4;
                    arrayList = arrayList2;
                }
                if (arrayList.isEmpty()) {
                    EventMetadata eventMetadata2 = (EventMetadata) CollectionsKt.B(arrayList2);
                    arrayList3.add(eventMetadata2);
                    arrayList2.remove(eventMetadata2);
                }
                if (!arrayList.isEmpty() || arrayList2.isEmpty()) {
                    break;
                }
                z4 = z;
            }
            pair = new Pair(arrayList, arrayList3);
        }
        list2 = (List) pair.f71705b;
        List list7 = (List) pair.f71706c;
        if (list7.isEmpty()) {
            j4 = j3;
            list3 = list;
            dispatchableDataProvider = dispatchableDataProvider3;
            z2 = zBooleanValue;
            list4 = list7;
            list5 = list2;
            j5 = j4;
            EventDatabaseDataSource eventDatabaseDataSource2 = dispatchableDataProvider.f26666b;
            dispatchableDataProvider$selectData$1.f26675b = dispatchableDataProvider;
            dispatchableDataProvider$selectData$1.f26676c = list3;
            dispatchableDataProvider$selectData$1.d = list5;
            dispatchableDataProvider$selectData$1.f26677e = list4;
            dispatchableDataProvider$selectData$1.f26678f = j5;
            dispatchableDataProvider$selectData$1.g = z2;
            dispatchableDataProvider$selectData$1.f26681j = 3;
            objB = dispatchableDataProvider.a(list5, eventDatabaseDataSource2, dispatchableDataProvider$selectData$1);
            if (objB != coroutineSingletons) {
                list6 = (List) objB;
                if (list6.isEmpty()) {
                    if (z2) {
                        z3 = z;
                    } else {
                        z3 = z;
                    }
                    Utility.b("data selection: selected " + list6.size() + " records, more pending: " + z3 + ", selection: " + list5);
                    return new Pair(new DispatchableData(dispatchableDataProvider.f26665a, list6, ((EventRecord) CollectionsKt.B(list6)).d), Boolean.valueOf(z3));
                }
                Utility.b("data selection: all data records were too big");
                dispatchableDataProvider$selectData$1.f26675b = null;
                dispatchableDataProvider$selectData$1.f26676c = null;
                dispatchableDataProvider$selectData$1.d = null;
                dispatchableDataProvider$selectData$1.f26677e = null;
                dispatchableDataProvider$selectData$1.f26681j = 4;
                objC = dispatchableDataProvider.c(j5, dispatchableDataProvider$selectData$1);
                if (objC == coroutineSingletons) {
                    return objC;
                }
            }
        } else {
            Utility.b("data selection: need to drop " + list7.size() + " records because they exceed size limit: " + list7);
            EventDatabaseDataSource eventDatabaseDataSource3 = dispatchableDataProvider3.f26666b;
            List list8 = list7;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list8, 10));
            Iterator it = list8.iterator();
            while (it.hasNext()) {
                arrayList4.add(new Long(((EventMetadata) it.next()).f26919a));
            }
            dispatchableDataProvider$selectData$1.f26675b = dispatchableDataProvider3;
            dispatchableDataProvider$selectData$1.f26676c = list;
            dispatchableDataProvider$selectData$1.d = list2;
            dispatchableDataProvider$selectData$1.f26677e = list7;
            dispatchableDataProvider$selectData$1.f26678f = j3;
            dispatchableDataProvider$selectData$1.g = zBooleanValue;
            dispatchableDataProvider$selectData$1.f26681j = 2;
            if (eventDatabaseDataSource3.b(arrayList4, dispatchableDataProvider$selectData$1) != coroutineSingletons) {
                dispatchableDataProvider2 = dispatchableDataProvider3;
                z2 = zBooleanValue;
                list4 = list7;
                CollectionsKt.z0(list).removeAll(list4);
                j4 = j3;
                list3 = list;
                dispatchableDataProvider = dispatchableDataProvider2;
                list5 = list2;
                j5 = j4;
                EventDatabaseDataSource eventDatabaseDataSource4 = dispatchableDataProvider.f26666b;
                dispatchableDataProvider$selectData$1.f26675b = dispatchableDataProvider;
                dispatchableDataProvider$selectData$1.f26676c = list3;
                dispatchableDataProvider$selectData$1.d = list5;
                dispatchableDataProvider$selectData$1.f26677e = list4;
                dispatchableDataProvider$selectData$1.f26678f = j5;
                dispatchableDataProvider$selectData$1.g = z2;
                dispatchableDataProvider$selectData$1.f26681j = 3;
                objB = dispatchableDataProvider.a(list5, eventDatabaseDataSource4, dispatchableDataProvider$selectData$1);
                if (objB != coroutineSingletons) {
                    list6 = (List) objB;
                    if (list6.isEmpty()) {
                        if (z2) {
                            z3 = z;
                        } else {
                            z3 = z;
                        }
                        Utility.b("data selection: selected " + list6.size() + " records, more pending: " + z3 + ", selection: " + list5);
                        return new Pair(new DispatchableData(dispatchableDataProvider.f26665a, list6, ((EventRecord) CollectionsKt.B(list6)).d), Boolean.valueOf(z3));
                    }
                    Utility.b("data selection: all data records were too big");
                    dispatchableDataProvider$selectData$1.f26675b = null;
                    dispatchableDataProvider$selectData$1.f26676c = null;
                    dispatchableDataProvider$selectData$1.d = null;
                    dispatchableDataProvider$selectData$1.f26677e = null;
                    dispatchableDataProvider$selectData$1.f26681j = 4;
                    objC = dispatchableDataProvider.c(j5, dispatchableDataProvider$selectData$1);
                    if (objC == coroutineSingletons) {
                        return objC;
                    }
                }
            }
        }
        return coroutineSingletons;
    }
}
