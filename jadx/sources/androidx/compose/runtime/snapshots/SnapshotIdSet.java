package androidx.compose.runtime.snapshots;

import androidx.collection.MutableLongList;
import com.github.druk.dnssd.NSType;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001:\u0001\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotIdSet;", "", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnapshotIdSet implements Iterable<Long>, KMappedMarker {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f8473f = new Companion(null);
    public static final SnapshotIdSet g = new SnapshotIdSet(0, 0, 0, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f8474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f8475c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f8476e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\f\u0012\b\u0012\u00060\u0003j\u0002`\u00040\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1", f = "SnapshotIdSet.kt", l = {NSType.AXFR, 256, 263}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Long>, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long[] f8477c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f8478e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f8479f;
        public /* synthetic */ Object g;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = SnapshotIdSet.this.new AnonymousClass1(continuation);
            anonymousClass1.g = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((SequenceScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:25:0x008a  */
        /* JADX WARN: Code duplicated, block: B:27:0x0091  */
        /* JADX WARN: Code duplicated, block: B:31:0x00ac  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0079 -> B:19:0x007c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00a6 -> B:30:0x00a9). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ac -> B:30:0x00a9). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d9 -> B:42:0x00dc). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00df -> B:42:0x00dc). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r23) {
            /*
                Method dump skipped, instruction units count: 232
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotIdSet.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public SnapshotIdSet(long j2, long j3, long j4, long[] jArr) {
        this.f8474b = j2;
        this.f8475c = j3;
        this.d = j4;
        this.f8476e = jArr;
    }

    public final SnapshotIdSet a(SnapshotIdSet snapshotIdSet) {
        long[] jArr;
        SnapshotIdSet snapshotIdSetF = this;
        SnapshotIdSet snapshotIdSet2 = g;
        if (snapshotIdSet == snapshotIdSet2) {
            return snapshotIdSetF;
        }
        if (snapshotIdSetF == snapshotIdSet2) {
            return snapshotIdSet2;
        }
        long j2 = snapshotIdSet.d;
        long j3 = snapshotIdSet.d;
        long[] jArr2 = snapshotIdSet.f8476e;
        long j4 = snapshotIdSet.f8475c;
        long j5 = snapshotIdSet.f8474b;
        long j6 = snapshotIdSetF.d;
        if (j2 == j6 && jArr2 == (jArr = snapshotIdSetF.f8476e)) {
            return new SnapshotIdSet(snapshotIdSetF.f8474b & (~j5), snapshotIdSetF.f8475c & (~j4), j6, jArr);
        }
        if (jArr2 != null) {
            for (long j7 : jArr2) {
                snapshotIdSetF = snapshotIdSetF.f(j7);
            }
        }
        if (j4 != 0) {
            for (int i2 = 0; i2 < 64; i2++) {
                if (((1 << i2) & j4) != 0) {
                    snapshotIdSetF = snapshotIdSetF.f(((long) i2) + j3);
                }
            }
        }
        if (j5 != 0) {
            for (int i3 = 0; i3 < 64; i3++) {
                if (((1 << i3) & j5) != 0) {
                    snapshotIdSetF = snapshotIdSetF.f(((long) i3) + j3 + 64);
                }
            }
        }
        return snapshotIdSetF;
    }

    public final SnapshotIdSet f(long j2) {
        long[] jArr;
        int iA;
        long[] jArr2;
        long j3 = j2 - this.d;
        if (Intrinsics.e(j3, 0L) >= 0 && Intrinsics.e(j3, 64L) < 0) {
            long j4 = 1 << ((int) j3);
            long j5 = this.f8475c;
            if ((j5 & j4) != 0) {
                return new SnapshotIdSet(this.f8474b, j5 & (~j4), this.d, this.f8476e);
            }
        } else if (Intrinsics.e(j3, 64L) >= 0 && Intrinsics.e(j3, 128L) < 0) {
            long j6 = 1 << (((int) j3) - 64);
            long j7 = this.f8474b;
            if ((j7 & j6) != 0) {
                return new SnapshotIdSet(j7 & (~j6), this.f8475c, this.d, this.f8476e);
            }
        } else if (Intrinsics.e(j3, 0L) < 0 && (jArr = this.f8476e) != null && (iA = SnapshotId_jvmKt.a(jArr, j2)) >= 0) {
            int length = jArr.length;
            int i2 = length - 1;
            if (i2 == 0) {
                jArr2 = null;
            } else {
                long[] jArr3 = new long[i2];
                if (iA > 0) {
                    ArraysKt.k(0, jArr, 0, jArr3, iA);
                }
                if (iA < i2) {
                    ArraysKt.k(iA, jArr, iA + 1, jArr3, length);
                }
                jArr2 = jArr3;
            }
            return new SnapshotIdSet(this.f8474b, this.f8475c, this.d, jArr2);
        }
        return this;
    }

    public final boolean h(long j2) {
        long[] jArr;
        long j3 = j2 - this.d;
        if (Intrinsics.e(j3, 0L) >= 0 && Intrinsics.e(j3, 64L) < 0) {
            return ((1 << ((int) j3)) & this.f8475c) != 0;
        }
        if (Intrinsics.e(j3, 64L) < 0 || Intrinsics.e(j3, 128L) >= 0) {
            return Intrinsics.e(j3, 0L) <= 0 && (jArr = this.f8476e) != null && SnapshotId_jvmKt.a(jArr, j2) >= 0;
        }
        return ((1 << (((int) j3) + (-64))) & this.f8474b) != 0;
    }

    public final SnapshotIdSet i(SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSetM;
        long[] jArr;
        SnapshotIdSet snapshotIdSetM2 = this;
        SnapshotIdSet snapshotIdSet2 = g;
        if (snapshotIdSet == snapshotIdSet2) {
            return snapshotIdSetM2;
        }
        if (snapshotIdSetM2 == snapshotIdSet2) {
            return snapshotIdSet;
        }
        long j2 = snapshotIdSet.d;
        long j3 = snapshotIdSet.d;
        long[] jArr2 = snapshotIdSet.f8476e;
        long j4 = snapshotIdSet.f8475c;
        long j5 = snapshotIdSet.f8474b;
        long j6 = snapshotIdSetM2.d;
        long j7 = snapshotIdSetM2.f8475c;
        long j8 = snapshotIdSetM2.f8474b;
        if (j2 == j6 && jArr2 == (jArr = snapshotIdSetM2.f8476e)) {
            return new SnapshotIdSet(j8 | j5, j7 | j4, j6, jArr);
        }
        int i2 = 0;
        long[] jArr3 = snapshotIdSetM2.f8476e;
        if (jArr3 != null) {
            if (jArr2 != null) {
                for (long j9 : jArr2) {
                    snapshotIdSetM2 = snapshotIdSetM2.m(j9);
                }
            }
            if (j4 != 0) {
                for (int i3 = 0; i3 < 64; i3++) {
                    if (((1 << i3) & j4) != 0) {
                        snapshotIdSetM2 = snapshotIdSetM2.m(((long) i3) + j3);
                    }
                }
            }
            if (j5 != 0) {
                while (i2 < 64) {
                    if (((1 << i2) & j5) != 0) {
                        snapshotIdSetM2 = snapshotIdSetM2.m(((long) i2) + j3 + 64);
                    }
                    i2++;
                }
            }
            return snapshotIdSetM2;
        }
        if (jArr3 != null) {
            snapshotIdSetM = snapshotIdSet;
            for (long j10 : jArr3) {
                snapshotIdSetM = snapshotIdSetM.m(j10);
            }
        } else {
            snapshotIdSetM = snapshotIdSet;
        }
        long j11 = snapshotIdSetM2.d;
        if (j7 != 0) {
            for (int i4 = 0; i4 < 64; i4++) {
                if (((1 << i4) & j7) != 0) {
                    snapshotIdSetM = snapshotIdSetM.m(((long) i4) + j11);
                }
            }
        }
        if (j8 != 0) {
            while (i2 < 64) {
                if (((1 << i2) & j8) != 0) {
                    snapshotIdSetM = snapshotIdSetM.m(((long) i2) + j11 + 64);
                }
                i2++;
            }
        }
        return snapshotIdSetM;
    }

    @Override // java.lang.Iterable
    public final Iterator<Long> iterator() {
        return SequencesKt.o(new SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1(new AnonymousClass1(null)).f74479a);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00f6  */
    public final SnapshotIdSet m(long j2) {
        long j3;
        long j4;
        long[] jArr;
        long[] jArr2;
        int i2;
        long j5 = this.d;
        long j6 = j2 - j5;
        long j7 = 0;
        int iE = Intrinsics.e(j6, 0L);
        long j8 = this.f8475c;
        if (iE < 0 || Intrinsics.e(j6, 64L) >= 0) {
            int iE2 = Intrinsics.e(j6, 64L);
            long j9 = this.f8474b;
            int i3 = 64;
            if (iE2 < 0 || Intrinsics.e(j6, 128L) >= 0) {
                int iE3 = Intrinsics.e(j6, 128L);
                long[] jArr3 = this.f8476e;
                if (iE3 < 0) {
                    if (jArr3 == null) {
                        return new SnapshotIdSet(this.f8474b, this.f8475c, this.d, new long[]{j2});
                    }
                    int iA = SnapshotId_jvmKt.a(jArr3, j2);
                    if (iA < 0) {
                        int i4 = -(iA + 1);
                        int length = jArr3.length;
                        long[] jArr4 = new long[length + 1];
                        ArraysKt.k(0, jArr3, 0, jArr4, i4);
                        ArraysKt.k(i4 + 1, jArr3, i4, jArr4, length);
                        jArr4[i4] = j2;
                        return new SnapshotIdSet(this.f8474b, this.f8475c, this.d, jArr4);
                    }
                } else if (!h(j2)) {
                    long j10 = ((j2 + 1) / 64) * 64;
                    if (Intrinsics.e(j10, 0L) < 0) {
                        j10 = 9223372036854775680L;
                    }
                    long j11 = j9;
                    SnapshotIdArrayBuilder snapshotIdArrayBuilder = null;
                    while (true) {
                        if (Intrinsics.e(j5, j10) >= 0) {
                            j3 = j5;
                            j4 = j8;
                            break;
                        }
                        if (j8 != j7) {
                            if (snapshotIdArrayBuilder == null) {
                                snapshotIdArrayBuilder = new SnapshotIdArrayBuilder(jArr3);
                            }
                            int i5 = 0;
                            i2 = i3;
                            while (i5 < i2) {
                                if ((j8 & (1 << i5)) != j7) {
                                    snapshotIdArrayBuilder.f8472a.a(((long) i5) + j5);
                                }
                                i5++;
                                j7 = j7;
                            }
                        } else {
                            i2 = i3;
                        }
                        long j12 = j7;
                        if (j11 == j12) {
                            j3 = j10;
                            j4 = j12;
                            break;
                        }
                        j5 += 64;
                        j7 = j12;
                        j8 = j11;
                        i3 = i2;
                        j11 = j7;
                    }
                    if (snapshotIdArrayBuilder == null) {
                        jArr = jArr3;
                    } else {
                        MutableLongList mutableLongList = snapshotIdArrayBuilder.f8472a;
                        int i6 = mutableLongList.f3276b;
                        if (i6 == 0) {
                            jArr2 = null;
                        } else {
                            long[] jArr5 = new long[i6];
                            long[] jArr6 = mutableLongList.f3275a;
                            for (int i7 = 0; i7 < i6; i7++) {
                                jArr5[i7] = jArr6[i7];
                            }
                            jArr2 = jArr5;
                        }
                        if (jArr2 == null) {
                            jArr = jArr3;
                        } else {
                            jArr = jArr2;
                        }
                    }
                    return new SnapshotIdSet(j11, j4, j3, jArr).m(j2);
                }
            } else {
                long j13 = 1 << (((int) j6) - 64);
                if ((j9 & j13) == 0) {
                    return new SnapshotIdSet(j9 | j13, this.f8475c, this.d, this.f8476e);
                }
            }
        } else {
            long j14 = 1 << ((int) j6);
            if ((j8 & j14) == 0) {
                return new SnapshotIdSet(this.f8474b, j8 | j14, this.d, this.f8476e);
            }
        }
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(" [");
        ArrayList arrayList = new ArrayList(CollectionsKt.t(this, 10));
        Iterator<Long> it = iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next().longValue()));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        int size = arrayList.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = arrayList.get(i3);
            i2++;
            if (i2 > 1) {
                sb2.append((CharSequence) ", ");
            }
            if (obj != null ? obj instanceof CharSequence : true) {
                sb2.append((CharSequence) obj);
            } else if (obj instanceof Character) {
                sb2.append(((Character) obj).charValue());
            } else {
                sb2.append((CharSequence) obj.toString());
            }
        }
        sb2.append((CharSequence) "");
        sb.append(sb2.toString());
        sb.append(']');
        return sb.toString();
    }
}
