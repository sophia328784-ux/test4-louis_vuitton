package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.window.DialogProperties;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B>\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0002\b\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/material3/BasicAlertDialogOverrideScope;", "", "Lkotlin/Function0;", "", "onDismissRequest", "Landroidx/compose/ui/Modifier;", "modifier", "Landroidx/compose/ui/window/DialogProperties;", SAPropertyFilter.PROPERTIES, "Landroidx/compose/runtime/Composable;", "content", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BasicAlertDialogOverrideScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function0 f6572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Modifier f6573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DialogProperties f6574c;
    public final Function2 d;

    public /* synthetic */ BasicAlertDialogOverrideScope(Function0 function0, Modifier modifier, DialogProperties dialogProperties, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, (i2 & 2) != 0 ? Modifier.Companion.f8607b : modifier, (i2 & 4) != 0 ? new DialogProperties(false, false, false, 7, (DefaultConstructorMarker) null) : dialogProperties, function2);
    }

    public BasicAlertDialogOverrideScope(Function0<Unit> function0, Modifier modifier, DialogProperties dialogProperties, Function2<? super Composer, ? super Integer, Unit> function2) {
        this.f6572a = function0;
        this.f6573b = modifier;
        this.f6574c = dialogProperties;
        this.d = function2;
    }
}
