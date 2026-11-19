package kotlin.reflect.jvm.internal.calls;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "hashCode", "", "toString", "kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AnnotationConstructorCallerKt {
    public static final Object a(final Class cls, final Map map, final List list) {
        cls.getClass();
        map.getClass();
        list.getClass();
        final Lazy lazyB = LazyKt.b(new Function0(map) { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Map f72197b;

            {
                this.f72197b = map;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int iHashCode;
                int iHashCode2 = 0;
                for (Map.Entry entry : this.f72197b.entrySet()) {
                    String str = (String) entry.getKey();
                    Object value = entry.getValue();
                    if (value instanceof boolean[]) {
                        iHashCode = Arrays.hashCode((boolean[]) value);
                    } else if (value instanceof char[]) {
                        iHashCode = Arrays.hashCode((char[]) value);
                    } else if (value instanceof byte[]) {
                        iHashCode = Arrays.hashCode((byte[]) value);
                    } else if (value instanceof short[]) {
                        iHashCode = Arrays.hashCode((short[]) value);
                    } else if (value instanceof int[]) {
                        iHashCode = Arrays.hashCode((int[]) value);
                    } else if (value instanceof float[]) {
                        iHashCode = Arrays.hashCode((float[]) value);
                    } else if (value instanceof long[]) {
                        iHashCode = Arrays.hashCode((long[]) value);
                    } else if (value instanceof double[]) {
                        iHashCode = Arrays.hashCode((double[]) value);
                    } else {
                        iHashCode = value instanceof Object[] ? Arrays.hashCode((Object[]) value) : value.hashCode();
                    }
                    iHashCode2 += iHashCode ^ (str.hashCode() * CertificateBody.profileType);
                }
                return Integer.valueOf(iHashCode2);
            }
        });
        final Lazy lazyB2 = LazyKt.b(new Function0(cls, map) { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Class f72198b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Map f72199c;

            {
                this.f72198b = cls;
                this.f72199c = map;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                StringBuilder sb = new StringBuilder();
                sb.append(AnnotationParser.AnnotationInstruction);
                sb.append(this.f72198b.getCanonicalName());
                CollectionsKt.J(this.f72199c.entrySet(), sb, ", ", "(", ")", new Function1() { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$$Lambda$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        String string;
                        Map.Entry entry = (Map.Entry) obj;
                        entry.getClass();
                        String str = (String) entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof boolean[]) {
                            string = Arrays.toString((boolean[]) value);
                            string.getClass();
                        } else if (value instanceof char[]) {
                            string = Arrays.toString((char[]) value);
                            string.getClass();
                        } else if (value instanceof byte[]) {
                            string = Arrays.toString((byte[]) value);
                            string.getClass();
                        } else if (value instanceof short[]) {
                            string = Arrays.toString((short[]) value);
                            string.getClass();
                        } else if (value instanceof int[]) {
                            string = Arrays.toString((int[]) value);
                            string.getClass();
                        } else if (value instanceof float[]) {
                            string = Arrays.toString((float[]) value);
                            string.getClass();
                        } else if (value instanceof long[]) {
                            string = Arrays.toString((long[]) value);
                            string.getClass();
                        } else if (value instanceof double[]) {
                            string = Arrays.toString((double[]) value);
                            string.getClass();
                        } else if (value instanceof Object[]) {
                            string = Arrays.toString((Object[]) value);
                            string.getClass();
                        } else {
                            string = value.toString();
                        }
                        return str + '=' + string;
                    }
                }, 48);
                return sb.toString();
            }
        });
        Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler(cls, map, lazyB2, lazyB, list) { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$$Lambda$2

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Class f72200a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Map f72201b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Lazy f72202c;
            public final Lazy d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final List f72203e;

            {
                this.f72200a = cls;
                this.f72201b = map;
                this.f72202c = lazyB2;
                this.d = lazyB;
                this.f72203e = list;
            }

            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) throws IllegalAccessException, InvocationTargetException {
                boolean zC;
                String name = method.getName();
                Class cls2 = this.f72200a;
                if (name != null) {
                    int iHashCode = name.hashCode();
                    if (iHashCode != -1776922004) {
                        if (iHashCode != 147696667) {
                            if (iHashCode == 1444986633 && name.equals("annotationType")) {
                                return cls2;
                            }
                        } else if (name.equals("hashCode")) {
                            return Integer.valueOf(((Number) this.d.getF71699b()).intValue());
                        }
                    } else if (name.equals("toString")) {
                        return (String) this.f72202c.getF71699b();
                    }
                }
                boolean zC2 = Intrinsics.c(name, "equals");
                Map map2 = this.f72201b;
                boolean z = false;
                if (!zC2 || objArr == null || objArr.length != 1) {
                    if (map2.containsKey(name)) {
                        return map2.get(name);
                    }
                    StringBuilder sb = new StringBuilder("Method is not supported: ");
                    sb.append(method);
                    sb.append(" (args: ");
                    if (objArr == null) {
                        objArr = new Object[0];
                    }
                    sb.append(ArraysKt.W(objArr));
                    sb.append(')');
                    throw new KotlinReflectionInternalError(sb.toString());
                }
                Object objQ = ArraysKt.Q(objArr);
                Annotation annotation = objQ instanceof Annotation ? (Annotation) objQ : null;
                if (Intrinsics.c(annotation != null ? JvmClassMappingKt.b(JvmClassMappingKt.a(annotation)) : null, cls2)) {
                    List<Method> list2 = this.f72203e;
                    if ((list2 instanceof Collection) && list2.isEmpty()) {
                        z = true;
                    } else {
                        for (Method method2 : list2) {
                            Object obj2 = map2.get(method2.getName());
                            Object objInvoke = method2.invoke(objQ, null);
                            if (obj2 instanceof boolean[]) {
                                objInvoke.getClass();
                                zC = Arrays.equals((boolean[]) obj2, (boolean[]) objInvoke);
                            } else if (obj2 instanceof char[]) {
                                objInvoke.getClass();
                                zC = Arrays.equals((char[]) obj2, (char[]) objInvoke);
                            } else if (obj2 instanceof byte[]) {
                                objInvoke.getClass();
                                zC = Arrays.equals((byte[]) obj2, (byte[]) objInvoke);
                            } else if (obj2 instanceof short[]) {
                                objInvoke.getClass();
                                zC = Arrays.equals((short[]) obj2, (short[]) objInvoke);
                            } else if (obj2 instanceof int[]) {
                                objInvoke.getClass();
                                zC = Arrays.equals((int[]) obj2, (int[]) objInvoke);
                            } else if (obj2 instanceof float[]) {
                                objInvoke.getClass();
                                zC = Arrays.equals((float[]) obj2, (float[]) objInvoke);
                            } else if (obj2 instanceof long[]) {
                                objInvoke.getClass();
                                zC = Arrays.equals((long[]) obj2, (long[]) objInvoke);
                            } else if (obj2 instanceof double[]) {
                                objInvoke.getClass();
                                zC = Arrays.equals((double[]) obj2, (double[]) objInvoke);
                            } else if (obj2 instanceof Object[]) {
                                objInvoke.getClass();
                                zC = Arrays.equals((Object[]) obj2, (Object[]) objInvoke);
                            } else {
                                zC = Intrinsics.c(obj2, objInvoke);
                            }
                            if (!zC) {
                            }
                        }
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        });
        objNewProxyInstance.getClass();
        return objNewProxyInstance;
    }

    public static /* synthetic */ Object b(Class cls, Map map) {
        Set setKeySet = map.keySet();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(setKeySet, 10));
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            arrayList.add(cls.getDeclaredMethod((String) it.next(), null));
        }
        return a(cls, map, arrayList);
    }
}
