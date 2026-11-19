package ZjTIAZ;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.SystemClock;
import android.text.Editable;
import android.text.TextWatcher;
import com.linkplay.medialib.ContentTree;
import java.util.Observable;

/* JADX INFO: loaded from: classes.dex */
class CHrESI extends Observable implements TextWatcher {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f104c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f105e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f106f = false;
    public final String g;

    public CHrESI(Context context, int i2, String str, boolean z) {
        this.f104c = context;
        this.f103b = i2;
        this.g = str;
        this.d = z;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        int i5;
        ClipData primaryClip;
        try {
            this.f105e = false;
            this.f106f = false;
            String string = "";
            if (i4 > 0 && i2 >= 0) {
                try {
                    if (i2 < charSequence.length()) {
                        string = charSequence.subSequence(i2, Math.min(i2 + i4, charSequence.length())).toString();
                    }
                } catch (Exception unused) {
                }
            }
            int i6 = 1;
            if (i4 > 1) {
                ClipboardManager clipboardManager = (ClipboardManager) this.f104c.getSystemService(CNATAC.a("mI|CQ]NRu"));
                CharSequence text = (clipboardManager == null || !clipboardManager.hasPrimaryClip() || (primaryClip = clipboardManager.getPrimaryClip()) == null || primaryClip.getItemCount() <= 0) ? null : primaryClip.getItemAt(0).getText();
                if (text == null || !string.equals(text.toString())) {
                    this.f106f = true;
                } else {
                    this.f105e = true;
                }
                i5 = -1;
            } else if (i4 == 1 && " ".equals(string)) {
                i5 = 3;
            } else if (i3 >= 1) {
                i5 = 4;
            } else {
                i5 = (i4 == 1 && string.length() > 0 && Character.isUpperCase(string.charAt(0))) ? 5 : 0;
            }
            if (!this.f105e) {
                i6 = i5;
            }
            if (this.f106f) {
                i6 = 2;
            }
            int i7 = this.d ? 0 : i6;
            setChanged();
            notifyObservers(new DmNgem(SystemClock.uptimeMillis(), ContentTree.AUDIO_ID, this.f103b, i7, this.g));
            charSequence.length();
        } catch (Exception unused2) {
        }
    }
}
