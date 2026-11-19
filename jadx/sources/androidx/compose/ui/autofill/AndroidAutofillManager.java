package androidx.compose.ui.autofill;

import android.graphics.Rect;
import android.view.View;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.focus.FocusListener;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsListener;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import defpackage.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B/\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/ui/autofill/AndroidAutofillManager;", "Landroidx/compose/ui/autofill/AutofillManager;", "Landroidx/compose/ui/semantics/SemanticsListener;", "Landroidx/compose/ui/focus/FocusListener;", "Landroidx/compose/ui/autofill/PlatformAutofillManager;", "platformAutofillManager", "Landroidx/compose/ui/semantics/SemanticsOwner;", "semanticsOwner", "Landroid/view/View;", "view", "Landroidx/compose/ui/spatial/RectManager;", "rectManager", "", "packageName", "<init>", "(Landroidx/compose/ui/autofill/PlatformAutofillManager;Landroidx/compose/ui/semantics/SemanticsOwner;Landroid/view/View;Landroidx/compose/ui/spatial/RectManager;Ljava/lang/String;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidAutofillManager extends AutofillManager implements SemanticsListener, FocusListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PlatformAutofillManager f8628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SemanticsOwner f8629c;
    public final View d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RectManager f8630e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f8631f;
    public final Rect g = new Rect();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AutofillId f8632h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableIntSet f8633i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f8634j;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8635a;

        static {
            int[] iArr = new int[ToggleableState.values().length];
            try {
                iArr[ToggleableState.On.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ToggleableState.Off.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f8635a = iArr;
        }
    }

    public AndroidAutofillManager(PlatformAutofillManager platformAutofillManager, SemanticsOwner semanticsOwner, View view, RectManager rectManager, String str) {
        this.f8628b = platformAutofillManager;
        this.f8629c = semanticsOwner;
        this.d = view;
        this.f8630e = rectManager;
        this.f8631f = str;
        view.setImportantForAutofill(1);
        AutofillId autofillId = view.getAutofillId();
        if (autofillId == null) {
            throw a.s("Required value was null.");
        }
        this.f8632h = autofillId;
        this.f8633i = new MutableIntSet(0, 1, null);
    }

    @Override // androidx.compose.ui.focus.FocusListener
    public final void A(FocusTargetModifierNode focusTargetModifierNode, FocusTargetNode focusTargetNode) {
        LayoutNode layoutNodeF;
        SemanticsConfiguration semanticsConfigurationI;
        LayoutNode layoutNodeF2;
        SemanticsConfiguration semanticsConfigurationI2;
        if (focusTargetModifierNode != null && (layoutNodeF2 = DelegatableNodeKt.f(focusTargetModifierNode)) != null && (semanticsConfigurationI2 = layoutNodeF2.i()) != null) {
            MutableScatterMap mutableScatterMap = semanticsConfigurationI2.f10312b;
            if (mutableScatterMap.b(SemanticsActions.g) || mutableScatterMap.b(SemanticsActions.f10307h)) {
                this.f8628b.b(layoutNodeF2.f9689c, this.d);
            }
        }
        if (focusTargetNode == null || (layoutNodeF = DelegatableNodeKt.f(focusTargetNode)) == null || (semanticsConfigurationI = layoutNodeF.i()) == null) {
            return;
        }
        MutableScatterMap mutableScatterMap2 = semanticsConfigurationI.f10312b;
        if (mutableScatterMap2.b(SemanticsActions.g) || mutableScatterMap2.b(SemanticsActions.f10307h)) {
            final int i2 = layoutNodeF.f9689c;
            this.f8630e.f10385b.e(i2, new Function4<Integer, Integer, Integer, Integer, Unit>() { // from class: androidx.compose.ui.autofill.AndroidAutofillManager$onFocusChanged$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(4);
                }

                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    int iIntValue = ((Number) obj).intValue();
                    int iIntValue2 = ((Number) obj2).intValue();
                    int iIntValue3 = ((Number) obj3).intValue();
                    int iIntValue4 = ((Number) obj4).intValue();
                    AndroidAutofillManager androidAutofillManager = this.f8636c;
                    androidAutofillManager.f8628b.e(androidAutofillManager.d, i2, new Rect(iIntValue, iIntValue2, iIntValue3, iIntValue4));
                    return Unit.f71739a;
                }
            });
        }
    }

    @Override // androidx.compose.ui.semantics.SemanticsListener
    public final void a(LayoutNode layoutNode, SemanticsConfiguration semanticsConfiguration) {
        Boolean bool;
        AnnotatedString annotatedString;
        AnnotatedString annotatedString2;
        SemanticsConfiguration semanticsConfigurationI = layoutNode.i();
        int i2 = layoutNode.f9689c;
        String str = (semanticsConfiguration == null || (annotatedString2 = (AnnotatedString) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.F)) == null) ? null : annotatedString2.f10420c;
        String str2 = (semanticsConfigurationI == null || (annotatedString = (AnnotatedString) SemanticsConfigurationKt.a(semanticsConfigurationI, SemanticsProperties.F)) == null) ? null : annotatedString.f10420c;
        boolean z = false;
        PlatformAutofillManager platformAutofillManager = this.f8628b;
        View view = this.d;
        if (str != str2) {
            if (str == null) {
                platformAutofillManager.d(view, i2, true);
            } else if (str2 == null) {
                platformAutofillManager.d(view, i2, false);
            } else if (Intrinsics.c((ContentDataType) SemanticsConfigurationKt.a(semanticsConfigurationI, SemanticsProperties.s), ContentDataType.Companion.f8647a)) {
                platformAutofillManager.a(view, i2, AutofillApi26Helper.a(str2));
            }
        }
        ToggleableState toggleableState = semanticsConfiguration != null ? (ToggleableState) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.K) : null;
        ToggleableState toggleableState2 = semanticsConfigurationI != null ? (ToggleableState) SemanticsConfigurationKt.a(semanticsConfigurationI, SemanticsProperties.K) : null;
        if (toggleableState != toggleableState2) {
            if (toggleableState == null) {
                platformAutofillManager.d(view, i2, true);
            } else if (toggleableState2 == null) {
                platformAutofillManager.d(view, i2, false);
            } else if (Intrinsics.c((ContentDataType) SemanticsConfigurationKt.a(semanticsConfigurationI, SemanticsProperties.s), ContentDataType.Companion.f8648b)) {
                int i3 = WhenMappings.f8635a[toggleableState2.ordinal()];
                if (i3 != 1) {
                    bool = i3 != 2 ? null : Boolean.FALSE;
                } else {
                    bool = Boolean.TRUE;
                }
                if (bool != null) {
                    platformAutofillManager.a(view, i2, AutofillValue.forToggle(bool.booleanValue()));
                }
            }
        }
        FillableData fillableData = semanticsConfiguration != null ? (FillableData) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.t) : null;
        FillableData fillableData2 = semanticsConfigurationI != null ? (FillableData) SemanticsConfigurationKt.a(semanticsConfigurationI, SemanticsProperties.t) : null;
        if (!Intrinsics.c(fillableData, fillableData2)) {
            if (fillableData == null) {
                platformAutofillManager.d(view, i2, true);
            } else if (fillableData2 == null) {
                platformAutofillManager.d(view, i2, false);
            } else {
                platformAutofillManager.a(view, i2, ((AndroidFillableData) fillableData2).f8641a);
            }
        }
        boolean z2 = semanticsConfiguration != null && semanticsConfiguration.f10312b.b(SemanticsProperties.r);
        if (semanticsConfigurationI != null && semanticsConfigurationI.f10312b.b(SemanticsProperties.r)) {
            z = true;
        }
        if (z2 != z) {
            MutableIntSet mutableIntSet = this.f8633i;
            if (z) {
                mutableIntSet.b(i2);
            } else {
                mutableIntSet.g(i2);
            }
        }
    }

    public final void b(final LayoutNode layoutNode) {
        this.f8630e.f10385b.e(layoutNode.f9689c, new Function4<Integer, Integer, Integer, Integer, Unit>() { // from class: androidx.compose.ui.autofill.AndroidAutofillManager$requestAutofill$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(4);
            }

            @Override // kotlin.jvm.functions.Function4
            public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                int iIntValue = ((Number) obj).intValue();
                int iIntValue2 = ((Number) obj2).intValue();
                int iIntValue3 = ((Number) obj3).intValue();
                int iIntValue4 = ((Number) obj4).intValue();
                AndroidAutofillManager androidAutofillManager = this.f8637c;
                Rect rect = androidAutofillManager.g;
                rect.set(iIntValue, iIntValue2, iIntValue3, iIntValue4);
                androidAutofillManager.f8628b.c(androidAutofillManager.d, layoutNode.f9689c, rect);
                return Unit.f71739a;
            }
        });
    }
}
