package androidx.compose.ui.platform;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.inputmethodservice.InputMethodService;
import android.os.Bundle;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.HostDefaultProviderKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.res.ImageVectorCache;
import androidx.compose.ui.res.ResourceIdCache;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamilyResolver_androidKt;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.core.viewtree.ViewTree;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import androidx.window.layout.WindowMetrics;
import androidx.window.layout.WindowMetricsCalculator;
import androidx.window.layout.WindowMetricsCalculatorCompat;
import com.vuitton.android.R;
import defpackage.dn;
import defpackage.md;
import defpackage.tr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableSet;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B;\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/platform/ComposeViewContext;", "", "Landroid/view/View;", "view", "Landroidx/compose/runtime/CompositionContext;", "compositionContext", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "Landroidx/savedstate/SavedStateRegistryOwner;", "savedStateRegistryOwner", "Landroidx/lifecycle/ViewModelStoreOwner;", "viewModelStoreOwner", "<init>", "(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/lifecycle/ViewModelStoreOwner;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComposeViewContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f10009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompositionContext f10010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LifecycleOwner f10011c;
    public final SavedStateRegistryOwner d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ViewModelStoreOwner f10012e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImageVectorCache f10013f;
    public final ResourceIdCache g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Configuration f10014h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableState f10015i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AndroidAccessibilityManager f10016j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AndroidUriHandler f10017k;
    public final AndroidClipboardManager l;
    public final AndroidClipboard m;
    public final Font.ResourceLoader n;
    public final MutableState o;
    public final HapticFeedback p;
    public final AndroidViewConfiguration q;
    public final LayoutNodeDrawScope r;
    public final LazyWindowInfo s;
    public final CanvasHolder t;
    public int u;
    public final Function0 v;
    public final ComposeViewContext$callback$1 w;

    public ComposeViewContext(ComposeViewContext composeViewContext, View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner) {
        ImageVectorCache imageVectorCache;
        Configuration configuration;
        MutableState mutableStateG;
        AndroidAccessibilityManager androidAccessibilityManager;
        AndroidUriHandler androidUriHandler;
        AndroidClipboardManager androidClipboardManager;
        AndroidClipboard androidClipboard;
        Font.ResourceLoader androidFontResourceLoader;
        MutableState mutableStateF;
        AndroidViewConfiguration androidViewConfiguration;
        CanvasHolder canvasHolder;
        LayoutNodeDrawScope layoutNodeDrawScope;
        ResourceIdCache resourceIdCache;
        View view2;
        boolean zC = Intrinsics.c((composeViewContext == null || (view2 = composeViewContext.f10009a) == null) ? null : view2.getContext(), view.getContext());
        this.f10009a = view;
        this.f10010b = compositionContext;
        this.f10011c = lifecycleOwner;
        this.d = savedStateRegistryOwner;
        this.f10012e = viewModelStoreOwner;
        if (zC) {
            composeViewContext.getClass();
            imageVectorCache = composeViewContext.f10013f;
        } else {
            imageVectorCache = new ImageVectorCache();
        }
        this.f10013f = imageVectorCache;
        this.g = (composeViewContext == null || (resourceIdCache = composeViewContext.g) == null) ? new ResourceIdCache() : resourceIdCache;
        if (zC) {
            composeViewContext.getClass();
            configuration = composeViewContext.f10014h;
        } else {
            configuration = new Configuration(view.getContext().getResources().getConfiguration());
        }
        this.f10014h = configuration;
        if (zC) {
            composeViewContext.getClass();
            mutableStateG = composeViewContext.f10015i;
        } else {
            mutableStateG = SnapshotStateKt.g(new Configuration(configuration));
        }
        this.f10015i = mutableStateG;
        if (zC) {
            composeViewContext.getClass();
            androidAccessibilityManager = composeViewContext.f10016j;
        } else {
            androidAccessibilityManager = new AndroidAccessibilityManager(view.getContext());
        }
        this.f10016j = androidAccessibilityManager;
        if (zC) {
            composeViewContext.getClass();
            androidUriHandler = composeViewContext.f10017k;
        } else {
            androidUriHandler = new AndroidUriHandler(view.getContext());
        }
        this.f10017k = androidUriHandler;
        if (zC) {
            composeViewContext.getClass();
            androidClipboardManager = composeViewContext.l;
        } else {
            androidClipboardManager = new AndroidClipboardManager(view.getContext());
        }
        this.l = androidClipboardManager;
        if (zC) {
            composeViewContext.getClass();
            androidClipboard = composeViewContext.m;
        } else {
            androidClipboard = new AndroidClipboard(androidClipboardManager);
        }
        this.m = androidClipboard;
        if (zC) {
            composeViewContext.getClass();
            androidFontResourceLoader = composeViewContext.n;
        } else {
            androidFontResourceLoader = new AndroidFontResourceLoader(view.getContext());
        }
        this.n = androidFontResourceLoader;
        if (zC) {
            composeViewContext.getClass();
            mutableStateF = composeViewContext.o;
        } else {
            mutableStateF = SnapshotStateKt.f(FontFamilyResolver_androidKt.a(view.getContext()), SnapshotStateKt.k());
        }
        this.o = mutableStateF;
        this.p = view == (composeViewContext != null ? composeViewContext.f10009a : null) ? composeViewContext.p : new PlatformHapticFeedback(view);
        if (zC) {
            composeViewContext.getClass();
            androidViewConfiguration = composeViewContext.q;
        } else {
            androidViewConfiguration = new AndroidViewConfiguration(android.view.ViewConfiguration.get(view.getContext()));
        }
        this.q = androidViewConfiguration;
        this.r = (composeViewContext == null || (layoutNodeDrawScope = composeViewContext.r) == null) ? new LayoutNodeDrawScope(null, 1, null) : layoutNodeDrawScope;
        this.s = new LazyWindowInfo();
        this.t = (composeViewContext == null || (canvasHolder = composeViewContext.t) == null) ? new CanvasHolder() : canvasHolder;
        IntSize.f11020b.getClass();
        this.v = new Function0<DerivedSize>() { // from class: androidx.compose.ui.platform.ComposeViewContext$calculateWindowSizeLambda$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                View view3 = this.f10024c.f10009a;
                IntSize.f11020b.getClass();
                if (!IntSize.b(0L, 0L)) {
                    DerivedSize.Companion companion = DerivedSize.f10063c;
                    Density densityA = AndroidDensity_androidKt.a(view3.getContext());
                    companion.getClass();
                    return new DerivedSize(0L, densityA.R(IntSizeKt.d(0L)), null);
                }
                Context context = view3.getContext();
                Context baseContext = context;
                while (true) {
                    if (baseContext instanceof ContextWrapper) {
                        if ((baseContext instanceof Activity) || (baseContext instanceof InputMethodService) || (baseContext instanceof Application)) {
                            break;
                        }
                        ContextWrapper contextWrapper = (ContextWrapper) baseContext;
                        if (contextWrapper.getBaseContext() != null) {
                            baseContext = contextWrapper.getBaseContext();
                        }
                    }
                    baseContext = null;
                    break;
                }
                if (baseContext == null) {
                    Configuration configuration2 = context.getResources().getConfiguration();
                    Density densityA2 = AndroidDensity_androidKt.a(context);
                    DerivedSize.Companion companion2 = DerivedSize.f10063c;
                    float f2 = configuration2.screenWidthDp;
                    Dp.Companion companion3 = Dp.f11004c;
                    long jA = DpKt.a(f2, configuration2.screenHeightDp);
                    companion2.getClass();
                    return new DerivedSize(IntSizeKt.c(densityA2.K1(jA)), jA, null);
                }
                WindowMetricsCalculator.f20193a.getClass();
                WindowMetricsCalculator.Companion companion4 = WindowMetricsCalculator.Companion.f20194a;
                WindowMetricsCalculatorCompat windowMetricsCalculatorCompat = WindowMetricsCalculator.Companion.f20195b;
                windowMetricsCalculatorCompat.getClass();
                WindowMetrics windowMetricsA = windowMetricsCalculatorCompat.a(baseContext);
                DerivedSize.Companion companion5 = DerivedSize.f10063c;
                long jWidth = (((long) windowMetricsA.a().width()) << 32) | (((long) windowMetricsA.a().height()) & BodyPartID.bodyIdMax);
                Density densityA3 = AndroidDensity_androidKt.a(baseContext);
                companion5.getClass();
                return new DerivedSize(jWidth, densityA3.R(IntSizeKt.d(jWidth)), null);
            }
        };
        this.w = new ComposeViewContext$callback$1(this);
    }

    public final void a(final AndroidComposeView androidComposeView, final Function2 function2, Composer composer, final int i2) {
        GapComposer gapComposerH = composer.h(123858079);
        int i3 = (gapComposerH.y(androidComposeView) ? 4 : 2) | i2 | (gapComposerH.y(function2) ? 32 : 16) | (gapComposerH.y(this) ? 256 : 128);
        final boolean z = true;
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object tag = androidComposeView.getTag(R.id.inspection_slot_table_set);
            LinkedHashMap linkedHashMap = null;
            Set set = (!(tag instanceof Set) || ((tag instanceof KMappedMarker) && !(tag instanceof KMutableSet))) ? null : (Set) tag;
            if (set == null) {
                Object parent = androidComposeView.getParent();
                View view = parent instanceof View ? (View) parent : null;
                Object tag2 = view != null ? view.getTag(R.id.inspection_slot_table_set) : null;
                set = (!(tag2 instanceof Set) || ((tag2 instanceof KMappedMarker) && !(tag2 instanceof KMutableSet))) ? null : (Set) tag2;
            }
            if (set != null) {
                set.add(gapComposerH.f0());
                gapComposerH.q = true;
                gapComposerH.C = true;
                gapComposerH.f7978c.i();
                gapComposerH.H.i();
                SlotWriter slotWriter = gapComposerH.I;
                SlotTable slotTable = slotWriter.f8218a;
                slotWriter.f8221e = slotTable.f8215k;
                slotWriter.f8222f = slotTable.l;
            }
            Object objX = gapComposerH.x();
            SavedStateRegistryOwner savedStateRegistryOwner = this.d;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                Object parent2 = androidComposeView.getParent();
                parent2.getClass();
                View view2 = (View) parent2;
                Object tag3 = view2.getTag(R.id.compose_view_saveable_id_tag);
                String strValueOf = tag3 instanceof String ? (String) tag3 : null;
                if (strValueOf == null) {
                    strValueOf = String.valueOf(view2.getId());
                }
                final String strG = tr.g("SaveableStateRegistry:", strValueOf);
                final SavedStateRegistry savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
                Bundle bundleA = savedStateRegistry.a(strG);
                if (bundleA != null) {
                    linkedHashMap = new LinkedHashMap();
                    for (String str : bundleA.keySet()) {
                        ArrayList parcelableArrayList = bundleA.getParcelableArrayList(str);
                        parcelableArrayList.getClass();
                        linkedHashMap.put(str, parcelableArrayList);
                    }
                }
                SaveableStateRegistry saveableStateRegistryA = SaveableStateRegistryKt.a(linkedHashMap, DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1.f10071c);
                if (savedStateRegistry.b(strG) != null) {
                    z = false;
                } else {
                    try {
                        savedStateRegistry.c(strG, new dn(saveableStateRegistryA, 1));
                    } catch (IllegalArgumentException unused) {
                        z = false;
                    }
                }
                DisposableSaveableStateRegistry disposableSaveableStateRegistry = new DisposableSaveableStateRegistry(saveableStateRegistryA, new Function0<Unit>() { // from class: androidx.compose.ui.platform.DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        if (z) {
                            SavedStateRegistry savedStateRegistry2 = savedStateRegistry;
                            String str2 = strG;
                            SavedStateRegistryImpl savedStateRegistryImpl = savedStateRegistry2.f19784a;
                            savedStateRegistryImpl.getClass();
                            synchronized (savedStateRegistryImpl.f19796c) {
                            }
                        }
                        return Unit.f71739a;
                    }
                });
                gapComposerH.q(disposableSaveableStateRegistry);
                objX = disposableSaveableStateRegistry;
            }
            final DisposableSaveableStateRegistry disposableSaveableStateRegistry2 = (DisposableSaveableStateRegistry) objX;
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(disposableSaveableStateRegistry2);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.platform.ComposeViewContext$ProvideCompositionLocals$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        final DisposableSaveableStateRegistry disposableSaveableStateRegistry3 = disposableSaveableStateRegistry2;
                        return new DisposableEffectResult() { // from class: androidx.compose.ui.platform.ComposeViewContext$ProvideCompositionLocals$1$1$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public final void dispose() {
                                disposableSaveableStateRegistry3.f10067c.mo47invoke();
                            }
                        };
                    }
                };
                gapComposerH.q(objX2);
            }
            EffectsKt.c(unit, (Function1) objX2, gapComposerH);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = CompositionLocalsKt.x;
            boolean zBooleanValue = ((Boolean) gapComposerH.k(dynamicProvidableCompositionLocal)).booleanValue() | androidComposeView.getScrollCaptureInProgress$ui();
            boolean zK = gapComposerH.K(androidComposeView.getView());
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new ViewTreeHostDefaultProvider(androidComposeView.getView());
                gapComposerH.q(objX3);
            }
            CompositionLocalKt.b(new ProvidedValue[]{LocalLifecycleOwnerKt.f13562a.c(this.f10011c), LocalSavedStateRegistryOwnerKt.f19789a.c(savedStateRegistryOwner), AndroidCompositionLocals_androidKt.d.c(this.f10013f), AndroidCompositionLocals_androidKt.f9938e.c(this.g), AndroidCompositionLocals_androidKt.f9936b.c(androidComposeView.getContext()), InspectionTablesKt.f8563a.c(set), AndroidCompositionLocals_androidKt.f9935a.c(androidComposeView.getConfiguration()), SaveableStateRegistryKt.f8434a.c(disposableSaveableStateRegistry2), AndroidCompositionLocals_androidKt.f9939f.c(androidComposeView.getView()), dynamicProvidableCompositionLocal.c(Boolean.valueOf(zBooleanValue)), CompositionLocalsKt.u.c(androidComposeView.getViewConfiguration()), HostDefaultProviderKt.f8003a.c((ViewTreeHostDefaultProvider) objX3)}, ComposableLambdaKt.b(1317454175, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.platform.ComposeViewContext$ProvideCompositionLocals$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        composer2.L(866651995);
                        CompositionLocalsKt.a(androidComposeView, this.f10017k, function2, composer2, 0);
                        composer2.F();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 56);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>(androidComposeView, function2, i2) { // from class: androidx.compose.ui.platform.ComposeViewContext$ProvideCompositionLocals$3
                public final /* synthetic */ AndroidComposeView d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function2 f10023e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(1);
                    this.f10022c.a(this.d, this.f10023e, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public final void b() {
        int i2 = this.u - 1;
        this.u = i2;
        if (i2 < 0) {
            this.u = 0;
        }
        if (this.u == 0) {
            View view = this.f10009a;
            Context context = view.getContext();
            ComposeViewContext$callback$1 composeViewContext$callback$1 = this.w;
            context.unregisterComponentCallbacks(composeViewContext$callback$1);
            LazyWindowInfo lazyWindowInfo = this.s;
            lazyWindowInfo.getClass();
            lazyWindowInfo.f10113a = null;
            view.getViewTreeObserver().removeOnWindowFocusChangeListener(composeViewContext$callback$1);
        }
    }

    public final void c() {
        int i2 = this.u + 1;
        this.u = i2;
        if (i2 == 1) {
            View view = this.f10009a;
            Context context = view.getContext();
            ComposeViewContext$callback$1 composeViewContext$callback$1 = this.w;
            context.registerComponentCallbacks(composeViewContext$callback$1);
            d(view.getResources().getConfiguration());
            boolean zHasWindowFocus = view.hasWindowFocus();
            LazyWindowInfo lazyWindowInfo = this.s;
            ((SnapshotMutableStateImpl) lazyWindowInfo.f10114b).setValue(Boolean.valueOf(zHasWindowFocus));
            lazyWindowInfo.f10113a = this.v;
            view.getViewTreeObserver().addOnWindowFocusChangeListener(composeViewContext$callback$1);
        }
    }

    public final void d(Configuration configuration) {
        int iUpdateFrom = this.f10014h.updateFrom(configuration);
        if (iUpdateFrom != 0) {
            Iterator it = this.f10013f.f10230a.entrySet().iterator();
            while (it.hasNext()) {
                ImageVectorCache.ImageVectorEntry imageVectorEntry = (ImageVectorCache.ImageVectorEntry) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                if (imageVectorEntry == null || Configuration.needNewResources(iUpdateFrom, imageVectorEntry.f10232b)) {
                    it.remove();
                }
            }
            this.f10015i.setValue(new Configuration(configuration));
            ResourceIdCache resourceIdCache = this.g;
            synchronized (resourceIdCache) {
                resourceIdCache.f10235a.c();
            }
            if ((268435456 & iUpdateFrom) != 0) {
                this.o.setValue(FontFamilyResolver_androidKt.a(this.f10009a.getContext()));
            }
            if (((-1342235264) & iUpdateFrom) != 0) {
                this.s.getClass();
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ComposeViewContext(View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            compositionContext = WindowRecomposer_androidKt.a(view);
            if (compositionContext == null) {
                Object parent = view.getParent();
                while (compositionContext == null && (parent instanceof View)) {
                    View view2 = (View) parent;
                    compositionContext = WindowRecomposer_androidKt.a(view2);
                    parent = ViewTree.a(view2);
                }
            }
            if (compositionContext == null) {
                compositionContext = WindowRecomposer_androidKt.b(view);
            }
        }
        CompositionContext compositionContext2 = compositionContext;
        if ((i2 & 4) != 0 && (lifecycleOwner = ViewTreeLifecycleOwner.a(view)) == null) {
            md.k("Composed into a View which doesn't propagate ViewTreeLifecycleOwner!");
            throw null;
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        if ((i2 & 8) != 0 && (savedStateRegistryOwner = ViewTreeSavedStateRegistryOwner.a(view)) == null) {
            md.k("Composed into a View which doesn't propagate ViewTreeSavedStateRegistryOwner!");
            throw null;
        }
        this(view, compositionContext2, lifecycleOwner2, savedStateRegistryOwner, (i2 & 16) != 0 ? ViewTreeViewModelStoreOwner.a(view) : viewModelStoreOwner);
    }

    public ComposeViewContext(View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner) {
        this(ComposeView_androidKt.c(ComposeView_androidKt.b(view)), view, compositionContext, lifecycleOwner, savedStateRegistryOwner, viewModelStoreOwner);
    }
}
