package com.vuitton.android.presentation.screen.storemode.components.plp;

import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import defpackage.md;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1", f = "PLPStoreModeSnackBar.kt", l = {EACTags.CARD_SEQUENCE_NUMBER}, m = "invokeSuspend", v = 2)
final class PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Map f64906c;
    public final /* synthetic */ StoreModeContentUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f64907e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f64908f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1(Map map, StoreModeContentUiModel storeModeContentUiModel, SnackbarHostState snackbarHostState, String str, Continuation continuation) {
        super(2, continuation);
        this.f64906c = map;
        this.d = storeModeContentUiModel;
        this.f64907e = snackbarHostState;
        this.f64908f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1(this.f64906c, this.d, this.f64907e, this.f64908f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64905b;
        StoreModeContentUiModel storeModeContentUiModel = this.d;
        Map map = this.f64906c;
        if (i2 == 0) {
            ResultKt.b(obj);
            map.put(storeModeContentUiModel, Boolean.FALSE);
            this.f64905b = 1;
            if (SnackbarHostState.b(this.f64907e, this.f64908f, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        map.put(storeModeContentUiModel, Boolean.TRUE);
        return Unit.f71739a;
    }
}
