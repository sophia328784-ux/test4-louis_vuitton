package com.dynatrace.agent.storage.db;

import com.dynatrace.android.agent.util.Utility;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;", "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;", "Lcom/dynatrace/agent/storage/db/EventDao;", "dao", "<init>", "(Lcom/dynatrace/agent/storage/db/EventDao;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class EventDatabaseDataSourceImpl implements EventDatabaseDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EventDao f26900a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$Companion;", "", "", "EXCEPTION_LOG_MESSAGE", "Ljava/lang/String;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public EventDatabaseDataSourceImpl(EventDao eventDao) {
        eventDao.getClass();
        this.f26900a = eventDao;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.dynatrace.agent.storage.db.EventDatabaseDataSource
    public final Object a(EventRecord eventRecord, ContinuationImpl continuationImpl) {
        EventDatabaseDataSourceImpl$put$1 eventDatabaseDataSourceImpl$put$1;
        if (continuationImpl instanceof EventDatabaseDataSourceImpl$put$1) {
            eventDatabaseDataSourceImpl$put$1 = (EventDatabaseDataSourceImpl$put$1) continuationImpl;
            int i2 = eventDatabaseDataSourceImpl$put$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                eventDatabaseDataSourceImpl$put$1.d = i2 - Integer.MIN_VALUE;
            } else {
                eventDatabaseDataSourceImpl$put$1 = new EventDatabaseDataSourceImpl$put$1(this, continuationImpl);
            }
        } else {
            eventDatabaseDataSourceImpl$put$1 = new EventDatabaseDataSourceImpl$put$1(this, continuationImpl);
        }
        Object obj = eventDatabaseDataSourceImpl$put$1.f26917b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = eventDatabaseDataSourceImpl$put$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Utility.b("db event put: " + eventRecord);
                EventDao eventDao = this.f26900a;
                eventDatabaseDataSourceImpl$put$1.d = 1;
                if (eventDao.d(eventRecord, eventDatabaseDataSourceImpl$put$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (Exception unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.dynatrace.agent.storage.db.EventDatabaseDataSource
    public final Object b(ArrayList arrayList, ContinuationImpl continuationImpl) {
        EventDatabaseDataSourceImpl$deleteIds$1 eventDatabaseDataSourceImpl$deleteIds$1;
        if (continuationImpl instanceof EventDatabaseDataSourceImpl$deleteIds$1) {
            eventDatabaseDataSourceImpl$deleteIds$1 = (EventDatabaseDataSourceImpl$deleteIds$1) continuationImpl;
            int i2 = eventDatabaseDataSourceImpl$deleteIds$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                eventDatabaseDataSourceImpl$deleteIds$1.d = i2 - Integer.MIN_VALUE;
            } else {
                eventDatabaseDataSourceImpl$deleteIds$1 = new EventDatabaseDataSourceImpl$deleteIds$1(this, continuationImpl);
            }
        } else {
            eventDatabaseDataSourceImpl$deleteIds$1 = new EventDatabaseDataSourceImpl$deleteIds$1(this, continuationImpl);
        }
        Object obj = eventDatabaseDataSourceImpl$deleteIds$1.f26907b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = eventDatabaseDataSourceImpl$deleteIds$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Utility.b("db event deleteIds, recordIds: " + arrayList);
                EventDao eventDao = this.f26900a;
                eventDatabaseDataSourceImpl$deleteIds$1.d = 1;
                if (eventDao.b(arrayList, eventDatabaseDataSourceImpl$deleteIds$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (Exception unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Override // com.dynatrace.agent.storage.db.EventDatabaseDataSource
    public final Object c(long j2, long j3, ContinuationImpl continuationImpl) {
        EventDatabaseDataSourceImpl$deleteAllBefore$1 eventDatabaseDataSourceImpl$deleteAllBefore$1;
        if (continuationImpl instanceof EventDatabaseDataSourceImpl$deleteAllBefore$1) {
            eventDatabaseDataSourceImpl$deleteAllBefore$1 = (EventDatabaseDataSourceImpl$deleteAllBefore$1) continuationImpl;
            int i2 = eventDatabaseDataSourceImpl$deleteAllBefore$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                eventDatabaseDataSourceImpl$deleteAllBefore$1.d = i2 - Integer.MIN_VALUE;
            } else {
                eventDatabaseDataSourceImpl$deleteAllBefore$1 = new EventDatabaseDataSourceImpl$deleteAllBefore$1(this, continuationImpl);
            }
        } else {
            eventDatabaseDataSourceImpl$deleteAllBefore$1 = new EventDatabaseDataSourceImpl$deleteAllBefore$1(this, continuationImpl);
        }
        EventDatabaseDataSourceImpl$deleteAllBefore$1 eventDatabaseDataSourceImpl$deleteAllBefore$2 = eventDatabaseDataSourceImpl$deleteAllBefore$1;
        Object obj = eventDatabaseDataSourceImpl$deleteAllBefore$2.f26905b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = eventDatabaseDataSourceImpl$deleteAllBefore$2.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Utility.b("db event deleteAllBefore, now: " + j2 + ", retentionTime: " + j3);
                EventDao eventDao = this.f26900a;
                eventDatabaseDataSourceImpl$deleteAllBefore$2.d = 1;
                if (eventDao.c(j2, j3, eventDatabaseDataSourceImpl$deleteAllBefore$2) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (Exception unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.dynatrace.agent.storage.db.EventDatabaseDataSource
    public final Object d(ContinuationImpl continuationImpl) {
        EventDatabaseDataSourceImpl$deleteAll$1 eventDatabaseDataSourceImpl$deleteAll$1;
        if (continuationImpl instanceof EventDatabaseDataSourceImpl$deleteAll$1) {
            eventDatabaseDataSourceImpl$deleteAll$1 = (EventDatabaseDataSourceImpl$deleteAll$1) continuationImpl;
            int i2 = eventDatabaseDataSourceImpl$deleteAll$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                eventDatabaseDataSourceImpl$deleteAll$1.d = i2 - Integer.MIN_VALUE;
            } else {
                eventDatabaseDataSourceImpl$deleteAll$1 = new EventDatabaseDataSourceImpl$deleteAll$1(this, continuationImpl);
            }
        } else {
            eventDatabaseDataSourceImpl$deleteAll$1 = new EventDatabaseDataSourceImpl$deleteAll$1(this, continuationImpl);
        }
        Object obj = eventDatabaseDataSourceImpl$deleteAll$1.f26903b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = eventDatabaseDataSourceImpl$deleteAll$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Utility.b("db event deleteAll");
                EventDao eventDao = this.f26900a;
                eventDatabaseDataSourceImpl$deleteAll$1.d = 1;
                if (eventDao.e(eventDatabaseDataSourceImpl$deleteAll$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (Exception unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v12, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r9v2, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.Object, java.util.List] */
    @Override // com.dynatrace.agent.storage.db.EventDatabaseDataSource
    public final Object e(boolean z, int i2, ContinuationImpl continuationImpl) {
        EventDatabaseDataSourceImpl$fetchEventMetadata$1 eventDatabaseDataSourceImpl$fetchEventMetadata$1;
        ?? r9;
        ?? r6;
        if (continuationImpl instanceof EventDatabaseDataSourceImpl$fetchEventMetadata$1) {
            eventDatabaseDataSourceImpl$fetchEventMetadata$1 = (EventDatabaseDataSourceImpl$fetchEventMetadata$1) continuationImpl;
            int i3 = eventDatabaseDataSourceImpl$fetchEventMetadata$1.g;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                eventDatabaseDataSourceImpl$fetchEventMetadata$1.g = i3 - Integer.MIN_VALUE;
            } else {
                eventDatabaseDataSourceImpl$fetchEventMetadata$1 = new EventDatabaseDataSourceImpl$fetchEventMetadata$1(this, continuationImpl);
            }
        } else {
            eventDatabaseDataSourceImpl$fetchEventMetadata$1 = new EventDatabaseDataSourceImpl$fetchEventMetadata$1(this, continuationImpl);
        }
        Object obj = eventDatabaseDataSourceImpl$fetchEventMetadata$1.f26911e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = eventDatabaseDataSourceImpl$fetchEventMetadata$1.g;
        if (i4 == 0) {
            ResultKt.b(obj);
            r9 = EmptyList.f71768b;
            try {
                EventDao eventDao = this.f26900a;
                eventDatabaseDataSourceImpl$fetchEventMetadata$1.d = r9;
                eventDatabaseDataSourceImpl$fetchEventMetadata$1.f26909b = z;
                eventDatabaseDataSourceImpl$fetchEventMetadata$1.f26910c = i2;
                eventDatabaseDataSourceImpl$fetchEventMetadata$1.g = 1;
                Object objF = eventDao.f(z, i2, eventDatabaseDataSourceImpl$fetchEventMetadata$1);
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj = objF;
                r6 = r9;
            } catch (Exception unused) {
                r6 = r9;
                Utility.a();
                return r6;
            }
        } else {
            if (i4 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i2 = eventDatabaseDataSourceImpl$fetchEventMetadata$1.f26910c;
            z = eventDatabaseDataSourceImpl$fetchEventMetadata$1.f26909b;
            r6 = eventDatabaseDataSourceImpl$fetchEventMetadata$1.d;
            try {
                ResultKt.b(obj);
                r6 = r6;
            } catch (Exception unused2) {
                Utility.a();
                return r6;
            }
        }
        r9 = (List) obj;
        Utility.b("db event fetchEventMetadata: " + r9 + ", isPriority: " + z + ", limitRows: " + i2);
        return r9;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v12, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r8v2, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object, java.util.List] */
    @Override // com.dynatrace.agent.storage.db.EventDatabaseDataSource
    public final Object f(ArrayList arrayList, ContinuationImpl continuationImpl) {
        EventDatabaseDataSourceImpl$fetchEventRecordByIds$1 eventDatabaseDataSourceImpl$fetchEventRecordByIds$1;
        ?? r8;
        ?? r6;
        if (continuationImpl instanceof EventDatabaseDataSourceImpl$fetchEventRecordByIds$1) {
            eventDatabaseDataSourceImpl$fetchEventRecordByIds$1 = (EventDatabaseDataSourceImpl$fetchEventRecordByIds$1) continuationImpl;
            int i2 = eventDatabaseDataSourceImpl$fetchEventRecordByIds$1.f26916f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                eventDatabaseDataSourceImpl$fetchEventRecordByIds$1.f26916f = i2 - Integer.MIN_VALUE;
            } else {
                eventDatabaseDataSourceImpl$fetchEventRecordByIds$1 = new EventDatabaseDataSourceImpl$fetchEventRecordByIds$1(this, continuationImpl);
            }
        } else {
            eventDatabaseDataSourceImpl$fetchEventRecordByIds$1 = new EventDatabaseDataSourceImpl$fetchEventRecordByIds$1(this, continuationImpl);
        }
        Object obj = eventDatabaseDataSourceImpl$fetchEventRecordByIds$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = eventDatabaseDataSourceImpl$fetchEventRecordByIds$1.f26916f;
        if (i3 == 0) {
            ResultKt.b(obj);
            r8 = EmptyList.f71768b;
            try {
                EventDao eventDao = this.f26900a;
                eventDatabaseDataSourceImpl$fetchEventRecordByIds$1.f26913b = arrayList;
                eventDatabaseDataSourceImpl$fetchEventRecordByIds$1.f26914c = r8;
                eventDatabaseDataSourceImpl$fetchEventRecordByIds$1.f26916f = 1;
                Object objG = eventDao.g(arrayList, eventDatabaseDataSourceImpl$fetchEventRecordByIds$1);
                if (objG == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj = objG;
                r6 = r8;
            } catch (Exception unused) {
                r6 = r8;
                Utility.a();
                return r6;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r6 = eventDatabaseDataSourceImpl$fetchEventRecordByIds$1.f26914c;
            arrayList = eventDatabaseDataSourceImpl$fetchEventRecordByIds$1.f26913b;
            try {
                ResultKt.b(obj);
                r6 = r6;
            } catch (Exception unused2) {
                Utility.a();
                return r6;
            }
        }
        r8 = (List) obj;
        Utility.b("db event fetchEventRecordByIds: " + r8 + ", recordIds: " + arrayList);
        return r8;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.dynatrace.agent.storage.db.EventDatabaseDataSource
    public final Object g(List list, ContinuationImpl continuationImpl) {
        EventDatabaseDataSourceImpl$delete$1 eventDatabaseDataSourceImpl$delete$1;
        if (continuationImpl instanceof EventDatabaseDataSourceImpl$delete$1) {
            eventDatabaseDataSourceImpl$delete$1 = (EventDatabaseDataSourceImpl$delete$1) continuationImpl;
            int i2 = eventDatabaseDataSourceImpl$delete$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                eventDatabaseDataSourceImpl$delete$1.d = i2 - Integer.MIN_VALUE;
            } else {
                eventDatabaseDataSourceImpl$delete$1 = new EventDatabaseDataSourceImpl$delete$1(this, continuationImpl);
            }
        } else {
            eventDatabaseDataSourceImpl$delete$1 = new EventDatabaseDataSourceImpl$delete$1(this, continuationImpl);
        }
        Object obj = eventDatabaseDataSourceImpl$delete$1.f26901b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = eventDatabaseDataSourceImpl$delete$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Utility.b("db event delete, eventRecords: " + list);
                EventDao eventDao = this.f26900a;
                eventDatabaseDataSourceImpl$delete$1.d = 1;
                if (eventDao.a(list, eventDatabaseDataSourceImpl$delete$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (Exception unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }
}
