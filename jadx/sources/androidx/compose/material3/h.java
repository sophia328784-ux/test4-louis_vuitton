package androidx.compose.material3;

import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        DatePickerStateImpl datePickerStateImpl = (DatePickerStateImpl) obj2;
        Long lC = datePickerStateImpl.c();
        Long lValueOf = Long.valueOf(datePickerStateImpl.h());
        IntRange intRange = datePickerStateImpl.f6568a;
        return CollectionsKt.P(lC, lValueOf, Integer.valueOf(intRange.f71951b), Integer.valueOf(intRange.f71952c), Integer.valueOf(datePickerStateImpl.g()));
    }
}
