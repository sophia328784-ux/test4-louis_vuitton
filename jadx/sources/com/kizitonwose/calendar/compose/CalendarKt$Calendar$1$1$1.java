package com.kizitonwose.calendar.compose;

import com.kizitonwose.calendar.core.CalendarMonth;
import com.kizitonwose.calendar.data.DataStore;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CalendarKt$Calendar$1$1$1 extends FunctionReferenceImpl implements Function1<Integer, CalendarMonth> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return (CalendarMonth) ((DataStore) this.receiver).get(Integer.valueOf(((Number) obj).intValue()));
    }
}
