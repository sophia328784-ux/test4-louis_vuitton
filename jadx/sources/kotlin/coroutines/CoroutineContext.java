package kotlin.coroutines;

import defpackage.rq;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "", "Key", "Element", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface CoroutineContext {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public interface Element extends CoroutineContext {

        @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
        public static final class DefaultImpls {
            public static Object a(Element element, Object obj, Function2 function2) {
                function2.getClass();
                return function2.invoke(obj, element);
            }

            public static Element b(Element element, Key key) {
                key.getClass();
                if (Intrinsics.c(element.getKey(), key)) {
                    return element;
                }
                return null;
            }

            public static CoroutineContext c(Element element, Key key) {
                key.getClass();
                return Intrinsics.c(element.getKey(), key) ? EmptyCoroutineContext.f71840b : element;
            }

            public static CoroutineContext d(CoroutineContext coroutineContext, Element element) {
                coroutineContext.getClass();
                return coroutineContext == EmptyCoroutineContext.f71840b ? element : (CoroutineContext) coroutineContext.fold(element, new rq(0));
            }
        }

        Key getKey();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Key;", "E", "Lkotlin/coroutines/CoroutineContext$Element;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public interface Key<E extends Element> {
    }

    Object fold(Object obj, Function2 function2);

    Element get(Key key);

    CoroutineContext minusKey(Key key);

    CoroutineContext plus(CoroutineContext coroutineContext);
}
