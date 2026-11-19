package androidx.datastore.core;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/datastore/core/AtomicInt;", "", "", "initialValue", "<init>", "(I)V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AtomicInt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicInteger f12609a;

    public AtomicInt(int i2) {
        this.f12609a = new AtomicInteger(i2);
    }

    public /* synthetic */ AtomicInt(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i2);
    }
}
