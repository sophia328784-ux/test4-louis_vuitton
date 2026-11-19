package com.vuitton.android.presentation.screen.authentication.login;

import com.vuitton.android.domain.usecase.forms.GetAuthenticationFormUseCase;
import com.vuitton.android.presentation.screen.authentication.common.validation.EmailValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.FormPasswordValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$loadAuthenticationForm$1;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginUiModel;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.field.customvalidation.FieldValidationRule;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.forms.Form;
import defpackage.be0;
import defpackage.g3;
import defpackage.iv;
import defpackage.md;
import defpackage.n50;
import defpackage.rq;
import defpackage.rt;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$loadAuthenticationForm$1", f = "NativeLoginViewModelImpl.kt", l = {194}, m = "invokeSuspend", v = 2)
public final class NativeLoginViewModelImpl$loadAuthenticationForm$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeLoginViewModelImpl f53609c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$loadAuthenticationForm$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/forms/Form;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$loadAuthenticationForm$1$1", f = "NativeLoginViewModelImpl.kt", l = {196}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Result<? extends Form>>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53610b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ NativeLoginViewModelImpl f53611c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(NativeLoginViewModelImpl nativeLoginViewModelImpl, Continuation continuation) {
            super(1, continuation);
            this.f53611c = nativeLoginViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new AnonymousClass1(this.f53611c, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return ((AnonymousClass1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objA;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f53610b;
            if (i2 == 0) {
                ResultKt.b(obj);
                NativeLoginViewModelImpl nativeLoginViewModelImpl = this.f53611c;
                GetAuthenticationFormUseCase getAuthenticationFormUseCase = nativeLoginViewModelImpl.f53603h;
                InAppDispatch inAppDispatch = nativeLoginViewModelImpl.q;
                this.f53610b = 1;
                objA = getAuthenticationFormUseCase.a(inAppDispatch, this);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objA = ((Result) obj).f71708b;
            }
            return new Result(objA);
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53612a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f53612a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeLoginViewModelImpl$loadAuthenticationForm$1(NativeLoginViewModelImpl nativeLoginViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f53609c = nativeLoginViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeLoginViewModelImpl$loadAuthenticationForm$1(this.f53609c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeLoginViewModelImpl$loadAuthenticationForm$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final NativeLoginViewModelImpl nativeLoginViewModelImpl = this.f53609c;
        MutableStateFlow mutableStateFlow = nativeLoginViewModelImpl.x;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53608b;
        final int i3 = 1;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            Set setZ = ArraysKt.Z(new FormSectionTypeUiModel[]{FormSectionTypeUiModel.EMAIL, FormSectionTypeUiModel.PASSWORD});
            DynamicFormSupervisor dynamicFormSupervisor = nativeLoginViewModelImpl.g;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(nativeLoginViewModelImpl, null);
            g3 g3Var = new g3(3, setZ);
            n50 n50Var = new n50(nativeLoginViewModelImpl);
            final int i4 = 0;
            Function1 function1 = new Function1() { // from class: mf0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i5 = i4;
                    NativeLoginViewModelImpl nativeLoginViewModelImpl2 = nativeLoginViewModelImpl;
                    FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj2;
                    switch (i5) {
                        case 0:
                            if (NativeLoginViewModelImpl$loadAuthenticationForm$1.WhenMappings.f53612a[formSectionTypeUiModel.ordinal()] == 1) {
                                String str = nativeLoginViewModelImpl2.v;
                                if (!StringsKt.w(str)) {
                                    return str;
                                }
                            }
                            return null;
                        default:
                            if (NativeLoginViewModelImpl$loadAuthenticationForm$1.WhenMappings.f53612a[formSectionTypeUiModel.ordinal()] == 1) {
                                EmailValidationRules emailValidationRules = nativeLoginViewModelImpl2.f53601e;
                                emailValidationRules.getClass();
                                return new FieldValidationRule(new ck(emailValidationRules, 19), new ss(emailValidationRules, 8), null, 4, null);
                            }
                            FormPasswordValidationRules formPasswordValidationRules = nativeLoginViewModelImpl2.f53602f;
                            PasswordUiModel passwordUiModel = ((NativeLoginUiModel) nativeLoginViewModelImpl2.w.getValue()).f53690b;
                            x60 x60Var = new x60(nativeLoginViewModelImpl2, 12);
                            formPasswordValidationRules.getClass();
                            return FormPasswordValidationRules.a(x60Var, passwordUiModel, formSectionTypeUiModel);
                    }
                }
            };
            Function1 function2 = new Function1() { // from class: mf0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i5 = i3;
                    NativeLoginViewModelImpl nativeLoginViewModelImpl2 = nativeLoginViewModelImpl;
                    FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj2;
                    switch (i5) {
                        case 0:
                            if (NativeLoginViewModelImpl$loadAuthenticationForm$1.WhenMappings.f53612a[formSectionTypeUiModel.ordinal()] == 1) {
                                String str = nativeLoginViewModelImpl2.v;
                                if (!StringsKt.w(str)) {
                                    return str;
                                }
                            }
                            return null;
                        default:
                            if (NativeLoginViewModelImpl$loadAuthenticationForm$1.WhenMappings.f53612a[formSectionTypeUiModel.ordinal()] == 1) {
                                EmailValidationRules emailValidationRules = nativeLoginViewModelImpl2.f53601e;
                                emailValidationRules.getClass();
                                return new FieldValidationRule(new ck(emailValidationRules, 19), new ss(emailValidationRules, 8), null, 4, null);
                            }
                            FormPasswordValidationRules formPasswordValidationRules = nativeLoginViewModelImpl2.f53602f;
                            PasswordUiModel passwordUiModel = ((NativeLoginUiModel) nativeLoginViewModelImpl2.w.getValue()).f53690b;
                            x60 x60Var = new x60(nativeLoginViewModelImpl2, 12);
                            formPasswordValidationRules.getClass();
                            return FormPasswordValidationRules.a(x60Var, passwordUiModel, formSectionTypeUiModel);
                    }
                }
            };
            be0 be0Var = new be0(15);
            this.f53608b = 1;
            if (dynamicFormSupervisor.b(anonymousClass1, (124 & 2) != 0 ? new iv(2) : g3Var, (124 & 4) != 0 ? new rq(7) : n50Var, (124 & 8) != 0 ? new iv(3) : null, (124 & 16) != 0 ? new rt(11) : null, (124 & 32) != 0 ? new iv(4) : function1, (124 & 64) != 0 ? new rq(8) : null, (124 & 128) != 0 ? new iv(5) : function2, (124 & 256) != 0 ? new iv(6) : be0Var, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
