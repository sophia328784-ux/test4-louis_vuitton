package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003:\u0002\u000e\u000fB1\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fB)\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007¢\u0006\u0004\b\u000b\u0010\r¨\u0006\u0010"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;", "K", "V", "", "", "dataMap", "nodeMap", "", "buffer", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;", "ownedBy", "<init>", "(II[Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/MutabilityOwnership;)V", "(II[Ljava/lang/Object;)V", "ModificationResult", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TrieNode<K, V> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f8343e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final TrieNode f8344f = new TrieNode(0, 0, new Object[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutabilityOwnership f8347c;
    public Object[] d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode$Companion;", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B#\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode$ModificationResult;", "K", "V", "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;", "node", "", "sizeDelta", "<init>", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ModificationResult<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TrieNode f8348a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f8349b;

        public ModificationResult(TrieNode<K, V> trieNode, int i2) {
            this.f8348a = trieNode;
            this.f8349b = i2;
        }
    }

    public TrieNode(int i2, int i3, Object[] objArr, MutabilityOwnership mutabilityOwnership) {
        this.f8345a = i2;
        this.f8346b = i3;
        this.f8347c = mutabilityOwnership;
        this.d = objArr;
    }

    public static TrieNode j(int i2, Object obj, Object obj2, int i3, Object obj3, Object obj4, int i4, MutabilityOwnership mutabilityOwnership) {
        if (i4 > 30) {
            return new TrieNode(0, 0, new Object[]{obj, obj2, obj3, obj4}, mutabilityOwnership);
        }
        int iD = TrieNodeKt.d(i2, i4);
        int iD2 = TrieNodeKt.d(i3, i4);
        if (iD != iD2) {
            return new TrieNode((1 << iD) | (1 << iD2), 0, iD < iD2 ? new Object[]{obj, obj2, obj3, obj4} : new Object[]{obj3, obj4, obj, obj2}, mutabilityOwnership);
        }
        return new TrieNode(0, 1 << iD, new Object[]{j(i2, obj, obj2, i3, obj3, obj4, i4 + 5, mutabilityOwnership)}, mutabilityOwnership);
    }

    public final Object[] a(int i2, int i3, int i4, Object obj, Object obj2, int i5, MutabilityOwnership mutabilityOwnership) {
        Object obj3 = this.d[i2];
        TrieNode trieNodeJ = j(obj3 != null ? obj3.hashCode() : 0, obj3, x(i2), i4, obj, obj2, i5 + 5, mutabilityOwnership);
        int iT = t(i3);
        int i6 = iT + 1;
        Object[] objArr = this.d;
        Object[] objArr2 = new Object[objArr.length - 1];
        ArraysKt.n(objArr, objArr2, 0, i2, 6);
        ArraysKt.l(objArr, objArr2, i2, i2 + 2, i6);
        objArr2[iT - 1] = trieNodeJ;
        ArraysKt.l(objArr, objArr2, iT, i6, objArr.length);
        return objArr2;
    }

    public final int b() {
        if (this.f8346b == 0) {
            return this.d.length / 2;
        }
        int iBitCount = Integer.bitCount(this.f8345a);
        int length = this.d.length;
        for (int i2 = iBitCount * 2; i2 < length; i2++) {
            iBitCount += s(i2).b();
        }
        return iBitCount;
    }

    public final boolean c(Object obj) {
        IntProgression intProgressionI = RangesKt.i(RangesKt.j(0, this.d.length), 2);
        int i2 = intProgressionI.f71951b;
        int i3 = intProgressionI.f71952c;
        int i4 = intProgressionI.d;
        if ((i4 > 0 && i2 <= i3) || (i4 < 0 && i3 <= i2)) {
            while (!Intrinsics.c(obj, this.d[i2])) {
                if (i2 != i3) {
                    i2 += i4;
                }
            }
            return true;
        }
        return false;
    }

    public final boolean d(int i2, int i3, Object obj) {
        int iD = 1 << TrieNodeKt.d(i2, i3);
        if (h(iD)) {
            return Intrinsics.c(obj, this.d[f(iD)]);
        }
        if (!i(iD)) {
            return false;
        }
        TrieNode trieNodeS = s(t(iD));
        return i3 == 30 ? trieNodeS.c(obj) : trieNodeS.d(i2, i3 + 5, obj);
    }

    public final boolean e(TrieNode trieNode) {
        if (this == trieNode) {
            return true;
        }
        if (this.f8346b == trieNode.f8346b && this.f8345a == trieNode.f8345a) {
            int length = this.d.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (this.d[i2] == trieNode.d[i2]) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f(int i2) {
        return Integer.bitCount(this.f8345a & (i2 - 1)) * 2;
    }

    public final Object g(int i2, int i3, Object obj) {
        int iD = 1 << TrieNodeKt.d(i2, i3);
        if (h(iD)) {
            int iF = f(iD);
            if (Intrinsics.c(obj, this.d[iF])) {
                return x(iF);
            }
            return null;
        }
        if (!i(iD)) {
            return null;
        }
        TrieNode trieNodeS = s(t(iD));
        if (i3 != 30) {
            return trieNodeS.g(i2, i3 + 5, obj);
        }
        IntProgression intProgressionI = RangesKt.i(RangesKt.j(0, trieNodeS.d.length), 2);
        int i4 = intProgressionI.f71951b;
        int i5 = intProgressionI.f71952c;
        int i6 = intProgressionI.d;
        if ((i6 <= 0 || i4 > i5) && (i6 >= 0 || i5 > i4)) {
            return null;
        }
        while (!Intrinsics.c(obj, trieNodeS.d[i4])) {
            if (i4 == i5) {
                return null;
            }
            i4 += i6;
        }
        return trieNodeS.x(i4);
    }

    public final boolean h(int i2) {
        return (this.f8345a & i2) != 0;
    }

    public final boolean i(int i2) {
        return (this.f8346b & i2) != 0;
    }

    public final TrieNode k(int i2, PersistentHashMapBuilder persistentHashMapBuilder) {
        persistentHashMapBuilder.h(persistentHashMapBuilder.g - 1);
        persistentHashMapBuilder.f8331e = x(i2);
        Object[] objArr = this.d;
        if (objArr.length == 2) {
            return null;
        }
        if (this.f8347c != persistentHashMapBuilder.f8330c) {
            return new TrieNode(0, 0, TrieNodeKt.b(i2, objArr), persistentHashMapBuilder.f8330c);
        }
        this.d = TrieNodeKt.b(i2, objArr);
        return this;
    }

    public final TrieNode l(int i2, Object obj, Object obj2, int i3, PersistentHashMapBuilder persistentHashMapBuilder) {
        PersistentHashMapBuilder persistentHashMapBuilder2;
        TrieNode trieNodeL;
        int iD = 1 << TrieNodeKt.d(i2, i3);
        boolean zH = h(iD);
        MutabilityOwnership mutabilityOwnership = this.f8347c;
        if (zH) {
            int iF = f(iD);
            if (!Intrinsics.c(obj, this.d[iF])) {
                persistentHashMapBuilder.h(persistentHashMapBuilder.g + 1);
                MutabilityOwnership mutabilityOwnership2 = persistentHashMapBuilder.f8330c;
                if (mutabilityOwnership != mutabilityOwnership2) {
                    return new TrieNode(this.f8345a ^ iD, this.f8346b | iD, a(iF, iD, i2, obj, obj2, i3, mutabilityOwnership2), mutabilityOwnership2);
                }
                this.d = a(iF, iD, i2, obj, obj2, i3, mutabilityOwnership2);
                this.f8345a ^= iD;
                this.f8346b |= iD;
                return this;
            }
            persistentHashMapBuilder.f8331e = x(iF);
            if (x(iF) == obj2) {
                return this;
            }
            if (mutabilityOwnership == persistentHashMapBuilder.f8330c) {
                this.d[iF + 1] = obj2;
                return this;
            }
            persistentHashMapBuilder.f8332f++;
            Object[] objArr = this.d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            objArrCopyOf[iF + 1] = obj2;
            return new TrieNode(this.f8345a, this.f8346b, objArrCopyOf, persistentHashMapBuilder.f8330c);
        }
        if (!i(iD)) {
            persistentHashMapBuilder.h(persistentHashMapBuilder.g + 1);
            MutabilityOwnership mutabilityOwnership3 = persistentHashMapBuilder.f8330c;
            int iF2 = f(iD);
            Object[] objArr2 = this.d;
            if (mutabilityOwnership != mutabilityOwnership3) {
                return new TrieNode(this.f8345a | iD, this.f8346b, TrieNodeKt.a(iF2, obj, obj2, objArr2), mutabilityOwnership3);
            }
            this.d = TrieNodeKt.a(iF2, obj, obj2, objArr2);
            this.f8345a |= iD;
            return this;
        }
        int iT = t(iD);
        TrieNode trieNodeS = s(iT);
        if (i3 == 30) {
            IntProgression intProgressionI = RangesKt.i(RangesKt.j(0, trieNodeS.d.length), 2);
            int i4 = intProgressionI.f71951b;
            int i5 = intProgressionI.f71952c;
            int i6 = intProgressionI.d;
            if ((i6 > 0 && i4 <= i5) || (i6 < 0 && i5 <= i4)) {
                while (true) {
                    if (!Intrinsics.c(obj, trieNodeS.d[i4])) {
                        if (i4 == i5) {
                            persistentHashMapBuilder.h(persistentHashMapBuilder.g + 1);
                            trieNodeL = new TrieNode(0, 0, TrieNodeKt.a(0, obj, obj2, trieNodeS.d), persistentHashMapBuilder.f8330c);
                            break;
                        }
                        i4 += i6;
                    } else {
                        persistentHashMapBuilder.f8331e = trieNodeS.x(i4);
                        if (trieNodeS.f8347c != persistentHashMapBuilder.f8330c) {
                            persistentHashMapBuilder.f8332f++;
                            Object[] objArr3 = trieNodeS.d;
                            Object[] objArrCopyOf2 = Arrays.copyOf(objArr3, objArr3.length);
                            objArrCopyOf2[i4 + 1] = obj2;
                            trieNodeL = new TrieNode(0, 0, objArrCopyOf2, persistentHashMapBuilder.f8330c);
                            break;
                        }
                        trieNodeS.d[i4 + 1] = obj2;
                        trieNodeL = trieNodeS;
                        break;
                    }
                }
            } else {
                persistentHashMapBuilder.h(persistentHashMapBuilder.g + 1);
                trieNodeL = new TrieNode(0, 0, TrieNodeKt.a(0, obj, obj2, trieNodeS.d), persistentHashMapBuilder.f8330c);
                break;
            }
            persistentHashMapBuilder2 = persistentHashMapBuilder;
        } else {
            persistentHashMapBuilder2 = persistentHashMapBuilder;
            trieNodeL = trieNodeS.l(i2, obj, obj2, i3 + 5, persistentHashMapBuilder2);
        }
        return trieNodeS == trieNodeL ? this : r(iT, trieNodeL, persistentHashMapBuilder2.f8330c);
    }

    public final TrieNode m(TrieNode trieNode, int i2, DeltaCounter deltaCounter, PersistentHashMapBuilder persistentHashMapBuilder) {
        TrieNode trieNode2;
        Object[] objArr;
        TrieNode trieNodeJ;
        if (this == trieNode) {
            deltaCounter.f8366a += b();
            return this;
        }
        int i3 = 0;
        if (i2 > 30) {
            MutabilityOwnership mutabilityOwnership = persistentHashMapBuilder.f8330c;
            Object[] objArr2 = this.d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length + trieNode.d.length);
            int length = this.d.length;
            IntProgression intProgressionI = RangesKt.i(RangesKt.j(0, trieNode.d.length), 2);
            int i4 = intProgressionI.f71951b;
            int i5 = intProgressionI.f71952c;
            int i6 = intProgressionI.d;
            if ((i6 > 0 && i4 <= i5) || (i6 < 0 && i5 <= i4)) {
                while (true) {
                    if (c(trieNode.d[i4])) {
                        deltaCounter.f8366a++;
                    } else {
                        Object[] objArr3 = trieNode.d;
                        objArrCopyOf[length] = objArr3[i4];
                        objArrCopyOf[length + 1] = objArr3[i4 + 1];
                        length += 2;
                    }
                    if (i4 == i5) {
                        break;
                    }
                    i4 += i6;
                }
            }
            if (length != this.d.length) {
                if (length != trieNode.d.length) {
                    return length == objArrCopyOf.length ? new TrieNode(0, 0, objArrCopyOf, mutabilityOwnership) : new TrieNode(0, 0, Arrays.copyOf(objArrCopyOf, length), mutabilityOwnership);
                }
            }
            return this;
        }
        int i7 = this.f8346b | trieNode.f8346b;
        int i8 = this.f8345a;
        int i9 = trieNode.f8345a;
        int i10 = (i8 ^ i9) & (~i7);
        int i11 = i8 & i9;
        int i12 = i10;
        while (i11 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i11);
            if (Intrinsics.c(this.d[f(iLowestOneBit)], trieNode.d[trieNode.f(iLowestOneBit)])) {
                i12 |= iLowestOneBit;
            } else {
                i7 |= iLowestOneBit;
            }
            i11 ^= iLowestOneBit;
        }
        if ((i7 & i12) != 0) {
            PreconditionsKt.b("Check failed.");
        }
        if (Intrinsics.c(this.f8347c, persistentHashMapBuilder.f8330c) && this.f8345a == i12 && this.f8346b == i7) {
            trieNode2 = this;
        } else {
            trieNode2 = new TrieNode(i12, i7, new Object[Integer.bitCount(i7) + (Integer.bitCount(i12) * 2)]);
        }
        int i13 = i7;
        int i14 = 0;
        while (i13 != 0) {
            int iLowestOneBit2 = Integer.lowestOneBit(i13);
            Object[] objArr4 = trieNode2.d;
            int length2 = (objArr4.length - 1) - i14;
            if (i(iLowestOneBit2)) {
                trieNodeJ = s(t(iLowestOneBit2));
                if (trieNode.i(iLowestOneBit2)) {
                    trieNodeJ = trieNodeJ.m(trieNode.s(trieNode.t(iLowestOneBit2)), i2 + 5, deltaCounter, persistentHashMapBuilder);
                    objArr = objArr4;
                } else if (trieNode.h(iLowestOneBit2)) {
                    int iF = trieNode.f(iLowestOneBit2);
                    Object obj = trieNode.d[iF];
                    Object objX = trieNode.x(iF);
                    int i15 = persistentHashMapBuilder.g;
                    objArr = objArr4;
                    trieNodeJ = trieNodeJ.l(obj != null ? obj.hashCode() : i3, obj, objX, i2 + 5, persistentHashMapBuilder);
                    if (persistentHashMapBuilder.g == i15) {
                        deltaCounter.f8366a++;
                    }
                } else {
                    objArr = objArr4;
                }
            } else {
                objArr = objArr4;
                if (trieNode.i(iLowestOneBit2)) {
                    TrieNode trieNodeS = trieNode.s(trieNode.t(iLowestOneBit2));
                    if (h(iLowestOneBit2)) {
                        int iF2 = f(iLowestOneBit2);
                        Object obj2 = this.d[iF2];
                        int i16 = i2 + 5;
                        if (trieNodeS.d(obj2 != null ? obj2.hashCode() : 0, i16, obj2)) {
                            deltaCounter.f8366a++;
                            trieNodeJ = trieNodeS;
                        } else {
                            trieNodeJ = trieNodeS.l(obj2 != null ? obj2.hashCode() : 0, obj2, x(iF2), i16, persistentHashMapBuilder);
                        }
                    } else {
                        trieNodeJ = trieNodeS;
                    }
                } else {
                    int iF3 = f(iLowestOneBit2);
                    Object obj3 = this.d[iF3];
                    Object objX2 = x(iF3);
                    int iF4 = trieNode.f(iLowestOneBit2);
                    Object obj4 = trieNode.d[iF4];
                    trieNodeJ = j(obj3 != null ? obj3.hashCode() : 0, obj3, objX2, obj4 != null ? obj4.hashCode() : 0, obj4, trieNode.x(iF4), i2 + 5, persistentHashMapBuilder.f8330c);
                }
            }
            objArr[length2] = trieNodeJ;
            i14++;
            i13 ^= iLowestOneBit2;
            i3 = 0;
        }
        int i17 = 0;
        while (i12 != 0) {
            int iLowestOneBit3 = Integer.lowestOneBit(i12);
            int i18 = i17 * 2;
            if (trieNode.h(iLowestOneBit3)) {
                int iF5 = trieNode.f(iLowestOneBit3);
                Object[] objArr5 = trieNode2.d;
                objArr5[i18] = trieNode.d[iF5];
                objArr5[i18 + 1] = trieNode.x(iF5);
                if (h(iLowestOneBit3)) {
                    deltaCounter.f8366a++;
                }
            } else {
                int iF6 = f(iLowestOneBit3);
                Object[] objArr6 = trieNode2.d;
                objArr6[i18] = this.d[iF6];
                objArr6[i18 + 1] = x(iF6);
            }
            i17++;
            i12 ^= iLowestOneBit3;
        }
        if (!e(trieNode2)) {
            return trieNode.e(trieNode2) ? trieNode : trieNode2;
        }
        return this;
    }

    public final TrieNode n(int i2, Object obj, int i3, PersistentHashMapBuilder persistentHashMapBuilder) {
        TrieNode trieNodeN;
        int iD = 1 << TrieNodeKt.d(i2, i3);
        if (h(iD)) {
            int iF = f(iD);
            if (Intrinsics.c(obj, this.d[iF])) {
                return p(iF, iD, persistentHashMapBuilder);
            }
        } else if (i(iD)) {
            int iT = t(iD);
            TrieNode trieNodeS = s(iT);
            if (i3 == 30) {
                IntProgression intProgressionI = RangesKt.i(RangesKt.j(0, trieNodeS.d.length), 2);
                int i4 = intProgressionI.f71951b;
                int i5 = intProgressionI.f71952c;
                int i6 = intProgressionI.d;
                if ((i6 > 0 && i4 <= i5) || (i6 < 0 && i5 <= i4)) {
                    while (true) {
                        if (!Intrinsics.c(obj, trieNodeS.d[i4])) {
                            if (i4 == i5) {
                                trieNodeN = trieNodeS;
                                break;
                            }
                            i4 += i6;
                        } else {
                            trieNodeN = trieNodeS.k(i4, persistentHashMapBuilder);
                            break;
                        }
                    }
                } else {
                    trieNodeN = trieNodeS;
                    break;
                }
            } else {
                trieNodeN = trieNodeS.n(i2, obj, i3 + 5, persistentHashMapBuilder);
            }
            return q(trieNodeS, trieNodeN, iT, iD, persistentHashMapBuilder.f8330c);
        }
        return this;
    }

    public final TrieNode o(int i2, Object obj, Object obj2, int i3, PersistentHashMapBuilder persistentHashMapBuilder) {
        PersistentHashMapBuilder persistentHashMapBuilder2;
        TrieNode trieNodeO;
        int iD = 1 << TrieNodeKt.d(i2, i3);
        if (h(iD)) {
            int iF = f(iD);
            return (Intrinsics.c(obj, this.d[iF]) && Intrinsics.c(obj2, x(iF))) ? p(iF, iD, persistentHashMapBuilder) : this;
        }
        if (!i(iD)) {
            return this;
        }
        int iT = t(iD);
        TrieNode trieNodeS = s(iT);
        if (i3 == 30) {
            IntProgression intProgressionI = RangesKt.i(RangesKt.j(0, trieNodeS.d.length), 2);
            int i4 = intProgressionI.f71951b;
            int i5 = intProgressionI.f71952c;
            int i6 = intProgressionI.d;
            if ((i6 > 0 && i4 <= i5) || (i6 < 0 && i5 <= i4)) {
                while (true) {
                    if (!Intrinsics.c(obj, trieNodeS.d[i4]) || !Intrinsics.c(obj2, trieNodeS.x(i4))) {
                        if (i4 == i5) {
                            trieNodeO = trieNodeS;
                            break;
                        }
                        i4 += i6;
                    } else {
                        trieNodeO = trieNodeS.k(i4, persistentHashMapBuilder);
                        break;
                    }
                }
            } else {
                trieNodeO = trieNodeS;
                break;
            }
            persistentHashMapBuilder2 = persistentHashMapBuilder;
        } else {
            persistentHashMapBuilder2 = persistentHashMapBuilder;
            trieNodeO = trieNodeS.o(i2, obj, obj2, i3 + 5, persistentHashMapBuilder2);
        }
        return q(trieNodeS, trieNodeO, iT, iD, persistentHashMapBuilder2.f8330c);
    }

    public final TrieNode p(int i2, int i3, PersistentHashMapBuilder persistentHashMapBuilder) {
        persistentHashMapBuilder.h(persistentHashMapBuilder.g - 1);
        persistentHashMapBuilder.f8331e = x(i2);
        Object[] objArr = this.d;
        if (objArr.length == 2) {
            return null;
        }
        if (this.f8347c != persistentHashMapBuilder.f8330c) {
            return new TrieNode(i3 ^ this.f8345a, this.f8346b, TrieNodeKt.b(i2, objArr), persistentHashMapBuilder.f8330c);
        }
        this.d = TrieNodeKt.b(i2, objArr);
        this.f8345a ^= i3;
        return this;
    }

    public final TrieNode q(TrieNode trieNode, TrieNode trieNode2, int i2, int i3, MutabilityOwnership mutabilityOwnership) {
        MutabilityOwnership mutabilityOwnership2 = this.f8347c;
        if (trieNode2 != null) {
            return (mutabilityOwnership2 == mutabilityOwnership || trieNode != trieNode2) ? r(i2, trieNode2, mutabilityOwnership) : this;
        }
        Object[] objArr = this.d;
        if (objArr.length == 1) {
            return null;
        }
        if (mutabilityOwnership2 != mutabilityOwnership) {
            return new TrieNode(this.f8345a, this.f8346b ^ i3, TrieNodeKt.c(i2, objArr), mutabilityOwnership);
        }
        this.d = TrieNodeKt.c(i2, objArr);
        this.f8346b ^= i3;
        return this;
    }

    public final TrieNode r(int i2, TrieNode trieNode, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = this.d;
        if (objArr.length == 1 && trieNode.d.length == 2 && trieNode.f8346b == 0) {
            trieNode.f8345a = this.f8346b;
            return trieNode;
        }
        if (this.f8347c == mutabilityOwnership) {
            objArr[i2] = trieNode;
            return this;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        objArrCopyOf[i2] = trieNode;
        return new TrieNode(this.f8345a, this.f8346b, objArrCopyOf, mutabilityOwnership);
    }

    public final TrieNode s(int i2) {
        Object obj = this.d[i2];
        obj.getClass();
        return (TrieNode) obj;
    }

    public final int t(int i2) {
        return (this.d.length - 1) - Integer.bitCount(this.f8346b & (i2 - 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c8, code lost:
    
        if (r12 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d1, code lost:
    
        if (r12 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d4, code lost:
    
        r12.f8348a = w(r10, r4, r12.f8348a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00dc, code lost:
    
        return r12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode.ModificationResult u(java.lang.Object r11, int r12, java.lang.Object r13, int r14) {
        /*
            Method dump skipped, instruction units count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode.u(java.lang.Object, int, java.lang.Object, int):androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode$ModificationResult");
    }

    public final TrieNode v(int i2, int i3, Object obj) {
        TrieNode trieNodeV;
        int iD = 1 << TrieNodeKt.d(i2, i3);
        if (h(iD)) {
            int iF = f(iD);
            if (!Intrinsics.c(obj, this.d[iF])) {
                return this;
            }
            Object[] objArr = this.d;
            if (objArr.length != 2) {
                return new TrieNode(this.f8345a ^ iD, this.f8346b, TrieNodeKt.b(iF, objArr));
            }
        } else {
            if (!i(iD)) {
                return this;
            }
            int iT = t(iD);
            TrieNode trieNodeS = s(iT);
            if (i3 == 30) {
                IntProgression intProgressionI = RangesKt.i(RangesKt.j(0, trieNodeS.d.length), 2);
                int i4 = intProgressionI.f71951b;
                int i5 = intProgressionI.f71952c;
                int i6 = intProgressionI.d;
                if ((i6 > 0 && i4 <= i5) || (i6 < 0 && i5 <= i4)) {
                    while (true) {
                        if (!Intrinsics.c(obj, trieNodeS.d[i4])) {
                            if (i4 == i5) {
                                trieNodeV = trieNodeS;
                                break;
                            }
                            i4 += i6;
                        } else {
                            Object[] objArr2 = trieNodeS.d;
                            if (objArr2.length != 2) {
                                trieNodeV = new TrieNode(0, 0, TrieNodeKt.b(i4, objArr2));
                                break;
                            }
                            trieNodeV = null;
                            break;
                        }
                    }
                } else {
                    trieNodeV = trieNodeS;
                    break;
                }
            } else {
                trieNodeV = trieNodeS.v(i2, i3 + 5, obj);
            }
            if (trieNodeV != null) {
                return trieNodeS != trieNodeV ? w(iT, iD, trieNodeV) : this;
            }
            Object[] objArr3 = this.d;
            if (objArr3.length != 1) {
                return new TrieNode(this.f8345a, this.f8346b ^ iD, TrieNodeKt.c(iT, objArr3));
            }
        }
        return null;
    }

    public final TrieNode w(int i2, int i3, TrieNode trieNode) {
        Object[] objArr = trieNode.d;
        if (objArr.length != 2 || trieNode.f8346b != 0) {
            Object[] objArr2 = this.d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length);
            objArrCopyOf[i2] = trieNode;
            return new TrieNode(this.f8345a, this.f8346b, objArrCopyOf);
        }
        if (this.d.length == 1) {
            trieNode.f8345a = this.f8346b;
            return trieNode;
        }
        int iF = f(i3);
        Object[] objArr3 = this.d;
        Object obj = objArr[0];
        Object obj2 = objArr[1];
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr3, objArr3.length + 1);
        ArraysKt.l(objArrCopyOf2, objArrCopyOf2, i2 + 2, i2 + 1, objArr3.length);
        ArraysKt.l(objArrCopyOf2, objArrCopyOf2, iF + 2, iF, i2);
        objArrCopyOf2[iF] = obj;
        objArrCopyOf2[iF + 1] = obj2;
        return new TrieNode(this.f8345a ^ i3, this.f8346b ^ i3, objArrCopyOf2);
    }

    public final Object x(int i2) {
        return this.d[i2 + 1];
    }

    public TrieNode(int i2, int i3, Object[] objArr) {
        this(i2, i3, objArr, null);
    }
}
