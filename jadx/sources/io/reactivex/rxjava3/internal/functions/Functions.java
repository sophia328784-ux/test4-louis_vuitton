package io.reactivex.rxjava3.internal.functions;

import defpackage.md;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Function3;
import io.reactivex.rxjava3.functions.Function4;
import io.reactivex.rxjava3.functions.Function5;
import io.reactivex.rxjava3.functions.Function6;
import io.reactivex.rxjava3.functions.Function7;
import io.reactivex.rxjava3.functions.Function8;
import io.reactivex.rxjava3.functions.Function9;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.schedulers.Timed;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Functions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Function f70036a = new Identity();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Runnable f70037b = new EmptyRunnable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Action f70038c = new EmptyAction();
    public static final Consumer d = new EmptyConsumer();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Consumer f70039e = new OnErrorMissingConsumer();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Predicate f70040f = new TruePredicate();
    public static final Predicate g = new FalsePredicate();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Supplier f70041h = new NullProvider();

    public static final class ActionConsumer<T> implements Consumer<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Action f70042b;

        public ActionConsumer(Action action) {
            this.f70042b = action;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(Object obj) {
            this.f70042b.run();
        }
    }

    public static final class Array2Func<T1, T2, R> implements Function<Object[], R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BiFunction f70043b;

        public Array2Func(BiFunction biFunction) {
            this.f70043b = biFunction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length != 2) {
                md.g(objArr.length, "Array of size 2 expected but got ");
                return null;
            }
            return this.f70043b.apply(objArr[0], objArr[1]);
        }
    }

    public static final class Array3Func<T1, T2, T3, R> implements Function<Object[], R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function3 f70044b;

        public Array3Func(Function3 function3) {
            this.f70044b = function3;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length != 3) {
                md.g(objArr.length, "Array of size 3 expected but got ");
                return null;
            }
            Object obj2 = objArr[0];
            Object obj3 = objArr[1];
            Object obj4 = objArr[2];
            return this.f70044b.apply();
        }
    }

    public static final class Array4Func<T1, T2, T3, T4, R> implements Function<Object[], R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function4 f70045b;

        public Array4Func(Function4 function4) {
            this.f70045b = function4;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length != 4) {
                md.g(objArr.length, "Array of size 4 expected but got ");
                return null;
            }
            return this.f70045b.apply(objArr[0], objArr[1], objArr[2], objArr[3]);
        }
    }

    public static final class Array5Func<T1, T2, T3, T4, T5, R> implements Function<Object[], R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function5 f70046b;

        public Array5Func(Function5 function5) {
            this.f70046b = function5;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length != 5) {
                md.g(objArr.length, "Array of size 5 expected but got ");
                return null;
            }
            Object obj2 = objArr[0];
            Object obj3 = objArr[1];
            Object obj4 = objArr[2];
            Object obj5 = objArr[3];
            Object obj6 = objArr[4];
            return this.f70046b.apply();
        }
    }

    public static final class Array6Func<T1, T2, T3, T4, T5, T6, R> implements Function<Object[], R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function6 f70047b;

        public Array6Func(Function6 function6) {
            this.f70047b = function6;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length != 6) {
                md.g(objArr.length, "Array of size 6 expected but got ");
                return null;
            }
            Object obj2 = objArr[0];
            Object obj3 = objArr[1];
            Object obj4 = objArr[2];
            Object obj5 = objArr[3];
            Object obj6 = objArr[4];
            Object obj7 = objArr[5];
            return this.f70047b.apply();
        }
    }

    public static final class Array7Func<T1, T2, T3, T4, T5, T6, T7, R> implements Function<Object[], R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function7 f70048b;

        public Array7Func(Function7 function7) {
            this.f70048b = function7;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length != 7) {
                md.g(objArr.length, "Array of size 7 expected but got ");
                return null;
            }
            Object obj2 = objArr[0];
            Object obj3 = objArr[1];
            Object obj4 = objArr[2];
            Object obj5 = objArr[3];
            Object obj6 = objArr[4];
            Object obj7 = objArr[5];
            Object obj8 = objArr[6];
            return this.f70048b.apply();
        }
    }

    public static final class Array8Func<T1, T2, T3, T4, T5, T6, T7, T8, R> implements Function<Object[], R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function8 f70049b;

        public Array8Func(Function8 function8) {
            this.f70049b = function8;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length != 8) {
                md.g(objArr.length, "Array of size 8 expected but got ");
                return null;
            }
            Object obj2 = objArr[0];
            Object obj3 = objArr[1];
            Object obj4 = objArr[2];
            Object obj5 = objArr[3];
            Object obj6 = objArr[4];
            Object obj7 = objArr[5];
            Object obj8 = objArr[6];
            Object obj9 = objArr[7];
            return this.f70049b.apply();
        }
    }

    public static final class Array9Func<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements Function<Object[], R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function9 f70050b;

        public Array9Func(Function9 function9) {
            this.f70050b = function9;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length != 9) {
                md.g(objArr.length, "Array of size 9 expected but got ");
                return null;
            }
            Object obj2 = objArr[0];
            Object obj3 = objArr[1];
            Object obj4 = objArr[2];
            Object obj5 = objArr[3];
            Object obj6 = objArr[4];
            Object obj7 = objArr[5];
            Object obj8 = objArr[6];
            Object obj9 = objArr[7];
            Object obj10 = objArr[8];
            return this.f70050b.apply();
        }
    }

    public static final class ArrayListCapacityCallable<T> implements Supplier<List<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f70051b;

        public ArrayListCapacityCallable(int i2) {
            this.f70051b = i2;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return new ArrayList(this.f70051b);
        }
    }

    public static final class BooleanSupplierPredicateReverse<T> implements Predicate<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BooleanSupplier f70052b;

        public BooleanSupplierPredicateReverse(BooleanSupplier booleanSupplier) {
            this.f70052b = booleanSupplier;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public final boolean test(Object obj) {
            return !this.f70052b.a();
        }
    }

    public static final class CastToClass<T, U> implements Function<T, U> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class f70053b;

        public CastToClass(Class cls) {
            this.f70053b = cls;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            return this.f70053b.cast(obj);
        }
    }

    public static final class ClassFilter<T, U> implements Predicate<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class f70054b;

        public ClassFilter(Class cls) {
            this.f70054b = cls;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public final boolean test(Object obj) {
            return this.f70054b.isInstance(obj);
        }
    }

    public static final class EmptyAction implements Action {
        @Override // io.reactivex.rxjava3.functions.Action
        public final void run() {
        }

        public final String toString() {
            return "EmptyAction";
        }
    }

    public static final class EmptyConsumer implements Consumer<Object> {
        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(Object obj) {
        }

        public final String toString() {
            return "EmptyConsumer";
        }
    }

    public static final class EmptyRunnable implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    public static final class EqualsPredicate<T> implements Predicate<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f70055b;

        public EqualsPredicate(Object obj) {
            this.f70055b = obj;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public final boolean test(Object obj) {
            return Objects.equals(obj, this.f70055b);
        }
    }

    public static final class FalsePredicate implements Predicate<Object> {
        @Override // io.reactivex.rxjava3.functions.Predicate
        public final boolean test(Object obj) {
            return false;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class HashSetSupplier implements Supplier<Set<Object>> {
        private static final /* synthetic */ HashSetSupplier[] $VALUES;
        public static final HashSetSupplier INSTANCE;

        static {
            HashSetSupplier hashSetSupplier = new HashSetSupplier("INSTANCE", 0);
            INSTANCE = hashSetSupplier;
            $VALUES = new HashSetSupplier[]{hashSetSupplier};
        }

        public static HashSetSupplier valueOf(String str) {
            return (HashSetSupplier) Enum.valueOf(HashSetSupplier.class, str);
        }

        public static HashSetSupplier[] values() {
            return (HashSetSupplier[]) $VALUES.clone();
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return new HashSet();
        }
    }

    public static final class Identity implements Function<Object, Object> {
        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            return obj;
        }

        public final String toString() {
            return "IdentityFunction";
        }
    }

    public static final class JustValue<T, U> implements Callable<U>, Supplier<U>, Function<T, U> {
        final U value;

        public JustValue(U u) {
            this.value = u;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public U apply(T t) {
            return this.value;
        }

        @Override // java.util.concurrent.Callable
        public U call() {
            return this.value;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        public U get() {
            return this.value;
        }
    }

    public static final class ListSorter<T> implements Function<List<T>, List<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Comparator f70056b;

        public ListSorter(Comparator comparator) {
            this.f70056b = comparator;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            List list = (List) obj;
            Collections.sort(list, this.f70056b);
            return list;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class NaturalComparator implements Comparator<Object> {
        private static final /* synthetic */ NaturalComparator[] $VALUES;
        public static final NaturalComparator INSTANCE;

        static {
            NaturalComparator naturalComparator = new NaturalComparator("INSTANCE", 0);
            INSTANCE = naturalComparator;
            $VALUES = new NaturalComparator[]{naturalComparator};
        }

        public static NaturalComparator valueOf(String str) {
            return (NaturalComparator) Enum.valueOf(NaturalComparator.class, str);
        }

        public static NaturalComparator[] values() {
            return (NaturalComparator[]) $VALUES.clone();
        }

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    public static final class NotificationOnComplete<T> implements Action {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Consumer f70057b;

        public NotificationOnComplete(Consumer consumer) {
            this.f70057b = consumer;
        }

        @Override // io.reactivex.rxjava3.functions.Action
        public final void run() {
            this.f70057b.accept(Notification.f70023b);
        }
    }

    public static final class NotificationOnError<T> implements Consumer<Throwable> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Consumer f70058b;

        public NotificationOnError(Consumer consumer) {
            this.f70058b = consumer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(Object obj) {
            Throwable th = (Throwable) obj;
            Objects.requireNonNull(th, "error is null");
            this.f70058b.accept(new Notification(NotificationLite.d(th)));
        }
    }

    public static final class NotificationOnNext<T> implements Consumer<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Consumer f70059b;

        public NotificationOnNext(Consumer consumer) {
            this.f70059b = consumer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(Object obj) {
            Objects.requireNonNull(obj, "value is null");
            this.f70059b.accept(new Notification(obj));
        }
    }

    public static final class NullProvider implements Supplier<Object> {
        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return null;
        }
    }

    public static final class OnErrorMissingConsumer implements Consumer<Throwable> {
        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(Object obj) {
            RxJavaPlugins.b(new OnErrorNotImplementedException((Throwable) obj));
        }
    }

    public static final class TimestampFunction<T> implements Function<T, Timed<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TimeUnit f70060b;

        public TimestampFunction(TimeUnit timeUnit, Scheduler scheduler) {
            this.f70060b = timeUnit;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            TimeUnit timeUnit = this.f70060b;
            return new Timed(obj, Scheduler.a(timeUnit), timeUnit);
        }
    }

    public static final class ToMapKeySelector<K, T> implements BiConsumer<Map<K, T>, T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Function f70061a;

        public ToMapKeySelector(Function function) {
            this.f70061a = function;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((Map) obj).put(this.f70061a.apply(obj2), obj2);
        }
    }

    public static final class ToMapKeyValueSelector<K, V, T> implements BiConsumer<Map<K, V>, T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Function f70062a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function f70063b;

        public ToMapKeyValueSelector(Function function, Function function2) {
            this.f70062a = function;
            this.f70063b = function2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((Map) obj).put(this.f70063b.apply(obj2), this.f70062a.apply(obj2));
        }
    }

    public static final class ToMultimapKeyValueSelector<K, V, T> implements BiConsumer<Map<K, Collection<V>>, T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Function f70064a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function f70065b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70066c;

        public ToMultimapKeyValueSelector(Function function, Function function2, Function function3) {
            this.f70064a = function;
            this.f70065b = function2;
            this.f70066c = function3;
        }

        @Override // io.reactivex.rxjava3.functions.BiConsumer
        public final void accept(Object obj, Object obj2) {
            Map map = (Map) obj;
            Object objApply = this.f70066c.apply(obj2);
            Collection collection = (Collection) map.get(objApply);
            if (collection == null) {
                collection = (Collection) this.f70064a.apply(objApply);
                map.put(objApply, collection);
            }
            collection.add(this.f70065b.apply(obj2));
        }
    }

    public static final class TruePredicate implements Predicate<Object> {
        @Override // io.reactivex.rxjava3.functions.Predicate
        public final boolean test(Object obj) {
            return true;
        }
    }

    public static Consumer a(Action action) {
        return new ActionConsumer(action);
    }

    public static Function b(Class cls) {
        return new CastToClass(cls);
    }

    public static Supplier c(int i2) {
        return new ArrayListCapacityCallable(i2);
    }

    public static Supplier d() {
        return HashSetSupplier.INSTANCE;
    }

    public static Predicate e(Object obj) {
        return new EqualsPredicate(obj);
    }

    public static Predicate f(Class cls) {
        return new ClassFilter(cls);
    }

    public static Function g(Object obj) {
        return new JustValue(obj);
    }

    public static Supplier h(Object obj) {
        return new JustValue(obj);
    }

    public static Function i(Comparator comparator) {
        return new ListSorter(comparator);
    }

    public static Comparator j() {
        return NaturalComparator.INSTANCE;
    }

    public static Action k(Consumer consumer) {
        return new NotificationOnComplete(consumer);
    }

    public static Consumer l(Consumer consumer) {
        return new NotificationOnError(consumer);
    }

    public static Consumer m(Consumer consumer) {
        return new NotificationOnNext(consumer);
    }

    public static Predicate n(BooleanSupplier booleanSupplier) {
        return new BooleanSupplierPredicateReverse(booleanSupplier);
    }

    public static Function o(TimeUnit timeUnit, Scheduler scheduler) {
        return new TimestampFunction(timeUnit, scheduler);
    }

    public static Function p(BiFunction biFunction) {
        return new Array2Func(biFunction);
    }

    public static Function q(Function3 function3) {
        return new Array3Func(function3);
    }

    public static Function r(Function4 function4) {
        return new Array4Func(function4);
    }

    public static Function s(Function5 function5) {
        return new Array5Func(function5);
    }

    public static Function t(Function6 function6) {
        return new Array6Func(function6);
    }

    public static Function u(Function7 function7) {
        return new Array7Func(function7);
    }

    public static Function v(Function8 function8) {
        return new Array8Func(function8);
    }

    public static Function w(Function9 function9) {
        return new Array9Func(function9);
    }

    public static BiConsumer x(Function function) {
        return new ToMapKeySelector(function);
    }

    public static BiConsumer y(Function function, Function function2) {
        return new ToMapKeyValueSelector(function2, function);
    }

    public static BiConsumer z(Function function, Function function2, Function function3) {
        return new ToMultimapKeyValueSelector(function3, function2, function);
    }
}
