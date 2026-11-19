package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import defpackage.md;
import defpackage.n0;
import defpackage.pp;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2", f = "ContentInViewNode.kt", l = {212}, m = "invokeSuspend", v = 1)
final class ContentInViewNode$launchAnimation$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f4434c;
    public final /* synthetic */ ContentInViewNode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ UpdatableAnimationState f4435e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BringIntoViewSpec f4436f;
    public final /* synthetic */ long g;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/NestedScrollScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2$1", f = "ContentInViewNode.kt", l = {219}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<NestedScrollScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4437b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f4438c;
        public final /* synthetic */ UpdatableAnimationState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ ContentInViewNode f4439e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ BringIntoViewSpec f4440f;
        public final /* synthetic */ long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Job f4441h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(UpdatableAnimationState updatableAnimationState, ContentInViewNode contentInViewNode, BringIntoViewSpec bringIntoViewSpec, long j2, Job job, Continuation continuation) {
            super(2, continuation);
            this.d = updatableAnimationState;
            this.f4439e = contentInViewNode;
            this.f4440f = bringIntoViewSpec;
            this.g = j2;
            this.f4441h = job;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f4439e, this.f4440f, this.g, this.f4441h, continuation);
            anonymousClass1.f4438c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((NestedScrollScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f4437b;
            int i3 = 1;
            if (i2 == 0) {
                ResultKt.b(obj);
                NestedScrollScope nestedScrollScope = (NestedScrollScope) this.f4438c;
                long j2 = this.g;
                ContentInViewNode contentInViewNode = this.f4439e;
                BringIntoViewSpec bringIntoViewSpec = this.f4440f;
                float fH2 = ContentInViewNode.h2(contentInViewNode, bringIntoViewSpec, j2);
                UpdatableAnimationState updatableAnimationState = this.d;
                updatableAnimationState.f4828e = fH2;
                n0 n0Var = new n0(contentInViewNode, updatableAnimationState, this.f4441h, nestedScrollScope);
                pp ppVar = new pp(contentInViewNode, updatableAnimationState, bringIntoViewSpec, i3);
                this.f4437b = 1;
                if (updatableAnimationState.a(n0Var, ppVar, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentInViewNode$launchAnimation$2(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, BringIntoViewSpec bringIntoViewSpec, long j2, Continuation continuation) {
        super(2, continuation);
        this.d = contentInViewNode;
        this.f4435e = updatableAnimationState;
        this.f4436f = bringIntoViewSpec;
        this.g = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ContentInViewNode$launchAnimation$2 contentInViewNode$launchAnimation$2 = new ContentInViewNode$launchAnimation$2(this.d, this.f4435e, this.f4436f, this.g, continuation);
        contentInViewNode$launchAnimation$2.f4434c = obj;
        return contentInViewNode$launchAnimation$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ContentInViewNode$launchAnimation$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ContentInViewNode contentInViewNode = this.d;
        BringIntoViewRequestPriorityQueue bringIntoViewRequestPriorityQueue = contentInViewNode.u;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4433b;
        try {
            try {
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Job jobE = JobKt.e(((CoroutineScope) this.f4434c).getF50528e());
                    contentInViewNode.x = true;
                    ScrollingLogic scrollingLogic = contentInViewNode.q;
                    MutatePriority mutatePriority = MutatePriority.Default;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f4435e, contentInViewNode, this.f4436f, this.g, jobE, null);
                    this.f4433b = 1;
                    if (scrollingLogic.h(mutatePriority, anonymousClass1, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                bringIntoViewRequestPriorityQueue.b();
                contentInViewNode.x = false;
                bringIntoViewRequestPriorityQueue.a(null);
                contentInViewNode.v = false;
                return Unit.f71739a;
            } catch (CancellationException e2) {
                throw e2;
            }
        } catch (Throwable th) {
            contentInViewNode.x = false;
            bringIntoViewRequestPriorityQueue.a(null);
            contentInViewNode.v = false;
            throw th;
        }
    }
}
