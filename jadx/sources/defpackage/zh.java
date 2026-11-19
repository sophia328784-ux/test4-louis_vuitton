package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.SharedTransitionScope;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.material3.MinimumInteractiveModifier;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.kizitonwose.calendar.compose.CalendarKt;
import com.kizitonwose.calendar.compose.CalendarState;
import com.kizitonwose.calendar.compose.ContentHeightMode;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVCardKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModel;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftOptionComposableKt;
import com.vuitton.android.presentation.screen.cart.models.AutomationTagsCart$CardType;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastControlButtonKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistComposableKt;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zh implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81627b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f81628c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81629e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81630f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81631h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81632i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function f81633j;

    public /* synthetic */ zh(SharedTransitionScope sharedTransitionScope, AnimatedVisibilityScope animatedVisibilityScope, AudioPlayerItemUiModel audioPlayerItemUiModel, boolean z, Context context, Function1 function1, Function0 function0, boolean z2) {
        this.f81629e = sharedTransitionScope;
        this.f81630f = animatedVisibilityScope;
        this.g = audioPlayerItemUiModel;
        this.f81628c = z;
        this.f81631h = context;
        this.f81632i = function1;
        this.f81633j = function0;
        this.d = z2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2;
        int i3 = this.f81627b;
        Function function = this.f81633j;
        Object obj3 = this.f81632i;
        Object obj4 = this.f81631h;
        Object obj5 = this.g;
        Object obj6 = this.f81630f;
        Object obj7 = this.f81629e;
        switch (i3) {
            case 0:
                ((Integer) obj2).getClass();
                CalendarKt.b((Modifier) obj7, (CalendarState) obj6, this.f81628c, this.d, (PaddingValues) obj5, (ContentHeightMode) obj4, (ComposableLambdaImpl) obj3, (Function4) function, (Composer) obj, RecomposeScopeImplKt.a(113246209));
                return Unit.f71739a;
            case 1:
                SharedTransitionScope sharedTransitionScope = (SharedTransitionScope) obj7;
                AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj6;
                AudioPlayerItemUiModel audioPlayerItemUiModel = (AudioPlayerItemUiModel) obj5;
                Context context = (Context) obj4;
                Function1 function1 = (Function1) obj3;
                Function0 function0 = (Function0) function;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierK = PaddingKt.k(tr.d("CollapsedPodcast$lambda$0$0$0", 1.0f), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer).f48416e);
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.l, composer, 48);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierK);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function2);
                    } else {
                        composer.o();
                    }
                    Function2 function3 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer, rowMeasurePolicyA, function3);
                    Function2 function4 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer, persistentCompositionLocalMapN, function4);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function5 = ComposeUiNode.Companion.g;
                    Updater.c(composer, numValueOf, function5);
                    Function1 function6 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer, function6);
                    Function2 function7 = ComposeUiNode.Companion.d;
                    Modifier modifierO = SizeKt.o(PaddingKt.k(a.f(composer, modifierC, function7, "CollapsedPodcast$lambda$0$0$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).d, 1), LVAppDesignKitTheme.d(composer).A);
                    sharedTransitionScope.getClass();
                    Modifier modifierA = ClipKt.a(SharedTransitionScope.f(sharedTransitionScope, modifierO, SharedTransitionScope.B("image", composer, 6), animatedVisibilityScope), LVAppDesignKitTheme.j(composer).f48411c);
                    AssetImage assetImage = audioPlayerItemUiModel.f53258c;
                    String str = assetImage != null ? assetImage.f67108a : null;
                    if (str == null) {
                        str = "";
                    }
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierA, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer, 3456, 2032);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CollapsedPodcast$lambda$0$0$0");
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode2 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer, dTFunctionNameModifier);
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function2);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, measurePolicyD, function3);
                    Updater.c(composer, persistentCompositionLocalMapN2, function4);
                    cj.s(iHashCode2, composer, function5, composer, function6);
                    Updater.c(composer, modifierC2, function7);
                    Modifier modifierD = tr.d("CollapsedPodcast$lambda$0$0$0", 1.0f);
                    BiasAlignment biasAlignment = Alignment.Companion.f8586e;
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                    Modifier modifierM = PaddingKt.m(boxScopeInstance.g(modifierD, biasAlignment), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer, 48);
                    int iHashCode3 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer, modifierM);
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function2);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, columnMeasurePolicyA, function3);
                    Updater.c(composer, persistentCompositionLocalMapN3, function4);
                    cj.s(iHashCode3, composer, function5, composer, function6);
                    Updater.c(composer, modifierC3, function7);
                    String str2 = audioPlayerItemUiModel.d;
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer).l;
                    long j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
                    TextAlign.f10959b.getClass();
                    int i4 = TextAlign.g;
                    Modifier modifierD2 = tr.d("CollapsedPodcast$lambda$0$0$0", 1.0f);
                    Dp dp = new Dp(LVAppDesignKitTheme.d(composer).t);
                    Dp dp2 = new Dp(LVAppDesignKitTheme.d(composer).n);
                    boolean z = this.d;
                    TextKt.c(str2, ModifierExtKt.c(modifierD2, null, null, null, null, dp, dp2, null, null, z, 207), j2, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 1, 0, null, textStyle, composer, 0, 24576, 113656);
                    TextKt.c(audioPlayerItemUiModel.f53259e, ModifierExtKt.c(tr.d("CollapsedPodcast$lambda$0$0$0", 1.0f), null, null, null, null, new Dp(LVAppDesignKitTheme.d(composer).t), new Dp(LVAppDesignKitTheme.d(composer).n), null, null, z, 207), LVAppDesignKitTheme.c(composer).f48361b.n, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 1, 0, null, LVAppDesignKitTheme.n(composer).l, composer, 0, 24576, 113656);
                    composer.r();
                    Modifier modifierG = boxScopeInstance.g(new DTFunctionNameModifier("CollapsedPodcast$lambda$0$0$0"), Alignment.Companion.g);
                    HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
                    Modifier modifierO2 = modifierG.o(MinimumInteractiveModifier.f7044b);
                    boolean z2 = this.f81628c;
                    if (z2) {
                        composer.L(-807702104);
                        i2 = LVAppDesignKitTheme.g(composer).W;
                        composer.F();
                    } else {
                        composer.L(-807594999);
                        i2 = LVAppDesignKitTheme.g(composer).X;
                        composer.F();
                    }
                    int i5 = i2;
                    String string = z2 ? context.getString(R.string.alt_pause) : context.getString(R.string.alt_play);
                    string.getClass();
                    float f2 = LVAppDesignKitTheme.d(composer).q;
                    boolean zB = composer.b(z2) | composer.K(function1) | composer.K(function0);
                    Object objX = composer.x();
                    if (zB || objX == Composer.Companion.f7939a) {
                        objX = new d(z2, function1, function0, 3);
                        composer.q(objX);
                    }
                    PodcastControlButtonKt.a(modifierO2, i5, string, f2, (Function0) objX, composer, 0, 0);
                    composer.r();
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                GiftOptionComposableKt.a((GiftMessageViewModel) obj7, this.f81628c, this.d, (String) obj6, (String) obj5, (Function0) obj4, (Function1) obj3, (Function1) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                LVCardKt.b((Modifier) obj7, (String) obj6, (String) obj5, (String) obj4, this.f81628c, this.d, (AutomationTagsCart$CardType) obj3, (Function0) function, (Composer) obj, RecomposeScopeImplKt.a(12582919));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                WishlistComposableKt.b(this.f81628c, (Function0) obj7, (Function0) obj6, (ContactUsUiModel) obj5, this.d, (Function0) obj4, (Function0) obj3, (Function1) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ zh(Modifier modifier, CalendarState calendarState, boolean z, boolean z2, PaddingValues paddingValues, ContentHeightMode contentHeightMode, ComposableLambdaImpl composableLambdaImpl, Function4 function4, int i2) {
        this.f81629e = modifier;
        this.f81630f = calendarState;
        this.f81628c = z;
        this.d = z2;
        this.g = paddingValues;
        this.f81631h = contentHeightMode;
        this.f81632i = composableLambdaImpl;
        this.f81633j = function4;
    }

    public /* synthetic */ zh(Modifier modifier, String str, String str2, String str3, boolean z, boolean z2, AutomationTagsCart$CardType automationTagsCart$CardType, Function0 function0, int i2) {
        this.f81629e = modifier;
        this.f81630f = str;
        this.g = str2;
        this.f81631h = str3;
        this.f81628c = z;
        this.d = z2;
        this.f81632i = automationTagsCart$CardType;
        this.f81633j = function0;
    }

    public /* synthetic */ zh(GiftMessageViewModel giftMessageViewModel, boolean z, boolean z2, String str, String str2, Function0 function0, Function1 function1, Function1 function2, int i2) {
        this.f81629e = giftMessageViewModel;
        this.f81628c = z;
        this.d = z2;
        this.f81630f = str;
        this.g = str2;
        this.f81631h = function0;
        this.f81632i = function1;
        this.f81633j = function2;
    }

    public /* synthetic */ zh(boolean z, Function0 function0, Function0 function1, ContactUsUiModel contactUsUiModel, boolean z2, Function0 function2, Function0 function3, Function1 function4, int i2) {
        this.f81628c = z;
        this.f81629e = function0;
        this.f81630f = function1;
        this.g = contactUsUiModel;
        this.d = z2;
        this.f81631h = function2;
        this.f81632i = function3;
        this.f81633j = function4;
    }
}
