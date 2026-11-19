package androidx.compose.ui.semantics;

import androidx.compose.foundation.lazy.layout.f;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.reflect.KProperty;
import org.bouncycastle.cms.CMSAttributeTableGenerator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SemanticsPropertiesKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f10359a = {new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "stateDescription", "getStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "progressBarRangeInfo", "getProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "paneTitle", "getPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "liveRegion", "getLiveRegion(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "focused", "getFocused(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isContainer", "isContainer(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isTraversalGroup", "isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isSensitiveData", "isSensitiveData(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, CMSAttributeTableGenerator.CONTENT_TYPE, "getContentType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/autofill/ContentType;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "contentDataType", "getContentDataType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/autofill/ContentDataType;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "fillableData", "getFillableData(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/autofill/FillableData;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "traversalIndex", "getTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)F", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "horizontalScrollAxisRange", "getHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "verticalScrollAxisRange", "getVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "role", "getRole(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "testTag", "getTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "textSubstitution", "getTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isShowingTextSubstitution", "isShowingTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "inputText", "getInputText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "editableText", "getEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "textSelectionRange", "getTextSelectionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "textCompositionRange", "getTextCompositionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/TextRange;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "imeAction", "getImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "selected", "getSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "collectionInfo", "getCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "collectionItemInfo", "getCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "toggleableState", "getToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "inputTextSuggestionState", "getInputTextSuggestionState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/InputTextSuggestionState;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isEditable", "isEditable(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "maxTextLength", "getMaxTextLength(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "shape", "getShape(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/graphics/Shape;", 1), new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "customActions", "getCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;", 1)};

    static {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsActions.f10302a;
    }

    public static final void a(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        semanticsPropertyReceiver.a(SemanticsProperties.f10338j, Unit.f71739a);
    }

    public static void b(SemanticsPropertyReceiver semanticsPropertyReceiver, final f fVar) {
        semanticsPropertyReceiver.a(SemanticsActions.C, new AccessibilityAction(null, new Function1<List<Float>, Boolean>() { // from class: androidx.compose.ui.semantics.SemanticsPropertiesKt$getScrollViewportLength$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((List) obj).add((Float) fVar.mo47invoke());
                return true;
            }
        }));
    }

    public static void c(SemanticsPropertyReceiver semanticsPropertyReceiver, Function1 function1) {
        semanticsPropertyReceiver.a(SemanticsActions.f10302a, new AccessibilityAction(null, function1));
    }

    public static final void d(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        semanticsPropertyReceiver.a(SemanticsProperties.f10336h, Unit.f71739a);
    }

    public static final void e(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, Function0 function0) {
        semanticsPropertyReceiver.a(SemanticsActions.f10303b, new AccessibilityAction(str, function0));
    }

    public static final void f(SemanticsPropertyReceiver semanticsPropertyReceiver, CollectionInfo collectionInfo) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.f10335f;
        KProperty kProperty = f10359a[24];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, collectionInfo);
    }

    public static final void g(SemanticsPropertyReceiver semanticsPropertyReceiver, CollectionItemInfo collectionItemInfo) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.g;
        KProperty kProperty = f10359a[25];
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey, collectionItemInfo);
    }

    public static final void h(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.m;
        KProperty kProperty = f10359a[5];
        Boolean bool = Boolean.TRUE;
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey, bool);
    }

    public static final void i(SemanticsPropertyReceiver semanticsPropertyReceiver, String str) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        semanticsPropertyReceiver.a(SemanticsProperties.f10331a, CollectionsKt.O(str));
    }

    public static final void j(SemanticsPropertyReceiver semanticsPropertyReceiver, ContentType contentType) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.r;
        KProperty kProperty = f10359a[8];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, contentType);
    }

    public static final void k(SemanticsPropertyReceiver semanticsPropertyReceiver, boolean z) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.l;
        KProperty kProperty = f10359a[4];
        Boolean boolValueOf = Boolean.valueOf(z);
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, boolValueOf);
    }

    public static final void l(SemanticsPropertyReceiver semanticsPropertyReceiver, ScrollAxisRange scrollAxisRange) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.v;
        KProperty kProperty = f10359a[12];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, scrollAxisRange);
    }

    public static final void m(SemanticsPropertyReceiver semanticsPropertyReceiver, int i2) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10339k;
        KProperty kProperty = f10359a[3];
        LiveRegionMode liveRegionMode = new LiveRegionMode(i2);
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey, liveRegionMode);
    }

    public static final void n(SemanticsPropertyReceiver semanticsPropertyReceiver, String str) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.d;
        KProperty kProperty = f10359a[2];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, str);
    }

    public static final void o(SemanticsPropertyReceiver semanticsPropertyReceiver, int i2) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.z;
        KProperty kProperty = f10359a[14];
        Role role = new Role(i2);
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey, role);
    }

    public static final void p(SemanticsPropertyReceiver semanticsPropertyReceiver, boolean z) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.J;
        KProperty kProperty = f10359a[23];
        Boolean boolValueOf = Boolean.valueOf(z);
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, boolValueOf);
    }

    public static final void q(SemanticsPropertyReceiver semanticsPropertyReceiver, Shape shape) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.Q;
        KProperty kProperty = f10359a[30];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, shape);
    }

    public static final void r(SemanticsPropertyReceiver semanticsPropertyReceiver, String str) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.f10332b;
        KProperty kProperty = f10359a[0];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, str);
    }

    public static final void s(SemanticsPropertyReceiver semanticsPropertyReceiver, String str) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.A;
        KProperty kProperty = f10359a[15];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, str);
    }

    public static final void t(SemanticsPropertyReceiver semanticsPropertyReceiver, AnnotatedString annotatedString) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        semanticsPropertyReceiver.a(SemanticsProperties.C, CollectionsKt.O(annotatedString));
    }

    public static final void u(SemanticsPropertyReceiver semanticsPropertyReceiver, ToggleableState toggleableState) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.K;
        KProperty kProperty = f10359a[26];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, toggleableState);
    }

    public static final void v(SemanticsPropertyReceiver semanticsPropertyReceiver, boolean z) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.n;
        KProperty kProperty = f10359a[6];
        Boolean boolValueOf = Boolean.valueOf(z);
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, boolValueOf);
    }

    public static final void w(SemanticsPropertyReceiver semanticsPropertyReceiver, float f2) {
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.u;
        KProperty kProperty = f10359a[11];
        Float fValueOf = Float.valueOf(f2);
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, fValueOf);
    }
}
