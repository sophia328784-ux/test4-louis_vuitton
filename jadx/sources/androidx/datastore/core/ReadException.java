package androidx.datastore.core;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/datastore/core/ReadException;", "T", "Landroidx/datastore/core/State;", "", "readException", "", "version", "<init>", "(Ljava/lang/Throwable;I)V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ReadException<T> extends State<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f12813b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadException(Throwable th, int i2) {
        super(i2, null);
        th.getClass();
        this.f12813b = th;
    }
}
