package androidx.compose.material3;

import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7455c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a(Object obj, Object obj2, int i2) {
        this.f7454b = i2;
        this.f7455c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f7454b;
        Object obj2 = this.d;
        Object obj3 = this.f7455c;
        switch (i2) {
            case 0:
                BuildersKt.c((CoroutineScope) obj3, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$nestedScroll$1$1$1((SheetState) obj2, ((Float) obj).floatValue(), null), 3);
                return Unit.f71739a;
            default:
                List list = (List) obj;
                Long l = (Long) list.get(0);
                Long l2 = (Long) list.get(1);
                Object obj4 = list.get(2);
                obj4.getClass();
                int iIntValue = ((Integer) obj4).intValue();
                Object obj5 = list.get(3);
                obj5.getClass();
                IntRange intRange = new IntRange(iIntValue, ((Integer) obj5).intValue());
                Object obj6 = list.get(4);
                obj6.getClass();
                int iIntValue2 = ((Integer) obj6).intValue();
                DisplayMode.Companion companion = DisplayMode.f6900b;
                return new DatePickerStateImpl(l, l2, intRange, iIntValue2, (SelectableDates) obj3, (Locale) obj2, null);
        }
    }
}
