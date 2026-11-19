package com.sightcall.libraries.ui;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewGroupKt$children$1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a(\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u001a(\u0010\b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u001a(\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u001a(\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u001a(\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u001a(\u0010\f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u001a(\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u001a(\u0010\u000e\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u001a\u001e\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u001a\u000e\u0010\u0010\u001a\u00020\u0007*\u0004\u0018\u00010\u0004H\u0002\u001a\u001b\u0010\u0011\u001a\u0002H\u0012\"\b\b\u0000\u0010\u0012*\u00020\u0004*\u0002H\u0012H\u0002¢\u0006\u0002\u0010\u0013\u001a\f\u0010\u0014\u001a\u00020\u0001*\u00020\u0015H\u0002\u001a#\u0010\u0016\u001a\u00020\u0001*\u00020\u00172\u0017\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0019¢\u0006\u0002\b\u001a¨\u0006\u001b"}, d2 = {"connectTopToTop", "", "Landroidx/constraintlayout/widget/ConstraintSet;", "from", "Landroid/view/View;", MvelScriptManager.VAR_TO, "margin", "", "connectTopToBottom", "connectBottomToTop", "connectBottomToBottom", "connectStartToStart", "connectStartToEnd", "connectEndToStart", "connectEndToEnd", "layoutOver", "getIdOrParent", "generateIdIfNotExists", "V", "(Landroid/view/View;)Landroid/view/View;", "ensureIdsHaveBeenSet", "Landroid/view/ViewGroup;", "applyConstraints", "Landroidx/constraintlayout/widget/ConstraintLayout;", "consumer", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "ui_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ConstraintSet {
    public static final void applyConstraints(ConstraintLayout constraintLayout, Function1<? super androidx.constraintlayout.widget.ConstraintSet, Unit> function1) {
        constraintLayout.getClass();
        function1.getClass();
        ensureIdsHaveBeenSet(constraintLayout);
        androidx.constraintlayout.widget.ConstraintSet constraintSet = new androidx.constraintlayout.widget.ConstraintSet();
        constraintSet.f(constraintLayout);
        function1.invoke(constraintSet);
        constraintSet.c(constraintLayout);
    }

    public static final void connectBottomToBottom(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2) {
        constraintSet.getClass();
        view.getClass();
        constraintSet.g(getIdOrParent(view), 4, getIdOrParent(view2), 4, i2);
    }

    public static /* synthetic */ void connectBottomToBottom$default(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            view2 = null;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        connectBottomToBottom(constraintSet, view, view2, i2);
    }

    public static final void connectBottomToTop(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2) {
        constraintSet.getClass();
        view.getClass();
        constraintSet.g(getIdOrParent(view), 4, getIdOrParent(view2), 3, i2);
    }

    public static /* synthetic */ void connectBottomToTop$default(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            view2 = null;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        connectBottomToTop(constraintSet, view, view2, i2);
    }

    public static final void connectEndToEnd(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2) {
        constraintSet.getClass();
        view.getClass();
        constraintSet.g(getIdOrParent(view), 7, getIdOrParent(view2), 7, i2);
    }

    public static /* synthetic */ void connectEndToEnd$default(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            view2 = null;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        connectEndToEnd(constraintSet, view, view2, i2);
    }

    public static final void connectEndToStart(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2) {
        constraintSet.getClass();
        view.getClass();
        constraintSet.g(getIdOrParent(view), 7, getIdOrParent(view2), 6, i2);
    }

    public static /* synthetic */ void connectEndToStart$default(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            view2 = null;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        connectEndToStart(constraintSet, view, view2, i2);
    }

    public static final void connectStartToEnd(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2) {
        constraintSet.getClass();
        view.getClass();
        constraintSet.g(getIdOrParent(view), 6, getIdOrParent(view2), 7, i2);
    }

    public static /* synthetic */ void connectStartToEnd$default(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            view2 = null;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        connectStartToEnd(constraintSet, view, view2, i2);
    }

    public static final void connectStartToStart(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2) {
        constraintSet.getClass();
        view.getClass();
        constraintSet.g(getIdOrParent(view), 6, getIdOrParent(view2), 6, i2);
    }

    public static /* synthetic */ void connectStartToStart$default(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            view2 = null;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        connectStartToStart(constraintSet, view, view2, i2);
    }

    public static final void connectTopToBottom(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2) {
        constraintSet.getClass();
        view.getClass();
        constraintSet.g(getIdOrParent(view), 3, getIdOrParent(view2), 4, i2);
    }

    public static /* synthetic */ void connectTopToBottom$default(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            view2 = null;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        connectTopToBottom(constraintSet, view, view2, i2);
    }

    public static final void connectTopToTop(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2) {
        constraintSet.getClass();
        view.getClass();
        constraintSet.g(getIdOrParent(view), 3, getIdOrParent(view2), 3, i2);
    }

    public static /* synthetic */ void connectTopToTop$default(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            view2 = null;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        connectTopToTop(constraintSet, view, view2, i2);
    }

    private static final void ensureIdsHaveBeenSet(ViewGroup viewGroup) {
        for (View view : new ViewGroupKt$children$1(viewGroup)) {
            generateIdIfNotExists(view);
            if (view instanceof ViewGroup) {
                ensureIdsHaveBeenSet((ViewGroup) view);
            }
        }
    }

    private static final <V extends View> V generateIdIfNotExists(V v) {
        if (v.getId() == -1) {
            Views.generateAndSetId(v);
        }
        return v;
    }

    private static final int getIdOrParent(View view) {
        View viewGenerateIdIfNotExists;
        if (view == null || (viewGenerateIdIfNotExists = generateIdIfNotExists(view)) == null) {
            return 0;
        }
        return viewGenerateIdIfNotExists.getId();
    }

    public static final void layoutOver(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2) {
        constraintSet.getClass();
        view.getClass();
        connectStartToStart$default(constraintSet, view, view2, 0, 4, null);
        connectTopToTop$default(constraintSet, view, view2, 0, 4, null);
        connectEndToEnd$default(constraintSet, view, view2, 0, 4, null);
        connectBottomToBottom$default(constraintSet, view, view2, 0, 4, null);
    }

    public static /* synthetic */ void layoutOver$default(androidx.constraintlayout.widget.ConstraintSet constraintSet, View view, View view2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            view2 = null;
        }
        layoutOver(constraintSet, view, view2);
    }
}
