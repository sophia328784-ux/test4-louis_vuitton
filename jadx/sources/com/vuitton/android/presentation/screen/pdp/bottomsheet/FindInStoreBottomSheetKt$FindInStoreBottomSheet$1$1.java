package com.vuitton.android.presentation.screen.pdp.bottomsheet;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.bottomsheet.FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1", f = "FindInStoreBottomSheet.kt", l = {73}, m = "invokeSuspend", v = 2)
final class FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FindInStoreViewModel f61344c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f61345e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.bottomsheet.FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "place", "Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.bottomsheet.FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1", f = "FindInStoreBottomSheet.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<PlaceGeocodingUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f61346b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ FindInStoreViewModel f61347c;
        public final /* synthetic */ String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ MutableState f61348e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FindInStoreViewModel findInStoreViewModel, String str, MutableState mutableState, Continuation continuation) {
            super(2, continuation);
            this.f61347c = findInStoreViewModel;
            this.d = str;
            this.f61348e = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f61347c, this.d, this.f61348e, continuation);
            anonymousClass1.f61346b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((PlaceGeocodingUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PlaceGeocodingUiModel placeGeocodingUiModel = (PlaceGeocodingUiModel) this.f61346b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            this.f61348e.setValue(placeGeocodingUiModel);
            this.f61347c.a6(this.d, placeGeocodingUiModel);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1(FindInStoreViewModel findInStoreViewModel, String str, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f61344c = findInStoreViewModel;
        this.d = str;
        this.f61345e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1(this.f61344c, this.d, this.f61345e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61343b;
        if (i2 == 0) {
            ResultKt.b(obj);
            FindInStoreViewModel findInStoreViewModel = this.f61344c;
            Flow flowY8 = findInStoreViewModel.y8();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(findInStoreViewModel, this.d, this.f61345e, null);
            this.f61343b = 1;
            if (FlowKt.g(flowY8, anonymousClass1, this) == coroutineSingletons) {
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
