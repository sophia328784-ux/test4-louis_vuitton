package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "parentFrameClock", "Landroidx/compose/runtime/MonotonicFrameClock;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2", f = "Recomposer.kt", l = {615, 626}, m = "invokeSuspend", v = 1)
final class Recomposer$runRecomposeAndApplyChanges$2 extends SuspendLambda implements Function3<CoroutineScope, MonotonicFrameClock, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f8099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f8100c;
    public List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MutableScatterSet f8101e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MutableScatterSet f8102f;
    public MutableScatterSet g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Set f8103h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MutableScatterSet f8104i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8105j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public /* synthetic */ MonotonicFrameClock f8106k;
    public final /* synthetic */ Recomposer l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$runRecomposeAndApplyChanges$2(Recomposer recomposer, Continuation continuation) {
        super(3, continuation);
        this.l = recomposer;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0078 A[Catch: all -> 0x002c, LOOP:1: B:12:0x0042->B:22:0x0078, LOOP_END, TryCatch #0 {all -> 0x002c, blocks: (B:4:0x000d, B:6:0x001d, B:9:0x002f, B:12:0x0042, B:14:0x0053, B:16:0x005d, B:18:0x0063, B:19:0x0070, B:24:0x0083, B:27:0x0090, B:29:0x009b, B:31:0x00a5, B:33:0x00ab, B:34:0x00b5, B:37:0x00bd, B:38:0x00c0, B:41:0x00d0, B:43:0x00db, B:45:0x00e5, B:47:0x00eb, B:48:0x00f8, B:51:0x0100, B:52:0x0103, B:22:0x0078), top: B:57:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00bb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x00bd A[Catch: all -> 0x002c, LOOP:3: B:27:0x0090->B:37:0x00bd, LOOP_END, TryCatch #0 {all -> 0x002c, blocks: (B:4:0x000d, B:6:0x001d, B:9:0x002f, B:12:0x0042, B:14:0x0053, B:16:0x005d, B:18:0x0063, B:19:0x0070, B:24:0x0083, B:27:0x0090, B:29:0x009b, B:31:0x00a5, B:33:0x00ab, B:34:0x00b5, B:37:0x00bd, B:38:0x00c0, B:41:0x00d0, B:43:0x00db, B:45:0x00e5, B:47:0x00eb, B:48:0x00f8, B:51:0x0100, B:52:0x0103, B:22:0x0078), top: B:57:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00fe A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x0100 A[Catch: all -> 0x002c, LOOP:5: B:41:0x00d0->B:51:0x0100, LOOP_END, TryCatch #0 {all -> 0x002c, blocks: (B:4:0x000d, B:6:0x001d, B:9:0x002f, B:12:0x0042, B:14:0x0053, B:16:0x005d, B:18:0x0063, B:19:0x0070, B:24:0x0083, B:27:0x0090, B:29:0x009b, B:31:0x00a5, B:33:0x00ab, B:34:0x00b5, B:37:0x00bd, B:38:0x00c0, B:41:0x00d0, B:43:0x00db, B:45:0x00e5, B:47:0x00eb, B:48:0x00f8, B:51:0x0100, B:52:0x0103, B:22:0x0078), top: B:57:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0083 A[EDGE_INSN: B:61:0x0083->B:24:0x0083 BREAK  A[LOOP:1: B:12:0x0042->B:22:0x0078], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00c0 A[EDGE_INSN: B:66:0x00c0->B:38:0x00c0 BREAK  A[LOOP:3: B:27:0x0090->B:37:0x00bd], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0103 A[EDGE_INSN: B:71:0x0103->B:52:0x0103 BREAK  A[LOOP:5: B:41:0x00d0->B:51:0x0100], SYNTHETIC] */
    public static final void b(Recomposer recomposer, List list, List list2, List list3, MutableScatterSet mutableScatterSet, MutableScatterSet mutableScatterSet2, MutableScatterSet mutableScatterSet3, MutableScatterSet mutableScatterSet4) {
        char c2;
        long j2;
        long j3;
        synchronized (recomposer.f8083c) {
            try {
                list.clear();
                list2.clear();
                int size = list3.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ControlledComposition controlledComposition = (ControlledComposition) list3.get(i2);
                    controlledComposition.w();
                    recomposer.S(controlledComposition);
                }
                list3.clear();
                Object[] objArr = mutableScatterSet.f3368b;
                long[] jArr = mutableScatterSet.f3367a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i3 = 0;
                    j2 = 255;
                    while (true) {
                        long j4 = jArr[i3];
                        c2 = 7;
                        j3 = -9187201950435737472L;
                        if ((((~j4) << 7) & j4 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i3 != length) {
                                break;
                                break;
                            }
                            i3++;
                        } else {
                            int i4 = 8 - ((~(i3 - length)) >>> 31);
                            for (int i5 = 0; i5 < i4; i5++) {
                                if ((j4 & 255) < 128) {
                                    ControlledComposition controlledComposition2 = (ControlledComposition) objArr[(i3 << 3) + i5];
                                    controlledComposition2.w();
                                    recomposer.S(controlledComposition2);
                                }
                                j4 >>= 8;
                            }
                            if (i4 != 8) {
                                break;
                            } else if (i3 != length) {
                                break;
                            } else {
                                i3++;
                            }
                        }
                    }
                } else {
                    c2 = 7;
                    j2 = 255;
                    j3 = -9187201950435737472L;
                }
                mutableScatterSet.f();
                Object[] objArr2 = mutableScatterSet2.f3368b;
                long[] jArr2 = mutableScatterSet2.f3367a;
                int length2 = jArr2.length - 2;
                if (length2 >= 0) {
                    int i6 = 0;
                    while (true) {
                        long j5 = jArr2[i6];
                        if ((((~j5) << c2) & j5 & j3) == j3) {
                            if (i6 != length2) {
                                break;
                                break;
                            }
                            i6++;
                        } else {
                            int i7 = 8 - ((~(i6 - length2)) >>> 31);
                            for (int i8 = 0; i8 < i7; i8++) {
                                if ((j5 & j2) < 128) {
                                    ((ControlledComposition) objArr2[(i6 << 3) + i8]).x();
                                }
                                j5 >>= 8;
                            }
                            if (i7 != 8) {
                                break;
                            } else if (i6 != length2) {
                                break;
                            } else {
                                i6++;
                            }
                        }
                    }
                }
                mutableScatterSet2.f();
                mutableScatterSet3.f();
                Object[] objArr3 = mutableScatterSet4.f3368b;
                long[] jArr3 = mutableScatterSet4.f3367a;
                int length3 = jArr3.length - 2;
                if (length3 >= 0) {
                    int i9 = 0;
                    while (true) {
                        long j6 = jArr3[i9];
                        if ((((~j6) << c2) & j6 & j3) == j3) {
                            if (i9 != length3) {
                                break;
                                break;
                            }
                            i9++;
                        } else {
                            int i10 = 8 - ((~(i9 - length3)) >>> 31);
                            for (int i11 = 0; i11 < i10; i11++) {
                                if ((j6 & j2) < 128) {
                                    ControlledComposition controlledComposition3 = (ControlledComposition) objArr3[(i9 << 3) + i11];
                                    controlledComposition3.w();
                                    recomposer.S(controlledComposition3);
                                }
                                j6 >>= 8;
                            }
                            if (i10 != 8) {
                                break;
                            } else if (i9 != length3) {
                                break;
                            } else {
                                i9++;
                            }
                        }
                    }
                }
                mutableScatterSet4.f();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final void d(List list, Recomposer recomposer) {
        list.clear();
        synchronized (recomposer.f8083c) {
            try {
                ArrayList arrayList = recomposer.f8089k;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    list.add((MovableContentStateReference) arrayList.get(i2));
                }
                recomposer.f8089k.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Recomposer$runRecomposeAndApplyChanges$2 recomposer$runRecomposeAndApplyChanges$2 = new Recomposer$runRecomposeAndApplyChanges$2(this.l, (Continuation) obj3);
        recomposer$runRecomposeAndApplyChanges$2.f8106k = (MonotonicFrameClock) obj2;
        return recomposer$runRecomposeAndApplyChanges$2.invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x00a8 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:17:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:21:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:22:0x00e8 A[Catch: all -> 0x0101, TRY_LEAVE, TryCatch #0 {, blocks: (B:19:0x00e0, B:22:0x00e8), top: B:66:0x00e0 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:30:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:34:0x0104  */
    /* JADX WARN: Code duplicated, block: B:37:0x0109  */
    /* JADX WARN: Code duplicated, block: B:40:0x0117  */
    /* JADX WARN: Code duplicated, block: B:43:0x0155  */
    /* JADX WARN: Code duplicated, block: B:65:0x0208  */
    /* JADX WARN: Code duplicated, block: B:66:0x00e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x0155 -> B:44:0x015d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0208 -> B:12:0x00a3). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r28) {
        /*
            Method dump skipped, instruction units count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
