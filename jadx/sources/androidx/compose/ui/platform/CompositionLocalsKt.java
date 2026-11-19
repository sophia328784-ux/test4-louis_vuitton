package androidx.compose.ui.platform;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.retain.LocalRetainedValuesStoreKt;
import androidx.compose.ui.node.Owner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class CompositionLocalsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f10026a = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalAccessibilityManager$1.f10035c);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f10027b = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalAutofill$1.f10036c);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f10028c = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalAutofillTree$1.f10038c);
    public static final StaticProvidableCompositionLocal d = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalAutofillManager$1.f10037c);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f10029e = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalClipboardManager$1.f10040c);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f10030f = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalClipboard$1.f10039c);
    public static final StaticProvidableCompositionLocal g = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalGraphicsContext$1.f10046c);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f10031h = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.f10042c);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f10032i = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalFocusManager$1.f10043c);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f10033j = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalFontLoader$1.f10045c);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f10034k = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalFontFamilyResolver$1.f10044c);
    public static final StaticProvidableCompositionLocal l = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalHapticFeedback$1.f10047c);
    public static final StaticProvidableCompositionLocal m = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalInputModeManager$1.f10048c);
    public static final StaticProvidableCompositionLocal n = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalLayoutDirection$1.f10049c);
    public static final StaticProvidableCompositionLocal o = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalProvidableLocaleList$1.f10052c);
    public static final ComputedProvidableCompositionLocal p = new ComputedProvidableCompositionLocal(CompositionLocalsKt$LocalLocale$1.f10050c);
    public static final StaticProvidableCompositionLocal q = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalTextInputService$1.f10055c);
    public static final StaticProvidableCompositionLocal r = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalSoftwareKeyboardController$1.f10054c);
    public static final StaticProvidableCompositionLocal s = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalTextToolbar$1.f10056c);
    public static final StaticProvidableCompositionLocal t = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalUriHandler$1.f10057c);
    public static final StaticProvidableCompositionLocal u = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalViewConfiguration$1.f10058c);
    public static final StaticProvidableCompositionLocal v = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalWindowInfo$1.f10059c);
    public static final StaticProvidableCompositionLocal w = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalPointerIconService$1.f10051c);
    public static final DynamicProvidableCompositionLocal x = CompositionLocalKt.c(CompositionLocalsKt$LocalProvidableScrollCaptureInProgress$1.f10053c);
    public static final StaticProvidableCompositionLocal y = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalCursorBlinkEnabled$1.f10041c);

    public static final void a(final Owner owner, final UriHandler uriHandler, final Function2 function2, Composer composer, final int i2) {
        GapComposer gapComposerH = composer.h(1925803616);
        int i3 = (gapComposerH.K(owner) ? 4 : 2) | i2 | (gapComposerH.K(uriHandler) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ProvidedValue providedValueC = f10026a.c(owner.getAccessibilityManager());
            ProvidedValue providedValueC2 = f10027b.c(owner.getAutofill());
            ProvidedValue providedValueC3 = d.c(owner.getAutofillManager());
            ProvidedValue providedValueC4 = f10028c.c(owner.getAutofillTree());
            ProvidedValue providedValueC5 = f10029e.c(owner.getClipboardManager());
            ProvidedValue providedValueC6 = f10030f.c(owner.getClipboard());
            ProvidedValue providedValueC7 = f10031h.c(owner.getDensity());
            ProvidedValue providedValueC8 = f10032i.c(owner.getFocusOwner());
            ProvidedValue providedValueC9 = f10033j.c(owner.getFontLoader());
            providedValueC9.f8074h = false;
            ProvidedValue providedValueC10 = f10034k.c(owner.getFontFamilyResolver());
            providedValueC10.f8074h = false;
            CompositionLocalKt.b(new ProvidedValue[]{providedValueC, providedValueC2, providedValueC3, providedValueC4, providedValueC5, providedValueC6, providedValueC7, providedValueC8, providedValueC9, providedValueC10, l.c(owner.getHapticFeedBack()), m.c(owner.getInputModeManager()), n.c(owner.getLayoutDirection()), q.c(owner.getTextInputService()), r.c(owner.getSoftwareKeyboardController()), s.c(owner.getTextToolbar()), t.c(uriHandler), u.c(owner.getViewConfiguration()), v.c(owner.getWindowInfo()), w.c(owner.getPointerIconService()), g.c(owner.getGraphicsContext()), LocalRetainedValuesStoreKt.f8413a.c(owner.getRetainedValuesStore()), o.c(owner.getLocaleList())}, function2, gapComposerH, ((i3 >> 3) & 112) | 8);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>(uriHandler, function2, i2) { // from class: androidx.compose.ui.platform.CompositionLocalsKt$ProvideCommonCompositionLocals$1
                public final /* synthetic */ UriHandler d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function2 f10061e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(1);
                    CompositionLocalsKt.a(this.f10060c, this.d, this.f10061e, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }
}
