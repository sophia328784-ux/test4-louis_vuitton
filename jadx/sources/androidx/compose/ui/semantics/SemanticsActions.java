package androidx.compose.ui.semantics;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/semantics/SemanticsActions;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class SemanticsActions {
    public static final SemanticsPropertyKey A;
    public static final SemanticsPropertyKey B;
    public static final SemanticsPropertyKey C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SemanticsPropertyKey f10302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SemanticsPropertyKey f10303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SemanticsPropertyKey f10304c;
    public static final SemanticsPropertyKey d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SemanticsPropertyKey f10305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final SemanticsPropertyKey f10306f;
    public static final SemanticsPropertyKey g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final SemanticsPropertyKey f10307h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final SemanticsPropertyKey f10308i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final SemanticsPropertyKey f10309j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final SemanticsPropertyKey f10310k;
    public static final SemanticsPropertyKey l;
    public static final SemanticsPropertyKey m;
    public static final SemanticsPropertyKey n;
    public static final SemanticsPropertyKey o;
    public static final SemanticsPropertyKey p;
    public static final SemanticsPropertyKey q;
    public static final SemanticsPropertyKey r;
    public static final SemanticsPropertyKey s;
    public static final SemanticsPropertyKey t;
    public static final SemanticsPropertyKey u;
    public static final SemanticsPropertyKey v;
    public static final SemanticsPropertyKey w;
    public static final SemanticsPropertyKey x;
    public static final SemanticsPropertyKey y;
    public static final SemanticsPropertyKey z;

    static {
        SemanticsPropertiesKt$ActionPropertyKey$1 semanticsPropertiesKt$ActionPropertyKey$1 = new Function2<AccessibilityAction<Function<? extends Boolean>>, AccessibilityAction<Function<? extends Boolean>>, AccessibilityAction<Function<? extends Boolean>>>() { // from class: androidx.compose.ui.semantics.SemanticsPropertiesKt$ActionPropertyKey$1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                String str;
                Function function;
                AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
                AccessibilityAction accessibilityAction2 = (AccessibilityAction) obj2;
                if (accessibilityAction == null || (str = accessibilityAction.f10269a) == null) {
                    str = accessibilityAction2.f10269a;
                }
                if (accessibilityAction == null || (function = accessibilityAction.f10270b) == null) {
                    function = accessibilityAction2.f10270b;
                }
                return new AccessibilityAction(str, function);
            }
        };
        f10302a = new SemanticsPropertyKey("GetTextLayoutResult", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        f10303b = new SemanticsPropertyKey("OnClick", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        f10304c = new SemanticsPropertyKey("OnLongClick", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        d = new SemanticsPropertyKey("ScrollBy", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        f10305e = new SemanticsPropertyKey("ScrollByOffset", (Function2) null, 2, (DefaultConstructorMarker) null);
        f10306f = new SemanticsPropertyKey("ScrollToIndex", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        g = new SemanticsPropertyKey("OnAutofillText", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        f10307h = new SemanticsPropertyKey("OnFillData", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        f10308i = new SemanticsPropertyKey("SetProgress", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        f10309j = new SemanticsPropertyKey("SetSelection", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        f10310k = new SemanticsPropertyKey("SetText", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        l = new SemanticsPropertyKey("SetTextSubstitution", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        m = new SemanticsPropertyKey("ShowTextSubstitution", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        n = new SemanticsPropertyKey("ClearTextSubstitution", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        o = new SemanticsPropertyKey("InsertTextAtCursor", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        p = new SemanticsPropertyKey("PerformImeAction", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        new SemanticsPropertyKey("PerformImeAction", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        q = new SemanticsPropertyKey("CopyText", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        r = new SemanticsPropertyKey("CutText", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        s = new SemanticsPropertyKey("PasteText", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        t = new SemanticsPropertyKey("Expand", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        u = new SemanticsPropertyKey("Collapse", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        v = new SemanticsPropertyKey("Dismiss", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        w = new SemanticsPropertyKey("RequestFocus", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        x = new SemanticsPropertyKey("CustomActions", true, SemanticsActions$CustomActions$1.f10311c, null, 8, null);
        y = new SemanticsPropertyKey("PageUp", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        z = new SemanticsPropertyKey("PageLeft", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        A = new SemanticsPropertyKey("PageDown", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        B = new SemanticsPropertyKey("PageRight", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
        C = new SemanticsPropertyKey("GetScrollViewportLength", true, semanticsPropertiesKt$ActionPropertyKey$1, null, 8, null);
    }
}
