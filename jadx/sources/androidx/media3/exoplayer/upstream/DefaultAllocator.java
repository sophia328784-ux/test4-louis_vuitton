package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultAllocator implements Allocator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f15806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f15808c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f15809e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15810f;
    public Allocation[] g;

    public DefaultAllocator(boolean z, int i2, int i3) {
        Preconditions.g(i2 > 0);
        Preconditions.g(i3 >= 0);
        this.f15806a = z;
        this.f15807b = i2;
        this.f15810f = i3;
        this.g = new Allocation[i3 + 100];
        if (i3 <= 0) {
            this.f15808c = null;
            return;
        }
        this.f15808c = new byte[i3 * i2];
        for (int i4 = 0; i4 < i3; i4++) {
            this.g[i4] = new Allocation(this.f15808c, i4 * i2);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public final synchronized void a(Allocator.AllocationNode allocationNode) {
        while (allocationNode != null) {
            Allocation[] allocationArr = this.g;
            int i2 = this.f15810f;
            this.f15810f = i2 + 1;
            allocationArr[i2] = allocationNode.a();
            this.f15809e--;
            allocationNode = allocationNode.next();
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public final synchronized Allocation b() {
        Allocation allocation;
        try {
            this.f15809e++;
            int i2 = this.f15810f;
            if (i2 > 0) {
                Allocation[] allocationArr = this.g;
                int i3 = i2 - 1;
                this.f15810f = i3;
                allocation = allocationArr[i3];
                allocation.getClass();
                this.g[this.f15810f] = null;
            } else {
                allocation = new Allocation(new byte[this.f15807b], 0);
                int i4 = this.f15809e;
                Allocation[] allocationArr2 = this.g;
                if (i4 > allocationArr2.length) {
                    this.g = (Allocation[]) Arrays.copyOf(allocationArr2, allocationArr2.length * 2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return allocation;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public final synchronized void c(Allocation allocation) {
        Allocation[] allocationArr = this.g;
        int i2 = this.f15810f;
        this.f15810f = i2 + 1;
        allocationArr[i2] = allocation;
        this.f15809e--;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public final synchronized void d() {
        try {
            int i2 = 0;
            int iMax = Math.max(0, Util.g(this.d, this.f15807b) - this.f15809e);
            int i3 = this.f15810f;
            if (iMax >= i3) {
                return;
            }
            if (this.f15808c != null) {
                int i4 = i3 - 1;
                while (i2 <= i4) {
                    Allocation allocation = this.g[i2];
                    allocation.getClass();
                    if (allocation.f15749a == this.f15808c) {
                        i2++;
                    } else {
                        Allocation allocation2 = this.g[i4];
                        allocation2.getClass();
                        if (allocation2.f15749a != this.f15808c) {
                            i4--;
                        } else {
                            Allocation[] allocationArr = this.g;
                            allocationArr[i2] = allocation2;
                            allocationArr[i4] = allocation;
                            i4--;
                            i2++;
                        }
                    }
                }
                iMax = Math.max(iMax, i2);
                if (iMax >= this.f15810f) {
                    return;
                }
            }
            Arrays.fill(this.g, iMax, this.f15810f, (Object) null);
            this.f15810f = iMax;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public final int e() {
        return this.f15807b;
    }

    public final synchronized void f(int i2) {
        boolean z = i2 < this.d;
        this.d = i2;
        if (z) {
            d();
        }
    }

    public DefaultAllocator(boolean z, int i2) {
        this(z, i2, 0);
    }
}
