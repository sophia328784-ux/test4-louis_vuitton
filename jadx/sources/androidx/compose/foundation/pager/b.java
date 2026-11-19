package androidx.compose.foundation.pager;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        final List list = (List) obj;
        Object obj2 = list.get(0);
        obj2.getClass();
        int iIntValue = ((Integer) obj2).intValue();
        Object obj3 = list.get(1);
        obj3.getClass();
        return new DefaultPagerState(iIntValue, ((Float) obj3).floatValue(), new Function0() { // from class: androidx.compose.foundation.pager.c
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                DefaultPagerState.Companion companion = DefaultPagerState.I;
                Object obj4 = list.get(2);
                obj4.getClass();
                return (Integer) obj4;
            }
        });
    }
}
