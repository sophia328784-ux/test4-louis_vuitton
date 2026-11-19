package kotlinx.coroutines;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003À\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/CancelHandler;", "Lkotlinx/coroutines/NotCompleted;", "UserSupplied", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface CancelHandler extends NotCompleted {

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B,\u0012#\u0010\b\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/CancelHandler$UserSupplied;", "Lkotlinx/coroutines/CancelHandler;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "handler", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class UserSupplied implements CancelHandler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function1 f74638b;

        public UserSupplied(Function1<? super Throwable, Unit> function1) {
            this.f74638b = function1;
        }

        @Override // kotlinx.coroutines.CancelHandler
        public final void a(Throwable th) {
            this.f74638b.invoke(th);
        }

        public final String toString() {
            return "CancelHandler.UserSupplied[" + this.f74638b.getClass().getSimpleName() + AnnotationParser.AnnotationInstruction + DebugStringsKt.a(this) + ']';
        }
    }

    void a(Throwable th);
}
