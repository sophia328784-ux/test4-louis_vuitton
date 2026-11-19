package com.kizitonwose.calendar.compose;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/kizitonwose/calendar/compose/VisibleItemState;", "Ljava/io/Serializable;", "", "firstVisibleItemIndex", "firstVisibleItemScrollOffset", "<init>", "(II)V", "compose_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class VisibleItemState implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f35943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f35944c;

    public /* synthetic */ VisibleItemState(int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? 0 : i3);
    }

    public VisibleItemState(int i2, int i3) {
        this.f35943b = i2;
        this.f35944c = i3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public VisibleItemState() {
        int i2 = 0;
        this(i2, i2, 3, null);
    }
}
