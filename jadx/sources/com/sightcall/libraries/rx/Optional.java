package com.sightcall.libraries.rx;

import defpackage.zy0;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 ,*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0002,-B\u0015\b\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\n\u001a\u00028\u0000¢\u0006\u0002\u0010\u000bJ$\u0010\f\u001a\f0\rR\b\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100\u000fJ \u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u000fJ&\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00140\u0000\"\u0004\b\u0001\u0010\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u00140\u000fJ,\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00140\u0000\"\u0004\b\u0001\u0010\u00142\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140\u00000\u000fJ\u0017\u0010\u0017\u001a\u0004\u0018\u00018\u00002\b\u0010\u0018\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00028\u0000¢\u0006\u0002\u0010\u0019J\r\u0010\u001b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u000bJ\u001d\u0010\u001c\u001a\u0004\u0018\u00018\u00002\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001d¢\u0006\u0002\u0010\u001eJ\u0019\u0010\u001f\u001a\u00028\u00002\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\u0002\u0010\u001eJ(\u0010 \u001a\u0004\b\u00028\u0000\"\b\b\u0001\u0010!*\u00020\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H!0\u001dø\u0001\u0000¢\u0006\u0002\u0010\u001eJ\n\u0010$\u001a\u00020%H\u0096\u0080\u0004J\u0010\u0010&\u001a\u0004\u0018\u00018\u0000HÂ\u0003¢\u0006\u0002\u0010\u000bJ \u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000HÆ\u0001¢\u0006\u0002\u0010(J\u0014\u0010)\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002HÖ\u0083\u0004J\n\u0010*\u001a\u00020+HÖ\u0081\u0004R\u0012\u0010\u0003\u001a\u0004\u0018\u00018\u0000X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\t\u0082\u0002\u0004\n\u0002\b9¨\u0006."}, d2 = {"Lcom/sightcall/libraries/rx/Optional;", "T", "", "value", "<init>", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "isPresent", "", "()Z", "get", "()Ljava/lang/Object;", "ifPresent", "Lcom/sightcall/libraries/rx/Optional$IfNotPresent;", "consumer", "Lkotlin/Function1;", "", "filter", "predicate", "map", "U", "mapper", "flatMap", "orElseNullable", "other", "(Ljava/lang/Object;)Ljava/lang/Object;", "orElse", "orNull", "orElseGetNullable", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "orElseGet", "orElseThrow", "X", "", "exceptionSupplier", "toString", "", "component1", "copy", "(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;", "equals", "hashCode", "", "Companion", "IfNotPresent", "rx_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Optional<T> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final T value;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0086\u0004¨\u0006\b"}, d2 = {"Lcom/sightcall/libraries/rx/Optional$IfNotPresent;", "", "<init>", "(Lcom/sightcall/libraries/rx/Optional;)V", "orElse", "", "consumer", "Lkotlin/Function0;", "rx_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class IfNotPresent {
        public IfNotPresent() {
        }

        public final void orElse(Function0<Unit> consumer) {
            consumer.getClass();
            if (((Optional) Optional.this).value == null) {
                consumer.mo47invoke();
            }
        }
    }

    public /* synthetic */ Optional(Object obj, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : obj);
    }

    private final T component1() {
        return this.value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Optional copy$default(Optional optional, Object obj, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            obj = optional.value;
        }
        return optional.copy(obj);
    }

    public final Optional<T> copy(T value) {
        return new Optional<>(value);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof Optional) && Intrinsics.c(this.value, ((Optional) other).value);
    }

    public final Optional<T> filter(Function1<? super T, Boolean> predicate) {
        predicate.getClass();
        T t = this.value;
        if (t != null) {
            Optional<T> optionalOf = ((Boolean) predicate.invoke(t)).booleanValue() ? INSTANCE.of(t) : INSTANCE.empty();
            if (optionalOf != null) {
                return optionalOf;
            }
        }
        return INSTANCE.empty();
    }

    public final <U> Optional<U> flatMap(Function1<? super T, Optional<U>> mapper) {
        Optional<U> optional;
        mapper.getClass();
        T t = this.value;
        return (t == null || (optional = (Optional) mapper.invoke(t)) == null) ? INSTANCE.empty() : optional;
    }

    public final T get() {
        T t = this.value;
        if (t != null) {
            return t;
        }
        zy0.c("No value present");
        return null;
    }

    public int hashCode() {
        T t = this.value;
        if (t == null) {
            return 0;
        }
        return t.hashCode();
    }

    public final Optional<T>.IfNotPresent ifPresent(Function1<? super T, Unit> consumer) {
        consumer.getClass();
        T t = this.value;
        if (t != null) {
            consumer.invoke(t);
        }
        return new IfNotPresent();
    }

    public final boolean isPresent() {
        return this.value != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <U> Optional<U> map(Function1<? super T, ? extends U> mapper) {
        Optional<U> optionalOf;
        mapper.getClass();
        T t = this.value;
        return (t == null || (optionalOf = INSTANCE.of(mapper.invoke(t))) == null) ? INSTANCE.empty() : optionalOf;
    }

    public final T orElse(T other) {
        T t = this.value;
        return t == null ? other : t;
    }

    public final T orElseGet(Function0<? extends T> other) {
        other.getClass();
        T t = this.value;
        return t == null ? (T) other.mo47invoke() : t;
    }

    public final T orElseGetNullable(Function0<? extends T> other) {
        other.getClass();
        T t = this.value;
        return t == null ? (T) other.mo47invoke() : t;
    }

    public final T orElseNullable(T other) {
        T t = this.value;
        return t == null ? other : t;
    }

    public final <X extends Throwable> T orElseThrow(Function0<? extends X> exceptionSupplier) throws Throwable {
        exceptionSupplier.getClass();
        T t = this.value;
        if (t != null) {
            return t;
        }
        throw ((Throwable) exceptionSupplier.mo47invoke());
    }

    public final T orNull() {
        return this.value;
    }

    public String toString() {
        T t = this.value;
        return t != null ? String.format("Optional[%s]", Arrays.copyOf(new Object[]{t}, 1)) : "Optional.empty";
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\b\u0001\u0010\u0006J\u001f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\b\u0001\u0010\u00062\u0006\u0010\b\u001a\u0002H\u0006¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\n\u0012\u0006\u0012\u0004\b\u0002H\u00060\u0005\"\u0004\b\u0001\u0010\u00062\b\u0010\b\u001a\u0004\u0018\u0001H\u0006ø\u0001\u0000¢\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\b9¨\u0006\u000b"}, d2 = {"Lcom/sightcall/libraries/rx/Optional$Companion;", "", "<init>", "()V", "empty", "Lcom/sightcall/libraries/rx/Optional;", "T", "of", "value", "(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;", "ofNullable", "rx_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final <T> Optional<T> empty() {
            DefaultConstructorMarker defaultConstructorMarker = null;
            return new Optional<>(defaultConstructorMarker, defaultConstructorMarker);
        }

        public final <T> Optional<T> of(T value) {
            return new Optional<>(value, null);
        }

        public final <T> Optional<T> ofNullable(T value) {
            Optional<T> optionalOf;
            return (value == null || (optionalOf = Optional.INSTANCE.of(value)) == null) ? empty() : optionalOf;
        }

        private Companion() {
        }
    }

    private Optional(T t) {
        this.value = t;
    }

    public /* synthetic */ Optional(Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj);
    }
}
