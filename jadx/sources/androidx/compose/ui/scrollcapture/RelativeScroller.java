package androidx.compose.ui.scrollcapture;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\"\u0010\u0007\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/scrollcapture/RelativeScroller;", "", "", "viewportSize", "Lkotlin/Function2;", "", "Lkotlin/coroutines/Continuation;", "scrollBy", "<init>", "(ILkotlin/jvm/functions/Function2;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class RelativeScroller {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function2 f10259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f10260c;

    public RelativeScroller(int i2, Function2<? super Float, ? super Continuation<? super Float>, ? extends Object> function2) {
        this.f10258a = i2;
        this.f10259b = function2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(float f2, ContinuationImpl continuationImpl) {
        RelativeScroller$scrollBy$1 relativeScroller$scrollBy$1;
        if (continuationImpl instanceof RelativeScroller$scrollBy$1) {
            relativeScroller$scrollBy$1 = (RelativeScroller$scrollBy$1) continuationImpl;
            int i2 = relativeScroller$scrollBy$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                relativeScroller$scrollBy$1.d = i2 - Integer.MIN_VALUE;
            } else {
                relativeScroller$scrollBy$1 = new RelativeScroller$scrollBy$1(this, continuationImpl);
            }
        } else {
            relativeScroller$scrollBy$1 = new RelativeScroller$scrollBy$1(this, continuationImpl);
        }
        Object objInvoke = relativeScroller$scrollBy$1.f10261b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = relativeScroller$scrollBy$1.d;
        if (i3 == 0) {
            ResultKt.b(objInvoke);
            Float f3 = new Float(f2);
            relativeScroller$scrollBy$1.d = 1;
            objInvoke = this.f10259b.invoke(f3, relativeScroller$scrollBy$1);
            if (objInvoke == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objInvoke);
        }
        this.f10260c += ((Number) objInvoke).floatValue();
        return Unit.f71739a;
    }
}
