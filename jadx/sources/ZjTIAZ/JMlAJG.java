package ZjTIAZ;

import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import com.linkplay.medialib.ContentTree;
import java.util.Observable;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
public class JMlAJG extends Observable implements ViewTreeObserver.OnGlobalFocusChangeListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f202c = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010gM@QV\u0006D@Yt|y={iE^f");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f203b = "JMlAJG";

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        try {
            if (view instanceof EditText) {
                EditText editText = (EditText) view;
                if ((editText.getInputType() & 129) != 129 && (editText.getInputType() & 18) != 18 && (editText.getInputType() & 145) != 145 && (editText.getInputType() & 225) != 225) {
                    EditText editText2 = (EditText) view;
                    if (editText2.getText() == null) {
                        return;
                    }
                    String strTrim = editText2.getText().toString().trim();
                    if (!strTrim.isEmpty()) {
                        int i2 = 0;
                        int i3 = 0;
                        int i4 = 0;
                        for (char c2 : strTrim.toCharArray()) {
                            if (Character.isLetter(c2)) {
                                i3++;
                            } else if (Character.isDigit(c2)) {
                                i4++;
                            } else if (!Character.isWhitespace(c2)) {
                                i2++;
                            }
                        }
                        setChanged();
                        int id = editText2.getId();
                        String str = DeHqqG.f157a;
                        notifyObservers(new EACilt(DeHqqG.e(String.valueOf(id)), DeHqqG.b(editText2), strTrim.length(), i2, i3, i4));
                    }
                }
            }
            if (view2 instanceof EditText) {
                setChanged();
                long jUptimeMillis = SystemClock.uptimeMillis();
                int id2 = view2.getId();
                String str2 = DeHqqG.f157a;
                notifyObservers(new DmNgem(jUptimeMillis, "1", DeHqqG.e(String.valueOf(id2)), -1, DeHqqG.b((EditText) view2)));
            }
            if (view instanceof EditText) {
                setChanged();
                long jUptimeMillis2 = SystemClock.uptimeMillis();
                int id3 = view.getId();
                String str3 = DeHqqG.f157a;
                notifyObservers(new DmNgem(jUptimeMillis2, ContentTree.IMAGE_ID, DeHqqG.e(String.valueOf(id3)), -1, DeHqqG.b((EditText) view)));
            }
        } catch (Exception e2) {
            GpYFMu.g(this.f203b, f202c, e2);
        }
    }
}
