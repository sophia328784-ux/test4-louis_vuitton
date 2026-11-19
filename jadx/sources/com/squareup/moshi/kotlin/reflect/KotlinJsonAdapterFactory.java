package com.squareup.moshi.kotlin.reflect;

import com.squareup.moshi.Json;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import com.squareup.moshi.internal.Util;
import defpackage.b21;
import defpackage.n00;
import defpackage.r81;
import defpackage.tg0;
import io.jsonwebtoken.JwtParser;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.KTypeBase;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KType;
import kotlin.reflect.TypesJVMKt;
import kotlin.reflect.jvm.KCallablesJvm;
import kotlin.reflect.jvm.ReflectJvmMapping;
import kotlin.reflect.jvm.internal.DescriptorKCallable;
import kotlin.reflect.jvm.internal.DescriptorKFunction;
import kotlin.reflect.jvm.internal.KClassImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory;", "Lcom/squareup/moshi/JsonAdapter$Factory;", "<init>", "()V", "reflect"}, k = 1, mv = {1, 4, 2})
public final class KotlinJsonAdapterFactory implements JsonAdapter.Factory {
    @Override // com.squareup.moshi.JsonAdapter.Factory
    public final JsonAdapter create(Type type, Set set, Moshi moshi) {
        Object next;
        JsonAdapter jsonAdapter;
        Object next2;
        String f72049j;
        Type typeB;
        String strName;
        Object next3;
        FunctionDescriptor functionDescriptorH;
        type.getClass();
        set.getClass();
        JsonAdapter jsonAdapter2 = null;
        if (set.isEmpty()) {
            Class clsC = Types.c(type);
            clsC.getClass();
            if (!clsC.isInterface() && !clsC.isEnum() && clsC.isAnnotationPresent(Metadata.class) && !Util.e(clsC)) {
                try {
                    JsonAdapter jsonAdapterC = Util.c(moshi, type, clsC);
                    if (jsonAdapterC != null) {
                        return jsonAdapterC;
                    }
                } catch (RuntimeException e2) {
                    if (!(e2.getCause() instanceof ClassNotFoundException)) {
                        throw e2;
                    }
                }
                if (clsC.isLocalClass()) {
                    b21.n("Cannot serialize local class or object expression ".concat(clsC.getName()));
                    return null;
                }
                KClass kClassB = Reflection.f71922a.b(clsC);
                if (kClassB.isAbstract()) {
                    b21.n("Cannot serialize abstract class ".concat(clsC.getName()));
                    return null;
                }
                if (kClassB.k()) {
                    b21.n("Cannot serialize inner class ".concat(clsC.getName()));
                    return null;
                }
                if (kClassB.s() != null) {
                    b21.n("Cannot serialize object declaration ".concat(clsC.getName()));
                    return null;
                }
                if (kClassB.m()) {
                    b21.n(n00.p(clsC, new StringBuilder("Cannot reflectively serialize sealed class "), ". Please register an adapter."));
                    return null;
                }
                KClassImpl kClassImpl = (KClassImpl) kClassB;
                Iterator it = kClassImpl.f().iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    KFunction kFunction = (KFunction) next;
                    kFunction.getClass();
                    functionDescriptorH = ((DescriptorKFunction) kFunction).H();
                    functionDescriptorH.getClass();
                } while (!((ConstructorDescriptor) functionDescriptorH).U());
                KFunction kFunction2 = (KFunction) next;
                if (kFunction2 != null) {
                    List parameters = kFunction2.getParameters();
                    int iG = MapsKt.g(CollectionsKt.t(parameters, 10));
                    if (iG < 16) {
                        iG = 16;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
                    for (Object obj : parameters) {
                        linkedHashMap.put(((KParameter) obj).getName(), obj);
                    }
                    KCallablesJvm.b(kFunction2);
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    ReflectProperties.LazySoftVal lazySoftVal = ((KClassImpl.Data) kClassImpl.f72091f.getF71699b()).q;
                    KProperty kProperty = KClassImpl.Data.u[14];
                    Object objMo47invoke = lazySoftVal.mo47invoke();
                    objMo47invoke.getClass();
                    ArrayList<KProperty1> arrayList = new ArrayList();
                    for (Object obj2 : (Collection) objMo47invoke) {
                        DescriptorKCallable descriptorKCallable = (DescriptorKCallable) obj2;
                        if (descriptorKCallable.H().J() == null && (descriptorKCallable instanceof KProperty1)) {
                            arrayList.add(obj2);
                        }
                    }
                    for (KProperty1 kProperty1 : arrayList) {
                        KParameter kParameter = (KParameter) linkedHashMap.get(kProperty1.getF72049j());
                        Field fieldA = ReflectJvmMapping.a(kProperty1);
                        if (!Modifier.isTransient(fieldA != null ? fieldA.getModifiers() : 0)) {
                            if (kParameter != null && !kParameter.getType().equals(kProperty1.getReturnType())) {
                                StringBuilder sb = new StringBuilder("'");
                                sb.append(kProperty1.getF72049j());
                                sb.append("' has a constructor parameter of type ");
                                kParameter.getClass();
                                sb.append(kParameter.getType());
                                KType returnType = kProperty1.getReturnType();
                                sb.append(" but a property of type ");
                                sb.append(returnType);
                                sb.append(JwtParser.SEPARATOR_CHAR);
                                throw new IllegalArgumentException(sb.toString().toString());
                            }
                            if ((kProperty1 instanceof KMutableProperty1) || kParameter != null) {
                                KCallablesJvm.b(kProperty1);
                                ArrayList arrayListZ0 = CollectionsKt.z0(kProperty1.getF74444f());
                                Iterator it2 = kProperty1.getF74444f().iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        jsonAdapter = jsonAdapter2;
                                        next2 = jsonAdapter;
                                        break;
                                    }
                                    next2 = it2.next();
                                    jsonAdapter = jsonAdapter2;
                                    if (((Annotation) next2) instanceof Json) {
                                        break;
                                    }
                                    jsonAdapter2 = jsonAdapter;
                                }
                                Json json = (Json) next2;
                                if (kParameter != null) {
                                    CollectionsKt.j(arrayListZ0, kParameter.getF74444f());
                                    if (json == null) {
                                        Iterator it3 = kParameter.getF74444f().iterator();
                                        do {
                                            if (!it3.hasNext()) {
                                                next3 = jsonAdapter;
                                                break;
                                            }
                                            next3 = it3.next();
                                        } while (!(((Annotation) next3) instanceof Json));
                                        json = (Json) next3;
                                    }
                                }
                                if (json == null || (f72049j = json.name()) == null) {
                                    f72049j = kProperty1.getF72049j();
                                }
                                KType returnType2 = kProperty1.getReturnType();
                                returnType2.getClass();
                                if (!(returnType2 instanceof KTypeBase) || (typeB = ((KTypeBase) returnType2).j()) == null) {
                                    typeB = TypesJVMKt.b(returnType2, false);
                                }
                                Type typeH = Util.h(type, clsC, typeB, new LinkedHashSet());
                                Object[] array = arrayListZ0.toArray(new Annotation[0]);
                                if (array == null) {
                                    r81.d("null cannot be cast to non-null type kotlin.Array<T>");
                                    return jsonAdapter;
                                }
                                linkedHashMap2.put(kProperty1.getF72049j(), new KotlinJsonAdapter.Binding(f72049j, (json == null || (strName = json.name()) == null) ? f72049j : strName, moshi.c(typeH, Util.f((Annotation[]) array), kProperty1.getF72049j()), kProperty1, kParameter, kParameter != null ? kParameter.getF72041c() : -1));
                            }
                            jsonAdapter2 = jsonAdapter;
                        } else if (kParameter != null && !kParameter.F()) {
                            tg0.n(kParameter, "No default value for transient constructor ");
                            return jsonAdapter2;
                        }
                        jsonAdapter = jsonAdapter2;
                        jsonAdapter2 = jsonAdapter;
                    }
                    JsonAdapter jsonAdapter3 = jsonAdapter2;
                    ArrayList arrayList2 = new ArrayList();
                    for (KParameter kParameter2 : kFunction2.getParameters()) {
                        KotlinJsonAdapter.Binding binding = (KotlinJsonAdapter.Binding) TypeIntrinsics.c(linkedHashMap2).remove(kParameter2.getName());
                        if (binding == null && !kParameter2.F()) {
                            tg0.n(kParameter2, "No property for required constructor ");
                            return jsonAdapter3;
                        }
                        arrayList2.add(binding);
                    }
                    int size = arrayList2.size();
                    Iterator it4 = linkedHashMap2.entrySet().iterator();
                    int i2 = size;
                    while (it4.hasNext()) {
                        KotlinJsonAdapter.Binding binding2 = (KotlinJsonAdapter.Binding) ((Map.Entry) it4.next()).getValue();
                        String str = binding2.f43432a;
                        String str2 = binding2.f43433b;
                        JsonAdapter jsonAdapter4 = binding2.f43434c;
                        KProperty1 kProperty2 = binding2.d;
                        KParameter kParameter3 = binding2.f43435e;
                        str.getClass();
                        jsonAdapter4.getClass();
                        kProperty2.getClass();
                        arrayList2.add(new KotlinJsonAdapter.Binding(str, str2, jsonAdapter4, kProperty2, kParameter3, i2));
                        i2++;
                    }
                    ArrayList arrayListZ = CollectionsKt.z(arrayList2);
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayListZ, 10));
                    Iterator it5 = arrayListZ.iterator();
                    while (it5.hasNext()) {
                        arrayList3.add(((KotlinJsonAdapter.Binding) it5.next()).f43432a);
                    }
                    Object[] array2 = arrayList3.toArray(new String[0]);
                    if (array2 != null) {
                        String[] strArr = (String[]) array2;
                        return new KotlinJsonAdapter(kFunction2, arrayList2, arrayListZ, JsonReader.Options.a((String[]) Arrays.copyOf(strArr, strArr.length))).nullSafe();
                    }
                    r81.d("null cannot be cast to non-null type kotlin.Array<T>");
                    return jsonAdapter3;
                }
            }
        }
        return null;
    }
}
