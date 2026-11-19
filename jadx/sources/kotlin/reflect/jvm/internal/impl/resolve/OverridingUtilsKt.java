package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OverridingUtilsKt {
    public static final Collection a(Collection collection, Function1 function1) {
        collection.getClass();
        function1.getClass();
        if (collection.size() <= 1) {
            return collection;
        }
        LinkedList linkedList = new LinkedList(collection);
        SmartSet.d.getClass();
        SmartSet smartSetA = SmartSet.Companion.a();
        while (!linkedList.isEmpty()) {
            Object objB = CollectionsKt.B(linkedList);
            SmartSet.d.getClass();
            final SmartSet smartSetA2 = SmartSet.Companion.a();
            ArrayList arrayListG = OverridingUtil.g(objB, linkedList, function1, new Function1(smartSetA2) { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt$$Lambda$1

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final SmartSet f73857b;

                {
                    this.f73857b = smartSetA2;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    obj.getClass();
                    this.f73857b.add(obj);
                    return Unit.f71739a;
                }
            });
            if (arrayListG.size() == 1 && smartSetA2.isEmpty()) {
                Object objG0 = CollectionsKt.g0(arrayListG);
                objG0.getClass();
                smartSetA.add(objG0);
            } else {
                Object objS = OverridingUtil.s(arrayListG, function1);
                CallableDescriptor callableDescriptor = (CallableDescriptor) function1.invoke(objS);
                for (Object obj : arrayListG) {
                    obj.getClass();
                    if (!OverridingUtil.k(callableDescriptor, (CallableDescriptor) function1.invoke(obj))) {
                        smartSetA2.add(obj);
                    }
                }
                if (!smartSetA2.isEmpty()) {
                    smartSetA.addAll(smartSetA2);
                }
                smartSetA.add(objS);
            }
        }
        return smartSetA;
    }
}
