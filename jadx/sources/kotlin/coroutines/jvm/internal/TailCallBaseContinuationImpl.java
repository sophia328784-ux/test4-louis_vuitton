package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b\u0012\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlin/coroutines/jvm/internal/TailCallBaseContinuationImpl;", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "", "declaringClass", "methodName", "fileName", "", "lineNumber", "", "", "spilledVariables", "Lkotlin/coroutines/Continuation;", "continuation", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class TailCallBaseContinuationImpl extends BaseContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f71856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f71857c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f71858e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object[] f71859f;
    public final Continuation g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TailCallBaseContinuationImpl(String str, String str2, String str3, int i2, Object[] objArr, Continuation<Object> continuation) {
        super(continuation);
        str.getClass();
        str2.getClass();
        str3.getClass();
        objArr.getClass();
        continuation.getClass();
        this.f71856b = str;
        this.f71857c = str2;
        this.d = str3;
        this.f71858e = i2;
        this.f71859f = objArr;
        this.g = continuation;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.g.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final StackTraceElement getStackTraceElement() {
        ModuleNameRetriever.f71849a.getClass();
        String strA = ModuleNameRetriever.a(this);
        String str = this.f71856b;
        if (strA != null) {
            str = strA + '/' + str;
        }
        return new StackTraceElement(str, this.f71857c, this.d, this.f71858e);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultKt.b(obj);
        return obj;
    }
}
