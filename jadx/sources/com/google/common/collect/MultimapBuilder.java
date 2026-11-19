package com.google.common.collect;

import com.google.common.base.Supplier;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MultimapBuilder<K0, V0> {

    /* JADX INFO: renamed from: com.google.common.collect.MultimapBuilder$1, reason: invalid class name */
    class AnonymousClass1 extends MultimapBuilderWithKeys<Object> {
        @Override // com.google.common.collect.MultimapBuilder.MultimapBuilderWithKeys
        public final Map b() {
            return new CompactHashMap(8);
        }
    }

    public static final class ArrayListSupplier<V> implements Supplier<List<V>>, Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f33679b;

        public ArrayListSupplier() {
            CollectPreconditions.b(2, "expectedValuesPerKey");
            this.f33679b = 2;
        }

        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new ArrayList(this.f33679b);
        }
    }

    public static abstract class ListMultimapBuilder<K0, V0> extends MultimapBuilder<K0, V0> {
        public abstract ListMultimap c();
    }

    public static abstract class MultimapBuilderWithKeys<K0> {
        public final ListMultimapBuilder a() {
            CollectPreconditions.b(2, "expectedValuesPerKey");
            return new ListMultimapBuilder<Object, Object>() { // from class: com.google.common.collect.MultimapBuilder.MultimapBuilderWithKeys.1
                @Override // com.google.common.collect.MultimapBuilder.ListMultimapBuilder
                public final ListMultimap c() {
                    Map mapB = MultimapBuilderWithKeys.this.b();
                    ArrayListSupplier arrayListSupplier = new ArrayListSupplier();
                    Multimaps.CustomListMultimap customListMultimap = new Multimaps.CustomListMultimap(mapB);
                    customListMultimap.f33682h = arrayListSupplier;
                    return customListMultimap;
                }
            };
        }

        public abstract Map b();
    }

    public static MultimapBuilderWithKeys a() {
        CollectPreconditions.b(8, "expectedKeys");
        return new AnonymousClass1();
    }

    public static MultimapBuilderWithKeys b() {
        return new MultimapBuilderWithKeys<Object>() { // from class: com.google.common.collect.MultimapBuilder.3

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Comparator f33678a = NaturalOrdering.f33684b;

            @Override // com.google.common.collect.MultimapBuilder.MultimapBuilderWithKeys
            public final Map b() {
                return new TreeMap(this.f33678a);
            }
        };
    }
}
