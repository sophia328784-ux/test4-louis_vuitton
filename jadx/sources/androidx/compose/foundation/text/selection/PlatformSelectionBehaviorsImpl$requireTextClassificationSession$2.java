package androidx.compose.foundation.text.selection;

import android.view.textclassifier.TextClassifier;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2", f = "PlatformSelectionBehaviors.android.kt", l = {369, 273, 282}, m = "invokeSuspend", v = 1)
final class PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Mutex f6370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PlatformSelectionBehaviorsImpl f6371c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PlatformSelectionBehaviorsImpl f6372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function2 f6373f;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$1", f = "PlatformSelectionBehaviors.android.kt", l = {283}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6374b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ TextClassifier f6375c;
        public final /* synthetic */ Function2 d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TextClassifier textClassifier, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.f6375c = textClassifier;
            this.d = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f6375c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f6374b;
            if (i2 != 0) {
                if (i2 == 1) {
                    ResultKt.b(obj);
                    return obj;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            TextClassifier textClassifier = this.f6375c;
            if (textClassifier == null) {
                return null;
            }
            this.f6374b = 1;
            Object objInvoke = this.d.invoke(textClassifier, this);
            return objInvoke == coroutineSingletons ? coroutineSingletons : objInvoke;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f6372e = platformSelectionBehaviorsImpl;
        this.f6373f = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(this.f6372e, this.f6373f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0081 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl;
        Mutex mutex;
        Mutex mutex2;
        TextClassifier textClassifier;
        Object objC;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                platformSelectionBehaviorsImpl = this.f6372e;
                mutex = platformSelectionBehaviorsImpl.f6358e;
                this.f6370b = mutex;
                this.f6371c = platformSelectionBehaviorsImpl;
                this.d = 1;
                if (mutex.c(this) != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        ResultKt.b(obj);
                        return obj;
                    }
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutex2 = this.f6370b;
                try {
                    ResultKt.b(obj);
                    textClassifier = (TextClassifier) obj;
                    mutex = mutex2;
                    mutex.d(null);
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(textClassifier, this.f6373f, null);
                    this.f6370b = null;
                    this.f6371c = null;
                    this.d = 3;
                    objC = TimeoutKt.c(200L, anonymousClass1, this);
                    if (objC == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    return objC;
                } catch (Throwable th) {
                    th = th;
                    mutex2.d(null);
                    throw th;
                }
            }
            platformSelectionBehaviorsImpl = this.f6371c;
            Mutex mutex3 = this.f6370b;
            ResultKt.b(obj);
            mutex = mutex3;
            textClassifier = platformSelectionBehaviorsImpl.f6359f;
            if (textClassifier == null || textClassifier.isDestroyed()) {
                PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1 platformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1 = new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1(platformSelectionBehaviorsImpl, null);
                this.f6370b = mutex;
                this.f6371c = null;
                this.d = 2;
                Object objC2 = TimeoutKt.c(300L, platformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1, this);
                if (objC2 != coroutineSingletons) {
                    mutex2 = mutex;
                    obj = objC2;
                    textClassifier = (TextClassifier) obj;
                    mutex = mutex2;
                    mutex.d(null);
                    AnonymousClass1 anonymousClass2 = new AnonymousClass1(textClassifier, this.f6373f, null);
                    this.f6370b = null;
                    this.f6371c = null;
                    this.d = 3;
                    objC = TimeoutKt.c(200L, anonymousClass2, this);
                    if (objC == coroutineSingletons) {
                        return objC;
                    }
                }
            } else {
                mutex.d(null);
                AnonymousClass1 anonymousClass3 = new AnonymousClass1(textClassifier, this.f6373f, null);
                this.f6370b = null;
                this.f6371c = null;
                this.d = 3;
                objC = TimeoutKt.c(200L, anonymousClass3, this);
                if (objC == coroutineSingletons) {
                    return objC;
                }
            }
            return coroutineSingletons;
        } catch (Throwable th2) {
            th = th2;
            mutex2 = mutex;
            mutex2.d(null);
            throw th;
        }
    }
}
