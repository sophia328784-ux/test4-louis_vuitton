package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import defpackage.cl0;
import defpackage.d0;
import defpackage.lq;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$5$1", f = "CoreTextField.kt", l = {363}, m = "invokeSuspend", v = 1)
final class CoreTextFieldKt$CoreTextField$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LegacyTextFieldState f5862c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TextInputService f5863e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TextFieldSelectionManager f5864f;
    public final /* synthetic */ ImeOptions g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoreTextFieldKt$CoreTextField$5$1(LegacyTextFieldState legacyTextFieldState, MutableState mutableState, TextInputService textInputService, TextFieldSelectionManager textFieldSelectionManager, ImeOptions imeOptions, Continuation continuation) {
        super(2, continuation);
        this.f5862c = legacyTextFieldState;
        this.d = mutableState;
        this.f5863e = textInputService;
        this.f5864f = textFieldSelectionManager;
        this.g = imeOptions;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CoreTextFieldKt$CoreTextField$5$1(this.f5862c, this.d, this.f5863e, this.f5864f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CoreTextFieldKt$CoreTextField$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f5861b;
        final LegacyTextFieldState legacyTextFieldState = this.f5862c;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Flow flowM = SnapshotStateKt.m(new d0(22, this.d));
                final TextInputService textInputService = this.f5863e;
                final TextFieldSelectionManager textFieldSelectionManager = this.f5864f;
                final ImeOptions imeOptions = this.g;
                FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$5$1.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        LegacyTextFieldState legacyTextFieldState2 = legacyTextFieldState;
                        if (zBooleanValue && legacyTextFieldState2.b()) {
                            TextFieldSelectionManager textFieldSelectionManager2 = textFieldSelectionManager;
                            TextFieldValue textFieldValueO = textFieldSelectionManager2.o();
                            OffsetMapping offsetMapping = textFieldSelectionManager2.f6455b;
                            TextFieldDelegate.Companion companion = TextFieldDelegate.f5962a;
                            EditProcessor editProcessor = legacyTextFieldState2.d;
                            lq lqVar = legacyTextFieldState2.v;
                            lq lqVar2 = legacyTextFieldState2.w;
                            companion.getClass();
                            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                            cl0 cl0Var = new cl0(editProcessor, lqVar, ref$ObjectRef, 17);
                            TextInputService textInputService2 = textInputService;
                            PlatformTextInputService platformTextInputService = textInputService2.f10843a;
                            platformTextInputService.c(textFieldValueO, imeOptions, cl0Var, lqVar2);
                            TextInputSession textInputSession = new TextInputSession(textInputService2, platformTextInputService);
                            textInputService2.f10844b.set(textInputSession);
                            ref$ObjectRef.f71921b = textInputSession;
                            legacyTextFieldState2.f5928e = textInputSession;
                            CoreTextFieldKt.f(legacyTextFieldState2, textFieldValueO, offsetMapping);
                        } else {
                            CoreTextFieldKt.e(legacyTextFieldState2);
                        }
                        return Unit.f71739a;
                    }
                };
                this.f5861b = 1;
                if (((AbstractFlow) flowM).f(flowCollector, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            CoreTextFieldKt.e(legacyTextFieldState);
            return Unit.f71739a;
        } catch (Throwable th) {
            CoreTextFieldKt.e(legacyTextFieldState);
            throw th;
        }
    }
}
