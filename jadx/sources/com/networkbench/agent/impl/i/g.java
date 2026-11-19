package com.networkbench.agent.impl.i;

import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.PictureDrawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.networkbench.R;
import com.networkbench.agent.impl.data.type.p;
import com.networkbench.agent.impl.floatbtnmanager.n;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.instrumentation.NBSViewStatus;
import com.networkbench.agent.impl.session.screen.NBSScreenRecordingUtil;
import com.networkbench.agent.impl.session.screen.NBSViewHelper;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37352a = "ViewStatusCalc";
    private long d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37357h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f37358i;
    private int l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f37353b = e.PAGE_STATUS_UNKNOWN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f37354c = System.currentTimeMillis();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f37355e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f37356f = this.f37354c;
    private List<WeakReference<View>> g = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<String> f37359j = g();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f37360k = false;
    private List<WeakReference<p>> m = new ArrayList();

    public g(int i2) {
        this.l = i2;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0071  */
    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:28:0x0079  */
    /* JADX WARN: Code duplicated, block: B:31:0x0082 A[LOOP:0: B:29:0x007c->B:31:0x0082, LOOP_END] */
    private List<View> b(View view) {
        ViewGroup viewGroup;
        int i2;
        ArrayList arrayList = new ArrayList();
        if (view != null) {
            if (!c(view)) {
                Logger.debug(f37352a, "view is not visible, skip calc rect view is:" + view);
                return arrayList;
            }
            Object tag = view.getTag(R.string.view_status_tag);
            if (tag == null) {
                if (d(view)) {
                    arrayList.add(view);
                    return arrayList;
                }
                if (view instanceof ViewGroup) {
                    viewGroup = (ViewGroup) view;
                    for (i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                        arrayList.addAll(b(viewGroup.getChildAt(i2)));
                    }
                }
            } else {
                if (tag.toString().equalsIgnoreCase(NBSViewStatus.VIEW_STATUS_INVALID.getViewStatusValue())) {
                    this.g.add(new WeakReference<>(view));
                    return arrayList;
                }
                if (!tag.toString().equalsIgnoreCase(NBSViewStatus.VIEW_STATUS_IGNORE.getViewStatusValue())) {
                    if (tag.toString().equalsIgnoreCase(NBSViewStatus.VIEW_STATUS_VALID.getViewStatusValue())) {
                        arrayList.add(view);
                        return arrayList;
                    }
                    if (d(view)) {
                        arrayList.add(view);
                        return arrayList;
                    }
                    if (view instanceof ViewGroup) {
                        viewGroup = (ViewGroup) view;
                        while (i2 < viewGroup.getChildCount()) {
                            arrayList.addAll(b(viewGroup.getChildAt(i2)));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private boolean c(View view) {
        return view.getVisibility() == 0 && view.getGlobalVisibleRect(new Rect());
    }

    private boolean d(View view) {
        if (view == null) {
            return false;
        }
        if (f(view)) {
            return true;
        }
        if (!(view instanceof ViewGroup) && !(view instanceof ViewStub)) {
            if (view.getId() == 16908335) {
                this.f37357h = view.getHeight();
            } else if (view.getId() == 16908336) {
                this.f37358i = view.getHeight();
            } else if (e(view)) {
                this.g.add(new WeakReference<>(view));
            }
        }
        return false;
    }

    private boolean e(View view) {
        if (view instanceof ViewStub) {
            return false;
        }
        return (view instanceof EditText) || (view instanceof TextView) || (view instanceof ImageView) || (view instanceof WebView) || a(view, "com.tencent.smtt.sdk.WebView") || a(view, "com.uc.webview.export.WebView");
    }

    private boolean f(View view) {
        try {
            if (view instanceof ViewStub) {
                return false;
            }
            if ((view instanceof EditText) && view.hasFocus()) {
                this.f37360k = true;
                return true;
            }
            if (view instanceof TextView) {
                if (((TextView) view).getText() != null && ((TextView) view).getText().length() > 0) {
                    return true;
                }
            } else {
                if (!(view instanceof ImageView)) {
                    if (!(view instanceof WebView) && !a(view, "com.tencent.smtt.sdk.WebView") && !a(view, "com.uc.webview.export.WebView")) {
                    }
                    return true;
                }
                if (a((ImageView) view)) {
                    return true;
                }
            }
            Iterator<String> it = this.f37359j.iterator();
            while (it.hasNext()) {
                if (a(view, it.next())) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            Logger.error(f37352a, "error in isViewClassAvalid", th);
        }
    }

    private List<String> g() {
        ArrayList arrayList = new ArrayList(20);
        HarvestConfiguration configuration = Harvest.getInstance().getConfiguration();
        return (configuration == null || ab.c(configuration.getViewClassWhitelist())) ? arrayList : ab.f(configuration.getViewClassWhitelist());
    }

    private boolean h() {
        return this.f37356f > 0 && System.currentTimeMillis() - this.f37356f > ((long) this.l);
    }

    private boolean i() {
        Iterator<WeakReference<p>> it = this.m.iterator();
        while (it.hasNext()) {
            p pVar = it.next().get();
            if (pVar != null && !pVar.k()) {
                return false;
            }
        }
        return true;
    }

    public boolean a(View view) {
        this.g.clear();
        if (h()) {
            this.f37353b = e.PAGE_STATUS_TIMEOUT;
            this.d = System.currentTimeMillis();
            Logger.debug(f37352a, "page visible has timeout");
            return true;
        }
        if (view == null || view.getWidth() <= 0 || view.getHeight() <= 0) {
            return false;
        }
        if (!c(view)) {
            Logger.debug(f37352a, "decorView is not visible");
            return false;
        }
        if ((view instanceof ViewGroup) && !a((ViewGroup) view)) {
            Logger.debug(f37352a, "decorView has no child");
            return false;
        }
        List<View> listB = b(view);
        ArrayList arrayList = new ArrayList();
        Iterator<View> it = listB.iterator();
        while (it.hasNext()) {
            arrayList.add(NBSViewHelper.getVisibleRect(it.next()));
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<WeakReference<View>> it2 = this.g.iterator();
        while (it2.hasNext()) {
            arrayList2.add(NBSViewHelper.getVisibleRect(it2.next().get()));
        }
        Logger.debug(f37352a, "avalidRects size:" + arrayList.size() + ", disableRects size:" + arrayList2.size());
        if (!this.f37355e.a(arrayList, arrayList2, view.getWidth(), (view.getHeight() - this.f37357h) - this.f37358i) && !this.f37360k && (this.g.size() != 0 || !i())) {
            this.g.clear();
            return false;
        }
        e();
        this.g.clear();
        return true;
    }

    public int c() {
        return this.f37353b.a();
    }

    private void e() {
        this.f37353b = e.PAGE_STATUS_NORMAL;
        this.d = System.currentTimeMillis();
    }

    public void d() {
        this.f37353b = e.PAGE_STATUS_INTERRUPT;
        this.d = System.currentTimeMillis();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002b  */
    /* JADX WARN: Code duplicated, block: B:13:0x0030 A[RETURN] */
    private View f() {
        n nVar;
        List<n> rootViews = NBSViewHelper.getRootViews();
        for (int i2 = 0; i2 < rootViews.size(); i2++) {
            nVar = rootViews.get(i2);
            if (NBSScreenRecordingUtil.isDecorViewClass(nVar.a().getClass().getName())) {
                if (nVar != null) {
                    return nVar.a();
                }
                return null;
            }
        }
        nVar = null;
        if (nVar != null) {
            return nVar.a();
        }
        return null;
    }

    public int b() {
        return this.f37355e.a();
    }

    private boolean a(ViewGroup viewGroup) {
        return viewGroup != null && viewGroup.getChildCount() > 0;
    }

    private boolean a(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            return (drawable instanceof BitmapDrawable) || (drawable instanceof TransitionDrawable) || (drawable instanceof NinePatchDrawable) || (drawable instanceof AnimationDrawable) || (drawable instanceof PictureDrawable);
        }
        return false;
    }

    private boolean a(View view, String str) {
        try {
            return Class.forName(str).isAssignableFrom(view.getClass());
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public long a() {
        long j2 = this.d - this.f37354c;
        if (j2 > 0) {
            return j2;
        }
        return 0L;
    }

    public void a(p pVar) {
        if (pVar != null) {
            this.m.add(new WeakReference<>(pVar));
        }
    }

    public void a(int i2) {
        this.l = i2;
    }
}
