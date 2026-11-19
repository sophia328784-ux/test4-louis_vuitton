package kotlin.reflect.jvm.internal.calls;

import defpackage.a;
import defpackage.md;
import defpackage.mt;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002\u0010\u0011BA\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0005¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "", "Ljava/lang/Class;", "jClass", "", "", "parameterNames", "Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;", "callMode", "Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;", "origin", "Ljava/lang/reflect/Method;", "methods", "<init>", "(Ljava/lang/Class;Ljava/util/List;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;Ljava/util/List;)V", "CallMode", "Origin", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnnotationConstructorCaller implements Caller {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f72192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f72193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CallMode f72194c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f72195e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f72196f;
    public final ArrayList g;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;", "", "CALL_BY_NAME", "POSITIONAL_CALL", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class CallMode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CallMode[] $VALUES;
        public static final CallMode CALL_BY_NAME;
        public static final CallMode POSITIONAL_CALL;

        static {
            CallMode callMode = new CallMode("CALL_BY_NAME", 0);
            CALL_BY_NAME = callMode;
            CallMode callMode2 = new CallMode("POSITIONAL_CALL", 1);
            POSITIONAL_CALL = callMode2;
            CallMode[] callModeArr = {callMode, callMode2};
            $VALUES = callModeArr;
            $ENTRIES = EnumEntriesKt.a(callModeArr);
        }

        public static CallMode valueOf(String str) {
            return (CallMode) Enum.valueOf(CallMode.class, str);
        }

        public static CallMode[] values() {
            return (CallMode[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;", "", "JAVA", "KOTLIN", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Origin {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Origin[] $VALUES;
        public static final Origin JAVA;
        public static final Origin KOTLIN;

        static {
            Origin origin = new Origin("JAVA", 0);
            JAVA = origin;
            Origin origin2 = new Origin("KOTLIN", 1);
            KOTLIN = origin2;
            Origin[] originArr = {origin, origin2};
            $VALUES = originArr;
            $ENTRIES = EnumEntriesKt.a(originArr);
        }

        public static Origin valueOf(String str) {
            return (Origin) Enum.valueOf(Origin.class, str);
        }

        public static Origin[] values() {
            return (Origin[]) $VALUES.clone();
        }
    }

    public AnnotationConstructorCaller(Class<?> cls, List<String> list, CallMode callMode, Origin origin, List<Method> list2) {
        cls.getClass();
        list.getClass();
        callMode.getClass();
        origin.getClass();
        list2.getClass();
        this.f72192a = cls;
        this.f72193b = list;
        this.f72194c = callMode;
        this.d = list2;
        List<Method> list3 = list2;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
        Iterator<T> it = list3.iterator();
        while (it.hasNext()) {
            arrayList.add(((Method) it.next()).getGenericReturnType());
        }
        this.f72195e = arrayList;
        List list4 = this.d;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
        Iterator it2 = list4.iterator();
        while (it2.hasNext()) {
            Class<?> returnType = ((Method) it2.next()).getReturnType();
            returnType.getClass();
            Class<?> cls2 = (Class) ReflectClassUtilKt.f72604c.get(returnType);
            if (cls2 != null) {
                returnType = cls2;
            }
            arrayList2.add(returnType);
        }
        this.f72196f = arrayList2;
        List list5 = this.d;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list5, 10));
        Iterator it3 = list5.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((Method) it3.next()).getDefaultValue());
        }
        this.g = arrayList3;
        if (this.f72194c == CallMode.POSITIONAL_CALL && origin == Origin.JAVA && !CollectionsKt.S(this.f72193b, "value").isEmpty()) {
            mt.i("Positional call of a Java annotation constructor is allowed only if there are no parameters or one parameter named \"value\". This restriction exists because Java annotations (in contrast to Kotlin)do not impose any order on their arguments. Use KCallable#callBy instead.");
            throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* JADX INFO: renamed from: a */
    public final List getF72216b() {
        return this.f72195e;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* JADX INFO: renamed from: b */
    public final /* bridge */ /* synthetic */ Member getF72206a() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final /* bridge */ boolean c() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x008d A[PHI: r17
      0x008d: PHI (r17v5 java.lang.Object) = (r17v4 java.lang.Object), (r17v6 java.lang.Object) binds: [B:24:0x0059, B:33:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:49:0x0114  */
    /* JADX WARN: Code duplicated, block: B:52:0x013c A[LOOP:0: B:5:0x001a->B:52:0x013c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:58:0x0091 A[SYNTHETIC] */
    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Object call(Object[] objArr) {
        Object obj;
        Class cls;
        KClass kClassB;
        String f74431c;
        ReflectionFactory reflectionFactory;
        String f74431c2;
        objArr.getClass();
        ArrayList arrayList = this.f72195e;
        if (arrayList.size() != objArr.length) {
            StringBuilder sb = new StringBuilder("Callable expects ");
            sb.append(arrayList.size());
            sb.append(" arguments, but ");
            md.n(a.i(objArr.length, " were provided.", sb));
            return null;
        }
        ArrayList arrayList2 = new ArrayList(objArr.length);
        int length = objArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            List list = this.f72193b;
            if (i2 >= length) {
                return AnnotationConstructorCallerKt.a(this.f72192a, MapsKt.n(CollectionsKt.E0(list, arrayList2)), this.d);
            }
            Object array = objArr[i2];
            int i4 = i3 + 1;
            ArrayList arrayList3 = this.f72196f;
            if (array == null && this.f72194c == CallMode.CALL_BY_NAME) {
                array = this.g.get(i3);
            } else {
                Class cls2 = (Class) arrayList3.get(i3);
                if (array instanceof Class) {
                    array = null;
                } else {
                    if (array instanceof KClass) {
                        array = JvmClassMappingKt.b((KClass) array);
                    } else {
                        if (array instanceof Object[]) {
                            Object[] objArr2 = (Object[]) array;
                            if (objArr2 instanceof Class[]) {
                                obj = null;
                            } else if (objArr2 instanceof KClass[]) {
                                KClass[] kClassArr = (KClass[]) array;
                                ArrayList arrayList4 = new ArrayList(kClassArr.length);
                                for (KClass kClass : kClassArr) {
                                    arrayList4.add(JvmClassMappingKt.b(kClass));
                                }
                                obj = null;
                                array = arrayList4.toArray(new Class[0]);
                            } else {
                                obj = null;
                                array = objArr2;
                            }
                            array = obj;
                        }
                        if (!cls2.isInstance(array)) {
                            array = obj;
                        }
                    }
                    obj = null;
                    if (!cls2.isInstance(array)) {
                        array = obj;
                    }
                }
                if (array == null) {
                    String str = (String) list.get(i3);
                    cls = (Class) arrayList3.get(i3);
                    if (Intrinsics.c(cls, Class.class)) {
                        kClassB = Reflection.f71922a.b(KClass.class);
                    } else if (cls.isArray() || !Intrinsics.c(cls.getComponentType(), Class.class)) {
                        kClassB = Reflection.f71922a.b(cls);
                    } else {
                        kClassB = Reflection.f71922a.b(KClass[].class);
                    }
                    f74431c = kClassB.getF74431c();
                    reflectionFactory = Reflection.f71922a;
                    if (Intrinsics.c(f74431c, reflectionFactory.b(Object[].class).getF74431c())) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(kClassB.getF74431c());
                        sb2.append('<');
                        Class<?> componentType = JvmClassMappingKt.b(kClassB).getComponentType();
                        componentType.getClass();
                        sb2.append(reflectionFactory.b(componentType).getF74431c());
                        sb2.append('>');
                        f74431c2 = sb2.toString();
                    } else {
                        f74431c2 = kClassB.getF74431c();
                    }
                    throw new IllegalArgumentException("Argument #" + i3 + ' ' + str + " is not of the required type " + f74431c2);
                }
                arrayList2.add(array);
                i2++;
                i3 = i4;
            }
            if (array == null) {
                String str2 = (String) list.get(i3);
                cls = (Class) arrayList3.get(i3);
                if (Intrinsics.c(cls, Class.class)) {
                    kClassB = Reflection.f71922a.b(KClass.class);
                } else if (cls.isArray()) {
                    kClassB = Reflection.f71922a.b(cls);
                } else {
                    kClassB = Reflection.f71922a.b(cls);
                }
                f74431c = kClassB.getF74431c();
                reflectionFactory = Reflection.f71922a;
                if (Intrinsics.c(f74431c, reflectionFactory.b(Object[].class).getF74431c())) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(kClassB.getF74431c());
                    sb3.append('<');
                    Class<?> componentType2 = JvmClassMappingKt.b(kClassB).getComponentType();
                    componentType2.getClass();
                    sb3.append(reflectionFactory.b(componentType2).getF74431c());
                    sb3.append('>');
                    f74431c2 = sb3.toString();
                } else {
                    f74431c2 = kClassB.getF74431c();
                }
                throw new IllegalArgumentException("Argument #" + i3 + ' ' + str2 + " is not of the required type " + f74431c2);
            }
            arrayList2.add(array);
            i2++;
            i3 = i4;
        }
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* JADX INFO: renamed from: getReturnType */
    public final Type getF72207b() {
        return this.f72192a;
    }

    public /* synthetic */ AnnotationConstructorCaller(Class cls, List list, CallMode callMode, Origin origin, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        List list3;
        if ((i2 & 16) != 0) {
            List list4 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list4, 10));
            Iterator it = list4.iterator();
            while (it.hasNext()) {
                arrayList.add(cls.getDeclaredMethod((String) it.next(), null));
            }
            list3 = arrayList;
        } else {
            list3 = list2;
        }
        this(cls, list, callMode, origin, list3);
    }
}
