package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import com.perfectcorp.perfectlib.LookInfo;
import com.perfectcorp.perfectlib.LookSetting;
import com.perfectcorp.perfectlib.SkuInfo;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import defpackage.q;
import defpackage.r0;
import defpackage.w9;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$onCreate$1$1$13$1", f = "BeautyVtoActivity.kt", l = {}, m = "invokeSuspend", v = 2)
final class BeautyVtoActivity$onCreate$1$1$13$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoActivity f61802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f61803c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f61804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Context f61805f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoActivity$onCreate$1$1$13$1(BeautyVtoActivity beautyVtoActivity, MutableState mutableState, MutableState mutableState2, CoroutineScope coroutineScope, Context context, Continuation continuation) {
        super(2, continuation);
        this.f61802b = beautyVtoActivity;
        this.f61803c = mutableState;
        this.d = mutableState2;
        this.f61804e = coroutineScope;
        this.f61805f = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoActivity$onCreate$1$1$13$1(this.f61802b, this.f61803c, this.d, this.f61804e, this.f61805f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoActivity$onCreate$1$1$13$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ColorUiModel colorUiModel;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
        final MutableState mutableState = this.f61803c;
        BeautyVtoMode beautyVtoMode = ((BeautyVtoViewState) mutableState.getF10755b()).f62149a;
        BeautyVtoMode beautyVtoMode2 = BeautyVtoMode.STACKING;
        final BeautyVtoActivity beautyVtoActivity = this.f61802b;
        MutableState mutableState2 = this.d;
        if (beautyVtoMode == beautyVtoMode2) {
            TryOnProductUiModel tryOnProductUiModel = ((BeautyVtoViewState) mutableState.getF10755b()).f62156j;
            String str = null;
            str = null;
            if (CollectionExtKt.a(tryOnProductUiModel != null ? tryOnProductUiModel.f62188h : null)) {
                final LookInfo lookInfo = ((BeautyVtoViewState) mutableState.getF10755b()).q;
                if (lookInfo != null) {
                    TryOnProductUiModel tryOnProductUiModel2 = ((BeautyVtoViewState) mutableState.getF10755b()).f62155i;
                    BeautyProductTypeUiModel beautyProductTypeUiModel = tryOnProductUiModel2 != null ? tryOnProductUiModel2.f62185c : null;
                    final CoroutineScope coroutineScope = this.f61804e;
                    final Context context = this.f61805f;
                    beautyVtoActivity.J(beautyProductTypeUiModel, new Function0() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.b
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            BeautyVtoActivity beautyVtoActivity2 = beautyVtoActivity;
                            Context context2 = context;
                            MutableState mutableState3 = mutableState;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            r0 r0Var = new r0((Object) beautyVtoActivity2, (Object) context2, mutableState3, (Object) coroutineScope2, 5);
                            BeautyVtoActivity.Companion companion2 = BeautyVtoActivity.D;
                            BuildersKt.c(coroutineScope2, null, null, new BeautyVtoActivity$applyLook$2(beautyVtoActivity2, LookSetting.create(lookInfo.getGuid()), r0Var, null), 3);
                            return Unit.f71739a;
                        }
                    });
                }
            } else {
                SkuInfo skuInfo = ((BeautyVtoViewState) mutableState.getF10755b()).p;
                if (skuInfo != null) {
                    BeautyProductTypeUiModel beautyProductTypeUiModel2 = (BeautyProductTypeUiModel) mutableState2.getF10755b();
                    BeautyProductTypeUiModel beautyProductTypeUiModel3 = BeautyProductTypeUiModel.EYESHADOW;
                    CoroutineScope coroutineScope2 = this.f61804e;
                    if (beautyProductTypeUiModel2 == beautyProductTypeUiModel3) {
                        beautyVtoActivity.K(new q(beautyVtoActivity, coroutineScope2, skuInfo, 13));
                    } else {
                        beautyVtoActivity.I(coroutineScope2, skuInfo, new w9(20));
                        TryOnProductUiModel tryOnProductUiModel3 = ((BeautyVtoViewState) mutableState.getF10755b()).f62156j;
                        if (tryOnProductUiModel3 != null && (colorUiModel = tryOnProductUiModel3.g) != null) {
                            str = colorUiModel.f62159a;
                        }
                        if (str == null) {
                            str = "";
                        }
                        BeautyVtoActivity.H(beautyVtoActivity, str);
                    }
                }
            }
        } else if (((BeautyProductTypeUiModel) mutableState2.getF10755b()) == BeautyProductTypeUiModel.EYESHADOW) {
            beautyVtoActivity.K(new w9(21));
        } else {
            beautyVtoActivity.J((BeautyProductTypeUiModel) mutableState2.getF10755b(), new w9(19));
        }
        return Unit.f71739a;
    }
}
