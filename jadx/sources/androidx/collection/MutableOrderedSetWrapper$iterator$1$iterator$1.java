package androidx.collection;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "E", "Lkotlin/sequences/SequenceScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "androidx.collection.MutableOrderedSetWrapper$iterator$1$iterator$1", f = "OrderedScatterSet.kt", l = {1489}, m = "invokeSuspend")
final class MutableOrderedSetWrapper$iterator$1$iterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<Object>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MutableOrderedSetWrapper.AnonymousClass1 f3317c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long[] f3318e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3319f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f3320h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ MutableOrderedSetWrapper f3321i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ MutableOrderedSetWrapper.AnonymousClass1 f3322j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableOrderedSetWrapper$iterator$1$iterator$1(MutableOrderedSetWrapper mutableOrderedSetWrapper, MutableOrderedSetWrapper.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(2, continuation);
        this.f3321i = mutableOrderedSetWrapper;
        this.f3322j = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MutableOrderedSetWrapper$iterator$1$iterator$1 mutableOrderedSetWrapper$iterator$1$iterator$1 = new MutableOrderedSetWrapper$iterator$1$iterator$1(this.f3321i, this.f3322j, continuation);
        mutableOrderedSetWrapper$iterator$1$iterator$1.f3320h = obj;
        return mutableOrderedSetWrapper$iterator$1$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MutableOrderedSetWrapper$iterator$1$iterator$1) create((SequenceScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableOrderedSetWrapper mutableOrderedSetWrapper;
        long[] jArr;
        int i2;
        MutableOrderedSetWrapper.AnonymousClass1 anonymousClass1;
        SequenceScope sequenceScope;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            SequenceScope sequenceScope2 = (SequenceScope) this.f3320h;
            mutableOrderedSetWrapper = this.f3321i;
            MutableOrderedScatterSet mutableOrderedScatterSet = mutableOrderedSetWrapper.f3314c;
            jArr = mutableOrderedScatterSet.f3352c;
            i2 = mutableOrderedScatterSet.f3353e;
            anonymousClass1 = this.f3322j;
            sequenceScope = sequenceScope2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            int i4 = this.f3319f;
            long[] jArr2 = this.f3318e;
            MutableOrderedSetWrapper mutableOrderedSetWrapper2 = (MutableOrderedSetWrapper) this.d;
            anonymousClass1 = this.f3317c;
            sequenceScope = (SequenceScope) this.f3320h;
            ResultKt.b(obj);
            i2 = i4;
            mutableOrderedSetWrapper = mutableOrderedSetWrapper2;
            jArr = jArr2;
        }
        while (i2 != Integer.MAX_VALUE) {
            int i5 = (int) ((jArr[i2] >> 31) & 2147483647L);
            anonymousClass1.f3315b = i2;
            Object obj2 = mutableOrderedSetWrapper.f3314c.f3351b[i2];
            this.f3320h = sequenceScope;
            this.f3317c = anonymousClass1;
            this.d = mutableOrderedSetWrapper;
            this.f3318e = jArr;
            this.f3319f = i5;
            this.g = 1;
            if (sequenceScope.a(obj2, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            i2 = i5;
        }
        return Unit.f71739a;
    }
}
