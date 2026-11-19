package androidx.compose.foundation.gestures;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.NonTouchScrollingLogicKt$busyReceive$2", f = "NonTouchScrollingLogic.kt", l = {EACTags.UNIFORM_RESOURCE_LOCATOR}, m = "invokeSuspend", v = 1)
final class NonTouchScrollingLogicKt$busyReceive$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f4643c;
    public final /* synthetic */ Channel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonTouchScrollingLogicKt$busyReceive$2(Channel channel, Continuation continuation) {
        super(2, continuation);
        this.d = channel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NonTouchScrollingLogicKt$busyReceive$2 nonTouchScrollingLogicKt$busyReceive$2 = new NonTouchScrollingLogicKt$busyReceive$2(this.d, continuation);
        nonTouchScrollingLogicKt$busyReceive$2.f4643c = obj;
        return nonTouchScrollingLogicKt$busyReceive$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NonTouchScrollingLogicKt$busyReceive$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Throwable th;
        Job job;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4642b;
        if (i2 != 0) {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            job = (Job) this.f4643c;
            try {
                ResultKt.b(obj);
                job.cancel(null);
                return obj;
            } catch (Throwable th2) {
                th = th2;
                job.cancel(null);
                throw th;
            }
        }
        ResultKt.b(obj);
        Job jobC = BuildersKt.c((CoroutineScope) this.f4643c, null, null, new NonTouchScrollingLogicKt$busyReceive$2$job$1(2, null), 3);
        try {
            Channel channel = this.d;
            this.f4643c = jobC;
            this.f4642b = 1;
            Object objW = channel.w(this);
            if (objW == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = objW;
            job = jobC;
            job.cancel(null);
            return obj;
        } catch (Throwable th3) {
            th = th3;
            job = jobC;
            job.cancel(null);
            throw th;
        }
    }
}
