package com.vuitton.android.presentation.screen.placesearch.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.placesearch.models.PlacesUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt$PlaceSearchComposable$1$1", f = "PlaceSearchPageComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class PlaceSearchPageComposableKt$PlaceSearchComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f62681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f62682c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NotificationBuilder f62683e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Context f62684f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt$PlaceSearchComposable$1$1$1", f = "PlaceSearchPageComposable.kt", l = {83}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f62685b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f62686c;
        public final /* synthetic */ NotificationBuilder d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f62687e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, Continuation continuation) {
            super(2, continuation);
            this.f62686c = snackbarHostState;
            this.d = notificationBuilder;
            this.f62687e = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f62686c, this.d, this.f62687e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f62685b;
            if (i2 == 0) {
                ResultKt.b(obj);
                NotificationUiModel notificationUiModelA = NotificationBuilder.a(this.d, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 44);
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModelA, this.f62687e, LVColorScheme.DEFAULT);
                this.f62685b = 1;
                if (this.f62686c.a(lVSnackbarVisualsB, this) == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaceSearchPageComposableKt$PlaceSearchComposable$1$1(CoroutineScope coroutineScope, MutableState mutableState, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, Continuation continuation) {
        super(2, continuation);
        this.f62681b = coroutineScope;
        this.f62682c = mutableState;
        this.d = snackbarHostState;
        this.f62683e = notificationBuilder;
        this.f62684f = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PlaceSearchPageComposableKt$PlaceSearchComposable$1$1(this.f62681b, this.f62682c, this.d, this.f62683e, this.f62684f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PlaceSearchPageComposableKt$PlaceSearchComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (((PlacesUiModel) this.f62682c.getF10755b()).f62696c) {
            BuildersKt.c(this.f62681b, null, null, new AnonymousClass1(this.d, this.f62683e, this.f62684f, null), 3);
        }
        return Unit.f71739a;
    }
}
