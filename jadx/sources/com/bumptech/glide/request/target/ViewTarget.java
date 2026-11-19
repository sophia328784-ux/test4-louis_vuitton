package com.bumptech.glide.request.target;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.Preconditions;
import com.vuitton.android.R;
import defpackage.md;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class ViewTarget<T extends View, Z> extends BaseTarget<Z> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f24959c;
    public final SizeDeterminer d;

    public static final class SizeDeterminer {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static Integer f24960e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f24961a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f24962b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f24963c;
        public SizeDeterminerLayoutListener d;

        public static final class SizeDeterminerLayoutListener implements ViewTreeObserver.OnPreDrawListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final WeakReference f24964b;

            public SizeDeterminerLayoutListener(SizeDeterminer sizeDeterminer) {
                this.f24964b = new WeakReference(sizeDeterminer);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                Log.isLoggable("ViewTarget", 2);
                SizeDeterminer sizeDeterminer = (SizeDeterminer) this.f24964b.get();
                if (sizeDeterminer == null) {
                    return true;
                }
                ArrayList arrayList = sizeDeterminer.f24962b;
                View view = sizeDeterminer.f24961a;
                if (arrayList.isEmpty()) {
                    return true;
                }
                int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                int iA = sizeDeterminer.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
                int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
                ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                int iA2 = sizeDeterminer.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
                if (iA <= 0 && iA != Integer.MIN_VALUE) {
                    return true;
                }
                if (iA2 <= 0 && iA2 != Integer.MIN_VALUE) {
                    return true;
                }
                Iterator it = new ArrayList(arrayList).iterator();
                while (it.hasNext()) {
                    ((SizeReadyCallback) it.next()).e(iA, iA2);
                }
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(sizeDeterminer.d);
                }
                sizeDeterminer.d = null;
                arrayList.clear();
                return true;
            }
        }

        public SizeDeterminer(View view) {
            this.f24961a = view;
        }

        public final int a(int i2, int i3, int i4) {
            int i5 = i3 - i4;
            if (i5 > 0) {
                return i5;
            }
            boolean z = this.f24963c;
            View view = this.f24961a;
            if (z && view.isLayoutRequested()) {
                return 0;
            }
            int i6 = i2 - i4;
            if (i6 > 0) {
                return i6;
            }
            if (view.isLayoutRequested() || i3 != -2) {
                return 0;
            }
            Log.isLoggable("ViewTarget", 4);
            Context context = view.getContext();
            if (f24960e == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                Preconditions.c(windowManager, "Argument must not be null");
                Display defaultDisplay = windowManager.getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f24960e = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f24960e.intValue();
        }
    }

    public ViewTarget(T t) {
        Preconditions.c(t, "Argument must not be null");
        this.f24959c = t;
        this.d = new SizeDeterminer(t);
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public final Request a() {
        Object tag = this.f24959c.getTag(R.id.glide_custom_view_target_tag);
        if (tag != null) {
            if (tag instanceof Request) {
                return (Request) tag;
            }
            md.n("You must not call setTag() on a view Glide is targeting");
        }
        return null;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void b(SingleRequest singleRequest) {
        this.d.f24962b.remove(singleRequest);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void c(SingleRequest singleRequest) throws Throwable {
        SizeDeterminer sizeDeterminer = this.d;
        ArrayList arrayList = sizeDeterminer.f24962b;
        View view = sizeDeterminer.f24961a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iA = sizeDeterminer.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        int iA2 = sizeDeterminer.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            singleRequest.e(iA, iA2);
            return;
        }
        if (!arrayList.contains(singleRequest)) {
            arrayList.add(singleRequest);
        }
        if (sizeDeterminer.d == null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            SizeDeterminer.SizeDeterminerLayoutListener sizeDeterminerLayoutListener = new SizeDeterminer.SizeDeterminerLayoutListener(sizeDeterminer);
            sizeDeterminer.d = sizeDeterminerLayoutListener;
            viewTreeObserver.addOnPreDrawListener(sizeDeterminerLayoutListener);
        }
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public void d(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public void e(Drawable drawable) {
        SizeDeterminer sizeDeterminer = this.d;
        ViewTreeObserver viewTreeObserver = sizeDeterminer.f24961a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(sizeDeterminer.d);
        }
        sizeDeterminer.d = null;
        sizeDeterminer.f24962b.clear();
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public final void g(Request request) {
        this.f24959c.setTag(R.id.glide_custom_view_target_tag, request);
    }

    public final String toString() {
        return "Target for: " + this.f24959c;
    }

    @Deprecated
    public ViewTarget(T t, boolean z) {
        this(t);
        if (z) {
            this.d.f24963c = true;
        }
    }
}
