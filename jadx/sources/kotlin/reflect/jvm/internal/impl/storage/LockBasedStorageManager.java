package kotlin.reflect.jvm.internal.impl.storage;

import com.appsflyer.sdk_base.referrer.Payload;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.cj;
import defpackage.md;
import defpackage.n00;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.utils.ExceptionUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.WrappedValues;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public class LockBasedStorageManager implements StorageManager {
    public static final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final StorageManager f74137e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SimpleLock f74138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExceptionHandlingStrategy f74139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f74140c;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$1, reason: invalid class name */
    public static class AnonymousClass1 extends LockBasedStorageManager {
        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager
        public final RecursionDetectedResult k(Object obj, String str) {
            return new RecursionDetectedResult(null, true);
        }
    }

    public static class CacheWithNotNullValuesBasedOnMemoizedFunction<K, V> extends CacheWithNullableValuesBasedOnMemoizedFunction<K, V> implements CacheWithNotNullValues<K, V> {
        @Override // kotlin.reflect.jvm.internal.impl.storage.CacheWithNotNullValues
        public final Object a(Object obj, Function0 function0) throws Throwable {
            Object objInvoke = invoke(new KeyWithComputation(obj, function0));
            if (objInvoke != null) {
                return objInvoke;
            }
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction", "computeIfAbsent"));
        }
    }

    public static class CacheWithNullableValuesBasedOnMemoizedFunction<K, V> extends MapBasedMemoizedFunction<KeyWithComputation<K, V>, V> implements CacheWithNullableValues<K, V> {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction$1, reason: invalid class name */
        class AnonymousClass1 implements Function1<KeyWithComputation<Object, Object>, Object> {
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ((KeyWithComputation) obj).f74145b.mo47invoke();
            }
        }

        public CacheWithNullableValuesBasedOnMemoizedFunction(LockBasedStorageManager lockBasedStorageManager, ConcurrentHashMap concurrentHashMap) {
            super(lockBasedStorageManager, concurrentHashMap, new AnonymousClass1());
        }
    }

    public interface ExceptionHandlingStrategy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ExceptionHandlingStrategy f74143a = new AnonymousClass1();

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$ExceptionHandlingStrategy$1, reason: invalid class name */
        public static class AnonymousClass1 implements ExceptionHandlingStrategy {
        }
    }

    public static class KeyWithComputation<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f74144a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function0 f74145b;

        public KeyWithComputation(K k2, Function0<? extends V> function0) {
            this.f74144a = k2;
            this.f74145b = function0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.f74144a.equals(((KeyWithComputation) obj).f74144a);
        }

        public final int hashCode() {
            return this.f74144a.hashCode();
        }
    }

    public static class LockBasedLazyValue<T> implements NullableLazyValue<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LockBasedStorageManager f74146b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function0 f74147c;
        public volatile Object d;

        public LockBasedLazyValue(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            if (lockBasedStorageManager == null) {
                a(0);
                throw null;
            }
            if (function0 == null) {
                a(1);
                throw null;
            }
            this.d = NotValue.NOT_COMPUTED;
            this.f74146b = lockBasedStorageManager;
            this.f74147c = function0;
        }

        public static /* synthetic */ void a(int i2) {
            String str = (i2 == 2 || i2 == 3) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i2 == 2 || i2 == 3) ? 2 : 3];
            if (i2 == 1) {
                objArr[0] = "computable";
            } else if (i2 == 2 || i2 == 3) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[0] = "storageManager";
            }
            if (i2 == 2) {
                objArr[1] = "recursionDetected";
            } else if (i2 != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[1] = "renderDebugInformation";
            }
            if (i2 != 2 && i2 != 3) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i2 != 2 && i2 != 3) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public void b(Object obj) {
        }

        public RecursionDetectedResult c(boolean z) {
            RecursionDetectedResult recursionDetectedResultK = this.f74146b.k(null, "in a lazy value");
            if (recursionDetectedResultK != null) {
                return recursionDetectedResultK;
            }
            a(2);
            throw null;
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0038 A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:7:0x0011, B:9:0x0017, B:14:0x0024, B:16:0x0028, B:18:0x0035, B:19:0x0038, B:21:0x003c, B:23:0x0045, B:24:0x0048, B:28:0x0057, B:30:0x005d, B:32:0x0063, B:33:0x0069, B:34:0x0072, B:35:0x0073, B:36:0x0079, B:25:0x004a), top: B:39:0x0011, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:21:0x003c A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:7:0x0011, B:9:0x0017, B:14:0x0024, B:16:0x0028, B:18:0x0035, B:19:0x0038, B:21:0x003c, B:23:0x0045, B:24:0x0048, B:28:0x0057, B:30:0x005d, B:32:0x0063, B:33:0x0069, B:34:0x0072, B:35:0x0073, B:36:0x0079, B:25:0x004a), top: B:39:0x0011, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:23:0x0045 A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:7:0x0011, B:9:0x0017, B:14:0x0024, B:16:0x0028, B:18:0x0035, B:19:0x0038, B:21:0x003c, B:23:0x0045, B:24:0x0048, B:28:0x0057, B:30:0x005d, B:32:0x0063, B:33:0x0069, B:34:0x0072, B:35:0x0073, B:36:0x0079, B:25:0x004a), top: B:39:0x0011, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:24:0x0048 A[Catch: all -> 0x0022, TRY_LEAVE, TryCatch #0 {all -> 0x0022, blocks: (B:7:0x0011, B:9:0x0017, B:14:0x0024, B:16:0x0028, B:18:0x0035, B:19:0x0038, B:21:0x003c, B:23:0x0045, B:24:0x0048, B:28:0x0057, B:30:0x005d, B:32:0x0063, B:33:0x0069, B:34:0x0072, B:35:0x0073, B:36:0x0079, B:25:0x004a), top: B:39:0x0011, inners: #1 }] */
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public Object mo47invoke() throws Throwable {
            RecursionDetectedResult recursionDetectedResultC;
            Object obj = this.d;
            if (!(obj instanceof NotValue)) {
                WrappedValues.b(obj);
                return obj;
            }
            this.f74146b.f74138a.lock();
            try {
                Object objMo47invoke = this.d;
                if (objMo47invoke instanceof NotValue) {
                    NotValue notValue = NotValue.COMPUTING;
                    if (objMo47invoke == notValue) {
                        this.d = NotValue.RECURSION_WAS_DETECTED;
                        RecursionDetectedResult recursionDetectedResultC2 = c(true);
                        if (!recursionDetectedResultC2.f74152b) {
                            objMo47invoke = recursionDetectedResultC2.f74151a;
                        } else if (objMo47invoke == NotValue.RECURSION_WAS_DETECTED) {
                            recursionDetectedResultC = c(false);
                            if (recursionDetectedResultC.f74152b) {
                                this.d = notValue;
                                try {
                                    objMo47invoke = this.f74147c.mo47invoke();
                                    b(objMo47invoke);
                                    this.d = objMo47invoke;
                                } catch (Throwable th) {
                                    if (ExceptionUtilsKt.a(th)) {
                                        this.d = NotValue.NOT_COMPUTED;
                                        throw th;
                                    }
                                    if (this.d == NotValue.COMPUTING) {
                                        this.d = WrappedValues.a(th);
                                    }
                                    ((ExceptionHandlingStrategy.AnonymousClass1) this.f74146b.f74139b).getClass();
                                    throw th;
                                }
                            } else {
                                objMo47invoke = recursionDetectedResultC.f74151a;
                            }
                        } else {
                            this.d = notValue;
                            objMo47invoke = this.f74147c.mo47invoke();
                            b(objMo47invoke);
                            this.d = objMo47invoke;
                        }
                    } else if (objMo47invoke == NotValue.RECURSION_WAS_DETECTED) {
                        recursionDetectedResultC = c(false);
                        if (recursionDetectedResultC.f74152b) {
                            objMo47invoke = recursionDetectedResultC.f74151a;
                        } else {
                            this.d = notValue;
                            objMo47invoke = this.f74147c.mo47invoke();
                            b(objMo47invoke);
                            this.d = objMo47invoke;
                        }
                    } else {
                        this.d = notValue;
                        objMo47invoke = this.f74147c.mo47invoke();
                        b(objMo47invoke);
                        this.d = objMo47invoke;
                    }
                } else {
                    WrappedValues.b(objMo47invoke);
                }
                this.f74146b.f74138a.unlock();
                return objMo47invoke;
            } catch (Throwable th2) {
                this.f74146b.f74138a.unlock();
                throw th2;
            }
        }

        public final boolean y() {
            return (this.d == NotValue.NOT_COMPUTED || this.d == NotValue.COMPUTING) ? false : true;
        }
    }

    public static abstract class LockBasedLazyValueWithPostCompute<T> extends LockBasedLazyValue<T> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile SingleThreadValue f74148e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LockBasedLazyValueWithPostCompute(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                a(0);
                throw null;
            }
            if (function0 == null) {
                a(1);
                throw null;
            }
            this.f74148e = null;
        }

        public static /* synthetic */ void a(int i2) {
            Object[] objArr = new Object[3];
            if (i2 != 1) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computable";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue
        public final void b(Object obj) {
            this.f74148e = new SingleThreadValue(obj);
            try {
                d(obj);
            } finally {
                this.f74148e = null;
            }
        }

        public abstract void d(Object obj);

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue, kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public Object mo47invoke() {
            SingleThreadValue singleThreadValue = this.f74148e;
            if (singleThreadValue == null || singleThreadValue.f74154b != Thread.currentThread()) {
                return super.mo47invoke();
            }
            if (singleThreadValue.f74154b == Thread.currentThread()) {
                return singleThreadValue.f74153a;
            }
            md.k("No value in this thread (hasValue should be checked before)");
            return null;
        }
    }

    public static class LockBasedNotNullLazyValue<T> extends LockBasedLazyValue<T> implements NotNullLazyValue<T> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LockBasedNotNullLazyValue(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                a(0);
                throw null;
            }
            if (function0 != null) {
            } else {
                a(1);
                throw null;
            }
        }

        public static /* synthetic */ void a(int i2) {
            String str = i2 != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i2 != 2 ? 3 : 2];
            if (i2 == 1) {
                objArr[0] = "computable";
            } else if (i2 != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            }
            if (i2 != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            } else {
                objArr[1] = "invoke";
            }
            if (i2 != 2) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i2 == 2) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue, kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() throws Throwable {
            Object objMo47invoke = super.mo47invoke();
            if (objMo47invoke != null) {
                return objMo47invoke;
            }
            a(2);
            throw null;
        }
    }

    public static abstract class LockBasedNotNullLazyValueWithPostCompute<T> extends LockBasedLazyValueWithPostCompute<T> implements NotNullLazyValue<T> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LockBasedNotNullLazyValueWithPostCompute(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                a(0);
                throw null;
            }
            if (function0 != null) {
            } else {
                a(1);
                throw null;
            }
        }

        public static /* synthetic */ void a(int i2) {
            String str = i2 != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i2 != 2 ? 3 : 2];
            if (i2 == 1) {
                objArr[0] = "computable";
            } else if (i2 != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            }
            if (i2 != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            } else {
                objArr[1] = "invoke";
            }
            if (i2 != 2) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i2 == 2) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValueWithPostCompute, kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue, kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            Object objMo47invoke = super.mo47invoke();
            if (objMo47invoke != null) {
                return objMo47invoke;
            }
            a(2);
            throw null;
        }
    }

    public static class MapBasedMemoizedFunction<K, V> implements MemoizedFunctionToNullable<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LockBasedStorageManager f74149b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ConcurrentMap f74150c;
        public final Function1 d;

        public MapBasedMemoizedFunction(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap<K, Object> concurrentMap, Function1<? super K, ? extends V> function1) {
            if (lockBasedStorageManager == null) {
                b(0);
                throw null;
            }
            if (concurrentMap == null) {
                b(1);
                throw null;
            }
            if (function1 == null) {
                b(2);
                throw null;
            }
            this.f74149b = lockBasedStorageManager;
            this.f74150c = concurrentMap;
            this.d = function1;
        }

        public static /* synthetic */ void b(int i2) {
            String str = (i2 == 3 || i2 == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i2 == 3 || i2 == 4) ? 2 : 3];
            if (i2 == 1) {
                objArr[0] = "map";
            } else if (i2 == 2) {
                objArr[0] = "compute";
            } else if (i2 == 3 || i2 == 4) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[0] = "storageManager";
            }
            if (i2 == 3) {
                objArr[1] = "recursionDetected";
            } else if (i2 != 4) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[1] = "raceCondition";
            }
            if (i2 != 3 && i2 != 4) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i2 != 3 && i2 != 4) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public final AssertionError c(Object obj, Object obj2) {
            AssertionError assertionError = new AssertionError("Inconsistent key detected. " + NotValue.COMPUTING + " is expected, was: " + obj2 + ", most probably race condition detected on input " + obj + " under " + this.f74149b);
            LockBasedStorageManager.l(assertionError);
            return assertionError;
        }

        public final AssertionError d(Object obj, Object obj2) {
            AssertionError assertionError = new AssertionError("Race condition detected on input " + obj + ". Old value is " + obj2 + " under " + this.f74149b);
            LockBasedStorageManager.l(assertionError);
            return assertionError;
        }

        public final AssertionError e(Object obj, Throwable th) {
            AssertionError assertionError = new AssertionError("Unable to remove " + obj + " under " + this.f74149b, th);
            LockBasedStorageManager.l(assertionError);
            return assertionError;
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable
        public final boolean h(FqName fqName) {
            Object obj = this.f74150c.get(fqName);
            return (obj == null || obj == NotValue.COMPUTING) ? false : true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) throws Throwable {
            ConcurrentMap concurrentMap = this.f74150c;
            Object obj2 = concurrentMap.get(obj);
            Object obj3 = WrappedValues.f74402a;
            AssertionError assertionErrorD = null;
            if (obj2 != null && obj2 != NotValue.COMPUTING) {
                WrappedValues.b(obj2);
                if (obj2 == obj3) {
                    return null;
                }
                return obj2;
            }
            LockBasedStorageManager lockBasedStorageManager = this.f74149b;
            SimpleLock simpleLock = lockBasedStorageManager.f74138a;
            ExceptionHandlingStrategy exceptionHandlingStrategy = lockBasedStorageManager.f74139b;
            SimpleLock simpleLock2 = lockBasedStorageManager.f74138a;
            simpleLock.lock();
            try {
                Object obj4 = concurrentMap.get(obj);
                NotValue notValue = NotValue.COMPUTING;
                if (obj4 == notValue) {
                    obj4 = NotValue.RECURSION_WAS_DETECTED;
                    RecursionDetectedResult recursionDetectedResultK = lockBasedStorageManager.k(obj, "");
                    if (recursionDetectedResultK == null) {
                        b(3);
                        throw null;
                    }
                    if (!recursionDetectedResultK.f74152b) {
                        Object obj5 = recursionDetectedResultK.f74151a;
                        simpleLock2.unlock();
                        return obj5;
                    }
                }
                if (obj4 == NotValue.RECURSION_WAS_DETECTED) {
                    RecursionDetectedResult recursionDetectedResultK2 = lockBasedStorageManager.k(obj, "");
                    if (recursionDetectedResultK2 == null) {
                        b(3);
                        throw null;
                    }
                    if (!recursionDetectedResultK2.f74152b) {
                        Object obj6 = recursionDetectedResultK2.f74151a;
                        simpleLock2.unlock();
                        return obj6;
                    }
                }
                if (obj4 != null) {
                    WrappedValues.b(obj4);
                    Object obj7 = obj4 != obj3 ? obj4 : null;
                    simpleLock2.unlock();
                    return obj7;
                }
                try {
                    concurrentMap.put(obj, notValue);
                    Object objInvoke = this.d.invoke(obj);
                    if (objInvoke != null) {
                        obj3 = objInvoke;
                    }
                    Object objPut = concurrentMap.put(obj, obj3);
                    if (objPut == notValue) {
                        simpleLock2.unlock();
                        return objInvoke;
                    }
                    assertionErrorD = d(obj, objPut);
                    throw assertionErrorD;
                } catch (Throwable th) {
                    if (ExceptionUtilsKt.a(th)) {
                        try {
                            Object objRemove = concurrentMap.remove(obj);
                            if (objRemove != NotValue.COMPUTING) {
                                throw c(obj, objRemove);
                            }
                            throw th;
                        } catch (Throwable th2) {
                            throw e(obj, th2);
                        }
                    }
                    if (th != assertionErrorD) {
                        Object objPut2 = concurrentMap.put(obj, WrappedValues.a(th));
                        if (objPut2 != NotValue.COMPUTING) {
                            throw d(obj, objPut2);
                        }
                        ((ExceptionHandlingStrategy.AnonymousClass1) exceptionHandlingStrategy).getClass();
                        throw th;
                    }
                    try {
                        concurrentMap.remove(obj);
                        ((ExceptionHandlingStrategy.AnonymousClass1) exceptionHandlingStrategy).getClass();
                        throw th;
                    } catch (Throwable th3) {
                        throw e(obj, th3);
                    }
                }
                simpleLock2.unlock();
                throw th;
            } catch (Throwable th4) {
                simpleLock2.unlock();
                throw th4;
            }
        }
    }

    public static class MapBasedMemoizedFunctionToNotNull<K, V> extends MapBasedMemoizedFunction<K, V> implements MemoizedFunctionToNotNull<K, V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MapBasedMemoizedFunctionToNotNull(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap<K, Object> concurrentMap, Function1<? super K, ? extends V> function1) {
            super(lockBasedStorageManager, concurrentMap, function1);
            if (lockBasedStorageManager == null) {
                b(0);
                throw null;
            }
            if (concurrentMap == null) {
                b(1);
                throw null;
            }
            if (function1 != null) {
            } else {
                b(2);
                throw null;
            }
        }

        public static /* synthetic */ void b(int i2) {
            String str = i2 != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i2 != 3 ? 3 : 2];
            if (i2 == 1) {
                objArr[0] = "map";
            } else if (i2 == 2) {
                objArr[0] = "compute";
            } else if (i2 != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            }
            if (i2 != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            } else {
                objArr[1] = "invoke";
            }
            if (i2 != 3) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i2 == 3) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.MapBasedMemoizedFunction, kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) throws Throwable {
            Object objInvoke = super.invoke(obj);
            if (objInvoke != null) {
                return objInvoke;
            }
            b(3);
            throw null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class NotValue {
        private static final /* synthetic */ NotValue[] $VALUES;
        public static final NotValue COMPUTING;
        public static final NotValue NOT_COMPUTED;
        public static final NotValue RECURSION_WAS_DETECTED;

        static {
            NotValue notValue = new NotValue("NOT_COMPUTED", 0);
            NOT_COMPUTED = notValue;
            NotValue notValue2 = new NotValue("COMPUTING", 1);
            COMPUTING = notValue2;
            NotValue notValue3 = new NotValue("RECURSION_WAS_DETECTED", 2);
            RECURSION_WAS_DETECTED = notValue3;
            $VALUES = new NotValue[]{notValue, notValue2, notValue3};
        }

        public static NotValue valueOf(String str) {
            return (NotValue) Enum.valueOf(NotValue.class, str);
        }

        public static NotValue[] values() {
            return (NotValue[]) $VALUES.clone();
        }
    }

    public static class RecursionDetectedResult<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f74151a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f74152b;

        public RecursionDetectedResult(Object obj, boolean z) {
            this.f74151a = obj;
            this.f74152b = z;
        }

        public final String toString() {
            return this.f74152b ? "FALL_THROUGH" : String.valueOf(this.f74151a);
        }
    }

    static {
        String canonicalName = LockBasedStorageManager.class.getCanonicalName();
        canonicalName.getClass();
        int iY = StringsKt.y(0, 6, canonicalName, FileUtils.HIDDEN_PREFIX);
        d = iY == -1 ? "" : canonicalName.substring(0, iY);
        f74137e = new AnonymousClass1("NO_LOCKS", EmptySimpleLock.f74136a);
    }

    public LockBasedStorageManager(String str, Runnable runnable, Function1<InterruptedException, Unit> function1) {
        this(str, (runnable == null || function1 == null) ? new DefaultSimpleLock(null, 1, null) : new CancellableSimpleLock(runnable, function1));
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0065  */
    public static /* synthetic */ void j(int i2) {
        String str = (i2 == 10 || i2 == 13 || i2 == 20 || i2 == 37) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i2 == 10 || i2 == 13 || i2 == 20 || i2 == 37) ? 2 : 3];
        if (i2 == 1 || i2 == 3 || i2 == 5) {
            objArr[0] = "exceptionHandlingStrategy";
        } else if (i2 != 6) {
            switch (i2) {
                case 8:
                    objArr[0] = "exceptionHandlingStrategy";
                    break;
                case 9:
                case 11:
                case 14:
                case 16:
                case 19:
                case 21:
                    objArr[0] = "compute";
                    break;
                case 10:
                case 13:
                case 20:
                case 37:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager";
                    break;
                case 12:
                case 17:
                case 25:
                case 27:
                    objArr[0] = "onRecursiveCall";
                    break;
                case 15:
                case 18:
                case 22:
                    objArr[0] = "map";
                    break;
                case 23:
                case 24:
                case 26:
                case 28:
                case 30:
                case 31:
                case 32:
                case 34:
                    objArr[0] = "computable";
                    break;
                case 29:
                case 33:
                    objArr[0] = "postCompute";
                    break;
                case 35:
                    objArr[0] = Payload.SOURCE;
                    break;
                case 36:
                    objArr[0] = "throwable";
                    break;
                default:
                    objArr[0] = "debugText";
                    break;
            }
        } else {
            objArr[0] = "lock";
        }
        if (i2 == 10 || i2 == 13) {
            objArr[1] = "createMemoizedFunction";
        } else if (i2 == 20) {
            objArr[1] = "createMemoizedFunctionWithNullableValues";
        } else if (i2 != 37) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager";
        } else {
            objArr[1] = "sanitizeStackTrace";
        }
        switch (i2) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "<init>";
                break;
            case 7:
            case 8:
                objArr[2] = "replaceExceptionHandling";
                break;
            case 9:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createMemoizedFunction";
                break;
            case 10:
            case 13:
            case 20:
            case 37:
                break;
            case 19:
            case 21:
            case 22:
                objArr[2] = "createMemoizedFunctionWithNullableValues";
                break;
            case 23:
            case 24:
            case 25:
                objArr[2] = "createLazyValue";
                break;
            case 26:
            case 27:
                objArr[2] = "createRecursionTolerantLazyValue";
                break;
            case 28:
            case 29:
                objArr[2] = "createLazyValueWithPostCompute";
                break;
            case 30:
                objArr[2] = "createNullableLazyValue";
                break;
            case 31:
                objArr[2] = "createRecursionTolerantNullableLazyValue";
                break;
            case 32:
            case 33:
                objArr[2] = "createNullableLazyValueWithPostCompute";
                break;
            case 34:
                objArr[2] = "compute";
                break;
            case 35:
                objArr[2] = "recursionDetectedDefault";
                break;
            case 36:
                objArr[2] = "sanitizeStackTrace";
                break;
            default:
                objArr[2] = "createWithExceptionHandling";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 10 && i2 != 13 && i2 != 20 && i2 != 37) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static void l(AssertionError assertionError) {
        StackTraceElement[] stackTrace = assertionError.getStackTrace();
        int length = stackTrace.length;
        int i2 = 0;
        while (i2 < length) {
            if (!stackTrace[i2].getClassName().startsWith(d)) {
                List listSubList = Arrays.asList(stackTrace).subList(i2, length);
                assertionError.setStackTrace((StackTraceElement[]) listSubList.toArray(new StackTraceElement[listSubList.size()]));
            }
            i2++;
        }
        i2 = -1;
        List listSubList2 = Arrays.asList(stackTrace).subList(i2, length);
        assertionError.setStackTrace((StackTraceElement[]) listSubList2.toArray(new StackTraceElement[listSubList2.size()]));
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    public final NotNullLazyValue a(Function0 function0, final EmptyList emptyList) {
        if (emptyList != null) {
            return new LockBasedNotNullLazyValue<Object>(this, function0) { // from class: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.4
                @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue
                public final RecursionDetectedResult c(boolean z) {
                    return new RecursionDetectedResult(emptyList, false);
                }
            };
        }
        j(27);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    public final CacheWithNotNullValues b() {
        return new CacheWithNotNullValuesBasedOnMemoizedFunction(this, new ConcurrentHashMap(3, 1.0f, 2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    public final NotNullLazyValue c(Function0 function0) {
        if (function0 != null) {
            return new LockBasedNotNullLazyValue(this, function0);
        }
        j(23);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    public final Object d(Function0 function0) {
        SimpleLock simpleLock = this.f74138a;
        simpleLock.lock();
        try {
            function0.mo47invoke();
            simpleLock.unlock();
            return null;
        } catch (Throwable th) {
            try {
                ((ExceptionHandlingStrategy.AnonymousClass1) this.f74139b).getClass();
                throw th;
            } catch (Throwable th2) {
                simpleLock.unlock();
                throw th2;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    public final NullableLazyValue e(Function0 function0) {
        return new LockBasedLazyValue(this, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    public final NotNullLazyValue f(Function0 function0, final Function1 function1, final Function1 function2) {
        return new LockBasedNotNullLazyValueWithPostCompute<Object>(this, function0) { // from class: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.5
            @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue
            public final RecursionDetectedResult c(boolean z) {
                Function1 function3 = function1;
                return function3 == null ? super.c(z) : new RecursionDetectedResult(function3.invoke(Boolean.valueOf(z)), false);
            }

            @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValueWithPostCompute
            public final void d(Object obj) {
                if (obj == null) {
                    throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "value", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5", "doPostCompute"));
                }
                function2.invoke(obj);
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    public final MemoizedFunctionToNullable g(Function1 function1) {
        return new MapBasedMemoizedFunction(this, new ConcurrentHashMap(3, 1.0f, 2), function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    public final CacheWithNullableValues h() {
        return new CacheWithNullableValuesBasedOnMemoizedFunction(this, new ConcurrentHashMap(3, 1.0f, 2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    public final MemoizedFunctionToNotNull i(Function1 function1) {
        return new MapBasedMemoizedFunctionToNotNull(this, new ConcurrentHashMap(3, 1.0f, 2), function1);
    }

    public RecursionDetectedResult k(Object obj, String str) {
        StringBuilder sb = new StringBuilder("Recursion detected ");
        sb.append(str);
        sb.append(obj == null ? "" : cj.i(obj, "on input: "));
        sb.append(" under ");
        sb.append(this);
        AssertionError assertionError = new AssertionError(sb.toString());
        l(assertionError);
        throw assertionError;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(" (");
        return n00.r(this.f74140c, ")", sb);
    }

    public LockBasedStorageManager(String str, SimpleLock simpleLock) {
        if (str != null) {
            this.f74138a = simpleLock;
            this.f74139b = ExceptionHandlingStrategy.f74143a;
            this.f74140c = str;
            return;
        }
        j(4);
        throw null;
    }

    public LockBasedStorageManager(String str) {
        this(str, null, null);
    }
}
