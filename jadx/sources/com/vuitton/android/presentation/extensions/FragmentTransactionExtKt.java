package com.vuitton.android.presentation.extensions;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FragmentTransactionExtKt {
    public static final void a(FragmentTransaction fragmentTransaction, FragmentActivity fragmentActivity) {
        fragmentActivity.getClass();
        List listM = fragmentActivity.getSupportFragmentManager().M();
        listM.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listM) {
            if (((Fragment) obj).isVisible()) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            fragmentTransaction.n(R.anim.no_animation, R.anim.no_animation, R.anim.no_animation, R.anim.no_animation);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            fragmentTransaction.j((Fragment) it.next());
        }
    }
}
