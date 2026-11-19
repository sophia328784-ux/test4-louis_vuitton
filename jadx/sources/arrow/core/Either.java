package arrow.core;

import arrow.Kind;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.o60;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u0001*\u0006\b\u0001\u0010\u0002 \u00012*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0004\u0012\u00028\u00010\u0003j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u0005:\u0003\u0006\u0007\b\u0082\u0001\u0002\t\n¨\u0006\u000b"}, d2 = {"Larrow/core/Either;", "A", NBSSpanMetricUnit.Byte, "Larrow/Kind;", "", "Larrow/core/EitherOf;", "Companion", "Left", "Right", "Larrow/core/Either$Left;", "Larrow/core/Either$Right;", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
public abstract class Either<A, B> implements Kind<Kind<Object, ? extends A>, B> {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Larrow/core/Either$Companion;", "", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0005\b\u0086\b\u0018\u0000*\u0006\b\u0002\u0010\u0001 \u00012\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Larrow/core/Either$Left;", "A", "Larrow/core/Either;", "", "a", "<init>", "(Ljava/lang/Object;)V", "Companion", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
    public static final /* data */ class Left<A> extends Either {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f20605a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f20606b;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Larrow/core/Either$Left$Companion;", "", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
            new Left(Unit.f71739a);
        }

        public Left(A a2) {
            super(null);
            this.f20606b = a2;
            this.f20605a = a2;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Left) && Intrinsics.c(this.f20606b, ((Left) obj).f20606b);
            }
            return true;
        }

        public final int hashCode() {
            Object obj = this.f20606b;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        @Override // arrow.core.Either
        public final String toString() {
            return o60.r(new StringBuilder("Either.Left("), this.f20606b, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0005\b\u0086\b\u0018\u0000*\u0006\b\u0002\u0010\u0001 \u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Larrow/core/Either$Right;", NBSSpanMetricUnit.Byte, "Larrow/core/Either;", "", NBSSpanMetricUnit.Bit, "<init>", "(Ljava/lang/Object;)V", "Companion", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
    public static final /* data */ class Right<B> extends Either {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f20607a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f20608b;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Larrow/core/Either$Right$Companion;", "", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
            new Right(Unit.f71739a);
        }

        public Right(B b2) {
            super(null);
            this.f20608b = b2;
            this.f20607a = b2;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Right) && Intrinsics.c(this.f20608b, ((Right) obj).f20608b);
            }
            return true;
        }

        public final int hashCode() {
            Object obj = this.f20608b;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        @Override // arrow.core.Either
        public final String toString() {
            return o60.r(new StringBuilder("Either.Right("), this.f20608b, ')');
        }
    }

    static {
        new Companion(null);
    }

    public Either(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public String toString() {
        if (this instanceof Right) {
            return "Either.Right(" + ((Right) this).f20608b + ')';
        }
        if (!(this instanceof Left)) {
            v40.g();
            return null;
        }
        return "Either.Left(" + ((Left) this).f20606b + ')';
    }
}
