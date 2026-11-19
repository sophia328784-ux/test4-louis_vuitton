package kotlin.reflect.jvm.internal.impl.util;

import defpackage.az;
import defpackage.md;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.types.TypeAttribute;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AttributeArrayOwner<K, T> extends AbstractArrayMapOwner<K, T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayMap f74330b;

    public AttributeArrayOwner() {
        EmptyArrayMap emptyArrayMap = EmptyArrayMap.f74341b;
        emptyArrayMap.getClass();
        this.f74330b = emptyArrayMap;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.AbstractArrayMapOwner
    public final ArrayMap f() {
        return this.f74330b;
    }

    public final String i(ArrayMap arrayMap, int i2, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Race condition happened, the size of ArrayMap is " + i2 + " but it isn't an `" + str + '`');
        sb.append('\n');
        StringBuilder sb2 = new StringBuilder("Type: ");
        sb2.append(arrayMap.getClass());
        sb.append(sb2.toString());
        sb.append('\n');
        StringBuilder sb3 = new StringBuilder();
        ConcurrentHashMap concurrentHashMap = h().f74374a;
        sb3.append("[\n");
        ArrayList arrayList = new ArrayList(CollectionsKt.t(arrayMap, 10));
        int i3 = 0;
        for (T t : arrayMap) {
            int i4 = i3 + 1;
            T t2 = null;
            if (i3 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            for (T t3 : concurrentHashMap.entrySet()) {
                if (((Number) ((Map.Entry) t3).getValue()).intValue() == i3) {
                    t2 = t3;
                    break;
                }
            }
            sb3.append("  " + ((Map.Entry) t2) + '[' + i3 + "]: " + t);
            sb3.append('\n');
            arrayList.add(sb3);
            i3 = i4;
        }
        sb3.append("]");
        sb3.append('\n');
        sb.append("Content: ".concat(sb3.toString()));
        sb.append('\n');
        return sb.toString();
    }

    public final void m(String str, TypeAttribute typeAttribute) {
        str.getClass();
        TypeAttributes.Companion companionH = h();
        companionH.getClass();
        int iA = companionH.a(companionH.f74374a, str, new TypeRegistry$$Lambda$0(companionH));
        int iF = this.f74330b.f();
        if (iF == 0) {
            ArrayMap arrayMap = this.f74330b;
            if (arrayMap instanceof EmptyArrayMap) {
                this.f74330b = new OneElementArrayMap(typeAttribute, iA);
                return;
            } else {
                md.k(i(arrayMap, 0, "EmptyArrayMap"));
                return;
            }
        }
        if (iF == 1) {
            ArrayMap arrayMap2 = this.f74330b;
            try {
                arrayMap2.getClass();
                OneElementArrayMap oneElementArrayMap = (OneElementArrayMap) arrayMap2;
                int i2 = oneElementArrayMap.f74349c;
                if (i2 == iA) {
                    this.f74330b = new OneElementArrayMap(typeAttribute, iA);
                    return;
                } else {
                    ArrayMapImpl arrayMapImpl = new ArrayMapImpl();
                    arrayMapImpl.h(i2, oneElementArrayMap.f74348b);
                    this.f74330b = arrayMapImpl;
                }
            } catch (ClassCastException e2) {
                az.s(i(arrayMap2, 1, "OneElementArrayMap"), e2);
                return;
            }
        }
        this.f74330b.h(iA, typeAttribute);
    }
}
