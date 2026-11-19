package androidx.navigation3.runtime;

import androidx.compose.runtime.Composer;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.ag0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001BZ\u0012#\b\u0002\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0003\u0012,\u0010\f\u001a(\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\t¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00070\u0003¢\u0006\u0002\b\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/navigation3/runtime/NavEntryDecorator;", "", "T", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", ConfigurationName.KEY, "", "onPop", "Landroidx/navigation3/runtime/NavEntry;", "entry", "Landroidx/compose/runtime/Composable;", "decorate", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V", "navigation3-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class NavEntryDecorator<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f18400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function3 f18401b;

    public /* synthetic */ NavEntryDecorator(Function1 function1, Function3 function3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new ag0(10) : function1, function3);
    }

    public NavEntryDecorator(Function1<Object, Unit> function1, Function3<? super NavEntry<T>, ? super Composer, ? super Integer, Unit> function3) {
        this.f18400a = function1;
        this.f18401b = function3;
    }
}
