package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import androidx.camera.core.CameraX;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
import androidx.compose.foundation.lazy.LazyListLayoutInfo;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListMeasuredItemProvider;
import androidx.compose.foundation.lazy.LazyListPrefetchStrategy;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListState$prefetchScope$1;
import androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.grid.LazyGridState$prefetchScope$1;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResult;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridItemSpan;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableStateKt;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.datastore.migrations.SharedPreferencesMigration;
import androidx.datastore.preferences.SharedPreferencesMigrationKt;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentNavigator;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.google.firebase.datastorage.JavaDataStorage;
import com.sightcall.advancedannotations.domain.drawer.annotation.LineAnnotation;
import com.sightcall.libraries.archi.nucleus.NucleusReducerBuilder;
import com.sightcall.livetranslation.history.HistoryCoordinator;
import com.sightcall.livetranslation.history.HistoryInteractor;
import com.sightcall.livetranslation.history.HistoryInteractorImpl;
import com.sightcall.livetranslation.history.HistoryViewHolder;
import com.sightcall.livetranslation.live.LiveSentencesInteractor;
import com.sightcall.livetranslation.live.LiveSentencesViewHolder;
import com.vuitton.android.R;
import com.vuitton.android.data.connectivity.lightup.LightUpProductDao_Impl;
import com.vuitton.android.data.connectivity.lightup.LightUpProductEntity;
import com.vuitton.android.data.database.converter.EnumConverter;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationRadioButton;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.HotelFormFragment;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.BaseLv3dViewerHelper;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerHelper;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleCtaUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.TextArticleSectionUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModel;
import com.vuitton.android.presentation.utils.ShareUtilsKt;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqPdf;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.math.MathKt;
import kotlin.reflect.KProperty;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l00 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f75913c;

    public /* synthetic */ l00(Object obj, int i2) {
        this.f75912b = i2;
        this.f75913c = obj;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        LazyGridMeasureResult lazyGridMeasureResult;
        LazyListMeasureResult lazyListMeasureResult;
        LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult;
        LVLightUpDeviceType lVLightUpDeviceType;
        int i2 = this.f75912b;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i3 = 2;
        LazyGridMeasureResult lazyGridMeasureResult2 = null;
        LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult2 = null;
        LazyListMeasureResult lazyListMeasureResult2 = null;
        int i4 = 1;
        Object obj2 = this.f75913c;
        switch (i2) {
            case 0:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                int i5 = FragmentNavigator.f18300j;
                navBackStackEntry.getClass();
                return new bn((FragmentNavigator) obj2, navBackStackEntry, i4);
            case 1:
                final FragmentViewBindingDelegate fragmentViewBindingDelegate = (FragmentViewBindingDelegate) obj2;
                ((LifecycleOwner) obj).getF13561b().a(new DefaultLifecycleObserver() { // from class: com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate$1$onCreate$1$1
                    @Override // androidx.lifecycle.DefaultLifecycleObserver
                    public final void onDestroy(LifecycleOwner lifecycleOwner) {
                        fragmentViewBindingDelegate.f51504c = null;
                    }
                });
                return Unit.f71739a;
            case 2:
                Brush brush = (Brush) obj2;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                LinearGradient linearGradient = GradientKt.f48342a;
                contentDrawScope.getClass();
                contentDrawScope.R1();
                DrawScope.q1(contentDrawScope, brush, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 0, 126);
                return Unit.f71739a;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver, new CollectionInfo(((HistoryUiModel) obj2).f64248a.size(), 1));
                return Unit.f71739a;
            case 4:
                return HistoryInteractorImpl.reducerConfigurator$lambda$0((HistoryCoordinator) obj2, (NucleusReducerBuilder) obj);
            case 5:
                return HistoryViewHolder.render$lambda$0((HistoryViewHolder) obj2, (HistoryInteractor.State) obj);
            case 6:
                HotelFormFragment.Companion companion = HotelFormFragment.G;
                ((View) obj).getClass();
                ((HotelFormFragment) obj2).M();
                return Unit.f71739a;
            case 7:
                ImmersiveArticleActivity immersiveArticleActivity = (ImmersiveArticleActivity) obj2;
                Bitmap bitmap = (Bitmap) obj;
                ImmersiveArticleActivity.Companion companion2 = ImmersiveArticleActivity.H;
                ImmersiveArticleViewModelImpl immersiveArticleViewModelImplM = immersiveArticleActivity.M();
                if (bitmap == null) {
                    bitmap = immersiveArticleViewModelImplM.K;
                }
                if (bitmap != null) {
                    ImmersiveArticleUiModel immersiveArticleUiModel = (ImmersiveArticleUiModel) immersiveArticleViewModelImplM.y.getValue();
                    if ((immersiveArticleUiModel != null ? immersiveArticleUiModel.f58791a : null) != null) {
                        PassAppLinkBuilder passAppLinkBuilder = immersiveArticleViewModelImplM.f58277h;
                        String host = DeepLink.IMMERSIVE_ARTICLE.getHost();
                        String str = immersiveArticleUiModel.f58791a;
                        String str2 = immersiveArticleUiModel.f58792b;
                        String string = immersiveArticleActivity.getString(R.string.Native_share_article_text, str2, passAppLinkBuilder.a(CollectionsKt.P(host, str)));
                        string.getClass();
                        String str3 = str2 == null ? "" : str2;
                        if (str2 == null) {
                            str2 = "Article";
                        }
                        ShareUtilsKt.a(immersiveArticleActivity, bitmap, str3, string, str2, 32);
                    } else {
                        immersiveArticleViewModelImplM.f58272a.c("ImmersiveArticleViewModelImpl", "Can't share the article at the moment, it is not loaded", null);
                    }
                }
                return Unit.f71739a;
            case 8:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel = ((TextArticleSectionUiModel) obj2).p.f58652b;
                if (immersiveArticleCtaUiModel != null && immersiveArticleCtaUiModel.f58649b != null) {
                    Role.f10289b.getClass();
                    SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                }
                return Unit.f71739a;
            case 9:
                Context context = (Context) obj;
                KProperty[] kPropertyArr = JavaDataStorage.d;
                context.getClass();
                String str4 = ((JavaDataStorage) obj2).f35072a;
                LinkedHashSet linkedHashSet = SharedPreferencesMigrationKt.f12872a;
                str4.getClass();
                linkedHashSet.getClass();
                return CollectionsKt.O(new SharedPreferencesMigration(context, str4, null, SharedPreferencesMigrationKt.b(linkedHashSet), SharedPreferencesMigrationKt.a(), 4, null));
            case 10:
                KeepAllDetailFragment keepAllDetailFragment = (KeepAllDetailFragment) obj2;
                List<FaqCategory> list = (List) obj;
                KeepAllDetailFragment.Companion companion3 = KeepAllDetailFragment.Y;
                list.getClass();
                for (FaqCategory faqCategory : list) {
                    List<FaqPdf> list2 = faqCategory.f67310e;
                    if (list2 != null) {
                        for (FaqPdf faqPdf : list2) {
                            keepAllDetailFragment.F0(faqPdf.f67314b, new bx(keepAllDetailFragment, faqPdf, i4));
                        }
                    }
                    if (!faqCategory.d.isEmpty()) {
                        keepAllDetailFragment.F0(keepAllDetailFragment.getString(R.string.rml_faq), new bx(keepAllDetailFragment, faqCategory, i3));
                    }
                }
                return Unit.f71739a;
            case 11:
                LocalDate localDate = (LocalDate) obj;
                float f3 = LVCalendarKt.f50961a;
                localDate.getClass();
                return Boolean.valueOf(localDate.isBefore((LocalDate) obj2));
            case 12:
                FragmentActivity fragmentActivity = (FragmentActivity) obj2;
                ((Throwable) obj).getClass();
                fragmentActivity.runOnUiThread(new fp(fragmentActivity, i3));
                return Unit.f71739a;
            case 13:
                ((Throwable) obj).getClass();
                ((Ref$BooleanRef) obj2).f71917b = false;
                return Unit.f71739a;
            case 14:
                CubicBezierEasing cubicBezierEasing = LVIconButtonKt.f48475a;
                ((LottieFrameInfo) obj).getClass();
                return new PorterDuffColorFilter(ColorKt.i(((ConfigurationIconButton) obj2).f48554e), PorterDuff.Mode.SRC_ATOP);
            case 15:
                float fFloatValue = ((Float) obj).floatValue();
                CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                TopAppBarState f6904a = ((TopAppBarScrollBehavior) obj2).getF6904a();
                f6904a.c(f6904a.b() + fFloatValue);
                return Unit.f71739a;
            case 16:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVRadioButtonKt.f48494a;
                ((LottieFrameInfo) obj).getClass();
                return new PorterDuffColorFilter(ColorKt.i(((ConfigurationRadioButton) obj2).f48575e), PorterDuff.Mode.SRC_ATOP);
            case 17:
                LVSwitchLegalState lVSwitchLegalState = (LVSwitchLegalState) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVSwitchKt.f48506a;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.u(semanticsPropertyReceiver3, ToggleableStateKt.a(lVSwitchLegalState == LVSwitchLegalState.ACCEPTED));
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver3, Role.d);
                return Unit.f71739a;
            case 18:
                return Integer.valueOf(((LazyGridSpanLayoutProvider) obj2).c(((Integer) obj).intValue()));
            case 19:
                LazyGridState lazyGridState = (LazyGridState) obj2;
                LazyGridState$prefetchScope$1 lazyGridState$prefetchScope$1 = lazyGridState.p;
                LazyGridPrefetchStrategy lazyGridPrefetchStrategy = lazyGridState.f5354a;
                boolean z = lazyGridState.f5360i;
                float fFloatValue2 = ((Float) obj).floatValue();
                LazyGridState.Companion companion4 = LazyGridState.w;
                float f4 = -fFloatValue2;
                if ((f4 >= Call.Parameters.DEFAULT_CAMERA_ZOOM || lazyGridState.d()) && (f4 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || lazyGridState.b())) {
                    if (Math.abs(lazyGridState.g) > 0.5f) {
                        InlineClassHelperKt.c("entered drag with non-zero pending scroll");
                    }
                    float f5 = lazyGridState.g + f4;
                    lazyGridState.g = f5;
                    if (Math.abs(f5) > 0.5f) {
                        float f6 = lazyGridState.g;
                        int iC = MathKt.c(f6);
                        LazyGridMeasureResult lazyGridMeasureResultM = ((LazyGridMeasureResult) ((SnapshotMutableStateImpl) lazyGridState.f5357e).getF10755b()).m(iC, !lazyGridState.f5355b);
                        if (lazyGridMeasureResultM == null || (lazyGridMeasureResult = lazyGridState.f5356c) == null) {
                            lazyGridMeasureResult2 = lazyGridMeasureResultM;
                        } else {
                            LazyGridMeasureResult lazyGridMeasureResultM2 = lazyGridMeasureResult.m(iC, true);
                            if (lazyGridMeasureResultM2 != null) {
                                lazyGridState.f5356c = lazyGridMeasureResultM2;
                                lazyGridMeasureResult2 = lazyGridMeasureResultM;
                            }
                        }
                        if (lazyGridMeasureResult2 != null) {
                            lazyGridState.f(lazyGridMeasureResult2, lazyGridState.f5355b, true);
                            ObservableScopeInvalidator.b(lazyGridState.r);
                            float f7 = f6 - lazyGridState.g;
                            if (z) {
                                lazyGridPrefetchStrategy.d(lazyGridState$prefetchScope$1, f7, lazyGridMeasureResult2);
                            }
                        } else {
                            Remeasurement remeasurement = lazyGridState.f5361j;
                            if (remeasurement != null) {
                                remeasurement.e();
                            }
                            float f8 = f6 - lazyGridState.g;
                            LazyGridLayoutInfo lazyGridLayoutInfoH = lazyGridState.h();
                            if (z) {
                                lazyGridPrefetchStrategy.d(lazyGridState$prefetchScope$1, f8, lazyGridLayoutInfoH);
                            }
                        }
                    }
                    if (Math.abs(lazyGridState.g) > 0.5f) {
                        f4 -= lazyGridState.g;
                        lazyGridState.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                    f2 = f4;
                }
                return Float.valueOf(-f2);
            case 20:
                return LazyListMeasuredItemProvider.d((LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1) obj2, ((Integer) obj).intValue());
            case 21:
                LazyListState lazyListState = (LazyListState) obj2;
                LazyListState$prefetchScope$1 lazyListState$prefetchScope$1 = lazyListState.r;
                LazyListPrefetchStrategy lazyListPrefetchStrategy = lazyListState.f5232a;
                boolean z2 = lazyListState.f5240k;
                float fFloatValue3 = ((Float) obj).floatValue();
                LazyListState.Companion companion5 = LazyListState.y;
                float f9 = -fFloatValue3;
                if ((f9 >= Call.Parameters.DEFAULT_CAMERA_ZOOM || lazyListState.d()) && (f9 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || lazyListState.b())) {
                    if (Math.abs(lazyListState.f5237h) > 0.5f) {
                        InlineClassHelperKt.c("entered drag with non-zero pending scroll");
                    }
                    lazyListState.d = true;
                    float f10 = lazyListState.f5237h + f9;
                    lazyListState.f5237h = f10;
                    if (Math.abs(f10) > 0.5f) {
                        float f11 = lazyListState.f5237h;
                        int iRound = Math.round(f11);
                        LazyListMeasureResult lazyListMeasureResultM = ((LazyListMeasureResult) ((SnapshotMutableStateImpl) lazyListState.f5236f).getF10755b()).m(iRound, !lazyListState.f5233b);
                        if (lazyListMeasureResultM == null || (lazyListMeasureResult = lazyListState.f5234c) == null) {
                            lazyListMeasureResult2 = lazyListMeasureResultM;
                        } else {
                            LazyListMeasureResult lazyListMeasureResultM2 = lazyListMeasureResult.m(iRound, true);
                            if (lazyListMeasureResultM2 != null) {
                                lazyListState.f5234c = lazyListMeasureResultM2;
                                lazyListMeasureResult2 = lazyListMeasureResultM;
                            }
                        }
                        if (lazyListMeasureResult2 != null) {
                            lazyListState.g(lazyListMeasureResult2, lazyListState.f5233b, true);
                            ObservableScopeInvalidator.b(lazyListState.w);
                            float f12 = f11 - lazyListState.f5237h;
                            if (z2) {
                                lazyListPrefetchStrategy.c(lazyListState$prefetchScope$1, f12, lazyListMeasureResult2);
                            }
                        } else {
                            Remeasurement remeasurement2 = lazyListState.l;
                            if (remeasurement2 != null) {
                                remeasurement2.e();
                            }
                            float f13 = f11 - lazyListState.f5237h;
                            LazyListLayoutInfo lazyListLayoutInfoJ = lazyListState.j();
                            if (z2) {
                                lazyListPrefetchStrategy.c(lazyListState$prefetchScope$1, f13, lazyListLayoutInfoJ);
                            }
                        }
                    }
                    if (Math.abs(lazyListState.f5237h) > 0.5f) {
                        f9 -= lazyListState.f5237h;
                        lazyListState.f5237h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                    f2 = f9;
                }
                return Float.valueOf(-f2);
            case 22:
                StaggeredGridItemSpan staggeredGridItemSpan = (StaggeredGridItemSpan) obj2;
                ((Integer) obj).intValue();
                return staggeredGridItemSpan;
            case 23:
                LazyStaggeredGridState lazyStaggeredGridState = (LazyStaggeredGridState) obj2;
                float f14 = -((Float) obj).floatValue();
                MutableState mutableState = lazyStaggeredGridState.d;
                if ((f14 >= Call.Parameters.DEFAULT_CAMERA_ZOOM || lazyStaggeredGridState.d()) && (f14 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || lazyStaggeredGridState.b())) {
                    if (Math.abs(lazyStaggeredGridState.o) > 0.5f) {
                        InlineClassHelperKt.c("entered drag with non-zero pending scroll");
                    }
                    float f15 = lazyStaggeredGridState.o + f14;
                    lazyStaggeredGridState.o = f15;
                    if (Math.abs(f15) > 0.5f) {
                        float f16 = lazyStaggeredGridState.o;
                        int iC2 = MathKt.c(f16);
                        SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState;
                        LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResultH = ((LazyStaggeredGridMeasureResult) snapshotMutableStateImpl.getF10755b()).h(iC2, !lazyStaggeredGridState.f5665a);
                        if (lazyStaggeredGridMeasureResultH == null || (lazyStaggeredGridMeasureResult = lazyStaggeredGridState.f5666b) == null) {
                            lazyStaggeredGridMeasureResult2 = lazyStaggeredGridMeasureResultH;
                        } else {
                            LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResultH2 = lazyStaggeredGridMeasureResult.h(iC2, true);
                            if (lazyStaggeredGridMeasureResultH2 != null) {
                                lazyStaggeredGridState.f5666b = lazyStaggeredGridMeasureResultH2;
                                lazyStaggeredGridMeasureResult2 = lazyStaggeredGridMeasureResultH;
                            }
                        }
                        if (lazyStaggeredGridMeasureResult2 != null) {
                            lazyStaggeredGridState.f(lazyStaggeredGridMeasureResult2, lazyStaggeredGridState.f5665a, true);
                            ObservableScopeInvalidator.b(lazyStaggeredGridState.u);
                            lazyStaggeredGridState.h(f16 - lazyStaggeredGridState.o, lazyStaggeredGridMeasureResult2);
                        } else {
                            Remeasurement remeasurement3 = lazyStaggeredGridState.f5670h;
                            if (remeasurement3 != null) {
                                remeasurement3.e();
                            }
                            lazyStaggeredGridState.h(f16 - lazyStaggeredGridState.o, (LazyStaggeredGridMeasureResult) snapshotMutableStateImpl.getF10755b());
                        }
                    }
                    if (Math.abs(lazyStaggeredGridState.o) > 0.5f) {
                        f14 -= lazyStaggeredGridState.o;
                        lazyStaggeredGridState.o = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                    f2 = f14;
                }
                return Float.valueOf(-f2);
            case 24:
                return ((CameraX) obj2).m;
            case 25:
                EnumConverter enumConverter = ((LightUpProductDao_Impl) obj2).f43567c;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                LightUpProductDao_Impl.Companion companion6 = LightUpProductDao_Impl.f43564e;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT * FROM LightUp");
                try {
                    int iC3 = SQLiteStatementUtil.c(sQLiteStatementT1, "DEVICE_ID");
                    int iC4 = SQLiteStatementUtil.c(sQLiteStatementT1, "TYPE");
                    int iC5 = SQLiteStatementUtil.c(sQLiteStatementT1, "NAME");
                    int iC6 = SQLiteStatementUtil.c(sQLiteStatementT1, "POWER_MODE");
                    int iC7 = SQLiteStatementUtil.c(sQLiteStatementT1, "PRESET_NAME");
                    int iC8 = SQLiteStatementUtil.c(sQLiteStatementT1, "PRESET_IMAGE");
                    int iC9 = SQLiteStatementUtil.c(sQLiteStatementT1, "PRESET_ID");
                    int iC10 = SQLiteStatementUtil.c(sQLiteStatementT1, "DEVICE_TO_STRING");
                    ArrayList arrayList = new ArrayList();
                    while (sQLiteStatementT1.Q1()) {
                        String strM1 = sQLiteStatementT1.m1(iC3);
                        int i6 = (int) sQLiteStatementT1.getLong(iC4);
                        enumConverter.getClass();
                        LVLightUpDeviceType.INSTANCE.getClass();
                        if (i6 == 1) {
                            lVLightUpDeviceType = LVLightUpDeviceType.KEEPALL;
                        } else {
                            if (i6 != 2) {
                                throw new IllegalStateException("Unhandled Light Up product type");
                            }
                            lVLightUpDeviceType = LVLightUpDeviceType.X408PAIR;
                        }
                        LVLightUpDeviceType lVLightUpDeviceType2 = lVLightUpDeviceType;
                        String strM2 = sQLiteStatementT1.isNull(iC5) ? null : sQLiteStatementT1.m1(iC5);
                        int i7 = (int) sQLiteStatementT1.getLong(iC6);
                        enumConverter.getClass();
                        arrayList.add(new LightUpProductEntity(strM1, lVLightUpDeviceType2, strM2, EnumConverter.a(i7), sQLiteStatementT1.isNull(iC7) ? null : sQLiteStatementT1.m1(iC7), sQLiteStatementT1.isNull(iC8) ? null : sQLiteStatementT1.m1(iC8), sQLiteStatementT1.isNull(iC9) ? null : sQLiteStatementT1.m1(iC9), sQLiteStatementT1.m1(iC10)));
                    }
                    sQLiteStatementT1.close();
                    return arrayList;
                } catch (Throwable th) {
                    sQLiteStatementT1.close();
                    throw th;
                }
            case 26:
                return LineAnnotation._init_$lambda$0((LineAnnotation) obj2, (ConstraintSet) obj);
            case 27:
                return LiveSentencesViewHolder.render$lambda$0((LiveSentencesViewHolder) obj2, (LiveSentencesInteractor.State) obj);
            case 28:
                String str5 = (String) obj;
                str5.getClass();
                return BaseLv3dViewerHelper.c(((Lv3dCardViewerHelper) obj2).f58503a, str5);
            default:
                String str6 = (String) obj;
                str6.getClass();
                return BaseLv3dViewerHelper.c(((Lv3dViewerHelper) obj2).f58503a, str6);
        }
    }
}
