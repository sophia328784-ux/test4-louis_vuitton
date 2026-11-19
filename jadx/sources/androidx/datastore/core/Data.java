package androidx.datastore.core;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/datastore/core/Data;", "T", "Landroidx/datastore/core/State;", "value", "", "hashCode", "version", "<init>", "(Ljava/lang/Object;II)V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Data<T> extends State<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f12610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f12611c;

    public Data(T t, int i2, int i3) {
        super(i3, null);
        this.f12610b = t;
        this.f12611c = i2;
    }
}
