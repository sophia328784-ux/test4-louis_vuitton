package androidx.compose.foundation.text;

import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
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
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1", f = "CoreTextField.kt", l = {346}, m = "invokeSuspend", v = 1)
final class CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BringIntoViewRequester f5874c;
    public final /* synthetic */ TextFieldValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LegacyTextFieldState f5875e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TextLayoutResultProxy f5876f;
    public final /* synthetic */ OffsetMapping g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1(BringIntoViewRequester bringIntoViewRequester, TextFieldValue textFieldValue, LegacyTextFieldState legacyTextFieldState, TextLayoutResultProxy textLayoutResultProxy, OffsetMapping offsetMapping, Continuation continuation) {
        super(2, continuation);
        this.f5874c = bringIntoViewRequester;
        this.d = textFieldValue;
        this.f5875e = legacyTextFieldState;
        this.f5876f = textLayoutResultProxy;
        this.g = offsetMapping;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1(this.f5874c, this.d, this.f5875e, this.f5876f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Rect rectB;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f5873b;
        if (i2 == 0) {
            ResultKt.b(obj);
            TextDelegate textDelegate = this.f5875e.f5925a;
            TextLayoutResult textLayoutResult = this.f5876f.f6011a;
            this.f5873b = 1;
            int iB = this.g.b(TextRange.e(this.d.f10841b));
            if (iB < textLayoutResult.f10552a.f10543a.f10420c.length()) {
                rectB = textLayoutResult.b(iB);
            } else {
                rectB = iB != 0 ? textLayoutResult.b(iB - 1) : new Rect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, (int) (TextFieldDelegateKt.a(textDelegate.f5951b, textDelegate.g, textDelegate.f5955h, TextFieldDelegateKt.f5964a, 1) & BodyPartID.bodyIdMax));
            }
            Object objA = this.f5874c.a(rectB, this);
            if (objA != coroutineSingletons) {
                objA = Unit.f71739a;
            }
            if (objA == coroutineSingletons) {
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
