package androidx.media3.container;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes.dex */
public final class ReorderingBufferQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OutputConsumer f14353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f14354b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f14355c = new ArrayDeque();
    public final PriorityQueue d = new PriorityQueue();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14356e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public BuffersWithTimestamp f14357f;

    public static final class BuffersWithTimestamp implements Comparable<BuffersWithTimestamp> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f14359c = -9223372036854775807L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f14358b = new ArrayList();

        @Override // java.lang.Comparable
        public final int compareTo(BuffersWithTimestamp buffersWithTimestamp) {
            return Long.compare(this.f14359c, buffersWithTimestamp.f14359c);
        }
    }

    public interface OutputConsumer {
        void f(long j2, ParsableByteArray parsableByteArray);
    }

    public ReorderingBufferQueue(OutputConsumer outputConsumer) {
        this.f14353a = outputConsumer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
    
        if (r9 < r1.f14359c) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r9, androidx.media3.common.util.ParsableByteArray r11) {
        /*
            r8 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r0 == 0) goto L97
            int r1 = r8.f14356e
            if (r1 == 0) goto L97
            r2 = -1
            java.util.PriorityQueue r3 = r8.d
            if (r1 == r2) goto L29
            int r1 = r3.size()
            int r4 = r8.f14356e
            if (r1 < r4) goto L29
            java.lang.Object r1 = r3.peek()
            androidx.media3.container.ReorderingBufferQueue$BuffersWithTimestamp r1 = (androidx.media3.container.ReorderingBufferQueue.BuffersWithTimestamp) r1
            java.lang.String r4 = androidx.media3.common.util.Util.f14242a
            long r4 = r1.f14359c
            int r1 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r1 >= 0) goto L29
            goto L97
        L29:
            java.util.ArrayDeque r1 = r8.f14354b
            boolean r4 = r1.isEmpty()
            if (r4 == 0) goto L37
            androidx.media3.common.util.ParsableByteArray r1 = new androidx.media3.common.util.ParsableByteArray
            r1.<init>()
            goto L3d
        L37:
            java.lang.Object r1 = r1.pop()
            androidx.media3.common.util.ParsableByteArray r1 = (androidx.media3.common.util.ParsableByteArray) r1
        L3d:
            int r4 = r11.a()
            r1.K(r4)
            byte[] r4 = r11.f14194a
            int r11 = r11.f14195b
            byte[] r5 = r1.f14194a
            int r6 = r1.a()
            r7 = 0
            java.lang.System.arraycopy(r4, r11, r5, r7, r6)
            androidx.media3.container.ReorderingBufferQueue$BuffersWithTimestamp r11 = r8.f14357f
            if (r11 == 0) goto L62
            long r4 = r11.f14359c
            int r4 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r4 != 0) goto L62
            java.util.ArrayList r8 = r11.f14358b
            r8.add(r1)
            return
        L62:
            java.util.ArrayDeque r11 = r8.f14355c
            boolean r4 = r11.isEmpty()
            if (r4 == 0) goto L70
            androidx.media3.container.ReorderingBufferQueue$BuffersWithTimestamp r11 = new androidx.media3.container.ReorderingBufferQueue$BuffersWithTimestamp
            r11.<init>()
            goto L76
        L70:
            java.lang.Object r11 = r11.pop()
            androidx.media3.container.ReorderingBufferQueue$BuffersWithTimestamp r11 = (androidx.media3.container.ReorderingBufferQueue.BuffersWithTimestamp) r11
        L76:
            java.util.ArrayList r4 = r11.f14358b
            if (r0 == 0) goto L7b
            r7 = 1
        L7b:
            com.google.common.base.Preconditions.g(r7)
            boolean r0 = r4.isEmpty()
            com.google.common.base.Preconditions.q(r0)
            r11.f14359c = r9
            r4.add(r1)
            r3.add(r11)
            r8.f14357f = r11
            int r9 = r8.f14356e
            if (r9 == r2) goto L96
            r8.b(r9)
        L96:
            return
        L97:
            androidx.media3.container.ReorderingBufferQueue$OutputConsumer r8 = r8.f14353a
            r8.f(r9, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.container.ReorderingBufferQueue.a(long, androidx.media3.common.util.ParsableByteArray):void");
    }

    public final void b(int i2) {
        ArrayList arrayList;
        while (true) {
            PriorityQueue priorityQueue = this.d;
            if (priorityQueue.size() <= i2) {
                return;
            }
            BuffersWithTimestamp buffersWithTimestamp = (BuffersWithTimestamp) priorityQueue.poll();
            String str = Util.f14242a;
            int i3 = 0;
            while (true) {
                arrayList = buffersWithTimestamp.f14358b;
                if (i3 >= arrayList.size()) {
                    break;
                }
                this.f14353a.f(buffersWithTimestamp.f14359c, (ParsableByteArray) arrayList.get(i3));
                this.f14354b.push((ParsableByteArray) arrayList.get(i3));
                i3++;
            }
            arrayList.clear();
            BuffersWithTimestamp buffersWithTimestamp2 = this.f14357f;
            if (buffersWithTimestamp2 != null && buffersWithTimestamp2.f14359c == buffersWithTimestamp.f14359c) {
                this.f14357f = null;
            }
            this.f14355c.push(buffersWithTimestamp);
        }
    }

    public final void c(int i2) {
        Preconditions.q(i2 >= 0);
        this.f14356e = i2;
        b(i2);
    }
}
