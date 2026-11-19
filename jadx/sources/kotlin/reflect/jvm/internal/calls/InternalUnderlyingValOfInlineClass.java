package kotlin.reflect.jvm.internal.calls;

import defpackage.a;
import defpackage.md;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "Ljava/lang/reflect/Method;", "Unbound", "Bound", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Bound;", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Unbound;", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class InternalUnderlyingValOfInlineClass implements Caller<Method> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Method f72215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f72216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class f72217c;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Bound;", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;", "Lkotlin/reflect/jvm/internal/calls/BoundCaller;", "Ljava/lang/reflect/Method;", "unboxMethod", "", "boundReceiver", "<init>", "(Ljava/lang/reflect/Method;Ljava/lang/Object;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Bound extends InternalUnderlyingValOfInlineClass implements BoundCaller {
        public final Object d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Bound(Method method, Object obj) {
            super(method, EmptyList.f71768b, null);
            method.getClass();
            this.d = obj;
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public final Object call(Object[] objArr) {
            objArr.getClass();
            d(objArr);
            return this.f72215a.invoke(this.d, Arrays.copyOf(objArr, objArr.length));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass$Unbound;", "Lkotlin/reflect/jvm/internal/calls/InternalUnderlyingValOfInlineClass;", "Ljava/lang/reflect/Method;", "unboxMethod", "<init>", "(Ljava/lang/reflect/Method;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Unbound extends InternalUnderlyingValOfInlineClass {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Unbound(Method method) {
            super(method, CollectionsKt.O(method.getDeclaringClass()), null);
            method.getClass();
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public final Object call(Object[] objArr) {
            objArr.getClass();
            d(objArr);
            Object obj = objArr[0];
            int i2 = CallerImpl.f72205e;
            Object[] objArrQ = objArr.length <= 1 ? new Object[0] : ArraysKt.q(1, objArr.length, objArr);
            return this.f72215a.invoke(obj, Arrays.copyOf(objArrQ, objArrQ.length));
        }
    }

    public InternalUnderlyingValOfInlineClass(Method method, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this.f72215a = method;
        this.f72216b = list;
        Class<?> returnType = method.getReturnType();
        returnType.getClass();
        this.f72217c = returnType;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* JADX INFO: renamed from: a, reason: from getter */
    public final List getF72216b() {
        return this.f72216b;
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

    public final void d(Object[] objArr) {
        objArr.getClass();
        List list = this.f72216b;
        if (list.size() == objArr.length) {
            return;
        }
        StringBuilder sb = new StringBuilder("Callable expects ");
        sb.append(list.size());
        sb.append(" arguments, but ");
        md.n(a.i(objArr.length, " were provided.", sb));
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* JADX INFO: renamed from: getReturnType */
    public final Type getF72207b() {
        return this.f72217c;
    }
}
