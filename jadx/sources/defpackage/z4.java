package defpackage;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingFunctionsKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.NucleusReducerBuilder;
import com.vuitton.android.designkit.ui.theme.ColorKt;
import com.vuitton.android.designkit.ui.theme.ColorPrimitive;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColor;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonConfigs;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxes;
import com.vuitton.android.designkit.ui.theme.atoms.LVColorDotIconConfigs;
import com.vuitton.android.designkit.ui.theme.atoms.LVColorDotIconKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtons;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinks;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtons;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeleton;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitches;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagButtons;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagConfigs;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationCheckbox;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationColorDot;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationLink;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardContent;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardType;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationRadioButton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSearchBar;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSkeleton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSwitch;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTag;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTagButton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFields;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardContentConfigs;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBars;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControls;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbars;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlConfiguration;
import com.vuitton.android.designkit.ui.theme.molecules.SnackbarConfiguration;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVFeedCompositionLocalProviderKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressLoadingScreenKt;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsErrorScreenKt;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsLoadingScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListLoadingScreenKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistShareComposableKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class z4 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f81526c;

    public /* synthetic */ z4(int i2, Function2 function2) {
        this.f81525b = i2;
        this.f81526c = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81525b;
        Function2 function2 = this.f81526c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AddressLoadingScreenKt.a(function2, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                CancellationReasonsErrorScreenKt.a(function2, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                CancellationReasonsLoadingScreenKt.a(function2, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 3:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    function2.invoke(composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                LVFeedCompositionLocalProviderKt.a(function2, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 5:
                SaverScope saverScope = (SaverScope) obj;
                List list = (List) function2.invoke(saverScope, obj2);
                List list2 = list;
                int size = list2.size();
                for (int i3 = 0; i3 < size; i3++) {
                    Object obj3 = list.get(i3);
                    if (obj3 != null && !saverScope.a(obj3)) {
                        lc0.m("item at index ", i3, " can't be saved: ", obj3);
                        return null;
                    }
                }
                if (!list2.isEmpty()) {
                    return new ArrayList(list2);
                }
                return null;
            case 6:
                return NucleusReducerBuilder.changesState$lambda$0(function2, obj, (Action) obj2);
            case 7:
                return NucleusReducerBuilder.changesCommand$lambda$0(function2, obj, (Action) obj2);
            case 8:
                ((Integer) obj2).getClass();
                RepairListLoadingScreenKt.a(function2, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 9:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeKt.f48435a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVTagKt.f48516a;
                    long j2 = LVAppDesignKitTheme.c(composer2).f48361b.v;
                    long j3 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                    long j4 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                    Dp.Companion companion = Dp.f11004c;
                    RoundedCornerShape roundedCornerShapeA = RoundedCornerShapeKt.a(32.0f);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer2).o;
                    ConfigurationTag.Border.None none = ConfigurationTag.Border.None.f48593a;
                    ConfigurationTag configurationTag = new ConfigurationTag(textStyle, j2, j3, j4, roundedCornerShapeA, none, null);
                    Color.f8866b.getClass();
                    long j5 = Color.f8870h;
                    ProvidedValue providedValueC = staticProvidableCompositionLocal2.c(new LVTagConfigs(configurationTag, new ConfigurationTag(LVAppDesignKitTheme.n(composer2).o, j5, LVAppDesignKitTheme.c(composer2).f48361b.l, LVAppDesignKitTheme.c(composer2).f48361b.l, RoundedCornerShapeKt.a(32.0f), new ConfigurationTag.Border.Stroke(LVAppDesignKitTheme.c(composer2).f48361b.q, 1.0f, null), null), new ConfigurationTag(LVAppDesignKitTheme.n(composer2).o, LVAppDesignKitTheme.c(composer2).f48361b.z, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, RoundedCornerShapeKt.a(32.0f), none, null), new ConfigurationTag(LVAppDesignKitTheme.n(composer2).o, j5, LVAppDesignKitTheme.c(composer2).f48361b.n, LVAppDesignKitTheme.c(composer2).f48361b.n, RoundedCornerShapeKt.a(32.0f), new ConfigurationTag.Border.Stroke(LVAppDesignKitTheme.c(composer2).f48361b.t, 1.0f, null), null)));
                    ProvidedValue providedValueC2 = LVTagButtonKt.f48511a.c(new LVTagButtons(new ConfigurationTagButton(LVAppDesignKitTheme.n(composer2).m, LVAppDesignKitTheme.c(composer2).f48361b.f48375b, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.u), LVAppDesignKitTheme.c(composer2).f48361b.f48376c, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.f48382k), Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.l), LVAppDesignKitTheme.j(composer2).f48410b, 12.0f, 8.0f, 160.0f, null)));
                    ProvidedValue providedValueC3 = LVButtonKt.f48455b.c(new LVButtonConfigs(ConfigurationButtonKt.a(composer2), ConfigurationButtonKt.b(composer2), ConfigurationButton.a(ConfigurationButtonKt.a(composer2), 0L, 0L, LVAppDesignKitTheme.n(composer2).f48430k, PaddingKt.b(LVAppDesignKitTheme.d(composer2).m, LVAppDesignKitTheme.d(composer2).f48383a), PaddingKt.a(LVAppDesignKitTheme.d(composer2).f48388h), LVAppDesignKitTheme.d(composer2).s, 3871), ConfigurationButton.a(ConfigurationButtonKt.b(composer2), 0L, 0L, LVAppDesignKitTheme.n(composer2).f48430k, PaddingKt.b(LVAppDesignKitTheme.d(composer2).m, LVAppDesignKitTheme.d(composer2).f48383a), PaddingKt.a(LVAppDesignKitTheme.d(composer2).f48388h), LVAppDesignKitTheme.d(composer2).s, 3871), ConfigurationButtonKt.c(composer2), ConfigurationButtonKt.d(composer2), ConfigurationButton.a(ConfigurationButtonKt.c(composer2), 0L, 0L, LVAppDesignKitTheme.n(composer2).f48430k, PaddingKt.b(LVAppDesignKitTheme.d(composer2).m, LVAppDesignKitTheme.d(composer2).f48383a), PaddingKt.a(LVAppDesignKitTheme.d(composer2).f48388h), LVAppDesignKitTheme.d(composer2).s, 3871), ConfigurationButton.a(ConfigurationButtonKt.d(composer2), 0L, 0L, LVAppDesignKitTheme.n(composer2).f48430k, PaddingKt.b(LVAppDesignKitTheme.d(composer2).m, LVAppDesignKitTheme.d(composer2).f48383a), PaddingKt.a(LVAppDesignKitTheme.d(composer2).f48388h), LVAppDesignKitTheme.d(composer2).s, 3871)));
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = LVIconButtonKt.f48476b;
                    long jB = Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.u);
                    long j6 = LVAppDesignKitTheme.c(composer2).f48361b.u;
                    Color color = new Color(Color.b(LVAppDesignKitTheme.h(composer2).f48403c, LVAppDesignKitTheme.c(composer2).f48361b.u));
                    long j7 = LVAppDesignKitTheme.c(composer2).f48361b.y;
                    float f2 = IconSize.f48348b;
                    PaddingValuesImpl paddingValuesImplA = PaddingKt.a(LVAppDesignKitTheme.d(composer2).m);
                    ConfigurationIconButton.Border.None none2 = ConfigurationIconButton.Border.None.f48559a;
                    ProvidedValue providedValueC4 = staticProvidableCompositionLocal3.c(new LVIconButtons(new ConfigurationIconButton(jB, j6, color, null, j7, f2, paddingValuesImplA, none2, none2, none2, 8, null), new ConfigurationIconButton(Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.y), LVAppDesignKitTheme.c(composer2).f48361b.y, new Color(Color.b(LVAppDesignKitTheme.h(composer2).f48403c, LVAppDesignKitTheme.c(composer2).f48361b.y)), null, LVAppDesignKitTheme.c(composer2).f48361b.u, f2, PaddingKt.a(LVAppDesignKitTheme.d(composer2).m), none2, none2, none2, 8, null), new ConfigurationIconButton(j5, Color.b(LVAppDesignKitTheme.h(composer2).f48405f, LVAppDesignKitTheme.c(composer2).f48361b.u), new Color(Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.u)), null, LVAppDesignKitTheme.c(composer2).f48361b.u, f2, PaddingKt.a(LVAppDesignKitTheme.d(composer2).m), new ConfigurationIconButton.Border.Stroke(LVAppDesignKitTheme.c(composer2).f48361b.q, LVAppDesignKitTheme.d(composer2).f48385c, null), none2, none2, 8, null), new ConfigurationIconButton(j5, Color.b(LVAppDesignKitTheme.h(composer2).f48405f, LVAppDesignKitTheme.c(composer2).f48361b.y), new Color(Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.y)), null, LVAppDesignKitTheme.c(composer2).f48361b.y, f2, PaddingKt.a(LVAppDesignKitTheme.d(composer2).m), new ConfigurationIconButton.Border.Stroke(Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.y), LVAppDesignKitTheme.d(composer2).f48385c, null), none2, none2, 8, null), new ConfigurationIconButton(Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.u), LVAppDesignKitTheme.c(composer2).f48361b.u, new Color(Color.b(LVAppDesignKitTheme.h(composer2).f48403c, LVAppDesignKitTheme.c(composer2).f48361b.u)), null, LVAppDesignKitTheme.c(composer2).f48361b.y, IconSize.f48349c, PaddingKt.a(LVAppDesignKitTheme.d(composer2).m), none2, none2, none2, 8, null), new ConfigurationIconButton(Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.y), LVAppDesignKitTheme.c(composer2).f48361b.y, new Color(Color.b(LVAppDesignKitTheme.h(composer2).f48403c, LVAppDesignKitTheme.c(composer2).f48361b.y)), null, LVAppDesignKitTheme.c(composer2).f48361b.u, LVAppDesignKitTheme.d(composer2).o, PaddingKt.a(LVAppDesignKitTheme.d(composer2).m), none2, none2, none2, 8, null), new ConfigurationIconButton(LVAppDesignKitTheme.c(composer2).f48361b.f48374a, LVAppDesignKitTheme.c(composer2).f48361b.f48376c, new Color(LVAppDesignKitTheme.c(composer2).f48361b.f48376c), null, LVAppDesignKitTheme.c(composer2).f48361b.u, f2, PaddingKt.a(LVAppDesignKitTheme.d(composer2).m), new ConfigurationIconButton.Border.Stroke(LVAppDesignKitTheme.c(composer2).f48361b.q, LVAppDesignKitTheme.d(composer2).f48385c, null), none2, none2, 8, null), new ConfigurationIconButton(LVAppDesignKitTheme.c(composer2).f48361b.f48378f, Color.b(LVAppDesignKitTheme.h(composer2).f48403c, LVAppDesignKitTheme.c(composer2).f48361b.g), new Color(Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.g)), null, LVAppDesignKitTheme.c(composer2).f48361b.y, f2, PaddingKt.a(LVAppDesignKitTheme.d(composer2).m), new ConfigurationIconButton.Border.Stroke(Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.y), LVAppDesignKitTheme.d(composer2).f48385c, null), none2, none2, 8, null)));
                    ProvidedValue providedValueC5 = LVLinkKt.f48485a.c(new LVLinks(new ConfigurationLink(LVAppDesignKitTheme.c(composer2).f48361b.u, Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.u), LVAppDesignKitTheme.n(composer2).f48430k, 1.0f, null), new ConfigurationLink(LVAppDesignKitTheme.c(composer2).f48361b.y, Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.y), LVAppDesignKitTheme.n(composer2).f48430k, 1.0f, null), new ConfigurationLink(LVAppDesignKitTheme.c(composer2).f48361b.u, Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.u), LVAppDesignKitTheme.n(composer2).o, Call.Parameters.DEFAULT_CAMERA_ZOOM, null), new ConfigurationLink(LVAppDesignKitTheme.c(composer2).f48361b.y, Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.u), LVAppDesignKitTheme.n(composer2).o, Call.Parameters.DEFAULT_CAMERA_ZOOM, null)));
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = LVSegmentedControlKt.f48661b;
                    SegmentedControlConfiguration segmentedControlConfiguration = new SegmentedControlConfiguration(new SegmentedControlConfiguration.ItemConfiguration(LVAppDesignKitTheme.c(composer2).f48361b.f48374a, LVAppDesignKitTheme.c(composer2).f48361b.u, null), new SegmentedControlConfiguration.ItemConfiguration(LVAppDesignKitTheme.c(composer2).f48361b.f48376c, Color.b(LVAppDesignKitTheme.h(composer2).f48403c, LVAppDesignKitTheme.c(composer2).f48361b.u), null), RoundedCornerShapeKt.f5846a, PaddingKt.b(16.0f, 13.0f), PaddingKt.a(2.0f));
                    SegmentedControlConfiguration.ItemConfiguration itemConfiguration = new SegmentedControlConfiguration.ItemConfiguration(LVAppDesignKitTheme.c(composer2).f48361b.f48379h, LVAppDesignKitTheme.c(composer2).f48361b.y, null);
                    SegmentedControlConfiguration.ItemConfiguration itemConfiguration2 = new SegmentedControlConfiguration.ItemConfiguration(LVAppDesignKitTheme.c(composer2).f48361b.g, Color.b(LVAppDesignKitTheme.h(composer2).f48403c, LVAppDesignKitTheme.c(composer2).f48361b.y), null);
                    Shape shape = segmentedControlConfiguration.f48693c;
                    shape.getClass();
                    PaddingValues paddingValues = segmentedControlConfiguration.d;
                    paddingValues.getClass();
                    PaddingValues paddingValues2 = segmentedControlConfiguration.f48694e;
                    paddingValues2.getClass();
                    ProvidedValue providedValueC6 = staticProvidableCompositionLocal4.c(new LVSegmentedControls(segmentedControlConfiguration, new SegmentedControlConfiguration(itemConfiguration, itemConfiguration2, shape, paddingValues, paddingValues2)));
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = LVSnackbarKt.f48665a;
                    int i4 = LVAppDesignKitTheme.g(composer2).s;
                    long j8 = ColorPrimitive.f48332a;
                    SnackbarConfiguration snackbarConfiguration = new SnackbarConfiguration(i4, j8, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, LVAppDesignKitTheme.c(composer2).f48361b.f48374a, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, Color.b(LVAppDesignKitTheme.h(composer2).f48405f, LVAppDesignKitTheme.c(composer2).f48361b.u), LVColorScheme.DEFAULT, null);
                    SnackbarConfiguration snackbarConfiguration2 = new SnackbarConfiguration(LVAppDesignKitTheme.g(composer2).s, j8, LVAppDesignKitTheme.c(composer2).f48361b.m, LVAppDesignKitTheme.c(composer2).f48361b.f48378f, LVAppDesignKitTheme.c(composer2).f48361b.m, Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.y), LVColorScheme.INVERT, null);
                    SnackbarConfiguration snackbarConfigurationA = SnackbarConfiguration.a(snackbarConfiguration, LVAppDesignKitTheme.g(composer2).s0, LVAppDesignKitTheme.c(composer2).f48361b.w);
                    SnackbarConfiguration snackbarConfigurationA2 = SnackbarConfiguration.a(snackbarConfiguration2, LVAppDesignKitTheme.g(composer2).s0, LVAppDesignKitTheme.c(composer2).f48361b.A);
                    SnackbarConfiguration snackbarConfigurationA3 = SnackbarConfiguration.a(snackbarConfiguration, LVAppDesignKitTheme.g(composer2).P0, LVAppDesignKitTheme.c(composer2).f48361b.x);
                    SnackbarConfiguration snackbarConfigurationA4 = SnackbarConfiguration.a(snackbarConfiguration2, LVAppDesignKitTheme.g(composer2).P0, LVAppDesignKitTheme.c(composer2).f48361b.B);
                    int i5 = LVAppDesignKitTheme.g(composer2).v0;
                    long j9 = Color.f8871i;
                    ProvidedValue providedValueC7 = staticProvidableCompositionLocal5.c(new LVSnackbars(snackbarConfigurationA, snackbarConfigurationA2, snackbarConfigurationA3, snackbarConfigurationA4, SnackbarConfiguration.a(snackbarConfiguration, i5, j9), SnackbarConfiguration.a(snackbarConfiguration2, LVAppDesignKitTheme.g(composer2).w0, j9), SnackbarConfiguration.a(snackbarConfiguration, LVAppDesignKitTheme.g(composer2).u0, j9)));
                    ProvidedValue providedValueC8 = LVSearchBarKt.f48654a.c(new LVSearchBars(new ConfigurationSearchBar(LVAppDesignKitTheme.c(composer2).f48361b.f48382k, LVAppDesignKitTheme.c(composer2).f48361b.l, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, LVAppDesignKitTheme.c(composer2).f48361b.f48375b, null), new ConfigurationSearchBar(LVAppDesignKitTheme.c(composer2).f48361b.m, LVAppDesignKitTheme.c(composer2).f48361b.n, LVAppDesignKitTheme.c(composer2).f48361b.m, LVAppDesignKitTheme.c(composer2).f48361b.g, null)));
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal6 = LVSkeletonKt.f48504a;
                    long jB2 = Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.d);
                    long jB3 = Color.b(LVAppDesignKitTheme.h(composer2).f48405f, LVAppDesignKitTheme.c(composer2).f48361b.d);
                    CubicBezierEasing cubicBezierEasing = EasingFunctionsKt.f3861a;
                    CompositionLocalKt.b(new ProvidedValue[]{providedValueC, providedValueC2, providedValueC3, providedValueC4, providedValueC5, providedValueC6, providedValueC7, providedValueC8, staticProvidableCompositionLocal6.c(new LVSkeleton(new ConfigurationSkeleton(jB2, jB3, 100, 1000, cubicBezierEasing, null), new ConfigurationSkeleton(Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.f48380i), Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.f48380i), 100, 1000, cubicBezierEasing, null))), LVSwitchKt.f48506a.c(new LVSwitches(new ConfigurationSwitch(LVAppDesignKitTheme.c(composer2).f48361b.f48374a, LVAppDesignKitTheme.c(composer2).f48361b.u, LVAppDesignKitTheme.c(composer2).f48361b.l, LVAppDesignKitTheme.c(composer2).f48361b.p, LVAppDesignKitTheme.c(composer2).f48361b.f48374a, LVAppDesignKitTheme.c(composer2).f48361b.f48376c, LVAppDesignKitTheme.c(composer2).f48361b.f48376c, null), new ConfigurationSwitch(LVAppDesignKitTheme.c(composer2).f48361b.f48378f, LVAppDesignKitTheme.c(composer2).f48361b.y, LVAppDesignKitTheme.c(composer2).f48361b.n, LVAppDesignKitTheme.c(composer2).f48361b.s, LVAppDesignKitTheme.c(composer2).f48361b.f48378f, LVAppDesignKitTheme.c(composer2).f48361b.f48379h, LVAppDesignKitTheme.c(composer2).f48361b.f48379h, null))), LVRadioButtonKt.f48494a.c(new LVRadioButtons(new ConfigurationRadioButton(LVAppDesignKitTheme.c(composer2).f48361b.u, LVAppDesignKitTheme.c(composer2).f48361b.o, Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.u), Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.o), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, null), new ConfigurationRadioButton(LVAppDesignKitTheme.c(composer2).f48361b.y, LVAppDesignKitTheme.c(composer2).f48361b.r, Color.b(LVAppDesignKitTheme.h(composer2).f48404e, LVAppDesignKitTheme.c(composer2).f48361b.y), LVAppDesignKitTheme.c(composer2).f48361b.r, LVAppDesignKitTheme.c(composer2).f48361b.f48378f, null))), LVPushCardKt.f48653a.c(new LVPushCardContentConfigs(new ConfigurationPushCardContent(ConfigurationPushCardType.Content, 1, LVAppDesignKitTheme.n(composer2).f48429j, LVAppDesignKitTheme.n(composer2).f48427h, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, LVAppDesignKitTheme.c(composer2).f48361b.l, null), new ConfigurationPushCardContent(ConfigurationPushCardType.Service, 1, LVAppDesignKitTheme.n(composer2).f48430k, LVAppDesignKitTheme.n(composer2).l, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, LVAppDesignKitTheme.c(composer2).f48361b.l, null))), LVTextFieldKt.f48633a.c(new LVTextFields(new ConfigurationTextField(LVAppDesignKitTheme.c(composer2).f48361b.f48382k, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.f48382k), LVAppDesignKitTheme.c(composer2).f48361b.f48382k, LVAppDesignKitTheme.c(composer2).f48361b.l, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.f48382k), LVAppDesignKitTheme.c(composer2).f48361b.x, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.f48382k), LVAppDesignKitTheme.c(composer2).f48361b.x, LVAppDesignKitTheme.c(composer2).f48361b.p, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.p), LVAppDesignKitTheme.c(composer2).f48361b.u, LVAppDesignKitTheme.c(composer2).f48361b.x, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.f48382k), LVAppDesignKitTheme.c(composer2).f48361b.l, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, Color.b(0.2f, LVAppDesignKitTheme.c(composer2).f48361b.u), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, LVAppDesignKitTheme.c(composer2).f48361b.l, Color.b(0.1f, LVAppDesignKitTheme.c(composer2).f48361b.u), null), new ConfigurationTextField(LVAppDesignKitTheme.c(composer2).f48361b.m, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.m), LVAppDesignKitTheme.c(composer2).f48361b.m, LVAppDesignKitTheme.c(composer2).f48361b.n, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.m), LVAppDesignKitTheme.c(composer2).f48361b.B, LVAppDesignKitTheme.c(composer2).f48361b.m, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.m), LVAppDesignKitTheme.c(composer2).f48361b.B, LVAppDesignKitTheme.c(composer2).f48361b.s, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.s), LVAppDesignKitTheme.c(composer2).f48361b.y, LVAppDesignKitTheme.c(composer2).f48361b.B, LVAppDesignKitTheme.c(composer2).f48361b.m, Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.m), LVAppDesignKitTheme.c(composer2).f48361b.n, LVAppDesignKitTheme.c(composer2).f48361b.m, LVAppDesignKitTheme.c(composer2).f48361b.m, Color.b(0.2f, LVAppDesignKitTheme.c(composer2).f48361b.y), LVAppDesignKitTheme.c(composer2).f48361b.f48378f, LVAppDesignKitTheme.c(composer2).f48361b.m, LVAppDesignKitTheme.c(composer2).f48361b.n, Color.b(0.25f, LVAppDesignKitTheme.c(composer2).f48361b.y), null))), LVColorDotIconKt.f48469a.c(new LVColorDotIconConfigs(new ConfigurationColorDot(LVAppDesignKitTheme.c(composer2).f48361b.w, true, null), new ConfigurationColorDot(LVAppDesignKitTheme.c(composer2).f48360a.l, true, null), new ConfigurationColorDot(LVAppDesignKitTheme.c(composer2).f48360a.f48372j, true, null), new ConfigurationColorDot(LVAppDesignKitTheme.c(composer2).f48361b.f48376c, true, null), new ConfigurationColorDot(LVAppDesignKitTheme.c(composer2).f48361b.x, false, null), new ConfigurationColorDot(LVAppDesignKitTheme.c(composer2).f48361b.B, true, null))), LVCheckboxKt.f48456a.c(new LVCheckboxes(new ConfigurationCheckbox(LVAppDesignKitTheme.c(composer2).f48361b.u, LVAppDesignKitTheme.c(composer2).f48361b.o, LVAppDesignKitTheme.c(composer2).f48361b.m, LVAppDesignKitTheme.c(composer2).f48361b.d, LVAppDesignKitTheme.c(composer2).f48361b.p, LVAppDesignKitTheme.c(composer2).f48361b.m, null), new ConfigurationCheckbox(LVAppDesignKitTheme.c(composer2).f48361b.y, LVAppDesignKitTheme.c(composer2).f48361b.r, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, LVAppDesignKitTheme.c(composer2).f48361b.f48380i, LVAppDesignKitTheme.c(composer2).f48361b.s, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, null)))}, ComposableLambdaKt.b(2036883847, new z4(10, function2), composer2), composer2, 56);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 10:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal7 = ThemeKt.f48435a;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    MaterialThemeKt.b(((LVColor) composer3.k(ColorKt.f48331a)).f48364f, null, null, ComposableLambdaKt.b(-486751949, new z4(11, function2), composer3), composer3, 3072, 6);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 11:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal8 = ThemeKt.f48435a;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    CompositionLocalKt.a(TextSelectionColorsKt.f6503a.c(new TextSelectionColors(LVAppDesignKitTheme.c(composer4).f48361b.u, Color.b(0.2f, LVAppDesignKitTheme.c(composer4).f48361b.u), null)), ComposableLambdaKt.b(-70134285, new z4(12, function2), composer4), composer4, 56);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 12:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal9 = ThemeKt.f48435a;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    function2.invoke(composer5, 0);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                WishlistShareComposableKt.a(function2, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ z4(Function2 function2, int i2, int i3) {
        this.f81525b = i3;
        this.f81526c = function2;
    }
}
