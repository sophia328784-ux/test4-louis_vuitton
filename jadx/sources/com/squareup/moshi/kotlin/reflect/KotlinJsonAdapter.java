package com.squareup.moshi.kotlin.reflect;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import com.squareup.moshi.internal.Util;
import defpackage.a;
import defpackage.d20;
import defpackage.fc;
import defpackage.r81;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002 !BU\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u001c\u0010\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00070\u0006\u0012\u001a\u0010\t\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0015\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u0016H\u0016¢\u0006\u0002\u0010\u0017J\u001f\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u001dJ\b\u0010\u001e\u001a\u00020\u001fH\u0016R'\u0010\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R%\u0010\t\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\""}, d2 = {"Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;", "T", "Lcom/squareup/moshi/JsonAdapter;", "constructor", "Lkotlin/reflect/KFunction;", "allBindings", "", "Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;", "", "nonTransientBindings", "options", "Lcom/squareup/moshi/JsonReader$Options;", "(Lkotlin/reflect/KFunction;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/JsonReader$Options;)V", "getAllBindings", "()Ljava/util/List;", "getConstructor", "()Lkotlin/reflect/KFunction;", "getNonTransientBindings", "getOptions", "()Lcom/squareup/moshi/JsonReader$Options;", "fromJson", "reader", "Lcom/squareup/moshi/JsonReader;", "(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;", "toJson", "", "writer", "Lcom/squareup/moshi/JsonWriter;", "value", "(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V", "toString", "", "Binding", "IndexedParameterMap", "reflect"}, k = 1, mv = {1, 4, 2})
public final class KotlinJsonAdapter<T> extends JsonAdapter<T> {
    private final List<Binding<T, Object>> allBindings;
    private final KFunction<T> constructor;
    private final List<Binding<T, Object>> nonTransientBindings;
    private final JsonReader.Options options;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u0000*\u0004\b\u0001\u0010\u0001*\u0004\b\u0002\u0010\u00022\u00020\u0003BM\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00020\u0007\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;", "K", "P", "", "", "name", "jsonName", "Lcom/squareup/moshi/JsonAdapter;", "adapter", "Lkotlin/reflect/KProperty1;", "property", "Lkotlin/reflect/KParameter;", "parameter", "", "propertyIndex", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonAdapter;Lkotlin/reflect/KProperty1;Lkotlin/reflect/KParameter;I)V", "reflect"}, k = 1, mv = {1, 4, 2})
    public static final /* data */ class Binding<K, P> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f43432a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f43433b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final JsonAdapter f43434c;
        public final KProperty1 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final KParameter f43435e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f43436f;

        public Binding(String str, String str2, JsonAdapter<P> jsonAdapter, KProperty1<K, ? extends P> kProperty1, KParameter kParameter, int i2) {
            str.getClass();
            jsonAdapter.getClass();
            kProperty1.getClass();
            this.f43432a = str;
            this.f43433b = str2;
            this.f43434c = jsonAdapter;
            this.d = kProperty1;
            this.f43435e = kParameter;
            this.f43436f = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Binding)) {
                return false;
            }
            Binding binding = (Binding) obj;
            return Intrinsics.c(this.f43432a, binding.f43432a) && Intrinsics.c(this.f43433b, binding.f43433b) && Intrinsics.c(this.f43434c, binding.f43434c) && Intrinsics.c(this.d, binding.d) && Intrinsics.c(this.f43435e, binding.f43435e) && this.f43436f == binding.f43436f;
        }

        public final int hashCode() {
            String str = this.f43432a;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f43433b;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            JsonAdapter jsonAdapter = this.f43434c;
            int iHashCode3 = (iHashCode2 + (jsonAdapter != null ? jsonAdapter.hashCode() : 0)) * 31;
            KProperty1 kProperty1 = this.d;
            int iHashCode4 = (iHashCode3 + (kProperty1 != null ? kProperty1.hashCode() : 0)) * 31;
            KParameter kParameter = this.f43435e;
            return ((iHashCode4 + (kParameter != null ? kParameter.hashCode() : 0)) * 31) + this.f43436f;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Binding(name=");
            sb.append(this.f43432a);
            sb.append(", jsonName=");
            sb.append(this.f43433b);
            sb.append(", adapter=");
            sb.append(this.f43434c);
            sb.append(", property=");
            sb.append(this.d);
            sb.append(", parameter=");
            sb.append(this.f43435e);
            sb.append(", propertyIndex=");
            return a.i(this.f43436f, ")", sb);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public KotlinJsonAdapter(KFunction<? extends T> kFunction, List<Binding<T, Object>> list, List<Binding<T, Object>> list2, JsonReader.Options options) {
        kFunction.getClass();
        list.getClass();
        list2.getClass();
        options.getClass();
        this.constructor = kFunction;
        this.allBindings = list;
        this.nonTransientBindings = list2;
        this.options = options;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public T fromJson(JsonReader reader) throws IOException {
        Object obj;
        String string;
        String string2;
        reader.getClass();
        int size = this.constructor.getParameters().size();
        int size2 = this.allBindings.size();
        Object[] objArr = new Object[size2];
        int i2 = 0;
        while (true) {
            obj = KotlinJsonAdapterKt.f43439a;
            if (i2 >= size2) {
                break;
            }
            objArr[i2] = obj;
            i2++;
        }
        reader.j();
        while (true) {
            if (!reader.o()) {
                reader.m();
                boolean z = this.allBindings.size() == size;
                for (int i3 = 0; i3 < size; i3++) {
                    if (objArr[i3] == obj) {
                        if (((KParameter) this.constructor.getParameters().get(i3)).F()) {
                            z = false;
                        } else {
                            if (!((KParameter) this.constructor.getParameters().get(i3)).getType().f74413c.I0()) {
                                String name = ((KParameter) this.constructor.getParameters().get(i3)).getName();
                                Binding<T, Object> binding = this.allBindings.get(i3);
                                String str = binding != null ? binding.f43433b : null;
                                Set set = Util.f43424a;
                                String strN = reader.n();
                                if (str.equals(name)) {
                                    string = fc.i("Required value '", name, "' missing at ", strN);
                                } else {
                                    StringBuilder sbS = fc.s("Required value '", name, "' (JSON name '", str, "') missing at ");
                                    sbS.append(strN);
                                    string = sbS.toString();
                                }
                                throw new JsonDataException(string);
                            }
                            objArr[i3] = null;
                        }
                    }
                }
                KFunction<T> kFunction = this.constructor;
                T t = z ? (T) kFunction.call(Arrays.copyOf(objArr, size2)) : (T) kFunction.callBy(new IndexedParameterMap(this.constructor.getParameters(), objArr));
                int size3 = this.allBindings.size();
                while (size < size3) {
                    Binding<T, Object> binding2 = this.allBindings.get(size);
                    binding2.getClass();
                    Binding<T, Object> binding3 = binding2;
                    Object obj2 = objArr[size];
                    if (obj2 != obj) {
                        KProperty1 kProperty1 = binding3.d;
                        if (kProperty1 == null) {
                            r81.d("null cannot be cast to non-null type kotlin.reflect.KMutableProperty1<K, P>");
                            return null;
                        }
                        ((KMutableProperty1) kProperty1).o(t, obj2);
                    }
                    size++;
                }
                return t;
            }
            int iG = reader.G(this.options);
            if (iG == -1) {
                reader.i0();
                reader.j0();
            } else {
                Binding<T, Object> binding4 = this.nonTransientBindings.get(iG);
                int i4 = binding4.f43436f;
                KProperty1 kProperty2 = binding4.d;
                if (objArr[i4] != obj) {
                    d20.i("Multiple values for '", kProperty2.getF72049j(), "' at ", reader.n());
                    return null;
                }
                Object objFromJson = binding4.f43434c.fromJson(reader);
                objArr[i4] = objFromJson;
                if (objFromJson == null && !kProperty2.getReturnType().getF74443e()) {
                    String f72049j = kProperty2.getF72049j();
                    String str2 = binding4.f43433b;
                    Set set2 = Util.f43424a;
                    String strN2 = reader.n();
                    if (str2.equals(f72049j)) {
                        string2 = fc.i("Non-null value '", f72049j, "' was null at ", strN2);
                    } else {
                        StringBuilder sbS2 = fc.s("Non-null value '", f72049j, "' (JSON name '", str2, "') was null at ");
                        sbS2.append(strN2);
                        string2 = sbS2.toString();
                    }
                    throw new JsonDataException(string2);
                }
            }
        }
    }

    public final List<Binding<T, Object>> getAllBindings() {
        return this.allBindings;
    }

    public final KFunction<T> getConstructor() {
        return this.constructor;
    }

    public final List<Binding<T, Object>> getNonTransientBindings() {
        return this.nonTransientBindings;
    }

    public final JsonReader.Options getOptions() {
        return this.options;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonWriter writer, T value) throws IOException {
        writer.getClass();
        if (value == null) {
            r81.d("value == null");
            return;
        }
        writer.k();
        for (Binding<T, Object> binding : this.allBindings) {
            if (binding != null) {
                writer.q(binding.f43432a);
                binding.f43434c.toJson(writer, binding.d.get(value));
            }
        }
        writer.o();
    }

    public String toString() {
        return "KotlinJsonAdapter(" + this.constructor.getReturnType() + ')';
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\u0018\u00002\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B%\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;", "Lkotlin/collections/AbstractMutableMap;", "Lkotlin/reflect/KParameter;", "", "", "parameterKeys", "", "parameterValues", "<init>", "(Ljava/util/List;[Ljava/lang/Object;)V", "reflect"}, k = 1, mv = {1, 4, 2})
    public static final class IndexedParameterMap extends AbstractMutableMap<KParameter, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f43437b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object[] f43438c;

        public IndexedParameterMap(List<? extends KParameter> list, Object[] objArr) {
            list.getClass();
            objArr.getClass();
            this.f43437b = list;
            this.f43438c = objArr;
        }

        @Override // kotlin.collections.AbstractMutableMap
        public final Set c() {
            List list = this.f43437b;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            int i2 = 0;
            for (T t : list) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                arrayList.add(new AbstractMap.SimpleEntry((KParameter) t, this.f43438c[i2]));
                i2 = i3;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (T t2 : arrayList) {
                if (((AbstractMap.SimpleEntry) t2).getValue() != KotlinJsonAdapterKt.f43439a) {
                    linkedHashSet.add(t2);
                }
            }
            return linkedHashSet;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return (obj instanceof KParameter) && this.f43438c[((KParameter) obj).getIndex()] != KotlinJsonAdapterKt.f43439a;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            Object obj2;
            if (!(obj instanceof KParameter) || (obj2 = this.f43438c[((KParameter) obj).getIndex()]) == KotlinJsonAdapterKt.f43439a) {
                return null;
            }
            return obj2;
        }

        @Override // java.util.Map
        public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
            return obj instanceof KParameter ? super.getOrDefault((KParameter) obj, obj2) : obj2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object put(Object obj, Object obj2) {
            ((KParameter) obj).getClass();
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ Object remove(Object obj) {
            if (obj instanceof KParameter) {
                return super.remove((KParameter) obj);
            }
            return null;
        }

        @Override // java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if (obj instanceof KParameter) {
                return super.remove((KParameter) obj, obj2);
            }
            return false;
        }
    }
}
