package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$maybeSuggestSelection$1", f = "TextFieldSelectionManager.kt", l = {571}, m = "invokeSuspend", v = 1)
final class TextFieldSelectionManager$maybeSuggestSelection$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlatformSelectionBehaviors f6476c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f6477e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TextRange f6478f;
    public final /* synthetic */ TextFieldSelectionManager g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ OffsetMapping f6479h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$maybeSuggestSelection$1(PlatformSelectionBehaviors platformSelectionBehaviors, String str, long j2, TextRange textRange, TextFieldSelectionManager textFieldSelectionManager, OffsetMapping offsetMapping, Continuation continuation) {
        super(2, continuation);
        this.f6476c = platformSelectionBehaviors;
        this.d = str;
        this.f6477e = j2;
        this.f6478f = textRange;
        this.g = textFieldSelectionManager;
        this.f6479h = offsetMapping;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TextFieldSelectionManager$maybeSuggestSelection$1(this.f6476c, this.d, this.f6477e, this.f6478f, this.g, this.f6479h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TextFieldSelectionManager$maybeSuggestSelection$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f6475b;
        String str = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f6475b = 1;
            obj = this.f6476c.c(str, this.f6477e, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        TextRange textRange = (TextRange) obj;
        if (textRange == null) {
            return Unit.f71739a;
        }
        long j2 = textRange.f10566a;
        OffsetMapping offsetMapping = this.f6479h;
        long jA = TextRangeKt.a(offsetMapping.a((int) (j2 >> 32)), offsetMapping.a((int) (j2 & BodyPartID.bodyIdMax)));
        if (!TextRange.a(jA, this.f6478f)) {
            TextFieldSelectionManager textFieldSelectionManager = this.g;
            if (Intrinsics.c(textFieldSelectionManager.o().f10840a.f10420c, str) && offsetMapping == textFieldSelectionManager.f6455b) {
                textFieldSelectionManager.f6456c.invoke(TextFieldSelectionManager.e(textFieldSelectionManager.o().f10840a, jA));
                textFieldSelectionManager.x = new TextRange(jA);
            }
        }
        return Unit.f71739a;
    }
}
