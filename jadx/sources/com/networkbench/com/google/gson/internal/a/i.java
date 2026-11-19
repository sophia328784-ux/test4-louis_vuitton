package com.networkbench.com.google.gson.internal.a;

import com.networkbench.com.google.gson.FieldNamingStrategy;
import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.Gson$$$Internal;
import com.networkbench.com.google.gson.JsonSyntaxException;
import com.networkbench.com.google.gson.TypeAdapter;
import com.networkbench.com.google.gson.TypeAdapterFactory;
import com.networkbench.com.google.gson.annotations.Adapt;
import com.networkbench.com.google.gson.annotations.SerializedName;
import com.networkbench.com.google.gson.internal.C$Gson$Types;
import com.networkbench.com.google.gson.internal.ConstructorConstructor;
import com.networkbench.com.google.gson.internal.Excluder;
import com.networkbench.com.google.gson.internal.ObjectConstructor;
import com.networkbench.com.google.gson.internal.Primitives;
import com.networkbench.com.google.gson.reflect.TypeToken;
import com.networkbench.com.google.gson.stream.JsonReader;
import com.networkbench.com.google.gson.stream.JsonToken;
import com.networkbench.com.google.gson.stream.JsonWriter;
import defpackage.a61;
import defpackage.b21;
import defpackage.md;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements TypeAdapterFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstructorConstructor f38660a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FieldNamingStrategy f38661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Excluder f38662c;

    public static final class a<T> extends TypeAdapter<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ObjectConstructor<T> f38668a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<String, b> f38669b;

        private a(ObjectConstructor<T> objectConstructor, Map<String, b> map) {
            this.f38668a = objectConstructor;
            this.f38669b = map;
        }

        @Override // com.networkbench.com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T tConstruct = this.f38668a.construct();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    b bVar = this.f38669b.get(jsonReader.nextName());
                    if (bVar == null || !bVar.f38671i) {
                        jsonReader.skipValue();
                    } else {
                        bVar.a(jsonReader, tConstruct);
                    }
                }
                jsonReader.endObject();
                return tConstruct;
            } catch (IllegalAccessException e2) {
                md.h(e2);
                return null;
            } catch (IllegalStateException e3) {
                throw new JsonSyntaxException(e3);
            }
        }

        @Override // com.networkbench.com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                for (b bVar : this.f38669b.values()) {
                    if (bVar.f38670h) {
                        jsonWriter.name(bVar.g);
                        bVar.a(jsonWriter, t);
                    }
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException unused) {
                a61.h();
            }
        }
    }

    public static abstract class b {
        final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final boolean f38670h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final boolean f38671i;

        public b(String str, boolean z, boolean z2) {
            this.g = str;
            this.f38670h = z;
            this.f38671i = z2;
        }

        public abstract void a(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException;

        public abstract void a(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException;
    }

    public i(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder) {
        this.f38660a = constructorConstructor;
        this.f38661b = fieldNamingStrategy;
        this.f38662c = excluder;
    }

    private Map<String, b> a(Gson gson, TypeToken<?> typeToken, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!cls.isInterface()) {
            Type type = typeToken.getType();
            TypeToken<?> typeToken2 = typeToken;
            Class<?> rawType = cls;
            while (rawType != Object.class) {
                for (Field field : rawType.getDeclaredFields()) {
                    boolean zA = a(field, true);
                    boolean zA2 = a(field, false);
                    if (zA || zA2) {
                        field.setAccessible(true);
                        b bVarA = a(gson, field, a(field), TypeToken.get(C$Gson$Types.resolve(typeToken2.getType(), rawType, field.getGenericType())), zA, zA2);
                        b bVar = (b) linkedHashMap.put(bVarA.g, bVarA);
                        if (bVar != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(type);
                            b21.w(sb, " declares multiple JSON fields named ", bVar.g);
                            return null;
                        }
                    }
                }
                typeToken2 = TypeToken.get(C$Gson$Types.resolve(typeToken2.getType(), rawType, rawType.getGenericSuperclass()));
                rawType = typeToken2.getRawType();
            }
        }
        return linkedHashMap;
    }

    @Override // com.networkbench.com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        a aVar = new a(this.f38660a.get(typeToken), a(gson, (TypeToken<?>) typeToken, (Class<?>) rawType));
        Gson$$$Internal.addGeneratedTypeAdapter(gson, aVar);
        return aVar;
    }

    public boolean a(Field field, boolean z) {
        return (this.f38662c.excludeClass(field.getType(), z) || this.f38662c.excludeField(field, z)) ? false : true;
    }

    private String a(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        return serializedName == null ? this.f38661b.translateName(field) : serializedName.value();
    }

    private b a(Gson gson, Field field, String str, TypeToken<?> typeToken, boolean z, boolean z2) {
        return new b(str, z, z2, gson, field, typeToken, Primitives.isPrimitive(typeToken.getRawType())) { // from class: com.networkbench.com.google.gson.internal.a.i.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final TypeAdapter<?> f38663a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Gson f38664b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Field f38665c;
            final /* synthetic */ TypeToken d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ boolean f38666e;

            {
                this.f38664b = gson;
                this.f38665c = field;
                this.d = typeToken;
                this.f38666e = z;
                this.f38663a = i.this.a(gson, field, (TypeToken<?>) typeToken);
            }

            @Override // com.networkbench.com.google.gson.internal.a.i.b
            public void a(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException {
                new l(this.f38664b, this.f38663a, this.d.getType()).write(jsonWriter, this.f38665c.get(obj));
            }

            @Override // com.networkbench.com.google.gson.internal.a.i.b
            public void a(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException {
                Object obj2 = this.f38663a.read(jsonReader);
                if (obj2 == null && this.f38666e) {
                    return;
                }
                this.f38665c.set(obj, obj2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TypeAdapter<?> a(Gson gson, Field field, TypeToken<?> typeToken) {
        TypeAdapter<?> adapter = gson.getAdapter(typeToken);
        if (!Gson$$$Internal.isGeneratedTypeAdapter(gson, adapter) || !field.isAnnotationPresent(Adapt.class)) {
            return adapter;
        }
        return com.networkbench.com.google.gson.internal.a.a.a(gson, this.f38660a, (Adapt) field.getAnnotation(Adapt.class));
    }
}
