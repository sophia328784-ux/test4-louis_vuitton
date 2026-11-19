package com.kizitonwose.calendar.compose;

import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B*\u0012!\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/kizitonwose/calendar/compose/ItemCoordinatesStore;", "", "Lkotlin/Function1;", "Lcom/kizitonwose/calendar/compose/ItemCoordinates;", "Lkotlin/ParameterName;", "name", "itemCoordinates", "", "onItemPlaced", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "compose_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ItemCoordinatesStore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f35940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LayoutCoordinates f35941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutCoordinates f35942c;

    public ItemCoordinatesStore(Function1<? super ItemCoordinates, Unit> function1) {
        function1.getClass();
        this.f35940a = function1;
    }
}
