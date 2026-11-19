package androidx.constraintlayout.compose;

import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"constraintlayout-compose_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class ToolingUtilsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f11277a = {Reflection.f71922a.f(new MutablePropertyReference1Impl(ToolingUtilsKt.class, "designInfoProvider", "getDesignInfoProvider(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/constraintlayout/compose/DesignInfoProvider;", 1))};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SemanticsPropertyKey f11278b = new SemanticsPropertyKey("DesignInfoProvider", (Function2) null, 2, (DefaultConstructorMarker) null);

    public static final void a(SemanticsPropertyReceiver semanticsPropertyReceiver, DesignInfoProvider designInfoProvider) {
        KProperty kProperty = f11277a[0];
        SemanticsPropertyKey semanticsPropertyKey = f11278b;
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey, designInfoProvider);
    }
}
