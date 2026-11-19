package defpackage;

import android.content.Context;
import android.content.Intent;
import android.opengl.Matrix;
import android.os.Bundle;
import android.view.View;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogicKt;
import androidx.compose.foundation.gestures.NestedScrollScope;
import androidx.compose.foundation.gestures.c;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider;
import androidx.compose.foundation.lazy.layout.PrefetchScheduler;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldDelegate;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavHostController;
import androidx.navigation.internal.NavControllerImpl;
import com.google.android.filament.Box;
import com.google.android.filament.Engine;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.LightManager;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Scene;
import com.google.android.filament.VertexBuffer;
import com.google.ar.core.Frame;
import com.google.ar.core.LightEstimate;
import com.google.ar.core.Plane;
import com.google.ar.core.Pose;
import com.google.ar.core.TrackingState;
import com.kizitonwose.calendar.core.CalendarDay;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.ar.M4;
import com.vuitton.android.presentation.ar.MatrixKt;
import com.vuitton.android.presentation.ar.V2A;
import com.vuitton.android.presentation.ar.V3;
import com.vuitton.android.presentation.ar.V4A;
import com.vuitton.android.presentation.ar.filament.Filament;
import com.vuitton.android.presentation.ar.renderer.LightRenderer;
import com.vuitton.android.presentation.ar.renderer.ModelRenderer;
import com.vuitton.android.presentation.ar.renderer.PlaneRenderer;
import com.vuitton.android.presentation.compose.components.LVAvatarKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.compose.components.ListPickerItem;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.databinding.ItemConnectivityLightUpBinding;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarSectionUiModel;
import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.catalog.components.CatalogRoutes;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModelKt;
import com.vuitton.android.presentation.screen.catalog.models.CategoryRedirectionUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CategoryTagUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryRedirectionUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryUiModel;
import com.vuitton.android.presentation.screen.connectivity.ConnectedObjectUiModel;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityAdapter;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.CountryUiModel;
import com.vuitton.android.presentation.screen.feed.components.subcomponents.ContactabilitySectionKt;
import com.vuitton.android.presentation.screen.feed.models.ContactabilityTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.uimodels.ContactabilityActionUIModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleNavigationType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSlideUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoCtaArticleSectionUiModel;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesActivity;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesViewState;
import com.vuitton.android.presentation.screen.orders.components.exchange.ComposableSingletons$OrderExchangeVariantSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.orders.models.VariationsResponseUiModel;
import com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel;
import com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity;
import com.vuitton.android.presentation.screen.pdp.models.FindInStoreViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.FindInStoreTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorLookViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.models.PersonalSelectionsDetailUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionStoreUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListTrackingUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSharingUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModelKt;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.PersonalSelectionActions;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.ArrayIteratorsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.MergingSequence;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k3 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71539c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f71541f;

    public /* synthetic */ k3(OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, Function0 function0, Function2 function2, Function2 function3) {
        this.f71538b = 24;
        this.d = orderReturnOrExchangeViewState;
        this.f71541f = function0;
        this.f71539c = function2;
        this.f71540e = function3;
    }

    private final Object a(Object obj) {
        int i2;
        Frame frame;
        int i3;
        float[] fArr;
        int i4;
        V2A v2a;
        ProductArActivity productArActivity = (ProductArActivity) this.d;
        LightRenderer lightRenderer = (LightRenderer) this.f71539c;
        PlaneRenderer planeRenderer = (PlaneRenderer) this.f71540e;
        FloatBuffer floatBuffer = planeRenderer.f50660e;
        FloatBuffer floatBuffer2 = planeRenderer.f50661f;
        ShortBuffer shortBuffer = planeRenderer.g;
        IndexBuffer indexBuffer = planeRenderer.f50663i;
        VertexBuffer vertexBuffer = planeRenderer.f50662h;
        ModelRenderer modelRenderer = (ModelRenderer) this.f71541f;
        Frame frame2 = (Frame) obj;
        ProductArActivity.Companion companion = ProductArActivity.D;
        frame2.getClass();
        Collection updatedTrackables = frame2.getUpdatedTrackables(Plane.class);
        updatedTrackables.getClass();
        Collection collection = updatedTrackables;
        if (!collection.isEmpty()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (((Plane) it.next()).getTrackingState() == TrackingState.TRACKING) {
                    productArActivity.x.a(Unit.f71739a);
                    break;
                }
            }
        }
        int i5 = lightRenderer.d;
        Filament filament = lightRenderer.f50618a;
        if (frame2.getLightEstimate().getState() != LightEstimate.State.VALID) {
            i2 = 0;
        } else {
            float[] environmentalHdrAmbientSphericalHarmonics = frame2.getLightEstimate().getEnvironmentalHdrAmbientSphericalHarmonics();
            environmentalHdrAmbientSphericalHarmonics.getClass();
            V3 v3 = MatrixKt.f50552a;
            final float[] fArr2 = new float[27];
            IntProgression intProgressionI = RangesKt.i(RangesKt.j(0, 27), 3);
            int i6 = intProgressionI.f71951b;
            i2 = 0;
            int i7 = intProgressionI.f71952c;
            int i8 = intProgressionI.d;
            if ((i8 > 0 && i6 <= i7) || (i8 < 0 && i7 <= i6)) {
                while (true) {
                    float f2 = MatrixKt.f50553b[i6 / 3];
                    fArr2[i6] = environmentalHdrAmbientSphericalHarmonics[i6] * f2;
                    int i9 = i6 + 1;
                    fArr2[i9] = environmentalHdrAmbientSphericalHarmonics[i9] * f2;
                    int i10 = i6 + 2;
                    fArr2[i10] = environmentalHdrAmbientSphericalHarmonics[i10] * f2;
                    if (i6 == i7) {
                        break;
                    }
                    i6 += i8;
                }
            }
            final float[] fArr3 = lightRenderer.f50620c;
            fArr3.getClass();
            Sequence<Float> sequenceE = fArr3.length == 0 ? SequencesKt.e() : new Sequence<Float>() { // from class: kotlin.collections.ArraysKt___ArraysKt$asSequence$$inlined$Sequence$6
                @Override // kotlin.sequences.Sequence
                /* JADX INFO: renamed from: iterator */
                public final Iterator getF74480a() {
                    return ArrayIteratorsKt.a(fArr3);
                }
            };
            Sequence<Float> sequence = new Sequence<Float>() { // from class: kotlin.collections.ArraysKt___ArraysKt$asSequence$$inlined$Sequence$6
                @Override // kotlin.sequences.Sequence
                /* JADX INFO: renamed from: iterator */
                public final Iterator getF74480a() {
                    return ArrayIteratorsKt.a(fArr2);
                }
            };
            sequenceE.getClass();
            MergingSequence.AnonymousClass1 anonymousClass1 = new MergingSequence.AnonymousClass1();
            while (anonymousClass1.hasNext()) {
                Pair pair = (Pair) anonymousClass1.next();
                if (((Number) pair.f71705b).floatValue() != ((Number) pair.f71706c).floatValue()) {
                    lightRenderer.f50620c = fArr2;
                    Scene scene = filament.f50583e;
                    IndirectLight.Builder builder = new IndirectLight.Builder();
                    long nativeObject = lightRenderer.f50619b.getNativeObject();
                    long j2 = builder.f28551b;
                    IndirectLight.nBuilderReflections(j2, nativeObject);
                    float[] fArr4 = lightRenderer.f50620c;
                    if (fArr4.length < 27) {
                        throw new ArrayIndexOutOfBoundsException("3 bands SH, array must be at least 9 x float3");
                    }
                    IndirectLight.nIrradiance(j2, 3, fArr4);
                    scene.f(builder.a(filament.f50582c));
                    break;
                }
            }
            float[] environmentalHdrMainLightDirection = frame2.getLightEstimate().getEnvironmentalHdrMainLightDirection();
            filament.f50582c.f28536c.n(-environmentalHdrMainLightDirection[0], -environmentalHdrMainLightDirection[1], -environmentalHdrMainLightDirection[2], i5);
            float[] environmentalHdrMainLightIntensity = frame2.getLightEstimate().getEnvironmentalHdrMainLightIntensity();
            float fMax = Math.max(Math.max(environmentalHdrMainLightIntensity[0], environmentalHdrMainLightIntensity[1]), environmentalHdrMainLightIntensity[2]);
            V3 v4 = new V3(environmentalHdrMainLightIntensity);
            float fMax2 = Math.max(1.0E-5f, fMax);
            float[] fArr5 = v4.f50557a;
            V3 v3K = MatrixKt.k(fArr5[0] / fMax2, fArr5[1] / fMax2, fArr5[2] / fMax2);
            LightManager lightManager = filament.f50582c.f28536c;
            float[] fArr6 = v3K.f50557a;
            lightManager.m(fArr6[0], fArr6[1], fArr6[2], i5);
        }
        Filament filament2 = planeRenderer.f50657a;
        Collection updatedTrackables2 = frame2.getUpdatedTrackables(Plane.class);
        updatedTrackables2.getClass();
        Collection<Plane> collection2 = updatedTrackables2;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(collection2, 10));
        for (Plane plane : collection2) {
            Plane subsumedBy = plane.getSubsumedBy();
            if (subsumedBy != null) {
                plane = subsumedBy;
            }
            arrayList.add(plane);
        }
        Set setB0 = CollectionsKt.B0(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : setB0) {
            if (((Plane) obj2).getTrackingState() == TrackingState.TRACKING) {
                arrayList2.add(obj2);
            }
        }
        if (arrayList2.isEmpty()) {
            frame = frame2;
        } else {
            List listO0 = CollectionsKt.o0(arrayList2, new Comparator() { // from class: com.vuitton.android.presentation.ar.renderer.PlaneRenderer$doFrame$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj3, Object obj4) {
                    Plane.Type type = ((Plane) obj3).getType();
                    Plane.Type type2 = Plane.Type.HORIZONTAL_UPWARD_FACING;
                    return Boolean.valueOf(type != type2).compareTo(Boolean.valueOf(((Plane) obj4).getType() != type2));
                }
            });
            Iterator it2 = listO0.iterator();
            int i11 = i2;
            while (true) {
                if (!it2.hasNext()) {
                    i11 = -1;
                    break;
                }
                if (((Plane) it2.next()).getType() != Plane.Type.HORIZONTAL_UPWARD_FACING) {
                    break;
                }
                i11++;
            }
            floatBuffer.rewind();
            floatBuffer2.rewind();
            shortBuffer.rewind();
            int size = listO0.size();
            float f3 = Float.NEGATIVE_INFINITY;
            float fMin = Float.POSITIVE_INFINITY;
            float fMin2 = Float.POSITIVE_INFINITY;
            float f4 = Float.POSITIVE_INFINITY;
            Integer numValueOf = null;
            int i12 = i2;
            int iIntValue = i12;
            float fMax3 = Float.NEGATIVE_INFINITY;
            float fMax4 = Float.NEGATIVE_INFINITY;
            int length = iIntValue;
            while (i12 < size) {
                Plane plane2 = (Plane) listO0.get(i12);
                if (i12 == i11) {
                    numValueOf = Integer.valueOf(iIntValue);
                }
                FloatBuffer polygon = plane2.getPolygon();
                polygon.getClass();
                List list = listO0;
                Pose centerPose = plane2.getCenterPose();
                centerPose.getClass();
                V3 v5 = MatrixKt.f50552a;
                int i13 = size;
                float[] fArr7 = new float[16];
                int i14 = i11;
                centerPose.toMatrix(fArr7, i2);
                M4 m4 = new M4(fArr7);
                int i15 = 4;
                int iCapacity = (polygon.capacity() / 2) * 4;
                int i16 = i12;
                float[] fArr8 = new float[iCapacity];
                float[] fArr9 = new float[4];
                fArr9[1] = 0.0f;
                fArr9[3] = 1.0f;
                polygon.rewind();
                float[] fArr10 = fArr8;
                char c2 = 0;
                int iA = ProgressionUtilKt.a(0, iCapacity - 1, 4);
                if (iA >= 0) {
                    int i17 = 0;
                    while (true) {
                        fArr9[c2] = polygon.get();
                        fArr9[2] = polygon.get();
                        Matrix.multiplyMV(fArr10, i17, m4.f50551a, 0, fArr9, 0);
                        i3 = i15;
                        fArr = fArr10;
                        int i18 = i17;
                        if (i18 == iA) {
                            break;
                        }
                        i17 = i18 + 4;
                        fArr10 = fArr;
                        i15 = i3;
                        c2 = 0;
                    }
                } else {
                    i3 = 4;
                    fArr = fArr10;
                }
                float[] fArr11 = new V4A(fArr).f50558a;
                int length2 = (fArr11.length / 4) - 2;
                int i19 = length2 * 3;
                short[] sArr = new short[i19];
                int i20 = 0;
                while (i20 < length2) {
                    int i21 = i20 * 3;
                    sArr[i21] = (short) length;
                    int i22 = length + i20;
                    sArr[i21 + 1] = (short) (i22 + 1);
                    sArr[i21 + 2] = (short) (i22 + 2);
                    i20++;
                    length2 = length2;
                }
                if ((fArr11.length / 4) + length > 1000 || (i4 = iIntValue + i19) > 2994) {
                    break;
                }
                int i23 = length;
                int iA2 = ProgressionUtilKt.a(0, fArr11.length - 1, i3);
                PlaneRenderer planeRenderer2 = planeRenderer;
                Frame frame3 = frame2;
                if (iA2 >= 0) {
                    float fMin3 = f4;
                    float fMax5 = f3;
                    int i24 = 0;
                    while (true) {
                        fMin = Math.min(fArr11[i24], fMin);
                        fMax5 = Math.max(fArr11[i24], fMax5);
                        int i25 = i24 + 1;
                        fMin2 = Math.min(fArr11[i25], fMin2);
                        fMax3 = Math.max(fArr11[i25], fMax3);
                        int i26 = i24 + 2;
                        fMin3 = Math.min(fArr11[i26], fMin3);
                        fMax4 = Math.max(fArr11[i26], fMax4);
                        if (i24 == iA2) {
                            break;
                        }
                        i24 += 4;
                    }
                    f4 = fMin3;
                    f3 = fMax5;
                }
                floatBuffer.put(fArr11);
                if (plane2.getType() == Plane.Type.VERTICAL) {
                    FloatBuffer polygon2 = plane2.getPolygon();
                    polygon2.getClass();
                    v2a = new V2A(new float[polygon2.capacity()]);
                    polygon2.rewind();
                    IntRange intRange = new IntRange(0, (v2a.f50556a.length / 2) - 1);
                    int i27 = intRange.f71951b;
                    int i28 = intRange.f71952c;
                    if (i27 <= i28) {
                        while (true) {
                            FloatBuffer floatBuffer3 = polygon2;
                            MatrixKt.g(v2a, i27, polygon2.get() * 10.0f, polygon2.get() * 5.0f);
                            if (i27 != i28) {
                                i27++;
                                polygon2 = floatBuffer3;
                            }
                        }
                    }
                } else {
                    v2a = new V2A(new float[(fArr11.length / 4) * 2]);
                    IntRange intRange2 = new IntRange(0, (v2a.f50556a.length / 2) - 1);
                    int i29 = intRange2.f71951b;
                    int i30 = intRange2.f71952c;
                    if (i29 <= i30) {
                        while (true) {
                            int i31 = i29 * 4;
                            MatrixKt.g(v2a, i29, fArr11[i31] * 10.0f, fArr11[i31 + 2] * 5.0f);
                            if (i29 != i30) {
                                i29++;
                            }
                        }
                    }
                }
                floatBuffer2.put(v2a.f50556a);
                shortBuffer.put(sArr);
                length = (fArr11.length / 4) + i23;
                i12 = i16 + 1;
                iIntValue = i4;
                listO0 = list;
                size = i13;
                i11 = i14;
                frame2 = frame3;
                planeRenderer = planeRenderer2;
                i2 = 0;
            }
            PlaneRenderer planeRenderer3 = planeRenderer;
            frame = frame2;
            int iCapacity2 = floatBuffer.capacity() - floatBuffer.remaining();
            floatBuffer.rewind();
            Engine engine = filament2.f50582c;
            Engine engine2 = filament2.f50582c;
            vertexBuffer.i(engine, 0, floatBuffer, iCapacity2);
            int iCapacity3 = floatBuffer2.capacity() - floatBuffer2.remaining();
            floatBuffer2.rewind();
            vertexBuffer.i(engine2, 1, floatBuffer2, iCapacity3);
            int iCapacity4 = shortBuffer.capacity() - shortBuffer.remaining();
            shortBuffer.rewind();
            indexBuffer.g(iCapacity4, engine2, shortBuffer);
            RenderableManager.Builder builder2 = new RenderableManager.Builder(2);
            long j3 = builder2.f28567b;
            RenderableManager.nBuilderCastShadows(j3, false);
            RenderableManager.nBuilderReceiveShadows(j3, true);
            RenderableManager.nBuilderCulling(j3, true);
            Box box = new Box((fMin + f3) / 2.0f, (fMin2 + fMax3) / 2.0f, (f4 + fMax4) / 2.0f, (f3 - fMin) / 2.0f, (fMax3 - fMin2) / 2.0f, (fMax4 - f4) / 2.0f);
            float[] fArr12 = box.f28525a;
            float f5 = fArr12[0];
            float f6 = fArr12[1];
            float f7 = fArr12[2];
            float[] fArr13 = box.f28526b;
            RenderableManager.nBuilderBoundingBox(builder2.f28567b, f5, f6, f7, fArr13[0], fArr13[1], fArr13[2]);
            RenderableManager.PrimitiveType primitiveType = RenderableManager.PrimitiveType.TRIANGLES;
            RenderableManager.nBuilderGeometry(builder2.f28567b, 0, primitiveType.a(), vertexBuffer.g(), indexBuffer.f(), 0, iIntValue);
            RenderableManager.nBuilderMaterial(j3, 0, planeRenderer3.f50659c.a());
            if (numValueOf != null) {
                iIntValue = numValueOf.intValue();
            }
            RenderableManager.nBuilderGeometry(builder2.f28567b, 1, primitiveType.a(), vertexBuffer.g(), indexBuffer.f(), 0, iIntValue);
            RenderableManager.nBuilderMaterial(j3, 1, planeRenderer3.d.f28558b.a());
            builder2.a(engine2, planeRenderer3.f50664j);
        }
        modelRenderer.g.a(frame);
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0103  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str;
        ProductExchangeCategoryUiModel productExchangeCategoryUiModel;
        PersonalSelectionsDetailUiModel personalSelectionsDetailUiModel;
        SelectionStoreUiModel selectionStoreUiModel;
        List list;
        Object next;
        PlpProductUiModel plpProductUiModel;
        MutableState mutableState;
        PlpProductUiModel.SkuDataUiModel skuDataUiModel;
        String str2;
        String str3;
        int i2 = this.f71538b;
        int i3 = 2;
        String str4 = "";
        int i4 = 3;
        int i5 = 0;
        str = null;
        str = null;
        String str5 = null;
        Object obj2 = this.f71541f;
        final Object obj3 = this.f71540e;
        Object obj4 = this.f71539c;
        Object obj5 = this.d;
        switch (i2) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                semanticsPropertyReceiver.getClass();
                String string = ((Context) obj5).getString(R.string.alt_remove_filter, ((Function1) obj4).invoke(obj3));
                string.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new h1((Function0) obj2, i3));
                return Unit.f71739a;
            case 1:
                Animatable animatable = (Animatable) obj5;
                AnimationState animationState = (AnimationState) obj3;
                Function1 function1 = (Function1) obj4;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                AnimationScope animationScope = (AnimationScope) obj;
                SuspendAnimationKt.j(animationScope, animatable.f3774c);
                SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) animationScope.f3813e;
                Object objA = Animatable.a(animatable, snapshotMutableStateImpl.getF10755b());
                if (!Intrinsics.c(objA, snapshotMutableStateImpl.getF10755b())) {
                    ((SnapshotMutableStateImpl) animatable.f3774c.f3818c).setValue(objA);
                    ((SnapshotMutableStateImpl) animationState.f3818c).setValue(objA);
                    if (function1 != null) {
                        function1.invoke(animatable);
                    }
                    animationScope.a();
                    ref$BooleanRef.f71917b = true;
                } else if (function1 != null) {
                    function1.invoke(animatable);
                }
                return Unit.f71739a;
            case 2:
                final String str6 = (String) obj3;
                final String str7 = (String) obj2;
                final Function1 function2 = (Function1) obj4;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                final List list2 = ((AvatarSectionUiModel) obj5).f52333b;
                final t tVar = new t(12);
                lazyListScope.h(list2.size(), new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.account.editavatar.components.AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj6) {
                        int iIntValue = ((Number) obj6).intValue();
                        return tVar.invoke(Integer.valueOf(iIntValue), list2.get(iIntValue));
                    }
                }, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.account.editavatar.components.AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj6) {
                        list2.get(((Number) obj6).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.account.editavatar.components.AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj6, Object obj7, Object obj8, Object obj9) {
                        int i6;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj6;
                        final int iIntValue = ((Number) obj7).intValue();
                        Composer composer = (Composer) obj8;
                        int iIntValue2 = ((Number) obj9).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i6 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i6 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i6 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        boolean z = true;
                        if (composer.p(i6 & 1, (i6 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final AvatarItemUiModel avatarItemUiModel = (AvatarItemUiModel) list2.get(iIntValue);
                            composer.L(1543665960);
                            Modifier modifierE = ModifierExtKt.e(Modifier.Companion.f8607b, "avatarLibrary_avatar_button");
                            if ((((i6 & 112) ^ 48) <= 32 || !composer.d(iIntValue)) && (i6 & 48) != 32) {
                                z = false;
                            }
                            boolean zK = composer.K(avatarItemUiModel) | z;
                            final String str8 = str6;
                            boolean zK2 = zK | composer.K(str8);
                            Object objX = composer.x();
                            if (zK2 || objX == Composer.Companion.f7939a) {
                                objX = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.account.editavatar.components.AvatarSectionItemKt$AvatarSectionItem$1$3$1$2$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj10) {
                                        SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj10;
                                        semanticsPropertyReceiver2.getClass();
                                        SemanticsPropertiesKt.g(semanticsPropertyReceiver2, new CollectionItemInfo(0, 1, iIntValue, 1));
                                        StringBuilder sb = new StringBuilder();
                                        AvatarItemUiModel avatarItemUiModel2 = avatarItemUiModel;
                                        String str9 = avatarItemUiModel2.f52328c;
                                        if (str9 != null) {
                                            sb.append(str9);
                                        }
                                        if (avatarItemUiModel2.f52329e) {
                                            sb.append(str8);
                                        }
                                        SemanticsPropertiesKt.i(semanticsPropertyReceiver2, sb.toString());
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            Modifier modifierB = SemanticsModifierKt.b(modifierE, false, (Function1) objX);
                            String str9 = str7;
                            if (str9 == null) {
                                str9 = "";
                            }
                            LVAvatarKt.a(modifierB, avatarItemUiModel, str9, null, function2, composer, 0, 8);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 3:
                CatalogTracker catalogTracker = (CatalogTracker) obj5;
                Function2 function3 = (Function2) obj3;
                NavHostController navHostController = (NavHostController) obj2;
                Function1 function4 = (Function1) obj4;
                CategoryUiModel categoryUiModel = (CategoryUiModel) obj;
                categoryUiModel.getClass();
                String str8 = categoryUiModel.f55364b;
                String str9 = categoryUiModel.f55363a;
                CategoryTagUiModel categoryTagUiModel = categoryUiModel.d;
                String str10 = categoryTagUiModel != null ? categoryTagUiModel.f55362a : null;
                catalogTracker.getClass();
                str8.getClass();
                catalogTracker.f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.OnCategoryClickEvent(str8, str10)));
                function3.invoke(str8, null);
                CategoryRedirectionUiModel categoryRedirectionUiModel = categoryUiModel.f55367f;
                List list3 = categoryRedirectionUiModel.f55359a;
                if (list3 != null) {
                    PLPEntryUiModel pLPEntryUiModel = (PLPEntryUiModel) CollectionsKt.firstOrNull(list3);
                    String str11 = pLPEntryUiModel != null ? pLPEntryUiModel.f55373b : null;
                    NavController.d(navHostController, new CatalogRoutes.Plp(str9, null, str11 != null ? str11 : "", str8), null, 6);
                } else if (categoryRedirectionUiModel.f55360b != null) {
                    NavController.d(navHostController, new CatalogRoutes.ThematicPlp(categoryUiModel.f55363a, (String) null, categoryUiModel.f55364b, (String) null, (String) null, 24, (DefaultConstructorMarker) null), null, 6);
                } else if (categoryRedirectionUiModel.f55361c != null) {
                    NavController.d(navHostController, new CatalogRoutes.Subcategory(str9), null, 6);
                } else {
                    ContributionLinkUiModel contributionLinkUiModel = categoryRedirectionUiModel.d;
                    if (contributionLinkUiModel != null) {
                        function4.invoke(contributionLinkUiModel);
                    }
                }
                return Unit.f71739a;
            case 4:
                CatalogTracker catalogTracker2 = (CatalogTracker) obj5;
                CategoryUiModel categoryUiModel2 = (CategoryUiModel) obj3;
                NavHostController navHostController2 = (NavHostController) obj2;
                Function1 function5 = (Function1) obj4;
                SubcategoryUiModel subcategoryUiModel = (SubcategoryUiModel) obj;
                subcategoryUiModel.getClass();
                String str12 = categoryUiModel2.f55364b;
                String str13 = subcategoryUiModel.f55383b;
                String str14 = subcategoryUiModel.f55382a;
                catalogTracker2.getClass();
                str12.getClass();
                str13.getClass();
                str14.getClass();
                catalogTracker2.f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.OnSubcategoryClickEvent(str12, str13, str14)));
                SubcategoryRedirectionUiModel subcategoryRedirectionUiModel = subcategoryUiModel.f55384c;
                if ((subcategoryRedirectionUiModel != null ? subcategoryRedirectionUiModel.f55379a : null) != null) {
                    String str15 = categoryUiModel2.f55363a;
                    PLPEntryUiModel pLPEntryUiModel2 = (PLPEntryUiModel) CollectionsKt.firstOrNull(subcategoryRedirectionUiModel.f55379a);
                    String str16 = pLPEntryUiModel2 != null ? pLPEntryUiModel2.f55373b : null;
                    NavController.d(navHostController2, new CatalogRoutes.Plp(str15, str14, str16 != null ? str16 : "", str13), null, 6);
                } else if ((subcategoryRedirectionUiModel != null ? subcategoryRedirectionUiModel.f55380b : null) != null) {
                    NavController.d(navHostController2, new CatalogRoutes.ThematicPlp(categoryUiModel2.f55363a, subcategoryUiModel.f55382a, subcategoryUiModel.f55383b, (String) null, (String) null, 24, (DefaultConstructorMarker) null), null, 6);
                } else if ((subcategoryRedirectionUiModel != null ? subcategoryRedirectionUiModel.f55381c : null) != null) {
                    function5.invoke(subcategoryRedirectionUiModel.f55381c);
                }
                return Unit.f71739a;
            case 5:
                ItemConnectivityLightUpBinding itemConnectivityLightUpBinding = (ItemConnectivityLightUpBinding) obj3;
                LightupDeviceType lightupDeviceType = (LightupDeviceType) obj2;
                int i6 = ConnectivityAdapter.LightUpViewHolder.d;
                ((View) obj).getClass();
                LightUpProductUiModel lightUpProductUiModel = (LightUpProductUiModel) ((ConnectedObjectUiModel) obj4);
                ((ConnectivityAdapter) obj5).f56043e.invoke(new LVLightUpTrackingUiModel.ConnectivityPageConnectToAPairedObjectEvent(lightUpProductUiModel.f55961c));
                Context context = itemConnectivityLightUpBinding.f51398b.getContext();
                LightUpActivity.Companion companion = LightUpActivity.t;
                Context context2 = itemConnectivityLightUpBinding.f51398b.getContext();
                context2.getClass();
                companion.getClass();
                lightupDeviceType.getClass();
                Intent intentPutExtra = new Intent(context2, (Class<?>) LightUpActivity.class).putExtra("LIGHT_UP_DEVICE_TYPE", lightupDeviceType).putExtra(LightUpDetailFragment.Q, lightUpProductUiModel);
                intentPutExtra.getClass();
                context.startActivity(intentPutExtra);
                return Unit.f71739a;
            case 6:
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) obj4;
                String str17 = (String) obj3;
                Context context3 = (Context) obj5;
                MutableState mutableState2 = (MutableState) obj2;
                ContactabilityActionUIModel contactabilityActionUIModel = (ContactabilityActionUIModel) obj;
                contactabilityActionUIModel.getClass();
                int i7 = ContactabilitySectionKt.WhenMappings.f57896a[contactabilityActionUIModel.ordinal()];
                ContactabilityTrackingUiModel.PreferencesClick preferencesClick = ContactabilityTrackingUiModel.PreferencesClick.f57910a;
                if (i7 == 1) {
                    permissionsViewModel.Ka(preferencesClick, str17);
                    NotificationsPreferencesActivity.q.getClass();
                    context3.getClass();
                    Intent intent = new Intent(context3, (Class<?>) NotificationsPreferencesActivity.class);
                    intent.putExtra("extra_display_bottom_sheet", false);
                    context3.startActivity(intent);
                } else if (i7 == 2) {
                    permissionsViewModel.Ka(preferencesClick, str17);
                    NotificationsPreferencesActivity.q.getClass();
                    context3.getClass();
                    Intent intent2 = new Intent(context3, (Class<?>) NotificationsPreferencesActivity.class);
                    intent2.putExtra("extra_display_bottom_sheet", true);
                    context3.startActivity(intent2);
                } else if (i7 == 3) {
                    permissionsViewModel.Ka(ContactabilityTrackingUiModel.EnableNotificationsClick.f57908a, str17);
                    permissionsViewModel.u8();
                } else {
                    if (i7 != 4 && i7 != 5) {
                        v40.g();
                        return null;
                    }
                    permissionsViewModel.Ka(ContactabilityTrackingUiModel.EnablePersonalizationClick.f57909a, str17);
                    mutableState2.setValue(Boolean.TRUE);
                    permissionsViewModel.aa((2 & 1) == 0, new ul0(8));
                }
                return Unit.f71739a;
            case 7:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj5;
                TextInputService textInputService = (TextInputService) obj4;
                TextFieldValue textFieldValue = (TextFieldValue) obj3;
                ImeOptions imeOptions = (ImeOptions) obj2;
                if (legacyTextFieldState.b()) {
                    TextFieldDelegate.Companion companion2 = TextFieldDelegate.f5962a;
                    EditProcessor editProcessor = legacyTextFieldState.d;
                    lq lqVar = legacyTextFieldState.v;
                    lq lqVar2 = legacyTextFieldState.w;
                    companion2.getClass();
                    Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    cl0 cl0Var = new cl0(editProcessor, lqVar, ref$ObjectRef, 17);
                    PlatformTextInputService platformTextInputService = textInputService.f10843a;
                    platformTextInputService.c(textFieldValue, imeOptions, cl0Var, lqVar2);
                    TextInputSession textInputSession = new TextInputSession(textInputService, platformTextInputService);
                    textInputService.f10844b.set(textInputSession);
                    ref$ObjectRef.f71921b = textInputSession;
                    legacyTextFieldState.f5928e = textInputSession;
                }
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$lambda$18$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                    }
                };
            case 8:
                final Set set = (Set) obj5;
                final Set set2 = (Set) obj4;
                final MutableState mutableState3 = (MutableState) obj2;
                set.add(obj3);
                return new DisposableEffectResult() { // from class: androidx.navigation3.runtime.DecoratedNavEntriesKt$decorateEntry$lambda$1$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        Set set3 = set;
                        Object obj6 = obj3;
                        boolean zRemove = set3.remove(obj6);
                        if (set2.contains(obj6) || !zRemove) {
                            return;
                        }
                        List list4 = (List) mutableState3.getF10755b();
                        if (!(list4 instanceof RandomAccess)) {
                            Iterator it = CollectionsKt.f0(list4).iterator();
                            while (it.hasNext()) {
                                ((NavEntryDecorator) it.next()).f18400a.invoke(obj6);
                            }
                            return;
                        }
                        int size = list4.size() - 1;
                        if (size < 0) {
                            return;
                        }
                        while (true) {
                            int i8 = size - 1;
                            ((NavEntryDecorator) list4.get(size)).f18400a.invoke(obj6);
                            if (i8 < 0) {
                                return;
                            } else {
                                size = i8;
                            }
                        }
                    }
                };
            case 9:
                Function3 function6 = (Function3) obj5;
                MutableState mutableState4 = (MutableState) obj4;
                MutableState mutableState5 = (MutableState) obj2;
                String str18 = (String) obj;
                str18.getClass();
                mutableState4.setValue(str18);
                ListPickerItem listPickerItem = (ListPickerItem) ((MutableState) obj3).getF10755b();
                String str19 = listPickerItem != null ? listPickerItem.f51015c : null;
                CountryUiModel countryUiModel = (CountryUiModel) mutableState5.getF10755b();
                function6.A(str19, countryUiModel != null ? countryUiModel.f57372b : null, (String) mutableState4.getF10755b());
                return Unit.f71739a;
            case 10:
                StoreUiModel storeUiModel = (StoreUiModel) obj;
                storeUiModel.getClass();
                ((FindInStoreViewModel) obj4).s6(new FindInStoreTrackingUiModel.ClickOnMoreDetailsEvent((String) obj3, StringResourceUiModelKt.a(((FindInStoreViewState) ((MutableState) obj2).getF10755b()).d, (Context) obj5), storeUiModel, null));
                return Unit.f71739a;
            case 11:
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj5;
                FindInStoreViewModel findInStoreViewModel = (FindInStoreViewModel) obj2;
                VariationUiModel variationUiModel = (VariationUiModel) obj;
                variationUiModel.getClass();
                ((MutableState) obj4).setValue(variationUiModel);
                PlaceGeocodingUiModel placeGeocodingUiModel = (PlaceGeocodingUiModel) ((MutableState) obj3).getF10755b();
                if (placeGeocodingUiModel != null) {
                    findInStoreViewModel.a6(variationUiModel.f61767b, placeGeocodingUiModel);
                }
                lVModalBottomSheetState.b(new k40(28));
                return Unit.f71739a;
            case 12:
                VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel = (VideoCtaArticleSectionUiModel) obj;
                videoCtaArticleSectionUiModel.getClass();
                ((ImmersiveArticleViewModel) obj5).U8(new ImmersiveArticleTrackingUiModel.ModuleVideoClickEvent((String) obj3, videoCtaArticleSectionUiModel.f58841a, (ImmersiveArticleType) obj2));
                ((Function1) obj4).invoke(new ImmersiveArticleNavigationType.OpenVideoInFullScreen(videoCtaArticleSectionUiModel.f58846h));
                return Unit.f71739a;
            case 13:
                String str20 = (String) obj;
                str20.getClass();
                ((ImmersiveArticleViewModel) obj5).U8(new ImmersiveArticleTrackingUiModel.NotifyMeClickEvent((String) obj4, (ImmersiveArticleType) obj3, str20));
                ((PermissionsViewModel) obj2).aa((2 & 1) == 0, new ul0(8));
                return Unit.f71739a;
            case 14:
                Function1 function7 = (Function1) obj4;
                ImmersiveArticleType immersiveArticleType = (ImmersiveArticleType) obj5;
                Function1 function8 = (Function1) obj2;
                ContributionLinkUiModel contributionLinkUiModel2 = (ContributionLinkUiModel) obj;
                contributionLinkUiModel2.getClass();
                ContributionLinkUiModel contributionLinkUiModel3 = ((ImmersiveArticleSlideUiModel) obj3).f58713e;
                if ((contributionLinkUiModel3 instanceof ContributionLinkUiModel.Monogram) && (str = ((ContributionLinkUiModel.Monogram) contributionLinkUiModel3).f51170c) != null) {
                    str4 = str;
                }
                function7.invoke(new ImmersiveArticleTrackingUiModel.OnClickSliderEvent(immersiveArticleType, str4));
                function8.invoke(contributionLinkUiModel2);
                return Unit.f71739a;
            case 15:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, CollectionsKt.K(ArraysKt.v(new String[]{(String) obj5, (String) obj4, (String) ((MutableState) obj2).getF10755b(), (String) obj3}), null, null, null, null, 63));
                return Unit.f71739a;
            case 16:
                InfiniteTransition infiniteTransition = (InfiniteTransition) obj4;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj3;
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                long jLongValue = ((Long) obj).longValue();
                State state = (State) ((MutableState) obj5).getF10755b();
                long jLongValue2 = state != null ? ((Number) state.getF10755b()).longValue() : jLongValue;
                long j2 = infiniteTransition.f3879c;
                MutableVector mutableVector = infiniteTransition.f3877a;
                if (j2 == Long.MIN_VALUE || ref$FloatRef.f71918b != SuspendAnimationKt.i(coroutineScope.getF50528e())) {
                    infiniteTransition.f3879c = jLongValue;
                    Object[] objArr = mutableVector.f8165b;
                    int i8 = mutableVector.d;
                    for (int i9 = 0; i9 < i8; i9++) {
                        ((InfiniteTransition.TransitionAnimationState) objArr[i9]).f3885i = true;
                    }
                    ref$FloatRef.f71918b = SuspendAnimationKt.i(coroutineScope.getF50528e());
                }
                float f2 = ref$FloatRef.f71918b;
                if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    Object[] objArr2 = mutableVector.f8165b;
                    int i10 = mutableVector.d;
                    while (i5 < i10) {
                        InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) objArr2[i5];
                        ((SnapshotMutableStateImpl) transitionAnimationState.f3882e).setValue(transitionAnimationState.g.f3983c);
                        transitionAnimationState.f3885i = true;
                        i5++;
                    }
                } else {
                    long j3 = (long) ((jLongValue2 - infiniteTransition.f3879c) / f2);
                    Object[] objArr3 = mutableVector.f8165b;
                    int i11 = mutableVector.d;
                    boolean z = true;
                    for (int i12 = 0; i12 < i11; i12++) {
                        InfiniteTransition.TransitionAnimationState transitionAnimationState2 = (InfiniteTransition.TransitionAnimationState) objArr3[i12];
                        if (!transitionAnimationState2.f3884h) {
                            ((SnapshotMutableStateImpl) InfiniteTransition.this.f3878b).setValue(Boolean.FALSE);
                            if (transitionAnimationState2.f3885i) {
                                transitionAnimationState2.f3885i = false;
                                transitionAnimationState2.f3886j = j3;
                            }
                            long j4 = j3 - transitionAnimationState2.f3886j;
                            ((SnapshotMutableStateImpl) transitionAnimationState2.f3882e).setValue(transitionAnimationState2.g.f(j4));
                            transitionAnimationState2.f3884h = transitionAnimationState2.g.c(j4);
                        }
                        if (!transitionAnimationState2.f3884h) {
                            z = false;
                        }
                    }
                    ((SnapshotMutableStateImpl) infiniteTransition.d).setValue(Boolean.valueOf(!z));
                }
                return Unit.f71739a;
            case 17:
                LocalDate localDate = (LocalDate) obj5;
                List list4 = (List) obj3;
                Function1 function9 = (Function1) obj4;
                MutableState mutableState6 = (MutableState) obj2;
                CalendarDay calendarDay = (CalendarDay) obj;
                float f3 = LVCalendarKt.f50961a;
                calendarDay.getClass();
                LocalDate localDate2 = calendarDay.f35955b;
                if ((Intrinsics.c(localDate2, localDate) || localDate2.isAfter(localDate)) && list4 != null && list4.contains(localDate2)) {
                    mutableState6.setValue(localDate2);
                    function9.invoke(localDate2);
                }
                return Unit.f71739a;
            case 18:
                final List list5 = (List) obj5;
                final Function2 function10 = (Function2) obj4;
                final ListPickerItem listPickerItem2 = (ListPickerItem) obj3;
                final MutableState mutableState7 = (MutableState) obj2;
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                lazyListScope2.h(list5.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.compose.components.LVDialogListPickerKt$LVDialogListPicker$lambda$5$0$0$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj6) {
                        list5.get(((Number) obj6).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.compose.components.LVDialogListPickerKt$LVDialogListPicker$lambda$5$0$0$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj6, Object obj7, Object obj8, Object obj9) {
                        int i13;
                        long j5;
                        long j6;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj6;
                        final int iIntValue = ((Number) obj7).intValue();
                        Composer composer = (Composer) obj8;
                        int iIntValue2 = ((Number) obj9).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i13 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i13 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i13 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        boolean z2 = true;
                        if (composer.p(i13 & 1, (i13 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final ListPickerItem listPickerItem3 = (ListPickerItem) list5.get(iIntValue);
                            composer.L(-1175379404);
                            boolean zK = composer.K(listPickerItem3);
                            final Function2 function11 = function10;
                            boolean zK2 = zK | composer.K(function11);
                            if ((((i13 & 112) ^ 48) <= 32 || !composer.d(iIntValue)) && (i13 & 48) != 32) {
                                z2 = false;
                            }
                            boolean z3 = zK2 | z2;
                            Object objX = composer.x();
                            if (z3 || objX == Composer.Companion.f7939a) {
                                final MutableState mutableState8 = mutableState7;
                                objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.compose.components.LVDialogListPickerKt$LVDialogListPicker$3$1$1$1$1$1$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        ListPickerItem listPickerItem4 = listPickerItem3;
                                        if (listPickerItem4.f51014b) {
                                            function11.invoke(Integer.valueOf(iIntValue), listPickerItem4);
                                            mutableState8.setValue(Boolean.FALSE);
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            Modifier.Companion companion3 = Modifier.Companion.f8607b;
                            Modifier modifierO = ModifierExtKt.c(companion3, false, null, null, (Function0) objX, 31).o(SizeKt.f5052c);
                            String str21 = listPickerItem3.f51013a;
                            ListPickerItem listPickerItem4 = listPickerItem2;
                            if (Intrinsics.c(str21, listPickerItem4 != null ? listPickerItem4.f51013a : null)) {
                                composer.L(-1174831356);
                                j5 = LVAppDesignKitTheme.c(composer).f48361b.f48375b;
                                composer.F();
                            } else {
                                composer.L(-1174703233);
                                j5 = LVAppDesignKitTheme.c(composer).f48361b.f48374a;
                                composer.F();
                            }
                            Modifier modifierJ = PaddingKt.j(BackgroundKt.b(modifierO, j5, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).d);
                            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                            Alignment.f8582a.getClass();
                            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, composer, 0);
                            int iHashCode = Long.hashCode(composer.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                            Modifier modifierC = ComposedModifierKt.c(composer, modifierJ);
                            ComposeUiNode.b0.getClass();
                            Function0 function0 = ComposeUiNode.Companion.f9641b;
                            if (composer.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer.B();
                            if (composer.getS()) {
                                composer.C(function0);
                            } else {
                                composer.o();
                            }
                            Updater.c(composer, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(composer, ComposeUiNode.Companion.f9645h);
                            Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).q0, composer, 0), null, SizeKt.o(AlphaKt.a(companion3, Intrinsics.c(listPickerItem3.f51013a, listPickerItem4 != null ? listPickerItem4.f51013a : null) ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM), LVAppDesignKitTheme.d(composer).o), 0L, composer, 56, 8);
                            SpacerKt.a(composer, SizeKt.s(companion3, LVAppDesignKitTheme.l(composer).f48416e));
                            String str22 = listPickerItem3.f51013a;
                            TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48429j;
                            if (listPickerItem3.f51014b) {
                                composer.L(-1198421754);
                                j6 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
                                composer.F();
                            } else {
                                composer.L(-1198299583);
                                j6 = LVAppDesignKitTheme.c(composer).f48361b.n;
                                composer.F();
                            }
                            TextKt.c(str22, null, j6, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, composer, 0, 0, 131066);
                            composer.r();
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 19:
                final LazyLayoutPrefetchState lazyLayoutPrefetchState = (LazyLayoutPrefetchState) obj5;
                lazyLayoutPrefetchState.d = new PrefetchHandleProvider((LazyLayoutItemContentFactory) obj4, (SubcomposeLayoutState) obj3, (PrefetchScheduler) obj2);
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$LazyLayout$lambda$1$2$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        LazyLayoutPrefetchState lazyLayoutPrefetchState2 = lazyLayoutPrefetchState;
                        PrefetchHandleProvider prefetchHandleProvider = lazyLayoutPrefetchState2.d;
                        if (prefetchHandleProvider != null) {
                            prefetchHandleProvider.d = false;
                        }
                        lazyLayoutPrefetchState2.d = null;
                    }
                };
            case 20:
                Ref$FloatRef ref$FloatRef2 = (Ref$FloatRef) obj5;
                MouseWheelScrollingLogic mouseWheelScrollingLogic = (MouseWheelScrollingLogic) obj4;
                NestedScrollScope nestedScrollScope = (NestedScrollScope) obj3;
                c cVar = (c) obj2;
                AnimationScope animationScope2 = (AnimationScope) obj;
                float fFloatValue = ((Number) ((SnapshotMutableStateImpl) animationScope2.f3813e).getF10755b()).floatValue() - ref$FloatRef2.f71918b;
                if (!MouseWheelScrollingLogicKt.a(fFloatValue)) {
                    if (!MouseWheelScrollingLogicKt.a(fFloatValue - mouseWheelScrollingLogic.e(nestedScrollScope, fFloatValue))) {
                        animationScope2.a();
                        return Unit.f71739a;
                    }
                    ref$FloatRef2.f71918b += fFloatValue;
                }
                if (((Boolean) cVar.invoke(Float.valueOf(ref$FloatRef2.f71918b))).booleanValue()) {
                    animationScope2.a();
                }
                return Unit.f71739a;
            case 21:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                int i13 = NavControllerImpl.B;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj5).f71917b = true;
                ((NavControllerImpl) obj4).a((NavDestination) obj3, (Bundle) obj2, navBackStackEntry, EmptyList.f71768b);
                return Unit.f71739a;
            case 22:
                Function2 function11 = (Function2) obj4;
                Object obj6 = (NotificationPreferenceType) obj3;
                Function0 function0 = (Function0) obj2;
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                if (((NotificationsPreferencesViewState) obj5).f59960c) {
                    function11.invoke(obj6, bool);
                } else {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 23:
                OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = (OrderReturnOrExchangeViewState) obj5;
                Function3 function12 = (Function3) obj3;
                Function1 function13 = (Function1) obj4;
                Function0 function14 = (Function0) obj2;
                LazyListScope lazyListScope3 = (LazyListScope) obj;
                lazyListScope3.getClass();
                ComposableSingletons$OrderExchangeVariantSelectionScreenKt.f60105a.getClass();
                LazyListScope.f(lazyListScope3, null, ComposableSingletons$OrderExchangeVariantSelectionScreenKt.f60106b, 3);
                LazyListScope.f(lazyListScope3, null, new ComposableLambdaImpl(1769954713, true, new ki0(orderReturnOrExchangeViewState, i5)), 3);
                VariationsResponseUiModel variationsResponseUiModel = orderReturnOrExchangeViewState.f60309c;
                VariationsResponseUiModel.Result result = variationsResponseUiModel instanceof VariationsResponseUiModel.Result ? (VariationsResponseUiModel.Result) variationsResponseUiModel : null;
                if (result != null && (productExchangeCategoryUiModel = result.f60430a) != null) {
                    List list6 = orderReturnOrExchangeViewState.f60315k;
                    list6.getClass();
                    function12.getClass();
                    function13.getClass();
                    LazyListScope.f(lazyListScope3, null, new ComposableLambdaImpl(-84625288, true, new r((Object) productExchangeCategoryUiModel, (Object) list6, (Object) function12, (Object) function13, 21)), 3);
                    LazyListScope.f(lazyListScope3, null, new ComposableLambdaImpl(-1742960017, true, new g1(list6, function12, function13, 27)), 3);
                }
                LazyListScope.f(lazyListScope3, null, new ComposableLambdaImpl(1182492442, true, new a3(function14, 20)), 3);
                LazyListScope.f(lazyListScope3, null, ComposableSingletons$OrderExchangeVariantSelectionScreenKt.f60107c, 3);
                return Unit.f71739a;
            case 24:
                final OrderReturnOrExchangeViewState orderReturnOrExchangeViewState2 = (OrderReturnOrExchangeViewState) obj5;
                Function0 function15 = (Function0) obj2;
                final Function2 function16 = (Function2) obj4;
                final Function2 function17 = (Function2) obj3;
                LazyListScope lazyListScope4 = (LazyListScope) obj;
                lazyListScope4.getClass();
                LazyListScope.f(lazyListScope4, null, new ComposableLambdaImpl(-1891343961, true, new ni0(orderReturnOrExchangeViewState2, function15, i4)), 3);
                final List list7 = orderReturnOrExchangeViewState2.f60310e;
                final aj0 aj0Var = new aj0(i5);
                lazyListScope4.h(list7.size(), new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$lambda$6$0$0$0$$inlined$itemsIndexed$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj7) {
                        int iIntValue = ((Number) obj7).intValue();
                        return aj0Var.invoke(Integer.valueOf(iIntValue), list7.get(iIntValue));
                    }
                }, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$lambda$6$0$0$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj7) {
                        list7.get(((Number) obj7).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$lambda$6$0$0$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj7, Object obj8, Object obj9, Object obj10) {
                        int i14;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj7;
                        int iIntValue = ((Number) obj8).intValue();
                        Composer composer = (Composer) obj9;
                        int iIntValue2 = ((Number) obj10).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i14 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i14 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i14 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i14 & 1, (i14 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = (OrderReturnOrExchangeItemUiModel) list7.get(iIntValue);
                            composer.L(1938821298);
                            if (iIntValue > 0) {
                                composer.L(1938826784);
                                DividerKt.a(PaddingKt.k(Modifier.Companion.f8607b, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(composer).f48361b.q, composer, 0, 2);
                                composer.F();
                            } else {
                                composer.L(1939094903);
                                composer.F();
                            }
                            OrderReturnOrExchangeReasonScreenKt.e(orderReturnOrExchangeItemUiModel, orderReturnOrExchangeViewState2, function16, function17, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                if (orderReturnOrExchangeViewState2.o == null) {
                    LazyListScope.f(lazyListScope4, null, new ComposableLambdaImpl(1046997762, true, new a3(function15, 21)), 3);
                }
                return Unit.f71739a;
            case 25:
                PLPCategoryViewModel pLPCategoryViewModel = (PLPCategoryViewModel) obj5;
                String str21 = (String) obj4;
                String str22 = (String) obj3;
                AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) obj2;
                List list8 = (List) obj;
                list8.getClass();
                String str23 = ((PLPViewState) pLPCategoryViewModel.a().getValue()).f63005a;
                if (str23 != null) {
                    appsFlyerUiTracker.d(str23);
                }
                String strA = PlpProductUiModelKt.a(list8);
                List list9 = list8;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list9, 10));
                for (Object obj7 : list9) {
                    int i14 = i5 + 1;
                    if (i5 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    arrayList.add(((PlpProductUiModel) obj7).c(i5, str21, str22));
                    i5 = i14;
                }
                pLPCategoryViewModel.j(new GA4TrackingUiModel.ViewItemListLoaded("product_list", strA, str21, str22, arrayList));
                return Unit.f71739a;
            case 26:
                AppsFlyerUiTracker appsFlyerUiTracker2 = (AppsFlyerUiTracker) obj5;
                Function1 function18 = (Function1) obj4;
                MutableState mutableState8 = (MutableState) obj3;
                State state2 = (State) obj2;
                PlpProductUiModel plpProductUiModel2 = (PlpProductUiModel) obj;
                plpProductUiModel2.getClass();
                PersonalSelectionActions personalSelectionActions = PersonalSelectionActions.PRODUCT_SELECTED;
                MutableState mutableState9 = plpProductUiModel2.f62934a;
                String str24 = ((PlpProductUiModel.SkuDataUiModel) mutableState9.getF10755b()).f62944b;
                if (str24 == null) {
                    str24 = null;
                }
                String str25 = ((PlpProductUiModel.SkuDataUiModel) mutableState9.getF10755b()).f62945c;
                if (str25 == null) {
                    PersonalSelectionsCurationAdvisorLookViewState personalSelectionsCurationAdvisorLookViewState = (PersonalSelectionsCurationAdvisorLookViewState) mutableState8.getF10755b();
                    PersonalSelectionsCurationAdvisorLookViewState.Success success = personalSelectionsCurationAdvisorLookViewState instanceof PersonalSelectionsCurationAdvisorLookViewState.Success ? (PersonalSelectionsCurationAdvisorLookViewState.Success) personalSelectionsCurationAdvisorLookViewState : null;
                    if (success == null || (list = success.f62498b) == null) {
                        str25 = null;
                    } else {
                        Iterator it = list.iterator();
                        do {
                            if (it.hasNext()) {
                                next = it.next();
                                str2 = ((PlpProductUiModel.SkuDataUiModel) ((PlpProductUiModel) next).f62934a.getF10755b()).f62944b;
                                if (str2 == null) {
                                    str2 = null;
                                }
                                str3 = ((PlpProductUiModel.SkuDataUiModel) mutableState9.getF10755b()).f62944b;
                                if (str3 == null) {
                                    str3 = null;
                                }
                            } else {
                                next = null;
                            }
                            plpProductUiModel = (PlpProductUiModel) next;
                            if (plpProductUiModel != null || (mutableState = plpProductUiModel.f62934a) == null || (skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b()) == null) {
                                str25 = null;
                            } else {
                                str25 = skuDataUiModel.f62945c;
                            }
                        } while (!Intrinsics.c(str2, str3));
                        plpProductUiModel = (PlpProductUiModel) next;
                        if (plpProductUiModel != null) {
                            str25 = null;
                        } else {
                            str25 = null;
                        }
                    }
                }
                PersonalSelectionsCurationAdvisorViewState personalSelectionsCurationAdvisorViewState = (PersonalSelectionsCurationAdvisorViewState) state2.getF10755b();
                PersonalSelectionsCurationAdvisorViewState.Success success2 = personalSelectionsCurationAdvisorViewState instanceof PersonalSelectionsCurationAdvisorViewState.Success ? (PersonalSelectionsCurationAdvisorViewState.Success) personalSelectionsCurationAdvisorViewState : null;
                if (success2 != null && (personalSelectionsDetailUiModel = success2.f62507a) != null && (selectionStoreUiModel = personalSelectionsDetailUiModel.g) != null) {
                    str5 = selectionStoreUiModel.f62587a;
                }
                appsFlyerUiTracker2.e(personalSelectionActions, str24, str25, str5);
                function18.invoke(new SkuIdUiModel(((PlpProductUiModel.SkuDataUiModel) mutableState9.getF10755b()).f62943a));
                return Unit.f71739a;
            case 27:
                final List list10 = (List) obj5;
                final Function1 function19 = (Function1) obj4;
                final String str26 = (String) obj3;
                final Function2 function20 = (Function2) obj2;
                LazyListScope lazyListScope5 = (LazyListScope) obj;
                lazyListScope5.getClass();
                final yk0 yk0Var = new yk0(28);
                final PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$1 personalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* bridge */ /* synthetic */ Object invoke(Object obj8) {
                        return null;
                    }
                };
                lazyListScope5.h(list10.size(), new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        return yk0Var.invoke(list10.get(((Number) obj8).intValue()));
                    }
                }, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        return personalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$1.invoke(list10.get(((Number) obj8).intValue()));
                    }
                }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int i15;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        int iIntValue = ((Number) obj9).intValue();
                        Composer composer = (Composer) obj10;
                        int iIntValue2 = ((Number) obj11).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i15 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i15 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i15 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i15 & 1, (i15 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            PersonalSharingUiModel personalSharingUiModel = (PersonalSharingUiModel) list10.get(iIntValue);
                            composer.L(-949648987);
                            final int iIndexOf = list10.indexOf(personalSharingUiModel);
                            final Function1 function21 = function19;
                            boolean zK = composer.K(function21);
                            final String str27 = str26;
                            boolean zK2 = zK | composer.K(str27) | composer.d(iIndexOf);
                            final Function2 function22 = function20;
                            boolean zK3 = zK2 | composer.K(function22);
                            Object objX = composer.x();
                            if (zK3 || objX == Composer.Companion.f7939a) {
                                objX = new Function2<String, SelectionTypeUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj12, Object obj13) {
                                        String str28 = (String) obj12;
                                        SelectionTypeUiModel selectionTypeUiModel = (SelectionTypeUiModel) obj13;
                                        str28.getClass();
                                        selectionTypeUiModel.getClass();
                                        function21.invoke(new PersonalSelectionsListTrackingUiModel.DiscoverSelectionEvent(str27, iIndexOf));
                                        function22.invoke(str28, selectionTypeUiModel);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            PersonalSelectionsListScreenKt.a(personalSharingUiModel, (Function2) objX, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 28:
                return a(obj);
            default:
                HapticFeedbackType.f9193b.getClass();
                int i15 = PlatformHapticFeedbackType.f9196a;
                ((HapticFeedback) obj5).a(0);
                ((Function2) obj4).invoke((PlpProductUiModel) obj3, Integer.valueOf(((PagerState) obj2).k()));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ k3(int i2, Object obj, Object obj2, Object obj3, Object obj4, boolean z) {
        this.f71538b = i2;
        this.d = obj;
        this.f71540e = obj2;
        this.f71539c = obj3;
        this.f71541f = obj4;
    }

    public /* synthetic */ k3(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f71538b = i2;
        this.d = obj;
        this.f71539c = obj2;
        this.f71540e = obj3;
        this.f71541f = obj4;
    }

    public /* synthetic */ k3(Object obj, Object obj2, Object obj3, Function1 function1, int i2) {
        this.f71538b = i2;
        this.d = obj;
        this.f71540e = obj2;
        this.f71541f = obj3;
        this.f71539c = function1;
    }

    public /* synthetic */ k3(Object obj, String str, Context context, MutableState mutableState, int i2) {
        this.f71538b = i2;
        this.f71539c = obj;
        this.f71540e = str;
        this.d = context;
        this.f71541f = mutableState;
    }

    public /* synthetic */ k3(Function1 function1, ImmersiveArticleType immersiveArticleType, ImmersiveArticleSlideUiModel immersiveArticleSlideUiModel, Function1 function2) {
        this.f71538b = 14;
        this.f71539c = function1;
        this.d = immersiveArticleType;
        this.f71540e = immersiveArticleSlideUiModel;
        this.f71541f = function2;
    }
}
