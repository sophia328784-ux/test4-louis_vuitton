package okio;

import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/PriorityQueue;", "", "<init>", "()V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PriorityQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f77438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AsyncTimeout[] f77439b = new AsyncTimeout[8];

    public final void a(int i2, AsyncTimeout asyncTimeout) {
        while (true) {
            int i3 = i2 >> 1;
            if (i3 == 0) {
                break;
            }
            AsyncTimeout asyncTimeout2 = this.f77439b[i3];
            asyncTimeout2.getClass();
            if (Intrinsics.e(0L, asyncTimeout.g - asyncTimeout2.g) <= 0) {
                break;
            }
            asyncTimeout2.f77388f = i2;
            this.f77439b[i2] = asyncTimeout2;
            i2 = i3;
        }
        this.f77439b[i2] = asyncTimeout;
        asyncTimeout.f77388f = i2;
    }

    public final void b(AsyncTimeout asyncTimeout) {
        AsyncTimeout asyncTimeout2;
        int i2 = asyncTimeout.f77388f;
        if (i2 == -1) {
            md.n("Failed requirement.");
            return;
        }
        int i3 = this.f77438a;
        AsyncTimeout asyncTimeout3 = this.f77439b[i3];
        asyncTimeout3.getClass();
        asyncTimeout.f77388f = -1;
        this.f77439b[i3] = null;
        this.f77438a = i3 - 1;
        if (asyncTimeout == asyncTimeout3) {
            return;
        }
        int iE = Intrinsics.e(0L, asyncTimeout3.g - asyncTimeout.g);
        if (iE == 0) {
            this.f77439b[i2] = asyncTimeout3;
            asyncTimeout3.f77388f = i2;
            return;
        }
        if (iE >= 0) {
            a(i2, asyncTimeout3);
            return;
        }
        while (true) {
            int i4 = i2 << 1;
            int i5 = i4 + 1;
            int i6 = this.f77438a;
            if (i5 > i6) {
                if (i4 > i6) {
                    break;
                }
                asyncTimeout2 = this.f77439b[i4];
                asyncTimeout2.getClass();
            } else {
                asyncTimeout2 = this.f77439b[i4];
                asyncTimeout2.getClass();
                AsyncTimeout asyncTimeout4 = this.f77439b[i5];
                asyncTimeout4.getClass();
                if (Intrinsics.e(0L, asyncTimeout4.g - asyncTimeout2.g) >= 0) {
                    asyncTimeout2 = asyncTimeout4;
                }
            }
            if (Intrinsics.e(0L, asyncTimeout2.g - asyncTimeout3.g) <= 0) {
                break;
            }
            int i7 = asyncTimeout2.f77388f;
            asyncTimeout2.f77388f = i2;
            this.f77439b[i2] = asyncTimeout2;
            i2 = i7;
        }
        this.f77439b[i2] = asyncTimeout3;
        asyncTimeout3.f77388f = i2;
    }
}
