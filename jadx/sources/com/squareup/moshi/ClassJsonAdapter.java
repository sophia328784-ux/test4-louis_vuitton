package com.squareup.moshi;

import com.squareup.moshi.internal.Util;
import defpackage.a61;
import defpackage.x1;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class ClassJsonAdapter<T> extends JsonAdapter<T> {
    public static final JsonAdapter.Factory FACTORY = new AnonymousClass1();
    private final ClassFactory<T> classFactory;
    private final FieldBinding<?>[] fieldsArray;
    private final JsonReader.Options options;

    /* JADX INFO: renamed from: com.squareup.moshi.ClassJsonAdapter$1, reason: invalid class name */
    public class AnonymousClass1 implements JsonAdapter.Factory {
        public static void a(Type type, Class cls) {
            Class<?> clsC = Types.c(type);
            if (cls.isAssignableFrom(clsC)) {
                StringBuilder sb = new StringBuilder("No JsonAdapter for ");
                sb.append(type);
                String simpleName = cls.getSimpleName();
                String simpleName2 = clsC.getSimpleName();
                sb.append(", you should probably use ");
                sb.append(simpleName);
                sb.append(" instead of ");
                sb.append(simpleName2);
                sb.append(" (Moshi only supports the collection interfaces by default) or else register a custom JsonAdapter.");
                throw new IllegalArgumentException(sb.toString());
            }
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ProcessVariables
            jadx.core.utils.exceptions.JadxRuntimeException: Method arg registers not loaded: com.squareup.moshi.ClassFactory.3.<init>(java.lang.reflect.Method, java.lang.Class, int):void, class status: GENERATED_AND_UNLOADED
            	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:309)
            	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isArgUnused(ProcessVariables.java:146)
            	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.lambda$isVarUnused$0(ProcessVariables.java:131)
            	at jadx.core.utils.ListUtils.allMatch(ListUtils.java:224)
            	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isVarUnused(ProcessVariables.java:131)
            	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.processBlock(ProcessVariables.java:82)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:93)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
            	at jadx.core.dex.visitors.regions.variables.ProcessVariables.removeUnusedResults(ProcessVariables.java:73)
            	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:48)
            */
        @Override // com.squareup.moshi.JsonAdapter.Factory
        public final com.squareup.moshi.JsonAdapter create(java.lang.reflect.Type r17, java.util.Set r18, com.squareup.moshi.Moshi r19) {
            /*
                Method dump skipped, instruction units count: 593
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.ClassJsonAdapter.AnonymousClass1.create(java.lang.reflect.Type, java.util.Set, com.squareup.moshi.Moshi):com.squareup.moshi.JsonAdapter");
        }
    }

    public static class FieldBinding<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f43355a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Field f43356b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final JsonAdapter f43357c;

        public FieldBinding(String str, Field field, JsonAdapter jsonAdapter) {
            this.f43355a = str;
            this.f43356b = field;
            this.f43357c = jsonAdapter;
        }
    }

    public ClassJsonAdapter(ClassFactory<T> classFactory, Map<String, FieldBinding<?>> map) {
        this.classFactory = classFactory;
        this.fieldsArray = (FieldBinding[]) map.values().toArray(new FieldBinding[map.size()]);
        this.options = JsonReader.Options.a((String[]) map.keySet().toArray(new String[map.size()]));
    }

    @Override // com.squareup.moshi.JsonAdapter
    public T fromJson(JsonReader jsonReader) throws IOException {
        try {
            T t = (T) this.classFactory.a();
            try {
                jsonReader.j();
                while (jsonReader.o()) {
                    int iG = jsonReader.G(this.options);
                    if (iG == -1) {
                        jsonReader.i0();
                        jsonReader.j0();
                    } else {
                        FieldBinding<?> fieldBinding = this.fieldsArray[iG];
                        fieldBinding.f43356b.set(t, fieldBinding.f43357c.fromJson(jsonReader));
                    }
                }
                jsonReader.m();
                return t;
            } catch (IllegalAccessException unused) {
                a61.h();
                return null;
            }
        } catch (IllegalAccessException unused2) {
            a61.h();
            return null;
        } catch (InstantiationException e2) {
            x1.m(e2);
            return null;
        } catch (InvocationTargetException e3) {
            Util.i(e3);
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonWriter jsonWriter, T t) throws IOException {
        try {
            jsonWriter.k();
            for (FieldBinding<?> fieldBinding : this.fieldsArray) {
                jsonWriter.q(fieldBinding.f43355a);
                fieldBinding.f43357c.toJson(jsonWriter, fieldBinding.f43356b.get(t));
            }
            jsonWriter.o();
        } catch (IllegalAccessException unused) {
            a61.h();
        }
    }

    public String toString() {
        return "JsonAdapter(" + this.classFactory + ")";
    }
}
