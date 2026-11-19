package androidx.datastore.core;

import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/datastore/core/DataMigrationInitializer;", "T", "", "<init>", "()V", "Companion", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DataMigrationInitializer<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f12612a = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/datastore/core/DataMigrationInitializer$Companion;", "", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Code duplicated, block: B:27:0x006f  */
        /* JADX WARN: Code duplicated, block: B:37:0x0095  */
        /* JADX WARN: Code duplicated, block: B:39:0x0098  */
        /* JADX WARN: Code duplicated, block: B:43:0x0097 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:45:? A[LOOP:0: B:25:0x0069->B:45:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0016  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0086 -> B:25:0x0069). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0089 -> B:25:0x0069). Please report as a decompilation issue!!! */
        public static final Object a(Companion companion, List list, InitializerApi initializerApi, ContinuationImpl continuationImpl) throws Throwable {
            DataMigrationInitializer$Companion$runMigrations$1 dataMigrationInitializer$Companion$runMigrations$1;
            List list2;
            Iterator<T> it;
            Ref$ObjectRef ref$ObjectRef;
            Throwable th;
            Function1 function1;
            companion.getClass();
            if (continuationImpl instanceof DataMigrationInitializer$Companion$runMigrations$1) {
                dataMigrationInitializer$Companion$runMigrations$1 = (DataMigrationInitializer$Companion$runMigrations$1) continuationImpl;
                int i2 = dataMigrationInitializer$Companion$runMigrations$1.f12618f;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    dataMigrationInitializer$Companion$runMigrations$1.f12618f = i2 - Integer.MIN_VALUE;
                } else {
                    dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(companion, continuationImpl);
                }
            } else {
                dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(companion, continuationImpl);
            }
            Object obj = dataMigrationInitializer$Companion$runMigrations$1.d;
            Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = dataMigrationInitializer$Companion$runMigrations$1.f12618f;
            if (i3 != 0) {
                if (i3 == 1) {
                    list2 = (List) dataMigrationInitializer$Companion$runMigrations$1.f12615b;
                    ResultKt.b(obj);
                } else {
                    if (i3 != 2) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    it = dataMigrationInitializer$Companion$runMigrations$1.f12616c;
                    ref$ObjectRef = (Ref$ObjectRef) dataMigrationInitializer$Companion$runMigrations$1.f12615b;
                    try {
                        ResultKt.b(obj);
                    } catch (Throwable th2) {
                        Object obj3 = ref$ObjectRef.f71921b;
                        if (obj3 == null) {
                            ref$ObjectRef.f71921b = th2;
                        } else {
                            ExceptionsKt.a((Throwable) obj3, th2);
                        }
                    }
                }
                while (it.hasNext()) {
                    function1 = (Function1) it.next();
                    dataMigrationInitializer$Companion$runMigrations$1.f12615b = ref$ObjectRef;
                    dataMigrationInitializer$Companion$runMigrations$1.f12616c = it;
                    dataMigrationInitializer$Companion$runMigrations$1.f12618f = 2;
                    if (function1.invoke(dataMigrationInitializer$Companion$runMigrations$1) == obj2) {
                        return obj2;
                    }
                }
                th = (Throwable) ref$ObjectRef.f71921b;
                if (th == null) {
                    return Unit.f71739a;
                }
                throw th;
            }
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            Function2 dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2(list, arrayList, null);
            dataMigrationInitializer$Companion$runMigrations$1.f12615b = arrayList;
            dataMigrationInitializer$Companion$runMigrations$1.f12618f = 1;
            if (initializerApi.a(dataMigrationInitializer$Companion$runMigrations$2, dataMigrationInitializer$Companion$runMigrations$1) == obj2) {
                return obj2;
            }
            list2 = arrayList;
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            it = list2.iterator();
            ref$ObjectRef = ref$ObjectRef2;
            while (it.hasNext()) {
                function1 = (Function1) it.next();
                dataMigrationInitializer$Companion$runMigrations$1.f12615b = ref$ObjectRef;
                dataMigrationInitializer$Companion$runMigrations$1.f12616c = it;
                dataMigrationInitializer$Companion$runMigrations$1.f12618f = 2;
                if (function1.invoke(dataMigrationInitializer$Companion$runMigrations$1) == obj2) {
                    return obj2;
                }
            }
            th = (Throwable) ref$ObjectRef.f71921b;
            if (th == null) {
                return Unit.f71739a;
            }
            throw th;
        }
    }
}
