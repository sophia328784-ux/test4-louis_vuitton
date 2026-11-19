package androidx.room;

import defpackage.md;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.EmptySet;
import kotlin.collections.SetsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/room/ObserverWrapper;", "", "Landroidx/room/InvalidationTracker$Observer;", "observer", "", "tableIds", "", "", "tableNames", "<init>", "(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ObserverWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InvalidationTracker.Observer f19447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f19448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f19449c;
    public final Set d;

    public ObserverWrapper(InvalidationTracker.Observer observer, int[] iArr, String[] strArr) {
        observer.getClass();
        iArr.getClass();
        strArr.getClass();
        this.f19447a = observer;
        this.f19448b = iArr;
        this.f19449c = strArr;
        if (iArr.length == strArr.length) {
            this.d = !(strArr.length == 0) ? SetsKt.h(strArr[0]) : EmptySet.f71770b;
        } else {
            md.k("Check failed.");
            throw null;
        }
    }
}
