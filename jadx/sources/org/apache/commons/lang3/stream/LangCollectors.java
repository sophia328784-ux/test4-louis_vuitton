package org.apache.commons.lang3.stream;

import defpackage.aa;
import defpackage.x80;
import defpackage.y80;
import defpackage.z80;
import java.util.Collections;
import java.util.Set;
import java.util.StringJoiner;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;
import org.apache.commons.lang3.stream.LangCollectors;

/* JADX INFO: loaded from: classes3.dex */
public abstract class LangCollectors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f77548a = Collections.EMPTY_SET;

    public static final class SimpleCollector<T, A, R> implements Collector<T, A, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final y80 f77549a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Set f77550b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final z80 f77551c;
        public final aa d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final x80 f77552e;

        public SimpleCollector(x80 x80Var, y80 y80Var, z80 z80Var, aa aaVar, Set set) {
            this.f77552e = x80Var;
            this.f77549a = y80Var;
            this.f77551c = z80Var;
            this.d = aaVar;
            this.f77550b = set;
        }

        @Override // java.util.stream.Collector
        public final BiConsumer accumulator() {
            return this.f77549a;
        }

        @Override // java.util.stream.Collector
        public final Set characteristics() {
            return this.f77550b;
        }

        @Override // java.util.stream.Collector
        public final BinaryOperator combiner() {
            return this.f77551c;
        }

        @Override // java.util.stream.Collector
        public final Function finisher() {
            return this.d;
        }

        @Override // java.util.stream.Collector
        public final Supplier supplier() {
            return this.f77552e;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [x80] */
    public static Collector a(final String str, aa aaVar) {
        return new SimpleCollector(new Supplier() { // from class: x80
            @Override // java.util.function.Supplier
            public final Object get() {
                Set set = LangCollectors.f77548a;
                return new StringJoiner(str, "", "");
            }
        }, new y80(), new z80(), new aa(2), f77548a);
    }
}
