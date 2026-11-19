package androidx.activity.compose;

import androidx.activity.compose.internal.BackHandlerCompat;
import defpackage.oo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/activity/compose/ComposeBackHandler;", "Landroidx/activity/compose/internal/BackHandlerCompat;", "Landroidx/activity/compose/BackHandlerInfo;", "info", "<init>", "(Landroidx/activity/compose/BackHandlerInfo;)V", "activity-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ComposeBackHandler extends BackHandlerCompat {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function0 f702c;

    public ComposeBackHandler(BackHandlerInfo backHandlerInfo) {
        super(backHandlerInfo);
        this.f702c = new oo(20);
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public final void c() {
        this.f702c.mo47invoke();
    }
}
