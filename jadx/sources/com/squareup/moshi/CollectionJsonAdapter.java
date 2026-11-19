package com.squareup.moshi;

import com.squareup.moshi.internal.Util;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
abstract class CollectionJsonAdapter<C extends Collection<T>, T> extends JsonAdapter<C> {
    public static final JsonAdapter.Factory FACTORY = new AnonymousClass1();
    private final JsonAdapter<T> elementAdapter;

    /* JADX INFO: renamed from: com.squareup.moshi.CollectionJsonAdapter$1, reason: invalid class name */
    public class AnonymousClass1 implements JsonAdapter.Factory {
        @Override // com.squareup.moshi.JsonAdapter.Factory
        public final JsonAdapter create(Type type, Set set, Moshi moshi) {
            Class clsC = Types.c(type);
            if (!set.isEmpty()) {
                return null;
            }
            if (clsC == List.class || clsC == Collection.class) {
                return CollectionJsonAdapter.newArrayListAdapter(type, moshi).nullSafe();
            }
            if (clsC == Set.class) {
                return CollectionJsonAdapter.newLinkedHashSetAdapter(type, moshi).nullSafe();
            }
            return null;
        }
    }

    private CollectionJsonAdapter(JsonAdapter<T> jsonAdapter) {
        this.elementAdapter = jsonAdapter;
    }

    public static <T> JsonAdapter<Collection<T>> newArrayListAdapter(Type type, Moshi moshi) {
        Type typeA = Types.a(type);
        moshi.getClass();
        return new CollectionJsonAdapter<Collection<T>, T>(moshi.c(typeA, Util.f43424a, null)) { // from class: com.squareup.moshi.CollectionJsonAdapter.2
            {
                AnonymousClass1 anonymousClass1 = null;
            }

            @Override // com.squareup.moshi.CollectionJsonAdapter, com.squareup.moshi.JsonAdapter
            public /* bridge */ /* synthetic */ Object fromJson(JsonReader jsonReader) throws IOException {
                return super.fromJson(jsonReader);
            }

            @Override // com.squareup.moshi.CollectionJsonAdapter
            public Collection<T> newCollection() {
                return new ArrayList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.squareup.moshi.CollectionJsonAdapter, com.squareup.moshi.JsonAdapter
            public /* bridge */ /* synthetic */ void toJson(JsonWriter jsonWriter, Object obj) throws IOException {
                super.toJson(jsonWriter, (Collection) obj);
            }
        };
    }

    public static <T> JsonAdapter<Set<T>> newLinkedHashSetAdapter(Type type, Moshi moshi) {
        Type typeA = Types.a(type);
        moshi.getClass();
        return new CollectionJsonAdapter<Set<T>, T>(moshi.c(typeA, Util.f43424a, null)) { // from class: com.squareup.moshi.CollectionJsonAdapter.3
            {
                AnonymousClass1 anonymousClass1 = null;
            }

            @Override // com.squareup.moshi.CollectionJsonAdapter, com.squareup.moshi.JsonAdapter
            public /* bridge */ /* synthetic */ Object fromJson(JsonReader jsonReader) throws IOException {
                return super.fromJson(jsonReader);
            }

            @Override // com.squareup.moshi.CollectionJsonAdapter
            public Set<T> newCollection() {
                return new LinkedHashSet();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.squareup.moshi.CollectionJsonAdapter, com.squareup.moshi.JsonAdapter
            public /* bridge */ /* synthetic */ void toJson(JsonWriter jsonWriter, Object obj) throws IOException {
                super.toJson(jsonWriter, (Collection) obj);
            }
        };
    }

    @Override // com.squareup.moshi.JsonAdapter
    public C fromJson(JsonReader jsonReader) throws IOException {
        C c2 = (C) newCollection();
        jsonReader.h();
        while (jsonReader.o()) {
            c2.add(this.elementAdapter.fromJson(jsonReader));
        }
        jsonReader.k();
        return c2;
    }

    public abstract C newCollection();

    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonWriter jsonWriter, C c2) throws IOException {
        jsonWriter.h();
        Iterator it = c2.iterator();
        while (it.hasNext()) {
            this.elementAdapter.toJson(jsonWriter, (T) it.next());
        }
        jsonWriter.n();
    }

    public String toString() {
        return this.elementAdapter + ".collection()";
    }

    public /* synthetic */ CollectionJsonAdapter(JsonAdapter jsonAdapter, AnonymousClass1 anonymousClass1) {
        this(jsonAdapter);
    }
}
