package ZjTIAZ;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class QveSIH {
    public static ArrayList a(ViewGroup viewGroup) {
        ArrayList arrayList = new ArrayList();
        LinkedList linkedList = new LinkedList();
        linkedList.add(viewGroup);
        while (!linkedList.isEmpty()) {
            View view = (View) linkedList.remove();
            arrayList.add(view);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup2 = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup2.getChildCount(); i2++) {
                    linkedList.add(viewGroup2.getChildAt(i2));
                }
            }
        }
        return arrayList;
    }
}
