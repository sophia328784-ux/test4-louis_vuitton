package androidx.compose.material3;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B¤\u0001\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0013\u0010\n\u001a\u000f\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0002\b\u0006\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u0006\u0012\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00050\u000f¢\u0006\u0002\b\u0006¢\u0006\u0002\b\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;", "", "Landroidx/compose/ui/Modifier;", "modifier", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "title", "Landroidx/compose/ui/text/TextStyle;", "titleTextStyle", "subtitle", "subtitleTextStyle", "Landroidx/compose/ui/Alignment$Horizontal;", "titleHorizontalAlignment", "navigationIcon", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/RowScope;", "Lkotlin/ExtensionFunctionType;", "actions", "Landroidx/compose/ui/unit/Dp;", "expandedHeight", "Landroidx/compose/foundation/layout/WindowInsets;", "windowInsets", "Landroidx/compose/material3/TopAppBarColors;", "colors", "Landroidx/compose/material3/TopAppBarScrollBehavior;", "scrollBehavior", "<init>", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SingleRowTopAppBarOverrideScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Modifier f7218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function2 f7219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextStyle f7220c;
    public final Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextStyle f7221e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Alignment.Horizontal f7222f;
    public final Function2 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function3 f7223h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f7224i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final WindowInsets f7225j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TopAppBarColors f7226k;
    public final TopAppBarScrollBehavior l;

    public SingleRowTopAppBarOverrideScope(Modifier modifier, Function2 function2, TextStyle textStyle, Function2 function3, TextStyle textStyle2, Alignment.Horizontal horizontal, Function2 function4, Function3 function5, float f2, WindowInsets windowInsets, TopAppBarColors topAppBarColors, TopAppBarScrollBehavior topAppBarScrollBehavior, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7218a = modifier;
        this.f7219b = function2;
        this.f7220c = textStyle;
        this.d = function3;
        this.f7221e = textStyle2;
        this.f7222f = horizontal;
        this.g = function4;
        this.f7223h = function5;
        this.f7224i = f2;
        this.f7225j = windowInsets;
        this.f7226k = topAppBarColors;
        this.l = topAppBarScrollBehavior;
    }
}
