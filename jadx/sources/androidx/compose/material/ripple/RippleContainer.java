package androidx.compose.material.ripple;

import android.content.Context;
import android.view.ViewGroup;
import com.vuitton.android.R;
import java.util.ArrayList;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/material/ripple/RippleContainer;", "Landroid/view/ViewGroup;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "material-ripple"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RippleContainer extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f6523c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RippleHostMap f6524e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6525f;

    public RippleContainer(Context context) {
        super(context);
        this.f6522b = 5;
        ArrayList arrayList = new ArrayList();
        this.f6523c = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.d = arrayList2;
        this.f6524e = new RippleHostMap();
        setClipChildren(false);
        RippleHostView rippleHostView = new RippleHostView(context);
        addView(rippleHostView);
        arrayList.add(rippleHostView);
        arrayList2.add(rippleHostView);
        this.f6525f = 1;
        setTag(R.id.hide_in_inspector_tag, Boolean.TRUE);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
    }
}
