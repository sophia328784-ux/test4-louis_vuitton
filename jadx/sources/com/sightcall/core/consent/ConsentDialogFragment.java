package com.sightcall.core.consent;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sightcall.core.R;
import com.sightcall.core.consent.ConsentDialogFragment;
import com.sightcall.core.consent.compose.ConsentLayoutKt;
import defpackage.f0;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 $2\u00020\u0001:\u0001$BE\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001f\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010 \u001a\u00020\tH\u0002J\u0010\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020#H\u0002R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\fR\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\fR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\fR\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\fR\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012¨\u0006%"}, d2 = {"Lcom/sightcall/core/consent/ConsentDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "title", "", "content", "privacyLinkDisplay", "declineContent", "onConsentClick", "Lkotlin/Function0;", "", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V", "Ljava/lang/Integer;", "sharedPreferences", "Landroid/content/SharedPreferences;", "viewModel", "Lcom/sightcall/core/consent/ConsentViewModel;", "getViewModel", "()Lcom/sightcall/core/consent/ConsentViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onCreateDialog", "Landroid/app/Dialog;", "onCreate", "consentToPolicies", "updateConsentState", "newConsentState", "Lcom/sightcall/core/consent/ConsentEnum;", "Companion", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConsentDialogFragment extends DialogFragment {
    public static final String ConsentKey = "CONSENT_KEY";
    public static final String ConsentStoragePreferences = "CONSENT_STORAGE_PREFERENCES";
    public static final String ShouldShowConsentKey = "SHOULD_SHOW_CONSENT_KEY";
    public static final String TAG = "ConsentDialogFragment";
    private final Integer content;
    private final Integer declineContent;
    private final Function0<Unit> onConsentClick;
    private final Integer privacyLinkDisplay;
    private SharedPreferences sharedPreferences;
    private final Integer title;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;
    public static final int $stable = 8;

    public ConsentDialogFragment(Integer num, Integer num2, Integer num3, Integer num4, Function0<Unit> function0) {
        function0.getClass();
        this.title = num;
        this.content = num2;
        this.privacyLinkDisplay = num3;
        this.declineContent = num4;
        this.onConsentClick = function0;
        final Function0<Fragment> function1 = new Function0<Fragment>() { // from class: com.sightcall.core.consent.ConsentDialogFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Fragment mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.sightcall.core.consent.ConsentDialogFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelStoreOwner mo47invoke() {
                return (ViewModelStoreOwner) function1.mo47invoke();
            }
        });
        final Function0 function2 = null;
        this.viewModel = new ViewModelLazy(Reflection.f71922a.b(ConsentViewModel.class), new Function0<ViewModelStore>() { // from class: com.sightcall.core.consent.ConsentDialogFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelStore mo47invoke() {
                ViewModelStore f13587c = ((ViewModelStoreOwner) lazyA.getF71699b()).getF13587c();
                f13587c.getClass();
                return f13587c;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.sightcall.core.consent.ConsentDialogFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final ViewModelProvider.Factory mo47invoke() {
                ViewModelProvider.Factory f13588e;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                if (hasDefaultViewModelProviderFactory == null || (f13588e = hasDefaultViewModelProviderFactory.getF13588e()) == null) {
                    f13588e = this.getF13588e();
                }
                f13588e.getClass();
                return f13588e;
            }
        }, new Function0<CreationExtras>() { // from class: com.sightcall.core.consent.ConsentDialogFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final CreationExtras mo47invoke() {
                CreationExtras creationExtras;
                Function0 function3 = function2;
                if (function3 != null && (creationExtras = (CreationExtras) function3.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                CreationExtras defaultViewModelCreationExtras = hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : null;
                return defaultViewModelCreationExtras == null ? CreationExtras.Empty.f13578c : defaultViewModelCreationExtras;
            }
        });
    }

    private final void consentToPolicies() {
        this.onConsentClick.mo47invoke();
        dismiss();
    }

    private final ConsentViewModel getViewModel() {
        return (ConsentViewModel) this.viewModel.getF71699b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$5$0(final ConsentDialogFragment consentDialogFragment, AnnotatedString annotatedString, Composer composer, int i2) {
        final int i3 = 2;
        if ((i2 & 3) == 2 && composer.i()) {
            composer.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Integer num = consentDialogFragment.title;
            String string = consentDialogFragment.getString(num != null ? num.intValue() : R.string.consent_title_privacy_policy);
            string.getClass();
            String string2 = consentDialogFragment.getString(R.string.consent_declined_title);
            string2.getClass();
            Integer num2 = consentDialogFragment.declineContent;
            String string3 = consentDialogFragment.getString(num2 != null ? num2.intValue() : R.string.consent_declined_body);
            string3.getClass();
            boolean zY = composer.y(consentDialogFragment);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                final int i4 = 0;
                objX = new Function0(consentDialogFragment) { // from class: mp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConsentDialogFragment f76334c;

                    {
                        this.f76334c = consentDialogFragment;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i5 = i4;
                        ConsentDialogFragment consentDialogFragment2 = this.f76334c;
                        switch (i5) {
                            case 0:
                                return ConsentDialogFragment.onCreateView$lambda$5$0$0$0(consentDialogFragment2);
                            case 1:
                                return ConsentDialogFragment.onCreateView$lambda$5$0$1$0(consentDialogFragment2);
                            default:
                                return ConsentDialogFragment.onCreateView$lambda$5$0$2$0(consentDialogFragment2);
                        }
                    }
                };
                composer.q(objX);
            }
            Function0 function0 = (Function0) objX;
            boolean zY2 = composer.y(consentDialogFragment);
            Object objX2 = composer.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                final int i5 = 1;
                objX2 = new Function0(consentDialogFragment) { // from class: mp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConsentDialogFragment f76334c;

                    {
                        this.f76334c = consentDialogFragment;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i6 = i5;
                        ConsentDialogFragment consentDialogFragment2 = this.f76334c;
                        switch (i6) {
                            case 0:
                                return ConsentDialogFragment.onCreateView$lambda$5$0$0$0(consentDialogFragment2);
                            case 1:
                                return ConsentDialogFragment.onCreateView$lambda$5$0$1$0(consentDialogFragment2);
                            default:
                                return ConsentDialogFragment.onCreateView$lambda$5$0$2$0(consentDialogFragment2);
                        }
                    }
                };
                composer.q(objX2);
            }
            Function0 function1 = (Function0) objX2;
            boolean zY3 = composer.y(consentDialogFragment);
            Object objX3 = composer.x();
            if (zY3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new Function0(consentDialogFragment) { // from class: mp

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ConsentDialogFragment f76334c;

                    {
                        this.f76334c = consentDialogFragment;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i6 = i3;
                        ConsentDialogFragment consentDialogFragment2 = this.f76334c;
                        switch (i6) {
                            case 0:
                                return ConsentDialogFragment.onCreateView$lambda$5$0$0$0(consentDialogFragment2);
                            case 1:
                                return ConsentDialogFragment.onCreateView$lambda$5$0$1$0(consentDialogFragment2);
                            default:
                                return ConsentDialogFragment.onCreateView$lambda$5$0$2$0(consentDialogFragment2);
                        }
                    }
                };
                composer.q(objX3);
            }
            ConsentLayoutKt.ConsentParentScreen(string, string2, string3, annotatedString, function0, function1, (Function0) objX3, consentDialogFragment.getViewModel(), composer, 0);
        }
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$5$0$0$0(ConsentDialogFragment consentDialogFragment) {
        SharedPreferences sharedPreferences = consentDialogFragment.sharedPreferences;
        if (sharedPreferences == null) {
            Intrinsics.h("sharedPreferences");
            throw null;
        }
        sharedPreferences.edit().putBoolean(ConsentKey, true).apply();
        consentDialogFragment.consentToPolicies();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$5$0$1$0(ConsentDialogFragment consentDialogFragment) {
        consentDialogFragment.updateConsentState(ConsentEnum.SHOW_DECLINE_VIEW);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$5$0$2$0(ConsentDialogFragment consentDialogFragment) {
        consentDialogFragment.updateConsentState(ConsentEnum.SHOW_CONSENT_VIEW);
        return Unit.f71739a;
    }

    private final void updateConsentState(ConsentEnum newConsentState) {
        getViewModel().setConsentVisibility(newConsentState);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, com.sightcall.graphik.R.style.Theme_SightCall);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        dialogOnCreateDialog.getClass();
        dialogOnCreateDialog.requestWindowFeature(1);
        dialogOnCreateDialog.setCanceledOnTouchOutside(false);
        setCancelable(false);
        return dialogOnCreateDialog;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0032  */
    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        String string;
        inflater.getClass();
        SharedPreferences sharedPreferences = requireActivity().getSharedPreferences(ConsentStoragePreferences, 0);
        sharedPreferences.getClass();
        this.sharedPreferences = sharedPreferences;
        if (sharedPreferences.getBoolean(ConsentKey, false)) {
            consentToPolicies();
        } else {
            SharedPreferences sharedPreferences2 = this.sharedPreferences;
            if (sharedPreferences2 == null) {
                Intrinsics.h("sharedPreferences");
                throw null;
            }
            if (!sharedPreferences2.getBoolean(ShouldShowConsentKey, true)) {
                consentToPolicies();
            }
        }
        Integer num = this.content;
        int iIntValue = num != null ? num.intValue() : R.string.consent_privacy_policy;
        Integer num2 = this.privacyLinkDisplay;
        if (num2 == null || (string = getString(num2.intValue())) == null) {
            string = getString(R.string.consent_privacy_policy_url_display);
            string.getClass();
        }
        String string2 = getString(R.string.consent_privacy_policy_url);
        string2.getClass();
        String string3 = getString(iIntValue, string);
        string3.getClass();
        String str = String.format(string3, Arrays.copyOf(new Object[0], 0));
        int iV = StringsKt.v(str, string, 0, false, 6);
        int length = string.length() + iV;
        AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
        builder.e(str);
        Color.f8866b.getClass();
        long j2 = Color.g;
        TextDecoration.f10965b.getClass();
        builder.c(new SpanStyle(j2, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), iV, length);
        builder.b(iV, length, "URL", string2);
        AnnotatedString annotatedStringI = builder.i();
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        ComposeView composeView = new ComposeView(contextRequireContext, null, 0, 6, null);
        composeView.setContent(new ComposableLambdaImpl(1698856833, true, new f0(this, annotatedStringI, 27)));
        return composeView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        FragmentTrackHelper.onFragmentViewCreated(this, view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    public /* synthetic */ ConsentDialogFragment(Integer num, Integer num2, Integer num3, Integer num4, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : num, (i2 & 2) != 0 ? null : num2, (i2 & 4) != 0 ? null : num3, (i2 & 8) != 0 ? null : num4, function0);
    }
}
