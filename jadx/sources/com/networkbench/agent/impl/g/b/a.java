package com.networkbench.agent.impl.g.b;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.networkbench.agent.impl.util.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37191a = "NBSViewsParser";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<View> f37192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<WindowManager.LayoutParams> f37193c;

    public a(List<View> list, List<WindowManager.LayoutParams> list2) {
        this.f37192b = list;
        this.f37193c = list2;
    }

    private List<View> b(View view) {
        ArrayList arrayList = new ArrayList();
        if (view == null) {
            Logger.debug(f37191a, "parser error, currentView == null");
            return arrayList;
        }
        if (!(view instanceof ViewGroup)) {
            arrayList.add(view);
            a(view);
            return arrayList;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            arrayList.addAll(b(viewGroup.getChildAt(i2)));
        }
        return arrayList;
    }

    public List<View> a() {
        ArrayList arrayList = new ArrayList();
        Iterator<View> it = this.f37192b.iterator();
        while (it.hasNext()) {
            arrayList.addAll(b(it.next()));
        }
        return arrayList;
    }

    public void a(View view) {
    }

    private Bitmap a(int i2, int i3) {
        return Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
    }

    private List<View> b() {
        ArrayList arrayList = new ArrayList();
        for (View view : a()) {
            if (view != null && view.getVisibility() == 0) {
                arrayList.add(view);
            }
        }
        return arrayList;
    }
}
