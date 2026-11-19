package com.google.common.collect;

import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ComparisonChain {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ComparisonChain f33575a = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ComparisonChain f33576b = new InactiveComparisonChain(-1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ComparisonChain f33577c = new InactiveComparisonChain(1);

    /* JADX INFO: renamed from: com.google.common.collect.ComparisonChain$1, reason: invalid class name */
    public class AnonymousClass1 extends ComparisonChain {
        public static ComparisonChain f(int i2) {
            if (i2 < 0) {
                return ComparisonChain.f33576b;
            }
            return i2 > 0 ? ComparisonChain.f33577c : ComparisonChain.f33575a;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain a(int i2, int i3) {
            return f(Integer.compare(i2, i3));
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain b(Object obj, Object obj2, Comparator comparator) {
            return f(comparator.compare(obj, obj2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain c(boolean z, boolean z2) {
            return f(Boolean.compare(z, z2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain d(boolean z, boolean z2) {
            return f(Boolean.compare(z2, z));
        }

        @Override // com.google.common.collect.ComparisonChain
        public final int e() {
            return 0;
        }
    }

    public static final class InactiveComparisonChain extends ComparisonChain {
        public final int d;

        public InactiveComparisonChain(int i2) {
            this.d = i2;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain a(int i2, int i3) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain b(Object obj, Object obj2, Comparator comparator) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain c(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain d(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final int e() {
            return this.d;
        }
    }

    public abstract ComparisonChain a(int i2, int i3);

    public abstract ComparisonChain b(Object obj, Object obj2, Comparator comparator);

    public abstract ComparisonChain c(boolean z, boolean z2);

    public abstract ComparisonChain d(boolean z, boolean z2);

    public abstract int e();
}
