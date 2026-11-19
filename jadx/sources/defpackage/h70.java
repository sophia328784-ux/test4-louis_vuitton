package defpackage;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyListKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.TextFieldValue;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSearchBar;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class h70 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69629b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f69630c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f69631e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f69632f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f69633h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f69634i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69635j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f69636k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ h70(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, Alignment.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, Arrangement.Horizontal horizontal2, Function1 function1, int i2, int i3, int i4) {
        this.f69630c = modifier;
        this.f69635j = lazyListState;
        this.f69636k = paddingValues;
        this.d = z;
        this.l = flingBehavior;
        this.f69631e = z2;
        this.m = overscrollEffect;
        this.n = horizontal;
        this.o = vertical;
        this.p = vertical2;
        this.q = horizontal2;
        this.f69632f = function1;
        this.g = i2;
        this.f69633h = i3;
        this.f69634i = i4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69629b;
        int i3 = this.f69633h;
        Object obj3 = this.q;
        Object obj4 = this.p;
        Object obj5 = this.o;
        Object obj6 = this.n;
        Object obj7 = this.m;
        Object obj8 = this.l;
        Object obj9 = this.f69636k;
        Object obj10 = this.f69635j;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                int iA2 = RecomposeScopeImplKt.a(this.f69634i);
                LVSearchBarKt.c(this.f69630c, (TextFieldValue) obj10, this.f69632f, (Function0) obj9, (String) obj6, this.g, (Function0) obj8, (MutableInteractionSource) obj4, this.d, (ConfigurationSearchBar) obj3, (Function0) obj7, this.f69631e, (String) obj5, (Composer) obj, iA, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(this.g | 1);
                int iA4 = RecomposeScopeImplKt.a(i3);
                LazyListKt.a(this.f69630c, (LazyListState) obj10, (PaddingValues) obj9, this.d, (FlingBehavior) obj8, this.f69631e, (OverscrollEffect) obj7, (Alignment.Horizontal) obj6, (Arrangement.Vertical) obj5, (Alignment.Vertical) obj4, (Arrangement.Horizontal) obj3, this.f69632f, (Composer) obj, iA3, iA4, this.f69634i);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ h70(Modifier modifier, TextFieldValue textFieldValue, Function1 function1, Function0 function0, String str, int i2, Function0 function2, MutableInteractionSource mutableInteractionSource, boolean z, ConfigurationSearchBar configurationSearchBar, Function0 function3, boolean z2, String str2, int i3, int i4) {
        this.f69630c = modifier;
        this.f69635j = textFieldValue;
        this.f69632f = function1;
        this.f69636k = function0;
        this.n = str;
        this.g = i2;
        this.l = function2;
        this.p = mutableInteractionSource;
        this.d = z;
        this.q = configurationSearchBar;
        this.m = function3;
        this.f69631e = z2;
        this.o = str2;
        this.f69633h = i3;
        this.f69634i = i4;
    }
}
