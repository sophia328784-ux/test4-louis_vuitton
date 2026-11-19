package com.vuitton.android.presentation.screen.authentication.social.components;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginViewState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u007f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;", "", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;", "viewModel", "Landroidx/compose/runtime/State;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;", "viewState", "Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;", "bottomSheetState", "Landroidx/compose/runtime/MutableState;", "Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType;", "currentBottomSheet", "Lkotlin/Function0;", "", "onNativeLogin", "onNativeRegister", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Landroidx/compose/material3/SnackbarHostState;", "snackbarHostState", "onLogin", "onRegister", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/State;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SocialLoginBottomSheetState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SocialLoginViewModel f54153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final State f54154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LVModalBottomSheetState f54155c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function0 f54156e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function0 f54157f;
    public final TrackingAuthOrigin g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SnackbarHostState f54158h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Function0 f54159i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Function0 f54160j;

    public SocialLoginBottomSheetState(SocialLoginViewModel socialLoginViewModel, State<SocialLoginViewState> state, LVModalBottomSheetState lVModalBottomSheetState, MutableState<SocialLoginBottomSheetType> mutableState, Function0<Unit> function0, Function0<Unit> function1, TrackingAuthOrigin trackingAuthOrigin, SnackbarHostState snackbarHostState, Function0<Unit> function2, Function0<Unit> function3) {
        socialLoginViewModel.getClass();
        state.getClass();
        lVModalBottomSheetState.getClass();
        mutableState.getClass();
        function0.getClass();
        function1.getClass();
        trackingAuthOrigin.getClass();
        snackbarHostState.getClass();
        function2.getClass();
        function3.getClass();
        this.f54153a = socialLoginViewModel;
        this.f54154b = state;
        this.f54155c = lVModalBottomSheetState;
        this.d = mutableState;
        this.f54156e = function0;
        this.f54157f = function1;
        this.g = trackingAuthOrigin;
        this.f54158h = snackbarHostState;
        this.f54159i = function2;
        this.f54160j = function3;
    }
}
