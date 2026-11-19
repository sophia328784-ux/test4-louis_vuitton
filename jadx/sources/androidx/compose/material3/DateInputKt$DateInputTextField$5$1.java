package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.DateInputFormat;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.TextFieldValue;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.DateInputKt$DateInputTextField$5$1", f = "DateInput.kt", l = {}, m = "invokeSuspend")
final class DateInputKt$DateInputTextField$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Long f6740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CalendarModel f6741c;
    public final /* synthetic */ DateInputFormat d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Locale f6742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f6743f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DateInputKt$DateInputTextField$5$1(Long l, CalendarModel calendarModel, DateInputFormat dateInputFormat, Locale locale, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f6740b = l;
        this.f6741c = calendarModel;
        this.d = dateInputFormat;
        this.f6742e = locale;
        this.f6743f = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DateInputKt$DateInputTextField$5$1(this.f6740b, this.f6741c, this.d, this.f6742e, this.f6743f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DateInputKt$DateInputTextField$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long jA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Long l = this.f6740b;
        if (l != null) {
            String strA = this.f6741c.a(l.longValue(), this.d.f7600c, this.f6742e);
            if (strA.length() == 0) {
                TextRange.f10564b.getClass();
                jA = TextRange.f10565c;
            } else {
                jA = TextRangeKt.a(strA.length(), strA.length());
            }
            TextFieldValue textFieldValue = new TextFieldValue(strA, jA, (TextRange) null, 4, (DefaultConstructorMarker) null);
            PaddingValuesImpl paddingValuesImpl = DateInputKt.f6732a;
            this.f6743f.setValue(textFieldValue);
        }
        return Unit.f71739a;
    }
}
