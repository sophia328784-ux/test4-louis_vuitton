package androidx.navigation3.scene;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.navigation3.runtime.NavEntryDecorator;
import defpackage.xe0;
import defpackage.xo0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B9\u00120\b\u0002\u0010\t\u001a*\u0012\u0004\u0012\u00020\u0001\u0012 \u0012\u001e\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\b\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\b0\u0004¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/navigation3/scene/SceneSetupNavEntryDecorator;", "", "T", "Landroidx/navigation3/runtime/NavEntryDecorator;", "", "Lkotlin/Function1;", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "movableContentMap", "<init>", "(Ljava/util/Map;)V", "navigation3-ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SceneSetupNavEntryDecorator<T> extends NavEntryDecorator<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f18410c;

    public SceneSetupNavEntryDecorator(Map<Object, Function3<Function2<? super Composer, ? super Integer, Unit>, Composer, Integer, Unit>> map) {
        super(new xo0(map, 13), new ComposableLambdaImpl(-1714993007, true, new xe0(map, 14)));
        this.f18410c = map;
    }

    public SceneSetupNavEntryDecorator() {
        this(null, 1, null);
    }

    public SceneSetupNavEntryDecorator(Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new SnapshotStateMap() : map);
    }
}
