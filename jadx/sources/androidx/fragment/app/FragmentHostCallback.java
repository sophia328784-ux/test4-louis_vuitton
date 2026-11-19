package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import java.io.PrintWriter;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B+\b\u0000\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB!\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\rB\u0011\b\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u000e¢\u0006\u0004\b\u000b\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/fragment/app/FragmentHostCallback;", "H", "Landroidx/fragment/app/FragmentContainer;", "Landroid/app/Activity;", ActionFloatingViewItem.f37018a, "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroid/os/Handler;", "handler", "", "windowAnimations", "<init>", "(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V", "(Landroid/content/Context;Landroid/os/Handler;I)V", "Landroidx/fragment/app/FragmentActivity;", "(Landroidx/fragment/app/FragmentActivity;)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class FragmentHostCallback<H> extends FragmentContainer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Activity f13254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f13255c;
    public final Handler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FragmentManager f13256e;

    public FragmentHostCallback(Activity activity, Context context, Handler handler, int i2) {
        context.getClass();
        handler.getClass();
        this.f13254b = activity;
        this.f13255c = context;
        this.d = handler;
        this.f13256e = new FragmentManagerImpl();
    }

    @Override // androidx.fragment.app.FragmentContainer
    public View b(int i2) {
        return null;
    }

    @Override // androidx.fragment.app.FragmentContainer
    public boolean c() {
        return true;
    }

    public void d(PrintWriter printWriter, String[] strArr) {
    }

    public abstract FragmentActivity e();

    public LayoutInflater f() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f13255c);
        layoutInflaterFrom.getClass();
        return layoutInflaterFrom;
    }

    public boolean g(String str) {
        str.getClass();
        return false;
    }

    public void h() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentHostCallback(Context context, Handler handler, int i2) {
        this(context instanceof Activity ? (Activity) context : null, context, handler, i2);
        context.getClass();
        handler.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentHostCallback(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
        fragmentActivity.getClass();
    }
}
