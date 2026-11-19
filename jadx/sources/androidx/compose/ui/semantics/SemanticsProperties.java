package androidx.compose.ui.semantics;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/semantics/SemanticsProperties;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class SemanticsProperties {
    public static final SemanticsPropertyKey I;
    public static final SemanticsPropertyKey J;
    public static final SemanticsPropertyKey K;
    public static final SemanticsPropertyKey L;
    public static final SemanticsPropertyKey M;
    public static final SemanticsPropertyKey N;
    public static final SemanticsPropertyKey O;
    public static final SemanticsPropertyKey P;
    public static final SemanticsPropertyKey Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SemanticsPropertyKey f10331a = new SemanticsPropertyKey("ContentDescription", true, SemanticsProperties$ContentDescription$1.f10341c, null, 8, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SemanticsPropertyKey f10332b = new SemanticsPropertyKey("StateDescription", true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SemanticsPropertyKey f10333c = new SemanticsPropertyKey("ProgressBarRangeInfo", true);
    public static final SemanticsPropertyKey d = new SemanticsPropertyKey("PaneTitle", true, SemanticsProperties$PaneTitle$1.f10349c, null, 8, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SemanticsPropertyKey f10334e = new SemanticsPropertyKey("SelectableGroup", true);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final SemanticsPropertyKey f10335f = new SemanticsPropertyKey("CollectionInfo", true);
    public static final SemanticsPropertyKey g = new SemanticsPropertyKey("CollectionItemInfo", true);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final SemanticsPropertyKey f10336h = new SemanticsPropertyKey("Heading", true);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final SemanticsPropertyKey f10337i = new SemanticsPropertyKey("TextEntryKey", true);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final SemanticsPropertyKey f10338j = new SemanticsPropertyKey("Disabled", true);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final SemanticsPropertyKey f10339k = new SemanticsPropertyKey("LiveRegion", true);
    public static final SemanticsPropertyKey l = new SemanticsPropertyKey("Focused", true);
    public static final SemanticsPropertyKey m = new SemanticsPropertyKey("IsContainer", true);
    public static final SemanticsPropertyKey n = new SemanticsPropertyKey("IsTraversalGroup", (Function2) null, 2, (DefaultConstructorMarker) null);
    public static final SemanticsPropertyKey o = new SemanticsPropertyKey("IsSensitiveData", (Function2) null, 2, (DefaultConstructorMarker) null);
    public static final SemanticsPropertyKey p = new SemanticsPropertyKey("InvisibleToUser", SemanticsProperties$InvisibleToUser$1.f10345c);
    public static final SemanticsPropertyKey q = new SemanticsPropertyKey("HideFromAccessibility", SemanticsProperties$HideFromAccessibility$1.f10344c);
    public static final SemanticsPropertyKey r = new SemanticsPropertyKey("ContentType", SemanticsProperties$ContentType$1.f10342c);
    public static final SemanticsPropertyKey s = new SemanticsPropertyKey("ContentDataType", SemanticsProperties$ContentDataType$1.f10340c);
    public static final SemanticsPropertyKey t = new SemanticsPropertyKey("FillableData", SemanticsProperties$FillableData$1.f10343c);
    public static final SemanticsPropertyKey u = new SemanticsPropertyKey("TraversalIndex", SemanticsProperties$TraversalIndex$1.f10354c);
    public static final SemanticsPropertyKey v = new SemanticsPropertyKey("HorizontalScrollAxisRange", true);
    public static final SemanticsPropertyKey w = new SemanticsPropertyKey("VerticalScrollAxisRange", true);
    public static final SemanticsPropertyKey x = new SemanticsPropertyKey("IsPopup", true, SemanticsProperties$IsPopup$1.f10347c, null, 8, null);
    public static final SemanticsPropertyKey y = new SemanticsPropertyKey("IsDialog", true, SemanticsProperties$IsDialog$1.f10346c, null, 8, null);
    public static final SemanticsPropertyKey z = new SemanticsPropertyKey("Role", true, SemanticsProperties$Role$1.f10350c, null, 8, null);
    public static final SemanticsPropertyKey A = new SemanticsPropertyKey("TestTag", false, SemanticsProperties$TestTag$1.f10352c, null, 8, null);
    public static final SemanticsPropertyKey B = new SemanticsPropertyKey("LinkTestMarker", false, SemanticsProperties$LinkTestMarker$1.f10348c, null, 8, null);
    public static final SemanticsPropertyKey C = new SemanticsPropertyKey("Text", true, SemanticsProperties$Text$1.f10353c, null, 8, null);
    public static final SemanticsPropertyKey D = new SemanticsPropertyKey("TextSubstitution", (Function2) null, 2, (DefaultConstructorMarker) null);
    public static final SemanticsPropertyKey E = new SemanticsPropertyKey("IsShowingTextSubstitution", (Function2) null, 2, (DefaultConstructorMarker) null);
    public static final SemanticsPropertyKey F = new SemanticsPropertyKey("InputText", true);
    public static final SemanticsPropertyKey G = new SemanticsPropertyKey("EditableText", true);
    public static final SemanticsPropertyKey H = new SemanticsPropertyKey("TextSelectionRange", true);

    static {
        new SemanticsPropertyKey("TextCompositionRange", true);
        I = new SemanticsPropertyKey("ImeAction", true);
        J = new SemanticsPropertyKey("Selected", true);
        K = new SemanticsPropertyKey("ToggleableState", true);
        new SemanticsPropertyKey("InputTextSuggestionState", true);
        L = new SemanticsPropertyKey("Password", true);
        M = new SemanticsPropertyKey("Error", true);
        N = new SemanticsPropertyKey("IndexForKey", (Function2) null, 2, (DefaultConstructorMarker) null);
        O = new SemanticsPropertyKey("IsEditable", (Function2) null, 2, (DefaultConstructorMarker) null);
        P = new SemanticsPropertyKey("MaxTextLength", (Function2) null, 2, (DefaultConstructorMarker) null);
        Q = new SemanticsPropertyKey("Shape", false, SemanticsProperties$Shape$1.f10351c, null, 8, null);
    }
}
