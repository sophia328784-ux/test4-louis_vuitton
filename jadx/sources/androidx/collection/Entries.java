package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0003B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/collection/Entries;", "K", "V", "", "", "Landroidx/collection/ScatterMap;", "parent", "<init>", "(Landroidx/collection/ScatterMap;)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class Entries<K, V> implements Set<Map.Entry<? extends K, ? extends V>>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScatterMap f3235b;

    /* JADX INFO: renamed from: androidx.collection.Entries$iterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00050\u0004H\u008a@"}, d2 = {"<anonymous>", "", "K", "V", "Lkotlin/sequences/SequenceScope;", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "androidx.collection.Entries$iterator$1", f = "ScatterMap.kt", l = {1414}, m = "invokeSuspend")
    final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Map.Entry<Object, Object>>, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f3236c;
        public long[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3237e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f3238f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f3239h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f3240i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f3241j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public /* synthetic */ Object f3242k;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.f3242k = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((SequenceScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0050  */
        /* JADX WARN: Code duplicated, block: B:25:0x00aa  */
        /* JADX WARN: Code duplicated, block: B:27:0x00ad  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0050 -> B:14:0x0062). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x006b -> B:20:0x009a). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0097 -> B:21:0x009c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00aa -> B:26:0x00ab). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r21) {
            /*
                r20 = this;
                r0 = r20
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.f3241j
                r4 = 8
                r5 = 1
                if (r2 == 0) goto L2d
                if (r2 != r5) goto L26
                int r2 = r0.f3239h
                int r6 = r0.g
                long r7 = r0.f3240i
                int r9 = r0.f3238f
                int r10 = r0.f3237e
                long[] r11 = r0.d
                java.lang.Object r12 = r0.f3236c
                androidx.collection.Entries r12 = (androidx.collection.Entries) r12
                java.lang.Object r13 = r0.f3242k
                kotlin.sequences.SequenceScope r13 = (kotlin.sequences.SequenceScope) r13
                kotlin.ResultKt.b(r21)
                goto L9a
            L26:
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r0)
                r0 = 0
                return r0
            L2d:
                kotlin.ResultKt.b(r21)
                java.lang.Object r2 = r0.f3242k
                kotlin.sequences.SequenceScope r2 = (kotlin.sequences.SequenceScope) r2
                androidx.collection.Entries r6 = androidx.collection.Entries.this
                androidx.collection.ScatterMap r7 = r6.f3235b
                long[] r7 = r7.f3361a
                int r8 = r7.length
                int r8 = r8 + (-2)
                if (r8 < 0) goto Lb1
                r9 = 0
            L40:
                r10 = r7[r9]
                long r12 = ~r10
                r14 = 7
                long r12 = r12 << r14
                long r12 = r12 & r10
                r14 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
                long r12 = r12 & r14
                int r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
                if (r12 == 0) goto Laa
                int r12 = r9 - r8
                int r12 = ~r12
                int r12 = r12 >>> 31
                int r12 = 8 - r12
                r13 = r12
                r12 = r6
                r6 = r13
                r13 = r2
                r2 = 0
                r18 = r10
                r11 = r7
                r10 = r8
                r7 = r18
            L62:
                if (r2 >= r6) goto La2
                r14 = 255(0xff, double:1.26E-321)
                long r14 = r14 & r7
                r16 = 128(0x80, double:6.32E-322)
                int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
                if (r14 >= 0) goto L9a
                int r14 = r9 << 3
                int r14 = r14 + r2
                androidx.collection.MapEntry r15 = new androidx.collection.MapEntry
                androidx.collection.ScatterMap r3 = r12.f3235b
                r17 = r4
                java.lang.Object[] r4 = r3.f3362b
                r4 = r4[r14]
                java.lang.Object[] r3 = r3.f3363c
                r3 = r3[r14]
                r15.<init>(r4, r3)
                r0.f3242k = r13
                r0.f3236c = r12
                r0.d = r11
                r0.f3237e = r10
                r0.f3238f = r9
                r0.f3240i = r7
                r0.g = r6
                r0.f3239h = r2
                r0.f3241j = r5
                kotlin.coroutines.intrinsics.CoroutineSingletons r3 = r13.a(r15, r0)
                if (r3 != r1) goto L9c
                return r1
            L9a:
                r17 = r4
            L9c:
                long r7 = r7 >> r17
                int r2 = r2 + r5
                r4 = r17
                goto L62
            La2:
                r3 = r4
                if (r6 != r3) goto Lb1
                r8 = r10
                r7 = r11
                r6 = r12
                r2 = r13
                goto Lab
            Laa:
                r3 = r4
            Lab:
                if (r9 == r8) goto Lb1
                int r9 = r9 + 1
                r4 = r3
                goto L40
            Lb1:
                kotlin.Unit r0 = kotlin.Unit.f71739a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.collection.Entries.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public Entries(ScatterMap<K, V> scatterMap) {
        scatterMap.getClass();
        this.f3235b = scatterMap;
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return Intrinsics.c(this.f3235b.e(entry.getKey()), entry.getValue());
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        collection.getClass();
        Collection<Map.Entry> collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        for (Map.Entry entry : collection2) {
            if (!Intrinsics.c(this.f3235b.e(entry.getKey()), entry.getValue())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return this.f3235b.f();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return SequencesKt.o(new AnonymousClass1(null));
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return this.f3235b.f3364e;
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        return CollectionToArray.b(this, objArr);
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.a(this);
    }
}
