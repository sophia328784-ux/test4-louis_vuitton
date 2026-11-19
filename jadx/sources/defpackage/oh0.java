package defpackage;

import android.view.MenuItem;
import androidx.lifecycle.Observer;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment;
import com.linecorp.linesdk.openchat.ui.ProfileInfoFragment;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class oh0 implements Observer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MenuItem f76790c;

    public /* synthetic */ oh0(int i2, MenuItem menuItem) {
        this.f76789b = i2;
        this.f76790c = menuItem;
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        int i2 = this.f76789b;
        MenuItem menuItem = this.f76790c;
        Boolean bool = (Boolean) obj;
        switch (i2) {
            case 0:
                OpenChatInfoFragment.Companion companion = OpenChatInfoFragment.D;
                menuItem.setEnabled(bool != null ? bool.booleanValue() : false);
                break;
            default:
                ProfileInfoFragment.Companion companion2 = ProfileInfoFragment.D;
                menuItem.setEnabled(bool != null ? bool.booleanValue() : false);
                break;
        }
    }
}
