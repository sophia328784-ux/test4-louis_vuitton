package androidx.compose.ui.platform;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroid/content/res/Resources;", "Landroidx/compose/runtime/CompositionLocalAccessorScope;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class AndroidCompositionLocals_androidKt$LocalResources$1 extends Lambda implements Function1<CompositionLocalAccessorScope, Resources> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AndroidCompositionLocals_androidKt$LocalResources$1 f9944c = new AndroidCompositionLocals_androidKt$LocalResources$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CompositionLocalAccessorScope compositionLocalAccessorScope = (CompositionLocalAccessorScope) obj;
        compositionLocalAccessorScope.b(AndroidCompositionLocals_androidKt.f9935a);
        return ((Context) compositionLocalAccessorScope.b(AndroidCompositionLocals_androidKt.f9936b)).getResources();
    }
}
