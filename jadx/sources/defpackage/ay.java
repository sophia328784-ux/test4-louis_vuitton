package defpackage;

import android.content.Context;
import androidx.compose.foundation.ScrollState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.templates.AutomationTagsAction;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.feed.components.subcomponents.FeedGenericSectionKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ay implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20652b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f20653c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f20654e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f20655f;
    public final /* synthetic */ boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f20656h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f20657i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f20658j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ int f20659k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;
    public final /* synthetic */ Object u;
    public final /* synthetic */ Object v;
    public final /* synthetic */ Object w;
    public final /* synthetic */ Object x;

    public /* synthetic */ ay(Context context, int i2, FeedTab feedTab, boolean z, LVColorScheme lVColorScheme, boolean z2, A11ySettings a11ySettings, boolean z3, EditorialModuleUiModel editorialModuleUiModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function1 function4, Function1 function5, Function1 function6, Function1 function7, Function1 function8, Function2 function9, FeedTracker feedTracker, int i3, int i4) {
        this.l = context;
        this.f20657i = i2;
        this.m = feedTab;
        this.f20653c = z;
        this.n = lVColorScheme;
        this.f20654e = z2;
        this.o = a11ySettings;
        this.g = z3;
        this.p = editorialModuleUiModel;
        this.d = function0;
        this.f20655f = function1;
        this.f20656h = function2;
        this.q = function3;
        this.r = function4;
        this.s = function5;
        this.t = function6;
        this.u = function7;
        this.v = function8;
        this.w = function9;
        this.x = feedTracker;
        this.f20658j = i3;
        this.f20659k = i4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f20652b;
        int i3 = this.f20658j;
        Object obj3 = this.x;
        Object obj4 = this.w;
        Object obj5 = this.v;
        Object obj6 = this.u;
        Object obj7 = this.t;
        Object obj8 = this.s;
        Object obj9 = this.r;
        Object obj10 = this.q;
        Object obj11 = this.p;
        Object obj12 = this.o;
        Object obj13 = this.n;
        Object obj14 = this.m;
        Object obj15 = this.l;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                FeedGenericSectionKt.a((Context) obj15, this.f20657i, (FeedTab) obj14, this.f20653c, (LVColorScheme) obj13, this.f20654e, (A11ySettings) obj12, this.g, (EditorialModuleUiModel) obj11, this.d, this.f20655f, this.f20656h, (Function1) obj10, (Function1) obj9, (Function1) obj8, (Function1) obj7, (Function1) obj6, (Function1) obj5, (Function2) obj4, (FeedTracker) obj3, (Composer) obj, iA, this.f20659k);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(this.f20657i | 1);
                int iA3 = RecomposeScopeImplKt.a(i3);
                LVModalBottomSheetKt.a((Modifier) obj15, (ScrollState) obj14, (String) obj13, (String) obj12, (Function4) obj11, (String) obj10, (String) obj9, (String) obj8, (Integer) obj7, this.f20653c, (AutomationTagsAction) obj6, this.d, (String) obj5, this.f20654e, (AutomationTagsAction) obj4, this.f20655f, (String) obj3, this.g, this.f20656h, (Composer) obj, iA2, iA3, this.f20659k);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ay(Modifier modifier, ScrollState scrollState, String str, String str2, Function4 function4, String str3, String str4, String str5, Integer num, boolean z, AutomationTagsAction automationTagsAction, Function0 function0, String str6, boolean z2, AutomationTagsAction automationTagsAction2, Function0 function1, String str7, boolean z3, Function0 function2, int i2, int i3, int i4) {
        this.l = modifier;
        this.m = scrollState;
        this.n = str;
        this.o = str2;
        this.p = function4;
        this.q = str3;
        this.r = str4;
        this.s = str5;
        this.t = num;
        this.f20653c = z;
        this.u = automationTagsAction;
        this.d = function0;
        this.v = str6;
        this.f20654e = z2;
        this.w = automationTagsAction2;
        this.f20655f = function1;
        this.x = str7;
        this.g = z3;
        this.f20656h = function2;
        this.f20657i = i2;
        this.f20658j = i3;
        this.f20659k = i4;
    }
}
